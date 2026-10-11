package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.IOException;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sagittarius.v6.b.p */
/* loaded from: classes18.dex */
public final class C13107p {

    /* renamed from: a */
    private static final String[] f63279a = null;

    static {
        m52363a();
    }

    /* renamed from: a */
    private static String m52362a(String str, String str2) {
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
    private static void m52363a() {
        String[] strArr = new String[5];
        f63279a = strArr;
        strArr[0] = m52362a("FjM7EC0PITs=", "fROxa");
        f63279a[1] = m52362a("CxUTJggKHQ4NEBw=", "opkcd");
        f63279a[2] = m52362a("ATwzDiIANC4lOhYKPjs+Fzw4OCsBHDMoKxUtIiQgFg==", "eYKKN");
        f63279a[3] = m52362a("MG0EajwBIS46LRAtJWo9DDAiJD5ZLyohPD0nMw81HC8uJC0=", "yBKJY");
        f63279a[4] = m52362a("HwQMNQQcKAI9IgAcIzU1NwkCPSgcERQ=", "regPM");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52364a(ClassLoader classLoader, ByteBuffer byteBuffer) {
        m52365a(classLoader, new ByteBuffer[]{byteBuffer});
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52365a(ClassLoader classLoader, ByteBuffer[] byteBufferArr) {
        IOException[] iOExceptionArr;
        Object obj = C13110s.m52375a(classLoader, f63279a[0]).get(classLoader);
        ArrayList arrayList = new ArrayList();
        Object[] m52366a = m52366a(obj, byteBufferArr, arrayList);
        C13099h.m52349a(obj, f63279a[1], m52366a);
        C13099h.m52350a(m52366a);
        if (arrayList.size() > 0) {
            Field m52375a = C13110s.m52375a(obj, f63279a[2]);
            IOException[] iOExceptionArr2 = (IOException[]) m52375a.get(obj);
            if (iOExceptionArr2 == null) {
                iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
            } else {
                IOException[] iOExceptionArr3 = new IOException[arrayList.size() + iOExceptionArr2.length];
                arrayList.toArray(iOExceptionArr3);
                System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                iOExceptionArr = iOExceptionArr3;
            }
            m52375a.set(obj, iOExceptionArr);
            IOException iOException = new IOException(f63279a[3]);
            iOException.initCause((Throwable) arrayList.get(0));
            throw iOException;
        }
    }

    /* renamed from: a */
    private static Object[] m52366a(Object obj, ByteBuffer[] byteBufferArr, ArrayList arrayList) {
        return (Object[]) C13110s.m52376a(obj, f63279a[4], ByteBuffer[].class, List.class).invoke(obj, byteBufferArr, arrayList);
    }
}
