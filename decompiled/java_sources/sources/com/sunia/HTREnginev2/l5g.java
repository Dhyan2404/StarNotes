package com.sunia.HTREnginev2;

import com.google.protobuf.ExtensionRegistryLite;
import org.apache.commons.math3.dfp.Dfp;

/* loaded from: classes6.dex */
public final class l5g {

    /* renamed from: a */
    public static final String f76151a = "com.google.protobuf.ExtensionRegistry";

    /* renamed from: b */
    public static final Class<?> f76152b = m55385e();

    /* renamed from: a */
    public static ExtensionRegistryLite m55381a() {
        ExtensionRegistryLite m55383c = m55383c(Dfp.f108018r);
        return m55383c != null ? m55383c : new ExtensionRegistryLite();
    }

    /* renamed from: b */
    public static ExtensionRegistryLite m55382b() {
        ExtensionRegistryLite m55383c = m55383c("getEmptyRegistry");
        return m55383c != null ? m55383c : ExtensionRegistryLite.f37422f;
    }

    /* renamed from: c */
    public static final ExtensionRegistryLite m55383c(String methodName) {
        Class<?> cls = f76152b;
        if (cls == null) {
            return null;
        }
        try {
            return (ExtensionRegistryLite) cls.getDeclaredMethod(methodName, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* renamed from: d */
    public static boolean m55384d(ExtensionRegistryLite registry) {
        Class<?> cls = f76152b;
        return cls != null && cls.isAssignableFrom(registry.getClass());
    }

    /* renamed from: e */
    public static Class<?> m55385e() {
        try {
            return Class.forName(f76151a);
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
