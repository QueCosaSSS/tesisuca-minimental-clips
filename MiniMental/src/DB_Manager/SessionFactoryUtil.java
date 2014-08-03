/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package DB_Manager;

import Clases.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
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

    public static List BuscarEntrevistas(String ano, String mes, String dia, String valorminimental, String diagnostico) {


        Session ss = SessionFactoryUtil.getInstance().getCurrentSession();
        ss.beginTransaction();

        Criteria cr = ss.createCriteria(cEntrevista.class);
        cr.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);

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

            cr.add(Restrictions.between("fechaentrevista", fromDate, toDate));
        }

        if (valorminimental != " ") {
            cr.add(Restrictions.eq("minimentalcalculado", Float.parseFloat(valorminimental)));
        }

        if (diagnostico != " ") {
            cr.add(Restrictions.ilike("diagnostico", diagnostico, MatchMode.ANYWHERE));
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

    public static List BuscarEntrevistas(String entrevista_ano, String entrevista_mes, String entrevista_dia, String ValorMinimenta, String Diagnostico, eTipoDocumento TipoDocumento, String NumeroDocumento, String PacienteApellido, String PacienteNombre) {
        List lista = new ArrayList();

        if ((!NumeroDocumento.isEmpty()) || (!PacienteApellido.isEmpty()) || (!PacienteNombre.isEmpty())) {
            List lista_pct = BuscarPacientes(TipoDocumento, NumeroDocumento, PacienteApellido, PacienteNombre);

            Iterator<cPaciente> it = lista_pct.iterator();
            //put them into jTable
            while (it.hasNext()) {
                cPaciente paciente_tmp = (cPaciente) it.next();

                Iterator<cEntrevista> it2 = paciente_tmp.getEntrevistas().iterator();;

                while (it2.hasNext()) {
                    cEntrevista entrevista_tmp = (cEntrevista) it2.next();

                    Boolean coincide = true;

//                    entrevista_ano,  entrevista_mes,  entrevista_dia,  ValorMinimenta,  Diagnostico
                    if ((entrevista_ano != " ") || (entrevista_mes != " ") || (entrevista_dia != " ")) {
                        coincide = coincide && ((entrevista_tmp.getFecha().get(Calendar.YEAR) == Integer.parseInt(entrevista_ano)) && (entrevista_tmp.getFecha().get(Calendar.MONTH) == Integer.parseInt(entrevista_mes)) && (entrevista_tmp.getFecha().get(Calendar.DATE) == Integer.parseInt(entrevista_dia)));
                    }
                    if ((ValorMinimenta != " ")) {
                        coincide = coincide && (entrevista_tmp.getDiagnostico().getMinimental().getMinimentalCalculado() == Float.parseFloat(ValorMinimenta));
                    }
                    if ((Diagnostico != " ")) {
                        coincide = coincide && (entrevista_tmp.getDiagnostico().getResultado() == Diagnostico);
                    }

                    if (coincide) {
                        lista.add(entrevista_tmp);
                    }
                }

            }

        } else {
            lista = BuscarEntrevistas(entrevista_ano, entrevista_mes, entrevista_dia, ValorMinimenta, Diagnostico);
        }

        return lista;
    }
}
