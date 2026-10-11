package javax.imageio.spi;

import java.util.Locale;

/* loaded from: classes5.dex */
public abstract class IIOServiceProvider implements RegisterableService {
    protected String vendorName;
    protected String version;

    public IIOServiceProvider(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("vendorName == null!");
        }
        if (str2 != null) {
            this.vendorName = str;
            this.version = str2;
            return;
        }
        throw new IllegalArgumentException("version == null!");
    }

    public abstract String getDescription(Locale locale);

    public String getVendorName() {
        return this.vendorName;
    }

    public String getVersion() {
        return this.version;
    }

    @Override // javax.imageio.spi.RegisterableService
    public void onDeregistration(ServiceRegistry serviceRegistry, Class<?> cls) {
    }

    @Override // javax.imageio.spi.RegisterableService
    public void onRegistration(ServiceRegistry serviceRegistry, Class<?> cls) {
    }

    public IIOServiceProvider() {
    }
}
