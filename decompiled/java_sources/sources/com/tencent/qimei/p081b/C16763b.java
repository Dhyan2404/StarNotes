package com.tencent.qimei.p081b;

import android.util.Base64;
import com.tencent.qimei.p093n.C16806a;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.tencent.qimei.b.b */
/* loaded from: classes10.dex */
public class C16763b {

    /* renamed from: a */
    public static final ConcurrentHashMap<Integer, String> f93441a;

    static {
        ConcurrentHashMap<Integer, String> concurrentHashMap = new ConcurrentHashMap<>();
        f93441a = concurrentHashMap;
        concurrentHashMap.put(0, m59892a("aWVtaXE="));
        concurrentHashMap.put(1, m59892a("NjNpZW1pcQ=="));
        concurrentHashMap.put(2, m59892a("QVRHTkVEX0lFTUlR"));
        concurrentHashMap.put(3, m59892a("MV9JRU1JUV9OT0NBRUI="));
        concurrentHashMap.put(4, m59892a("MnZfaWVtaXE="));
        concurrentHashMap.put(5, m59892a("ZGlhbw=="));
        concurrentHashMap.put(6, m59892a("aWVtaQ=="));
        concurrentHashMap.put(7, m59892a("aXNtaQ=="));
        concurrentHashMap.put(8, m59892a("Y2Ft"));
        concurrentHashMap.put(9, m59892a("ZGlj"));
        concurrentHashMap.put(10, m59892a("aWVtaVFldGFkcHU="));
        concurrentHashMap.put(11, m59892a("ZElkaW9yZG5h"));
        concurrentHashMap.put(12, m59892a("ZHJhb2IudGN1ZG9ycC5vcg=="));
        concurrentHashMap.put(13, m59892a("ZG5hcmIudGN1ZG9ycC5vcg=="));
        concurrentHashMap.put(14, m59892a("ZWNpdmVkLnRjdWRvcnAub3I="));
        concurrentHashMap.put(15, m59892a("bGV2ZWxfaXBhX3RzcmlmLnRjdWRvcnAub3I="));
        concurrentHashMap.put(16, m59892a("cmVydXRjYWZ1bmFtLnRjdWRvcnAub3I="));
        concurrentHashMap.put(17, m59892a("ZW1hbi50Y3Vkb3JwLm9y"));
        concurrentHashMap.put(18, m59892a("dHNvaC5kbGl1Yi5vcg=="));
        concurrentHashMap.put(19, m59892a("S0RTaWVtaVEua2RzLmllbWlxLnRuZWNuZXQubW9j"));
        concurrentHashMap.put(20, m59892a("Y3JTZElub2NhZWI="));
    }

    /* renamed from: a */
    public static String m59891a(int i) {
        String str = f93441a.get(Integer.valueOf(i));
        return str == null ? "" : str;
    }

    /* renamed from: a */
    public static String m59892a(String str) {
        try {
            return new StringBuilder(new String(Base64.decode(str, 2))).reverse().toString();
        } catch (Exception e) {
            C16806a.m59992a(e);
            return "";
        }
    }
}
