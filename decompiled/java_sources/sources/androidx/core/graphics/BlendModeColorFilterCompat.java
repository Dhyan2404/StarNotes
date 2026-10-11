package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.ColorFilter;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.C0666a;

/* loaded from: classes3.dex */
public class BlendModeColorFilterCompat {

    @RequiresApi(29)
    /* renamed from: androidx.core.graphics.BlendModeColorFilterCompat$a */
    /* loaded from: classes3.dex */
    public static class C0659a {
        @DoNotInline
        /* renamed from: a */
        public static ColorFilter m2899a(int i, Object obj) {
            return new BlendModeColorFilter(i, (BlendMode) obj);
        }
    }

    @Nullable
    public static ColorFilter createBlendModeColorFilterCompat(int i, @NonNull BlendModeCompat blendModeCompat) {
        Object m2946a = C0666a.b.m2946a(blendModeCompat);
        if (m2946a != null) {
            return C0659a.m2899a(i, m2946a);
        }
        return null;
    }
}
