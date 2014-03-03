/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_Manager;

import Clases.*;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class SessionFactoryUtil {

    private static org.hibernate.SessionFactory sessionFactory;

    static {
        try {


            // Create the SessionFactory from standard (hibernate.cfg.xml) 
            // config file.
            AnnotationConfiguration config = new AnnotationConfiguration();

            config.addAnnotatedClass(cDiagnosticoDetalle.class);
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

    public static List BuscarEntrevistas(String ano, String mes, String dia, String valorminimental, String diagnostico, eTipoDocumento TipoDocumento, String Documento, String Apellido, String Nombre) {

        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();

        String q = "select e.* from Entrevistas e inner join Pacientes p on e.IDPACIENTE = p.ID";
        String sq = "";

        if ((ano != " ") && (mes != " ") && (dia != " ")) {

            Calendar calendar = Calendar.getInstance();
            calendar.set(Calendar.HOUR_OF_DAY, 0);
            calendar.set(Calendar.MINUTE, 0);
            calendar.set(Calendar.SECOND, 0);
            calendar.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dia));
            calendar.set(Calendar.MONTH, Integer.parseInt(mes));
            calendar.set(Calendar.YEAR, Integer.parseInt(ano));
            Date fromDate = calendar.getTime();

            calendar.set(Calendar.HOUR_OF_DAY, 23);
            calendar.set(Calendar.MINUTE, 59);
            calendar.set(Calendar.SECOND, 59);
            calendar.set(Calendar.DAY_OF_MONTH, Integer.parseInt(dia));
            calendar.set(Calendar.MONTH, Integer.parseInt(mes));
            calendar.set(Calendar.YEAR, Integer.parseInt(ano));
            Date toDate = calendar.getTime();

            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }

            sq += "FechaEntrevista between " + fromDate + " and " + toDate;

        }

        if (valorminimental != " ") {
            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }
            sq += "MinimentalCalculado " + Float.parseFloat(valorminimental);
        }

        if (diagnostico != " ") {
            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }
            sq += "Resultado like '%" + diagnostico + "%'";
        }

        if (!Documento.isEmpty()) {
            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }
            sq += "(documento like '%" + Documento + "%'";
            sq += " and tipoDocumento=" + TipoDocumento+")";
        }

        if (!Apellido.isEmpty()) {
            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }
            sq += "apellido like '%" + Apellido + "%'";
        }

        if (!Nombre.isEmpty()) {
            if (sq.isEmpty()) {
                sq = " where ";
            } else {
                sq = " and ";
            }
            sq += "nombre like '%" + Nombre + "%'";
        }

        Query query = ss.createQuery(q+sq);

        List lista = query.list();

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

    public static cPaciente BuscarPaciente_Entrevista(cEntrevista entrevista) {

        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();

        String queryString = "select p from Entrevistas e inner join "
                + ""
                + "Pacientes p inner join p.Entrevistas e where e.Id = :id";

        Query query = ss.createQuery(queryString);
        query.setLong("id", entrevista.getIdEntrevista());

        cPaciente paciente;

        paciente = (cPaciente) query.uniqueResult();
        ss.getTransaction().commit();
        return paciente;


    }
}
