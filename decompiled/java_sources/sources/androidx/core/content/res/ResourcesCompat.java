package androidx.core.content.res;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.WeakHashMap;

/* loaded from: classes3.dex */
public final class ResourcesCompat {

    @AnyRes
    public static final int ID_NULL = 0;

    /* renamed from: a */
    public static final String f5365a = "ResourcesCompat";

    /* renamed from: b */
    public static final ThreadLocal<TypedValue> f5366b = new ThreadLocal<>();

    /* renamed from: c */
    @GuardedBy("sColorStateCacheLock")
    public static final WeakHashMap<C0653e, SparseArray<C0652d>> f5367c = new WeakHashMap<>(0);

    /* renamed from: d */
    public static final Object f5368d = new Object();

    /* loaded from: classes3.dex */
    public static abstract class FontCallback {
        @NonNull
        @RestrictTo({RestrictTo.Scope.LIBRARY})
        public static Handler getHandler(@Nullable Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackFailAsync(final int i, @Nullable Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: com.sunia.HTREnginev2.vll
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback.this.m2880c(i);
                }
            });
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
        public final void callbackSuccessAsync(@NonNull final Typeface typeface, @Nullable Handler handler) {
            getHandler(handler).post(new Runnable() { // from class: com.sunia.HTREnginev2.ull
                @Override // java.lang.Runnable
                public final void run() {
                    ResourcesCompat.FontCallback.this.m2881d(typeface);
                }
            });
        }

        /* renamed from: onFontRetrievalFailed, reason: merged with bridge method [inline-methods] */
        public abstract void m2880c(int i);

        /* renamed from: onFontRetrieved, reason: merged with bridge method [inline-methods] */
        public abstract void m2881d(@NonNull Typeface typeface);
    }

    /* loaded from: classes3.dex */
    public static final class ThemeCompat {

        @RequiresApi(23)
        /* renamed from: androidx.core.content.res.ResourcesCompat$ThemeCompat$a */
        /* loaded from: classes3.dex */
        public static class C0647a {

            /* renamed from: a */
            public static final Object f5369a = new Object();

            /* renamed from: b */
            public static Method f5370b;

            /* renamed from: c */
            public static boolean f5371c;

            @SuppressLint({"BanUncheckedReflection"})
            /* renamed from: a */
            public static void m2882a(@NonNull Resources.Theme theme) {
                synchronized (f5369a) {
                    if (!f5371c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f5370b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i(ResourcesCompat.f5365a, "Failed to retrieve rebase() method", e);
                        }
                        f5371c = true;
                    }
                    Method method = f5370b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i(ResourcesCompat.f5365a, "Failed to invoke rebase() method via reflection", e2);
                            f5370b = null;
                        }
                    }
                }
            }
        }

        @RequiresApi(29)
        /* renamed from: androidx.core.content.res.ResourcesCompat$ThemeCompat$b */
        /* loaded from: classes3.dex */
        public static class C0648b {
            @DoNotInline
            /* renamed from: a */
            public static void m2883a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void rebase(@NonNull Resources.Theme theme) {
            C0648b.m2883a(theme);
        }
    }

    @RequiresApi(21)
    /* renamed from: androidx.core.content.res.ResourcesCompat$a */
    /* loaded from: classes3.dex */
    public static class C0649a {
        @DoNotInline
        /* renamed from: a */
        public static Drawable m2884a(Resources resources, int i, Resources.Theme theme) {
            return resources.getDrawable(i, theme);
        }

        @DoNotInline
        /* renamed from: b */
        public static Drawable m2885b(Resources resources, int i, int i2, Resources.Theme theme) {
            return resources.getDrawableForDensity(i, i2, theme);
        }
    }

    @RequiresApi(23)
    /* renamed from: androidx.core.content.res.ResourcesCompat$b */
    /* loaded from: classes3.dex */
    public static class C0650b {
        @DoNotInline
        /* renamed from: a */
        public static int m2886a(Resources resources, int i, Resources.Theme theme) {
            return resources.getColor(i, theme);
        }

        @NonNull
        @DoNotInline
        /* renamed from: b */
        public static ColorStateList m2887b(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) {
            return resources.getColorStateList(i, theme);
        }
    }

    @RequiresApi(29)
    /* renamed from: androidx.core.content.res.ResourcesCompat$c */
    /* loaded from: classes3.dex */
    public static class C0651c {
        @DoNotInline
        /* renamed from: a */
        public static float m2888a(@NonNull Resources resources, @DimenRes int i) {
            return resources.getFloat(i);
        }
    }

    /* renamed from: androidx.core.content.res.ResourcesCompat$d */
    /* loaded from: classes3.dex */
    public static class C0652d {

        /* renamed from: a */
        public final ColorStateList f5372a;

        /* renamed from: b */
        public final Configuration f5373b;

        /* renamed from: c */
        public final int f5374c;

        public C0652d(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration, @Nullable Resources.Theme theme) {
            this.f5372a = colorStateList;
            this.f5373b = configuration;
            this.f5374c = theme == null ? 0 : theme.hashCode();
        }
    }

    /* renamed from: androidx.core.content.res.ResourcesCompat$e */
    /* loaded from: classes3.dex */
    public static final class C0653e {

        /* renamed from: a */
        public final Resources f5375a;

        /* renamed from: b */
        public final Resources.Theme f5376b;

        public C0653e(@NonNull Resources resources, @Nullable Resources.Theme theme) {
            this.f5375a = resources;
            this.f5376b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0653e.class != obj.getClass()) {
                return false;
            }
            C0653e c0653e = (C0653e) obj;
            return this.f5375a.equals(c0653e.f5375a) && ObjectsCompat.equals(this.f5376b, c0653e.f5376b);
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.f5375a, this.f5376b);
        }
    }

    /* renamed from: a */
    public static void m2871a(@NonNull C0653e c0653e, @ColorRes int i, @NonNull ColorStateList colorStateList, @Nullable Resources.Theme theme) {
        synchronized (f5368d) {
            WeakHashMap<C0653e, SparseArray<C0652d>> weakHashMap = f5367c;
            SparseArray<C0652d> sparseArray = weakHashMap.get(c0653e);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(c0653e, sparseArray);
            }
            sparseArray.append(i, new C0652d(colorStateList, c0653e.f5375a.getConfiguration(), theme));
        }
    }

    @Nullable
    /* renamed from: b */
    public static ColorStateList m2872b(@NonNull C0653e c0653e, @ColorRes int i) {
        C0652d c0652d;
        Resources.Theme theme;
        synchronized (f5368d) {
            SparseArray<C0652d> sparseArray = f5367c.get(c0653e);
            if (sparseArray != null && sparseArray.size() > 0 && (c0652d = sparseArray.get(i)) != null) {
                if (c0652d.f5373b.equals(c0653e.f5375a.getConfiguration()) && (((theme = c0653e.f5376b) == null && c0652d.f5374c == 0) || (theme != null && c0652d.f5374c == theme.hashCode()))) {
                    return c0652d.f5372a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    @NonNull
    /* renamed from: c */
    public static TypedValue m2873c() {
        ThreadLocal<TypedValue> threadLocal = f5366b;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    public static void clearCachesForTheme(@NonNull Resources.Theme theme) {
        synchronized (f5368d) {
            Iterator<C0653e> it2 = f5367c.keySet().iterator();
            while (it2.hasNext()) {
                C0653e next = it2.next();
                if (next != null && theme.equals(next.f5376b)) {
                    it2.remove();
                }
            }
        }
    }

    @Nullable
    /* renamed from: d */
    public static ColorStateList m2874d(Resources resources, int i, @Nullable Resources.Theme theme) {
        if (m2875e(resources, i)) {
            return null;
        }
        try {
            return ColorStateListInflaterCompat.createFromXml(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.w(f5365a, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: e */
    public static boolean m2875e(@NonNull Resources resources, @ColorRes int i) {
        TypedValue m2873c = m2873c();
        resources.getValue(i, m2873c, true);
        int i2 = m2873c.type;
        return i2 >= 28 && i2 <= 31;
    }

    /* renamed from: f */
    public static Typeface m2876f(@NonNull Context context, int i, @NonNull TypedValue typedValue, int i2, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m2877g = m2877g(context, resources, typedValue, i, i2, fontCallback, handler, z, z2);
        if (m2877g != null || fontCallback != null || z2) {
            return m2877g;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00b7  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Typeface m2877g(@androidx.annotation.NonNull android.content.Context r17, android.content.res.Resources r18, @androidx.annotation.NonNull android.util.TypedValue r19, int r20, int r21, @androidx.annotation.Nullable androidx.core.content.res.ResourcesCompat.FontCallback r22, @androidx.annotation.Nullable android.os.Handler r23, boolean r24, boolean r25) {
        /*
            r0 = r18
            r1 = r19
            r4 = r20
            r11 = r22
            r12 = r23
            java.lang.String r13 = "ResourcesCompat"
            java.lang.CharSequence r2 = r1.string
            if (r2 == 0) goto Lbb
            java.lang.String r14 = r2.toString()
            java.lang.String r2 = "res/"
            boolean r2 = r14.startsWith(r2)
            r15 = -3
            r16 = 0
            if (r2 != 0) goto L25
            if (r11 == 0) goto L24
            r11.callbackFailAsync(r15, r12)
        L24:
            return r16
        L25:
            int r2 = r1.assetCookie
            r7 = r21
            android.graphics.Typeface r2 = androidx.core.graphics.TypefaceCompat.findFromCache(r0, r4, r14, r2, r7)
            if (r2 == 0) goto L35
            if (r11 == 0) goto L34
            r11.callbackSuccessAsync(r2, r12)
        L34:
            return r2
        L35:
            if (r25 == 0) goto L38
            return r16
        L38:
            java.lang.String r2 = r14.toLowerCase()     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            java.lang.String r3 = ".xml"
            boolean r2 = r2.endsWith(r3)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r2 == 0) goto L6f
            android.content.res.XmlResourceParser r2 = r0.getXml(r4)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            androidx.core.content.res.FontResourcesParserCompat$FamilyResourceEntry r2 = androidx.core.content.res.FontResourcesParserCompat.parse(r2, r0)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r2 != 0) goto L59
            java.lang.String r0 = "Failed to find font-family tag"
            android.util.Log.e(r13, r0)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r11 == 0) goto L58
            r11.callbackFailAsync(r15, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
        L58:
            return r16
        L59:
            int r6 = r1.assetCookie     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            r1 = r17
            r3 = r18
            r4 = r20
            r5 = r14
            r7 = r21
            r8 = r22
            r9 = r23
            r10 = r24
            android.graphics.Typeface r0 = androidx.core.graphics.TypefaceCompat.createFromResourcesFamilyXml(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            return r0
        L6f:
            int r5 = r1.assetCookie     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            r1 = r17
            r2 = r18
            r3 = r20
            r4 = r14
            r6 = r21
            android.graphics.Typeface r0 = androidx.core.graphics.TypefaceCompat.createFromResourcesFontFile(r1, r2, r3, r4, r5, r6)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            if (r11 == 0) goto L89
            if (r0 == 0) goto L86
            r11.callbackSuccessAsync(r0, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
            goto L89
        L86:
            r11.callbackFailAsync(r15, r12)     // Catch: java.io.IOException -> L8a org.xmlpull.v1.XmlPullParserException -> La0
        L89:
            return r0
        L8a:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to read xml resource "
            r1.append(r2)
            r1.append(r14)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r13, r1, r0)
            goto Lb5
        La0:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Failed to parse xml resource "
            r1.append(r2)
            r1.append(r14)
            java.lang.String r1 = r1.toString()
            android.util.Log.e(r13, r1, r0)
        Lb5:
            if (r11 == 0) goto Lba
            r11.callbackFailAsync(r15, r12)
        Lba:
            return r16
        Lbb:
            android.content.res.Resources$NotFoundException r2 = new android.content.res.Resources$NotFoundException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Resource \""
            r3.append(r5)
            java.lang.String r0 = r0.getResourceName(r4)
            r3.append(r0)
            java.lang.String r0 = "\" ("
            r3.append(r0)
            java.lang.String r0 = java.lang.Integer.toHexString(r20)
            r3.append(r0)
            java.lang.String r0 = ") is not a Font: "
            r3.append(r0)
            r3.append(r1)
            java.lang.String r0 = r3.toString()
            r2.<init>(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.m2877g(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }

    @Nullable
    public static Typeface getCachedFont(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m2876f(context, i, new TypedValue(), 0, null, null, false, true);
    }

    @ColorInt
    public static int getColor(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return C0650b.m2886a(resources, i, theme);
    }

    @Nullable
    public static ColorStateList getColorStateList(@NonNull Resources resources, @ColorRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        C0653e c0653e = new C0653e(resources, theme);
        ColorStateList m2872b = m2872b(c0653e, i);
        if (m2872b != null) {
            return m2872b;
        }
        ColorStateList m2874d = m2874d(resources, i, theme);
        if (m2874d == null) {
            return C0650b.m2887b(resources, i, theme);
        }
        m2871a(c0653e, i, m2874d, theme);
        return m2874d;
    }

    @Nullable
    public static Drawable getDrawable(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return C0649a.m2884a(resources, i, theme);
    }

    @Nullable
    public static Drawable getDrawableForDensity(@NonNull Resources resources, @DrawableRes int i, int i2, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return C0649a.m2885b(resources, i, i2, theme);
    }

    public static float getFloat(@NonNull Resources resources, @DimenRes int i) {
        return C0651c.m2888a(resources, i);
    }

    @Nullable
    public static Typeface getFont(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m2876f(context, i, new TypedValue(), 0, null, null, false, false);
    }

    public static void getFont(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.checkNotNull(fontCallback);
        if (context.isRestricted()) {
            fontCallback.callbackFailAsync(-4, handler);
        } else {
            m2876f(context, i, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Typeface getFont(@NonNull Context context, @FontRes int i, @NonNull TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m2876f(context, i, typedValue, i2, fontCallback, null, true, false);
    }
}
