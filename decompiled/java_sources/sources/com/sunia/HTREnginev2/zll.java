package com.sunia.HTREnginev2;

import android.content.Context;
import android.content.res.loader.ResourcesLoader;
import androidx.annotation.RequiresApi;
import java.util.Map;

@RequiresApi(api = 30)
/* loaded from: classes6.dex */
public final class zll {
    /* renamed from: a */
    public static boolean m58728a(Context context, Map<Integer, Integer> map) {
        ResourcesLoader m54866a = j2e.m54866a(context, map);
        if (m54866a == null) {
            return false;
        }
        context.getResources().addLoaders(m54866a);
        return true;
    }

    /* renamed from: b */
    public static boolean m58729b(int i) {
        return 28 <= i && i <= 31;
    }
}
