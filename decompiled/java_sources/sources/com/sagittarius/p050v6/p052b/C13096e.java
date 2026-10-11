package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* renamed from: com.sagittarius.v6.b.e */
/* loaded from: classes18.dex */
final class C13096e {

    /* renamed from: a */
    private static final String[] f63258a = null;

    static {
        m52329a();
    }

    /* renamed from: a */
    private static String m52328a(String str, String str2) {
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
    private static void m52329a() {
        String[] strArr = new String[5];
        f63258a = strArr;
        strArr[0] = m52328a("CDkVGQIRKxU=", "xXaqN");
        f63258a[1] = m52328a("LwAdPxokLQA0HiATEBIFMwQKIgMzCAwl", "AaiVl");
        f63258a[2] = m52328a("HBYCExYCIRATGhkKPQ4RHQ4DHjcGHRQEBwAdGAIA", "ooqgs");
        f63258a[3] = m52328a("BzQCAhoLIQEiJg84DAk+GQ==", "jUigJ");
        f63258a[4] = m52328a("Lw8CGjkkIh8RPSAcDyMuNQYzHyosCxgHPA==", "AnvsO");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m52330a(ClassLoader classLoader, File file) {
        Object obj = C13110s.m52375a(classLoader, f63258a[0]).get(classLoader);
        List list = (List) C13110s.m52375a(obj, f63258a[1]).get(obj);
        list.add(0, file);
        List list2 = (List) C13110s.m52375a(obj, f63258a[2]).get(obj);
        Method m52376a = C13110s.m52376a(obj, f63258a[3], List.class);
        list.addAll(list2);
        Object[] objArr = (Object[]) m52376a.invoke(obj, list);
        Field m52375a = C13110s.m52375a(obj, f63258a[4]);
        m52375a.setAccessible(true);
        m52375a.set(obj, objArr);
    }
}
