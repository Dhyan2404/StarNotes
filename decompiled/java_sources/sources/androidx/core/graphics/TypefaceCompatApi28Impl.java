package androidx.core.graphics;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RequiresApi(28)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public class TypefaceCompatApi28Impl extends TypefaceCompatApi26Impl {

    /* renamed from: u */
    public static final String f5414u = "createFromFamiliesWithDefault";

    /* renamed from: v */
    public static final int f5415v = -1;

    /* renamed from: w */
    public static final String f5416w = "sans-serif";

    @Override // androidx.core.graphics.TypefaceCompatApi26Impl, com.sunia.HTREnginev2.dpn, com.sunia.HTREnginev2.fpn
    @NonNull
    /* renamed from: c */
    public Typeface mo2936c(@NonNull Context context, @NonNull Typeface typeface, int i, boolean z) {
        return Typeface.create(typeface, i, z);
    }

    @Override // androidx.core.graphics.TypefaceCompatApi26Impl
    public Typeface createFromFamiliesWithDefault(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.mFontFamily, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.mCreateFromFamiliesWithDefault.invoke(null, newInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatApi26Impl
    public Method obtainCreateFromFamiliesWithDefaultMethod(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
