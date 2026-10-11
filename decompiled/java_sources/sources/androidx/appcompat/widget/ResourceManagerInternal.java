package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.appcompat.resources.C0181R;
import androidx.appcompat.resources.Compatibility;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.collection.SparseArrayCompat;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class ResourceManagerInternal {

    /* renamed from: h */
    public static final String f1793h = "ResourceManagerInternal";

    /* renamed from: i */
    public static final boolean f1794i = false;

    /* renamed from: k */
    public static final String f1796k = "appcompat_skip_skip";

    /* renamed from: l */
    public static final String f1797l = "android.graphics.drawable.VectorDrawable";

    /* renamed from: m */
    public static ResourceManagerInternal f1798m;

    /* renamed from: a */
    public WeakHashMap<Context, SparseArrayCompat<ColorStateList>> f1800a;

    /* renamed from: b */
    public SimpleArrayMap<String, InterfaceC0269e> f1801b;

    /* renamed from: c */
    public SparseArrayCompat<String> f1802c;

    /* renamed from: d */
    public final WeakHashMap<Context, LongSparseArray<WeakReference<Drawable.ConstantState>>> f1803d = new WeakHashMap<>(0);

    /* renamed from: e */
    public TypedValue f1804e;

    /* renamed from: f */
    public boolean f1805f;

    /* renamed from: g */
    public ResourceManagerHooks f1806g;

    /* renamed from: j */
    public static final PorterDuff.Mode f1795j = PorterDuff.Mode.SRC_IN;

    /* renamed from: n */
    public static final C0267c f1799n = new C0267c(6);

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /* loaded from: classes3.dex */
    public interface ResourceManagerHooks {
        @Nullable
        Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DrawableRes int i);

        @Nullable
        ColorStateList getTintListForDrawableRes(@NonNull Context context, @DrawableRes int i);

        @Nullable
        PorterDuff.Mode getTintModeForDrawableRes(int i);

        boolean tintDrawable(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);

        boolean tintDrawableUsingColorFilter(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable);
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$a */
    /* loaded from: classes3.dex */
    public static class C0265a implements InterfaceC0269e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InterfaceC0269e
        /* renamed from: a */
        public Drawable mo852a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedStateListDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$b */
    /* loaded from: classes3.dex */
    public static class C0266b implements InterfaceC0269e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InterfaceC0269e
        /* renamed from: a */
        public Drawable mo852a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return AnimatedVectorDrawableCompat.createFromXmlInner(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e);
                return null;
            }
        }
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$c */
    /* loaded from: classes3.dex */
    public static class C0267c extends LruCache<Integer, PorterDuffColorFilter> {
        public C0267c(int i) {
            super(i);
        }

        /* renamed from: b */
        public static int m853b(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: c */
        public PorterDuffColorFilter m854c(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m853b(i, mode)));
        }

        /* renamed from: d */
        public PorterDuffColorFilter m855d(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m853b(i, mode)), porterDuffColorFilter);
        }
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$d */
    /* loaded from: classes3.dex */
    public static class C0268d implements InterfaceC0269e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InterfaceC0269e
        /* renamed from: a */
        public Drawable mo852a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) C0268d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                    Compatibility.Api21Impl.inflate(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e);
                }
            }
            return null;
        }
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$e */
    /* loaded from: classes3.dex */
    public interface InterfaceC0269e {
        /* renamed from: a */
        Drawable mo852a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme);
    }

    /* renamed from: androidx.appcompat.widget.ResourceManagerInternal$f */
    /* loaded from: classes3.dex */
    public static class C0270f implements InterfaceC0269e {
        @Override // androidx.appcompat.widget.ResourceManagerInternal.InterfaceC0269e
        /* renamed from: a */
        public Drawable mo852a(@NonNull Context context, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) {
            try {
                return VectorDrawableCompat.createFromXmlInner(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e);
                return null;
            }
        }
    }

    /* renamed from: e */
    public static long m833e(TypedValue typedValue) {
        return (typedValue.assetCookie << 32) | typedValue.data;
    }

    /* renamed from: g */
    public static PorterDuffColorFilter m834g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized ResourceManagerInternal get() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            if (f1798m == null) {
                ResourceManagerInternal resourceManagerInternal2 = new ResourceManagerInternal();
                f1798m = resourceManagerInternal2;
                m835m(resourceManagerInternal2);
            }
            resourceManagerInternal = f1798m;
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter m854c;
        synchronized (ResourceManagerInternal.class) {
            C0267c c0267c = f1799n;
            m854c = c0267c.m854c(i, mode);
            if (m854c == null) {
                m854c = new PorterDuffColorFilter(i, mode);
                c0267c.m855d(i, mode, m854c);
            }
        }
        return m854c;
    }

    /* renamed from: m */
    public static void m835m(@NonNull ResourceManagerInternal resourceManagerInternal) {
    }

    /* renamed from: n */
    public static boolean m836n(@NonNull Drawable drawable) {
        return (drawable instanceof VectorDrawableCompat) || f1797l.equals(drawable.getClass().getName());
    }

    /* renamed from: r */
    public static void m837r(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        int[] state = drawable.getState();
        if (!(drawable.mutate() == drawable)) {
            Log.d(f1793h, "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z = tintInfo.mHasTintList;
        if (z || tintInfo.mHasTintMode) {
            drawable.setColorFilter(m834g(z ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : f1795j, iArr));
        } else {
            drawable.clearColorFilter();
        }
    }

    /* renamed from: a */
    public final void m838a(@NonNull String str, @NonNull InterfaceC0269e interfaceC0269e) {
        if (this.f1801b == null) {
            this.f1801b = new SimpleArrayMap<>();
        }
        this.f1801b.put(str, interfaceC0269e);
    }

    /* renamed from: b */
    public final synchronized boolean m839b(@NonNull Context context, long j, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1803d.get(context);
        if (longSparseArray == null) {
            longSparseArray = new LongSparseArray<>();
            this.f1803d.put(context, longSparseArray);
        }
        longSparseArray.put(j, new WeakReference<>(constantState));
        return true;
    }

    /* renamed from: c */
    public final void m840c(@NonNull Context context, @DrawableRes int i, @NonNull ColorStateList colorStateList) {
        if (this.f1800a == null) {
            this.f1800a = new WeakHashMap<>();
        }
        SparseArrayCompat<ColorStateList> sparseArrayCompat = this.f1800a.get(context);
        if (sparseArrayCompat == null) {
            sparseArrayCompat = new SparseArrayCompat<>();
            this.f1800a.put(context, sparseArrayCompat);
        }
        sparseArrayCompat.append(i, colorStateList);
    }

    /* renamed from: d */
    public final void m841d(@NonNull Context context) {
        if (this.f1805f) {
            return;
        }
        this.f1805f = true;
        Drawable drawable = getDrawable(context, C0181R.drawable.abc_vector_test);
        if (drawable == null || !m836n(drawable)) {
            this.f1805f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    /* renamed from: f */
    public final Drawable m842f(@NonNull Context context, @DrawableRes int i) {
        if (this.f1804e == null) {
            this.f1804e = new TypedValue();
        }
        TypedValue typedValue = this.f1804e;
        context.getResources().getValue(i, typedValue, true);
        long m833e = m833e(typedValue);
        Drawable m843h = m843h(context, m833e);
        if (m843h != null) {
            return m843h;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1806g;
        Drawable createDrawableFor = resourceManagerHooks == null ? null : resourceManagerHooks.createDrawableFor(this, context, i);
        if (createDrawableFor != null) {
            createDrawableFor.setChangingConfigurations(typedValue.changingConfigurations);
            m839b(context, m833e, createDrawableFor);
        }
        return createDrawableFor;
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return m844i(context, i, false);
    }

    /* renamed from: h */
    public final synchronized Drawable m843h(@NonNull Context context, long j) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1803d.get(context);
        if (longSparseArray == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReference = longSparseArray.get(j);
        if (weakReference != null) {
            Drawable.ConstantState constantState = weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            longSparseArray.remove(j);
        }
        return null;
    }

    /* renamed from: i */
    public synchronized Drawable m844i(@NonNull Context context, @DrawableRes int i, boolean z) {
        Drawable m848o;
        m841d(context);
        m848o = m848o(context, i);
        if (m848o == null) {
            m848o = m842f(context, i);
        }
        if (m848o == null) {
            m848o = ContextCompat.getDrawable(context, i);
        }
        if (m848o != null) {
            m848o = m850q(context, i, z, m848o);
        }
        if (m848o != null) {
            DrawableUtils.m788a(m848o);
        }
        return m848o;
    }

    /* renamed from: j */
    public synchronized ColorStateList m845j(@NonNull Context context, @DrawableRes int i) {
        ColorStateList m846k;
        m846k = m846k(context, i);
        if (m846k == null) {
            ResourceManagerHooks resourceManagerHooks = this.f1806g;
            m846k = resourceManagerHooks == null ? null : resourceManagerHooks.getTintListForDrawableRes(context, i);
            if (m846k != null) {
                m840c(context, i, m846k);
            }
        }
        return m846k;
    }

    /* renamed from: k */
    public final ColorStateList m846k(@NonNull Context context, @DrawableRes int i) {
        SparseArrayCompat<ColorStateList> sparseArrayCompat;
        WeakHashMap<Context, SparseArrayCompat<ColorStateList>> weakHashMap = this.f1800a;
        if (weakHashMap == null || (sparseArrayCompat = weakHashMap.get(context)) == null) {
            return null;
        }
        return sparseArrayCompat.get(i);
    }

    /* renamed from: l */
    public PorterDuff.Mode m847l(int i) {
        ResourceManagerHooks resourceManagerHooks = this.f1806g;
        if (resourceManagerHooks == null) {
            return null;
        }
        return resourceManagerHooks.getTintModeForDrawableRes(i);
    }

    /* renamed from: o */
    public final Drawable m848o(@NonNull Context context, @DrawableRes int i) {
        int next;
        SimpleArrayMap<String, InterfaceC0269e> simpleArrayMap = this.f1801b;
        if (simpleArrayMap == null || simpleArrayMap.isEmpty()) {
            return null;
        }
        SparseArrayCompat<String> sparseArrayCompat = this.f1802c;
        if (sparseArrayCompat != null) {
            String str = sparseArrayCompat.get(i);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f1801b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1802c = new SparseArrayCompat<>();
        }
        if (this.f1804e == null) {
            this.f1804e = new TypedValue();
        }
        TypedValue typedValue = this.f1804e;
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        long m833e = m833e(typedValue);
        Drawable m843h = m843h(context, m833e);
        if (m843h != null) {
            return m843h;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(ActivityChooserModel.f1436y)) {
            try {
                XmlResourceParser xml = resources.getXml(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1802c.append(i, name);
                InterfaceC0269e interfaceC0269e = this.f1801b.get(name);
                if (interfaceC0269e != null) {
                    m843h = interfaceC0269e.mo852a(context, xml, asAttributeSet, context.getTheme());
                }
                if (m843h != null) {
                    m843h.setChangingConfigurations(typedValue.changingConfigurations);
                    m839b(context, m833e, m843h);
                }
            } catch (Exception e) {
                Log.e(f1793h, "Exception while inflating drawable", e);
            }
        }
        if (m843h == null) {
            this.f1802c.append(i, "appcompat_skip_skip");
        }
        return m843h;
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        LongSparseArray<WeakReference<Drawable.ConstantState>> longSparseArray = this.f1803d.get(context);
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }

    /* renamed from: p */
    public synchronized Drawable m849p(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        Drawable m848o = m848o(context, i);
        if (m848o == null) {
            m848o = vectorEnabledTintResources.m53042a(i);
        }
        if (m848o == null) {
            return null;
        }
        return m850q(context, i, false, m848o);
    }

    /* renamed from: q */
    public final Drawable m850q(@NonNull Context context, @DrawableRes int i, boolean z, @NonNull Drawable drawable) {
        ColorStateList m845j = m845j(context, i);
        if (m845j != null) {
            Drawable wrap = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTintList(wrap, m845j);
            PorterDuff.Mode m847l = m847l(i);
            if (m847l == null) {
                return wrap;
            }
            DrawableCompat.setTintMode(wrap, m847l);
            return wrap;
        }
        ResourceManagerHooks resourceManagerHooks = this.f1806g;
        if ((resourceManagerHooks == null || !resourceManagerHooks.tintDrawable(context, i, drawable)) && !m851s(context, i, drawable) && z) {
            return null;
        }
        return drawable;
    }

    /* renamed from: s */
    public boolean m851s(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        ResourceManagerHooks resourceManagerHooks = this.f1806g;
        return resourceManagerHooks != null && resourceManagerHooks.tintDrawableUsingColorFilter(context, i, drawable);
    }

    public synchronized void setHooks(ResourceManagerHooks resourceManagerHooks) {
        this.f1806g = resourceManagerHooks;
    }
}
