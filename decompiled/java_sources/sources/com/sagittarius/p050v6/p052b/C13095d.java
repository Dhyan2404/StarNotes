package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.sagittarius.v6.b.d */
/* loaded from: classes18.dex */
final class C13095d {

    /* renamed from: a */
    private static final String[] f63257a = null;

    static {
        m52326a();
    }

    /* renamed from: a */
    private static String m52325a(String str, String str2) {
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
    private static void m52326a() {
        String[] strArr = new String[5];
        f63257a = strArr;
        strArr[0] = m52325a("PwUfMiImFx8=", "OdkZn");
        f63257a[1] = m52325a("IQg1JSEqJSguJS4bOAg+PQwiODg9ACQ/", "OiALW");
        f63257a[2] = m52325a("Ix8kORw9KDY5ECYDGyQbIgclND05FDIuDT8UPigK", "PfWMy");
        f63257a[3] = m52325a("DzslECEDLiYwHQc3KxsFEQ==", "bZNuq");
        f63257a[4] = m52325a("IwodKiIoJwAhJiwZEBM1OQMsLzEgDgc3Jw==", "MkiCT");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m52327a(ClassLoader classLoader, File file) {
        Object obj = C13110s.m52375a(classLoader, f63257a[0]).get(classLoader);
        List list = (List) C13110s.m52375a(obj, f63257a[1]).get(obj);
        list.add(0, file);
        List list2 = (List) C13110s.m52375a(obj, f63257a[2]).get(obj);
        Method m52376a = C13110s.m52376a(obj, f63257a[3], List.class, File.class, List.class);
        ArrayList arrayList = new ArrayList();
        list.addAll(list2);
        Object[] objArr = (Object[]) m52376a.invoke(obj, list, null, arrayList);
        Field m52375a = C13110s.m52375a(obj, f63257a[4]);
        m52375a.setAccessible(true);
        m52375a.set(obj, objArr);
    }
}
