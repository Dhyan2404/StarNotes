package org.apache.logging.log4j.util;

import com.sunia.HTREnginev2.c6j;
import java.lang.reflect.Method;
import org.apache.logging.log4j.LoggingException;

/* loaded from: classes12.dex */
public final class Base64Util {

    /* renamed from: a */
    public static Method f111258a;

    /* renamed from: b */
    public static Object f111259b;

    static {
        try {
            try {
                Class<?> loadClass = LoaderUtil.loadClass("java.util.Base64");
                Class<?> loadClass2 = LoaderUtil.loadClass("java.util.Base64$Encoder");
                f111259b = loadClass.getMethod("getEncoder", new Class[0]).invoke(null, new Object[0]);
                f111258a = loadClass2.getMethod("encodeToString", byte[].class);
            } catch (Exception e) {
                c6j.m53395b("Unable to create a Base64 Encoder", e);
            }
        } catch (Exception unused) {
            f111258a = LoaderUtil.loadClass("javax.xml.bind.DataTypeConverter").getMethod("printBase64Binary", new Class[0]);
        }
    }

    public static String encode(String str) {
        if (str == null) {
            return null;
        }
        byte[] bytes = str.getBytes();
        Method method = f111258a;
        if (method == null) {
            throw new LoggingException("No Encoder, unable to encode string");
        }
        try {
            return (String) method.invoke(f111259b, bytes);
        } catch (Exception e) {
            throw new LoggingException("Unable to encode String", e);
        }
    }
}
