package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import dalvik.system.DexFile;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sagittarius.v6.b.i */
/* loaded from: classes18.dex */
public final class C13100i {

    /* renamed from: b */
    private static final String[] f63272b = null;

    /* renamed from: a */
    private final InterfaceC13101j f63273a;

    static {
        m52353a();
    }

    private C13100i() {
        InterfaceC13101j c13104m;
        Class<?> cls = Class.forName(f63272b[0]);
        try {
            c13104m = new C13102k(cls);
        } catch (NoSuchMethodException e) {
            try {
                c13104m = new C13103l(cls);
            } catch (NoSuchMethodException e2) {
                c13104m = new C13104m(cls);
            }
        }
        this.f63273a = c13104m;
    }

    /* renamed from: a */
    private static String m52352a(String str, String str2) {
        byte[] m52319a = C13091a.m52319a(str);
        StringBuilder sb = new StringBuilder();
        char[] charArray = str2.toCharArray();
        int i = 0;
        for (byte b : m52319a) {
            sb.append((char) (b ^ charArray[i % charArray.length]));
            i++;
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m52353a() {
        String[] strArr = new String[4];
        f63272b = strArr;
        strArr[0] = m52352a("JzAuECMofzEfOTc0L0gOJikSBz4rHSsVPmcULgMnJj82", "CQBfJ");
        f63272b[1] = m52352a("CiQ9PCMTNj0=", "zEITo");
        f63272b[2] = m52352a("NhcCKx43Hx8ABiE=", "Rrznr");
        f63272b[3] = m52352a("Ny0hLSArKTggCzM/", "GLUEe");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52354a(ClassLoader classLoader, List list) {
        int i;
        Object obj = C13110s.m52375a(classLoader, f63272b[1]).get(classLoader);
        C13100i c13100i = new C13100i();
        Object[] objArr = new Object[list.size()];
        for (int i2 = 0; i2 < objArr.length; i2++) {
            File file = (File) list.get(i2);
            InterfaceC13101j interfaceC13101j = c13100i.f63273a;
            String path = file.getPath();
            File parentFile = file.getParentFile();
            String name = file.getName();
            StringBuilder sb = new StringBuilder();
            int length = name.length();
            i = C13099h.f63268e;
            sb.append(name.substring(0, length - i));
            sb.append(C13099h.f63264a);
            objArr[i2] = interfaceC13101j.mo52355a(file, DexFile.loadDex(path, new File(parentFile, sb.toString()).getPath(), 0));
        }
        try {
            C13099h.m52349a(obj, f63272b[2], objArr);
        } catch (NoSuchFieldException e) {
            C13099h.m52349a(obj, f63272b[3], objArr);
        }
        C13099h.m52350a(objArr);
    }
}
