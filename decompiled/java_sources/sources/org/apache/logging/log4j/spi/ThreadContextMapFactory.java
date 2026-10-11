package org.apache.logging.log4j.spi;

import com.sunia.HTREnginev2.oce;
import com.sunia.HTREnginev2.tyg;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.logging.log4j.status.StatusLogger;
import org.apache.logging.log4j.util.Constants;
import org.apache.logging.log4j.util.PropertiesUtil;
import org.apache.logging.log4j.util.ProviderUtil;

/* loaded from: classes12.dex */
public final class ThreadContextMapFactory {

    /* renamed from: a */
    public static final Logger f111247a = StatusLogger.getLogger();

    /* renamed from: b */
    public static final String f111248b = "log4j2.threadContextMap";

    /* renamed from: c */
    public static final String f111249c = "log4j2.garbagefree.threadContextMap";

    /* renamed from: d */
    public static boolean f111250d;

    /* renamed from: e */
    public static String f111251e;

    static {
        m68630b();
    }

    /* renamed from: a */
    public static ThreadContextMap m68629a() {
        return Constants.ENABLE_THREADLOCALS ? f111250d ? new tyg() : new oce() : new DefaultThreadContextMap(true);
    }

    /* renamed from: b */
    public static void m68630b() {
        PropertiesUtil properties = PropertiesUtil.getProperties();
        f111251e = properties.getStringProperty(f111248b);
        f111250d = properties.getBooleanProperty(f111249c);
    }

    public static ThreadContextMap createThreadContextMap() {
        Class<? extends ThreadContextMap> loadThreadContextMap;
        ClassLoader findClassLoader = ProviderUtil.findClassLoader();
        String str = f111251e;
        ThreadContextMap threadContextMap = null;
        if (str != null) {
            try {
                Class<?> loadClass = findClassLoader.loadClass(str);
                if (ThreadContextMap.class.isAssignableFrom(loadClass)) {
                    threadContextMap = (ThreadContextMap) loadClass.newInstance();
                }
            } catch (ClassNotFoundException unused) {
                f111247a.error("Unable to locate configured ThreadContextMap {}", f111251e);
            } catch (Exception e) {
                f111247a.error("Unable to create configured ThreadContextMap {}", f111251e, e);
            }
        }
        if (threadContextMap == null && ProviderUtil.hasProviders() && LogManager.getFactory() != null) {
            String name = LogManager.getFactory().getClass().getName();
            for (Provider provider : ProviderUtil.getProviders()) {
                if (name.equals(provider.getClassName()) && (loadThreadContextMap = provider.loadThreadContextMap()) != null) {
                    try {
                        threadContextMap = loadThreadContextMap.newInstance();
                        break;
                    } catch (Exception e2) {
                        f111247a.error("Unable to locate or load configured ThreadContextMap {}", provider.getThreadContextMap(), e2);
                        threadContextMap = m68629a();
                    }
                }
            }
        }
        return threadContextMap == null ? m68629a() : threadContextMap;
    }

    public static void init() {
        oce.m55929d();
        tyg.m57479e();
        DefaultThreadContextMap.init();
        m68630b();
    }
}
