package com.tencent.beacon.base.util;

import android.text.TextUtils;
import com.tencent.beacon.p059a.p062c.C14887b;
import com.tencent.beacon.p059a.p062c.C14888c;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* renamed from: com.tencent.beacon.base.util.h */
/* loaded from: classes10.dex */
public class C14959h {

    /* renamed from: a */
    public static AtomicBoolean f92918a = new AtomicBoolean(false);

    /* renamed from: a */
    public static void m59413a(String str) {
        C14954c.m59395b("[strict]  " + str, new Object[0]);
        if (f92918a.get()) {
            throw new IllegalStateException("[strict] " + str);
        }
    }

    /* renamed from: a */
    public static void m59414a(Map map) {
        if (!f92918a.get() || map == null) {
            return;
        }
        for (Object obj : map.keySet()) {
            if (!(obj instanceof String)) {
                m59413a("Key必须为String类型!");
            }
            if (!(map.get(obj) instanceof String)) {
                m59413a("Value必须为String类型!");
            }
        }
    }

    /* renamed from: a */
    private static boolean m59415a() {
        return f92918a.get() || C14887b.m58981d(C14888c.m58989c().m58997b());
    }

    /* renamed from: a */
    public static boolean m59416a(String str, Object obj) {
        boolean z;
        if (obj instanceof String) {
            z = TextUtils.isEmpty((String) obj);
        } else {
            z = obj == null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" ");
        sb.append(obj == null ? "=" : "!");
        sb.append("= null!");
        C14954c.m59392a(sb.toString(), new Object[0]);
        if (!z || !m59415a()) {
            return z;
        }
        throw new NullPointerException(str + " == null!");
    }
}
