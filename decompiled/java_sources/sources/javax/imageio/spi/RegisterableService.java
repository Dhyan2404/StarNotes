package javax.imageio.spi;

/* loaded from: classes5.dex */
public interface RegisterableService {
    void onDeregistration(ServiceRegistry serviceRegistry, Class<?> cls);

    void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls);
}
