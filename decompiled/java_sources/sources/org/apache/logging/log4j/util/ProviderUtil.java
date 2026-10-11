package org.apache.logging.log4j.util;

import java.io.IOException;
import java.net.URL;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.ServiceLoader;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.spi.Provider;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.LoaderUtil;

/* loaded from: classes12.dex */
public final class ProviderUtil {
    protected static final String PROVIDER_RESOURCE = "META-INF/log4j-provider.properties";

    /* renamed from: a */
    public static final String f111288a = "Log4jAPIVersion";

    /* renamed from: d */
    public static volatile ProviderUtil f111291d;
    protected static final Collection<Provider> PROVIDERS = new HashSet();
    protected static final Lock STARTUP_LOCK = new ReentrantLock();

    /* renamed from: b */
    public static final String[] f111289b = {"2.6.0"};

    /* renamed from: c */
    public static final Logger f111290c = StatusLogger.getLogger();

    public ProviderUtil() {
        for (ClassLoader classLoader : LoaderUtil.getClassLoaders()) {
            try {
                loadProviders(classLoader);
            } catch (Throwable th) {
                f111290c.debug("Unable to retrieve provider from ClassLoader {}", classLoader, th);
            }
        }
        for (LoaderUtil.C19406c c19406c : LoaderUtil.m68648c(PROVIDER_RESOURCE)) {
            loadProvider(c19406c.m68652b(), c19406c.m68651a());
        }
    }

    /* renamed from: a */
    public static boolean m68667a(final String version) {
        for (String str : f111289b) {
            if (version.startsWith(str)) {
                return true;
            }
        }
        return false;
    }

    public static void addProvider(final Provider provider) {
        PROVIDERS.add(provider);
        f111290c.debug("Loaded Provider {}", provider);
    }

    public static ClassLoader findClassLoader() {
        return LoaderUtil.getThreadContextClassLoader();
    }

    public static Iterable<Provider> getProviders() {
        lazyInit();
        return PROVIDERS;
    }

    public static boolean hasProviders() {
        lazyInit();
        return !PROVIDERS.isEmpty();
    }

    public static void lazyInit() {
        if (f111291d == null) {
            try {
                Lock lock = STARTUP_LOCK;
                lock.lockInterruptibly();
                try {
                    if (f111291d == null) {
                        f111291d = new ProviderUtil();
                    }
                    lock.unlock();
                } catch (Throwable th) {
                    STARTUP_LOCK.unlock();
                    throw th;
                }
            } catch (InterruptedException e) {
                f111290c.fatal("Interrupted before Log4j Providers could be loaded.", (Throwable) e);
                Thread.currentThread().interrupt();
            }
        }
    }

    public static void loadProvider(final URL url, final ClassLoader cl) {
        try {
            Properties m68654b = PropertiesUtil.m68654b(url.openStream(), url);
            if (m68667a(m68654b.getProperty(f111288a))) {
                Provider provider = new Provider(m68654b, url, cl);
                PROVIDERS.add(provider);
                f111290c.debug("Loaded Provider {}", provider);
            }
        } catch (IOException e) {
            f111290c.error("Unable to open {}", url, e);
        }
    }

    public static void loadProviders(final ClassLoader classLoader) {
        Iterator it2 = ServiceLoader.load(Provider.class, classLoader).iterator();
        while (it2.hasNext()) {
            Provider provider = (Provider) it2.next();
            if (m68667a(provider.getVersions())) {
                Collection<Provider> collection = PROVIDERS;
                if (!collection.contains(provider)) {
                    collection.add(provider);
                }
            }
        }
    }

    @Deprecated
    public static void loadProviders(final Enumeration<URL> urls, final ClassLoader cl) {
        if (urls != null) {
            while (urls.hasMoreElements()) {
                loadProvider(urls.nextElement(), cl);
            }
        }
    }
}
