/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_Manager;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import java.util.logging.*;
import sun.security.acl.OwnerImpl;
import Clases.*;
import java.util.List;
import org.apache.derby.vti.Restriction;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class SessionFactoryUtil {

    private static org.hibernate.SessionFactory sessionFactory;

    static {
        try {


            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            AnnotationConfiguration config = new AnnotationConfiguration();

            config.addAnnotatedClass(cDiagnostico.class);
            config.addAnnotatedClass(cEntrevista.class);
            config.addAnnotatedClass(cPaciente.class);

            sessionFactory = config.configure().buildSessionFactory();
        } catch (Throwable ex) {
            // Log the exception. 
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getInstance() {
        return sessionFactory;
    }

    /**
     * Opens a session and will not bind it to a session context
     *
     * @return the session
     */
    public Session openSession() {
        return sessionFactory.openSession();
    }

    /**
     * Returns a session from the session context. If there is no session in the
     * context it opens a session, stores it in the context and returns it. This
     * factory is intended to be used with a hibernate.cfg.xml including the
     * following property <property
     * name="current_session_context_class">thread</property> This would return
     * the current open session or if this does not exist, will create a new
     * session
     *
     * @return the session
     */
    public Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    /**
     * closes the session factory
     */
    public static void close() {
        if (sessionFactory != null) {
            sessionFactory.close();
        }
        sessionFactory = null;
    }

    public static void Save(Object o) {
        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();
        ss.saveOrUpdate(o);
        ss.getTransaction().commit();
    }

    public static List Listar(Class s) {
        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();
        Criteria cr = ss.createCriteria(s);
        cr.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List lista = cr.list();
        ss.getTransaction().commit();
        return lista;
    }

    public static List BuscarPacientes(eTipoDocumento TipoDocumento, String Documento, String Apellido, String Nombre) {
        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();
           
        Criteria cr = ss.createCriteria(cPaciente.class);
        cr.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        
        if (!Documento.isEmpty()) {
            cr.add(Restrictions.ilike("documento", Documento, MatchMode.ANYWHERE));
            cr.add(Restrictions.eq("tipoDocumento", TipoDocumento));
        }

        if (!Apellido.isEmpty()) {
            cr.add(Restrictions.ilike("apellido", Apellido, MatchMode.ANYWHERE));
        }

        if (!Nombre.isEmpty()) {
            cr.add(Restrictions.ilike("nombre", Nombre, MatchMode.ANYWHERE));
        }
        List lista = cr.list();
        ss.getTransaction().commit();
        return lista;
    }

    public static <T> T Load(Class<T> cls, Integer id) {
        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();
        Object o = ss.get(cls, id);
        ss.getTransaction().commit();
        return cls.cast(o);
    }
}