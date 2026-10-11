package org.apache.logging.log4j.util;

import java.net.URL;
import java.security.Permission;
import java.util.Iterator;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.spi.LoggerContextFactory;
import org.apache.logging.log4j.spi.Provider;
import org.apache.logging.log4j.status.StatusLogger;
import org.osgi.framework.AdaptPermission;
import org.osgi.framework.AdminPermission;
import org.osgi.framework.Bundle;
import org.osgi.framework.BundleActivator;
import org.osgi.framework.BundleContext;
import org.osgi.framework.BundleEvent;
import org.osgi.framework.InvalidSyntaxException;
import org.osgi.framework.ServiceReference;
import org.osgi.framework.SynchronousBundleListener;
import org.osgi.framework.wiring.BundleWire;
import org.osgi.framework.wiring.BundleWiring;

/* loaded from: classes12.dex */
public class Activator implements BundleActivator, SynchronousBundleListener {

    /* renamed from: b */
    public static final SecurityManager f111255b = System.getSecurityManager();

    /* renamed from: c */
    public static final Logger f111256c = StatusLogger.getLogger();

    /* renamed from: a */
    public boolean f111257a;

    /* renamed from: a */
    public static void m68632a(final Permission permission) {
        SecurityManager securityManager = f111255b;
        if (securityManager != null) {
            securityManager.checkPermission(permission);
        }
    }

    /* renamed from: b */
    public final void m68633b(final Bundle bundle) {
        if (bundle.getState() == 1) {
            return;
        }
        try {
            m68632a(new AdminPermission(bundle, "resource"));
            m68632a(new AdaptPermission(BundleWiring.class.getName(), bundle, "adapt"));
            BundleContext bundleContext = bundle.getBundleContext();
            if (bundleContext == null) {
                f111256c.debug("Bundle {} has no context (state={}), skipping loading provider", bundle.getSymbolicName(), m68635d(bundle.getState()));
            } else {
                m68634c(bundleContext, (BundleWiring) bundle.adapt(BundleWiring.class));
            }
        } catch (SecurityException e) {
            f111256c.debug("Cannot access bundle [{}] contents. Ignoring.", bundle.getSymbolicName(), e);
        } catch (Exception e2) {
            f111256c.warn("Problem checking bundle {} for Log4j 2 provider.", bundle.getSymbolicName(), e2);
        }
    }

    public void bundleChanged(final BundleEvent event) {
        if (event.getType() != 2) {
            return;
        }
        m68633b(event.getBundle());
        m68636e();
    }

    /* renamed from: c */
    public final void m68634c(final BundleContext bundleContext, final BundleWiring bundleWiring) {
        try {
            Iterator it2 = bundleContext.getServiceReferences(Provider.class, "(APIVersion>=2.6.0)").iterator();
            Provider provider = null;
            while (it2.hasNext()) {
                Provider provider2 = (Provider) bundleContext.getService((ServiceReference) it2.next());
                if (provider == null || provider2.getPriority().intValue() > provider.getPriority().intValue()) {
                    provider = provider2;
                }
            }
            if (provider != null) {
                ProviderUtil.addProvider(provider);
            }
        } catch (InvalidSyntaxException e) {
            f111256c.error("Invalid service filter: (APIVersion>=2.6.0)", e);
        }
        Iterator it3 = bundleWiring.findEntries("META-INF", "log4j-provider.properties", 0).iterator();
        while (it3.hasNext()) {
            ProviderUtil.loadProvider((URL) it3.next(), bundleWiring.getClassLoader());
        }
    }

    /* renamed from: d */
    public final String m68635d(final int state) {
        return state != 1 ? state != 2 ? state != 4 ? state != 8 ? state != 16 ? state != 32 ? Integer.toString(state) : "ACTIVE" : "STOPPING" : "STARTING" : "RESOLVED" : "INSTALLED" : "UNINSTALLED";
    }

    /* renamed from: e */
    public final void m68636e() {
        if (!this.f111257a || ProviderUtil.PROVIDERS.isEmpty()) {
            return;
        }
        ProviderUtil.STARTUP_LOCK.unlock();
        this.f111257a = false;
    }

    public void start(final BundleContext bundleContext) throws Exception {
        ProviderUtil.STARTUP_LOCK.lock();
        this.f111257a = true;
        Iterator it2 = ((BundleWiring) bundleContext.getBundle().adapt(BundleWiring.class)).getRequiredWires(LoggerContextFactory.class.getName()).iterator();
        while (it2.hasNext()) {
            m68634c(bundleContext, ((BundleWire) it2.next()).getProviderWiring());
        }
        bundleContext.addBundleListener(this);
        for (Bundle bundle : bundleContext.getBundles()) {
            m68633b(bundle);
        }
        m68636e();
    }

    public void stop(final BundleContext bundleContext) throws Exception {
        bundleContext.removeBundleListener(this);
        m68636e();
    }
}
