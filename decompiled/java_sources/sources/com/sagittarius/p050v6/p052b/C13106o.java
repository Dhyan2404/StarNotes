package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sagittarius.v6.b.o */
/* loaded from: classes18.dex */
public final class C13106o {

    /* renamed from: a */
    private static final String[] f63278a = null;

    static {
        m52360a();
    }

    /* renamed from: a */
    private static String m52359a(String str, String str2) {
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
    private static void m52360a() {
        String[] strArr = new String[5];
        f63278a = strArr;
        strArr[0] = m52359a("ADATDhYZIhM=", "pQgfZ");
        f63278a[1] = m52359a("ECs1MQgRIygaEAc=", "tNMtd");
        f63278a[2] = m52359a("Mz08PRQyNSEWDCQLMQgIJT03Cx0zHTwbHScsLRcWJA==", "WXDxx");
        f63278a[3] = m52359a("PmwachQPIDAiBR4sO3IVAjE8PBZXLjQ5FDMmLRcdEi4wPAU=", "wCURq");
        f63278a[4] = m52359a("KyIgBxQnNyMnKCMuLgwwNQ==", "FCKbD");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52361a(ClassLoader classLoader, List list, File file) {
        IOException[] iOExceptionArr;
        Object obj = C13110s.m52375a(classLoader, f63278a[0]).get(classLoader);
        ArrayList arrayList = new ArrayList();
        Object[] objArr = (Object[]) C13110s.m52376a(obj, f63278a[4], List.class, File.class, List.class).invoke(obj, new ArrayList(list), file, arrayList);
        C13099h.m52349a(obj, f63278a[1], objArr);
        C13099h.m52350a(objArr);
        if (arrayList.size() > 0) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                it2.next();
            }
            Field m52375a = C13110s.m52375a(obj, f63278a[2]);
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
            IOException iOException = new IOException(f63278a[3]);
            iOException.initCause((Throwable) arrayList.get(0));
            throw iOException;
        }
    }
}
