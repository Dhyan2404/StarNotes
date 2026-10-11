package androidx.dynamicanimation.animation;

import android.util.FloatProperty;
import androidx.annotation.RequiresApi;

/* loaded from: classes3.dex */
public abstract class FloatPropertyCompat<T> {

    /* renamed from: a */
    public final String f6887a;

    /* renamed from: androidx.dynamicanimation.animation.FloatPropertyCompat$a */
    /* loaded from: classes3.dex */
    public static class C1029a extends FloatPropertyCompat<T> {

        /* renamed from: b */
        public final /* synthetic */ FloatProperty f6888b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1029a(String str, FloatProperty floatProperty) {
            super(str);
            this.f6888b = floatProperty;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public float getValue(T t) {
            return ((Float) this.f6888b.get(t)).floatValue();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public void setValue(T t, float f) {
            this.f6888b.setValue(t, f);
        }
    }

    public FloatPropertyCompat(String str) {
        this.f6887a = str;
    }

    @RequiresApi(24)
    public static <T> FloatPropertyCompat<T> createFloatPropertyCompat(FloatProperty<T> floatProperty) {
        return new C1029a(floatProperty.getName(), floatProperty);
    }

    public abstract float getValue(T t);

    public abstract void setValue(T t, float f);
}
