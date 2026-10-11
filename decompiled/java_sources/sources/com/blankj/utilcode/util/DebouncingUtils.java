package com.blankj.utilcode.util;

import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
public class DebouncingUtils {

    /* renamed from: a */
    public static final int f13737a = 64;

    /* renamed from: b */
    public static final Map<String, Long> f13738b = new ConcurrentHashMap(64);

    /* renamed from: c */
    public static final long f13739c = 1000;

    public DebouncingUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    /* renamed from: a */
    public static void m8058a(long j) {
        Map<String, Long> map = f13738b;
        if (map.size() < 64) {
            return;
        }
        Iterator<Map.Entry<String, Long>> it2 = map.entrySet().iterator();
        while (it2.hasNext()) {
            if (j >= it2.next().getValue().longValue()) {
                it2.remove();
            }
        }
    }

    public static boolean isValid(@NonNull View view) {
        return isValid(view, 1000L);
    }

    public static boolean isValid(@NonNull View view, long j) {
        return isValid(String.valueOf(view.hashCode()), j);
    }

    public static boolean isValid(@NonNull String str, long j) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("The key is null.");
        }
        if (j >= 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            m8058a(elapsedRealtime);
            Map<String, Long> map = f13738b;
            Long l = map.get(str);
            if (l != null && elapsedRealtime < l.longValue()) {
                return false;
            }
            map.put(str, Long.valueOf(elapsedRealtime + j));
            return true;
        }
        throw new IllegalArgumentException("The duration is less than 0.");
    }
}
