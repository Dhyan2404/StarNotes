package androidx.core.view;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.NonNull;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public final class LayoutInflaterCompat {

    /* renamed from: a */
    public static final String f5835a = "LayoutInflaterCompatHC";

    /* renamed from: b */
    public static Field f5836b;

    /* renamed from: c */
    public static boolean f5837c;

    /* renamed from: androidx.core.view.LayoutInflaterCompat$a */
    /* loaded from: classes3.dex */
    public static class LayoutInflaterFactory2C0770a implements LayoutInflater.Factory2 {

        /* renamed from: e */
        public final LayoutInflaterFactory f5838e;

        public LayoutInflaterFactory2C0770a(LayoutInflaterFactory layoutInflaterFactory) {
            this.f5838e = layoutInflaterFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f5838e.onCreateView(null, str, context, attributeSet);
        }

        @NonNull
        public String toString() {
            return getClass().getName() + "{" + this.f5838e + "}";
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f5838e.onCreateView(view, str, context, attributeSet);
        }
    }

    /* renamed from: a */
    public static void m3331a(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!f5837c) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                f5836b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(f5835a, "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            f5837c = true;
        }
        Field field = f5836b;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e(f5835a, "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }

    @Deprecated
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflaterFactory2C0770a) {
            return ((LayoutInflaterFactory2C0770a) factory).f5838e;
        }
        return null;
    }

    @Deprecated
    public static void setFactory(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory2(new LayoutInflaterFactory2C0770a(layoutInflaterFactory));
    }

    public static void setFactory2(@NonNull LayoutInflater layoutInflater, @NonNull LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
    }
}
