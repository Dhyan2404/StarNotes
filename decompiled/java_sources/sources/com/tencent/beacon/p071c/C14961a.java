package com.tencent.beacon.p071c;

import com.tencent.beacon.base.util.C14954c;
import com.tencent.beacon.module.ModuleName;
import com.tencent.beacon.module.StatModule;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.tencent.beacon.c.a */
/* loaded from: classes10.dex */
public class C14961a {

    /* renamed from: a */
    private static Map<String, Long> f92919a = new HashMap();

    /* renamed from: a */
    public static void m59418a(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        f92919a.put(str, Long.valueOf(currentTimeMillis));
        C14954c.m59392a("[page] onPageIn cost time: %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
    }

    /* renamed from: b */
    public static void m59419b(String str) {
        long currentTimeMillis = System.currentTimeMillis();
        Map<String, Long> map = f92919a;
        if (map == null) {
            C14954c.m59403e("[page] please call 'onPageIn' first!", new Object[0]);
            return;
        }
        Long l = map.get(str);
        if (l == null) {
            C14954c.m59403e("[page] please call 'onPageIn' first!", new Object[0]);
            return;
        }
        ((StatModule) C14888c.m58989c().m58990a(ModuleName.STAT)).m59693a(str, currentTimeMillis - l.longValue(), currentTimeMillis);
        f92919a.remove(str);
        C14954c.m59392a("[page] onPageOut cost time: %d", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
    }
}
