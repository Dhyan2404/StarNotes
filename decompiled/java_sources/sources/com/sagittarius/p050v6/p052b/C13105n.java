package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.sagittarius.v6.b.n */
/* loaded from: classes18.dex */
public final class C13105n {

    /* renamed from: a */
    private static final String[] f63277a = null;

    static {
        m52357a();
    }

    /* renamed from: a */
    private static String m52356a(String str, String str2) {
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
    private static void m52357a() {
        String[] strArr = new String[5];
        f63277a = strArr;
        strArr[0] = m52356a("FhQ3BSMPBjc=", "fuCmo");
        f63277a[1] = m52356a("BQwbFB8EBAY/BxI=", "aicQs");
        f63277a[2] = m52356a("PAcXAD49DworJisxGjUiKgccNjc8JxcmNygWBio8Kw==", "XboER");
        f63277a[3] = m52356a("OGs/VyMJJxUHMhgrHlciBDYZGSFRKREcIzUhCDIqFCkVGTI=", "qDpwF");
        f63277a[4] = m52356a("CSwiNgwBNQw/LQkoJyc7", "dMISH");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m52358a(ClassLoader classLoader, List list, File file) {
        IOException[] iOExceptionArr;
        Object obj = C13110s.m52375a(classLoader, f63277a[0]).get(classLoader);
        ArrayList arrayList = new ArrayList();
        Object[] objArr = (Object[]) C13110s.m52376a(obj, f63277a[4], ArrayList.class, File.class, ArrayList.class).invoke(obj, new ArrayList(list), file, arrayList);
        C13099h.m52349a(obj, f63277a[1], objArr);
        C13099h.m52350a(objArr);
        if (arrayList.size() > 0) {
            Field m52375a = C13110s.m52375a(obj, f63277a[2]);
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
            IOException iOException = new IOException(f63277a[3]);
            iOException.initCause((Throwable) arrayList.get(0));
            throw iOException;
        }
    }
}
