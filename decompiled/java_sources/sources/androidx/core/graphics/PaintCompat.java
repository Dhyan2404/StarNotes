package androidx.core.graphics;

import android.graphics.BlendMode;
import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.graphics.C0666a;
import androidx.core.util.Pair;

/* loaded from: classes3.dex */
public final class PaintCompat {

    /* renamed from: a */
    public static final String f5388a = "\udfffd";

    /* renamed from: b */
    public static final String f5389b = "m";

    /* renamed from: c */
    public static final ThreadLocal<Pair<Rect, Rect>> f5390c = new ThreadLocal<>();

    @RequiresApi(23)
    /* renamed from: androidx.core.graphics.PaintCompat$a */
    /* loaded from: classes3.dex */
    public static class C0662a {
        @DoNotInline
        /* renamed from: a */
        public static boolean m2912a(Paint paint, String str) {
            return paint.hasGlyph(str);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.graphics.PaintCompat$b */
    /* loaded from: classes3.dex */
    public static class C0663b {
        @DoNotInline
        /* renamed from: a */
        public static void m2913a(Paint paint, Object obj) {
            paint.setBlendMode((BlendMode) obj);
        }
    }

    /* renamed from: a */
    public static Pair<Rect, Rect> m2911a() {
        ThreadLocal<Pair<Rect, Rect>> threadLocal = f5390c;
        Pair<Rect, Rect> pair = threadLocal.get();
        if (pair == null) {
            Pair<Rect, Rect> pair2 = new Pair<>(new Rect(), new Rect());
            threadLocal.set(pair2);
            return pair2;
        }
        pair.first.setEmpty();
        pair.second.setEmpty();
        return pair;
    }

    public static boolean hasGlyph(@NonNull Paint paint, @NonNull String str) {
        return C0662a.m2912a(paint, str);
    }

    public static boolean setBlendMode(@NonNull Paint paint, @Nullable BlendModeCompat blendModeCompat) {
        C0663b.m2913a(paint, blendModeCompat != null ? C0666a.b.m2946a(blendModeCompat) : null);
        return true;
    }
}
