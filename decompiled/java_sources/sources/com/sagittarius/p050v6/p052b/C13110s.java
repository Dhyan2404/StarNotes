package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;

/* renamed from: com.sagittarius.v6.b.s */
/* loaded from: classes18.dex */
public final class C13110s {

    /* renamed from: a */
    private static final String[] f63284a = null;

    static {
        m52377a();
    }

    /* renamed from: a */
    private static String m52374a(String str, String str2) {
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
    public static Field m52375a(Object obj, String str) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException e) {
            }
        }
        throw new NoSuchFieldException(f63284a[0] + str + f63284a[1] + obj.getClass());
    }

    /* renamed from: a */
    public static Method m52376a(Object obj, String str, Class... clsArr) {
        for (Class<?> cls = obj.getClass(); cls != null; cls = cls.getSuperclass()) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException e) {
            }
        }
        throw new NoSuchMethodException(f63284a[2] + str + f63284a[3] + Arrays.asList(clsArr) + f63284a[4] + obj.getClass());
    }

    /* renamed from: a */
    private static void m52377a() {
        String[] strArr = new String[5];
        f63284a = strArr;
        strArr[0] = m52374a("MDoIFDFW", "vSmxU");
        f63284a[1] = m52374a("bw0HJXkpDB0/PW8KBnE=", "OchQY");
        f63284a[2] = m52374a("BwI6OgUuRw==", "JgNRj");
        f63284a[3] = m52374a("aTo7HxJpPTMZGyQoJg4IOm0=", "IMRkz");
        f63284a[4] = m52374a("SA0sBEgODDYeDEgKLVA=", "hcCph");
    }

    /* renamed from: a */
    public static void m52378a(Object obj, String str, Object[] objArr) {
        Field m52375a = m52375a(obj, str);
        Object[] objArr2 = (Object[]) m52375a.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + 1);
        System.arraycopy(objArr, 0, objArr3, 0, 1);
        System.arraycopy(objArr2, 0, objArr3, 1, objArr2.length);
        m52375a.set(obj, objArr3);
    }
}
