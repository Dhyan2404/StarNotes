package com.sagittarius.p050v6.p052b;

import com.sagittarius.p050v6.p051a.C13091a;

/* renamed from: com.sagittarius.v6.b.c */
/* loaded from: classes18.dex */
final class C13094c {

    /* renamed from: a */
    private static final String[] f63256a = null;

    static {
        m52323a();
    }

    /* renamed from: a */
    private static String m52322a(String str, String str2) {
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
    private static void m52323a() {
        String[] strArr = new String[2];
        f63256a = strArr;
        strArr[0] = m52322a("NhMRLh8vARE=", "FreFS");
        f63256a[1] = m52322a("KAQ6EwQjKScYACcXNz4bNAAtDh00DCsJ", "FeNzr");
    }
}
