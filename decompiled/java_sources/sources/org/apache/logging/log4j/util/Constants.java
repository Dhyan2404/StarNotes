package org.apache.logging.log4j.util;

/* loaded from: classes12.dex */
public final class Constants {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Object[] EMPTY_OBJECT_ARRAY;
    public static final boolean ENABLE_THREADLOCALS;
    public static final boolean IS_WEB_APP;
    public static final int JAVA_MAJOR_VERSION;
    public static final String LOG4J2_DEBUG = "log4j2.debug";
    public static final int MAX_REUSABLE_MESSAGE_SIZE;

    static {
        boolean booleanProperty = PropertiesUtil.getProperties().getBooleanProperty("log4j2.is.webapp", m68642c("javax.servlet.Servlet") || m68642c("jakarta.servlet.Servlet"));
        IS_WEB_APP = booleanProperty;
        ENABLE_THREADLOCALS = !booleanProperty && PropertiesUtil.getProperties().getBooleanProperty("log4j2.enable.threadlocals", true);
        JAVA_MAJOR_VERSION = m68640a();
        MAX_REUSABLE_MESSAGE_SIZE = m68643d("log4j.maxReusableMsgSize", 518);
        EMPTY_OBJECT_ARRAY = new Object[0];
        EMPTY_BYTE_ARRAY = new byte[0];
    }

    /* renamed from: a */
    public static int m68640a() {
        return m68641b(System.getProperty("java.version"));
    }

    /* renamed from: b */
    public static int m68641b(final String version) {
        String[] split = version.split("-|\\.");
        try {
            int parseInt = Integer.parseInt(split[0]);
            return parseInt != 1 ? parseInt : Integer.parseInt(split[1]);
        } catch (Exception unused) {
            return 0;
        }
    }

    /* renamed from: c */
    public static boolean m68642c(final String className) {
        try {
            return LoaderUtil.loadClass(className) != null;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* renamed from: d */
    public static int m68643d(final String property, final int defaultValue) {
        return PropertiesUtil.getProperties().getIntegerProperty(property, defaultValue);
    }
}
