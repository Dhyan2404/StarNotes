package com.onyx.android.sdk.theme.utils;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.LruCache;
import android.util.SparseArray;
import android.view.View;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.view.ContextThemeWrapper;
import com.onyx.android.sdk.theme.drawables.FilterableStateListDrawable;
import com.sunia.HTREnginev2.z2e;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes8.dex */
public final class TintManager {

    /* renamed from: f */
    public static final String f46861f = "TintManager";

    /* renamed from: g */
    public static final boolean f46862g = false;

    /* renamed from: i */
    public static final String f46864i = "appcompat_skip_skip";

    /* renamed from: a */
    public final Object f46867a = new Object();

    /* renamed from: b */
    public WeakReference<Context> f46868b;

    /* renamed from: c */
    public SparseArray<ColorStateList> f46869c;

    /* renamed from: d */
    public SparseArray<WeakReference<Drawable.ConstantState>> f46870d;

    /* renamed from: e */
    public SparseArray<String> f46871e;

    /* renamed from: h */
    public static final PorterDuff.Mode f46863h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j */
    public static final WeakHashMap<Context, TintManager> f46865j = new WeakHashMap<>();

    /* renamed from: k */
    public static final C8023a f46866k = new C8023a(6);

    /* renamed from: com.onyx.android.sdk.theme.utils.TintManager$a */
    /* loaded from: classes8.dex */
    public static class C8023a extends LruCache<Integer, PorterDuffColorFilter> {
        public C8023a(int i) {
            super(i);
        }

        /* renamed from: a */
        public static int m36260a(int i, PorterDuff.Mode mode) {
            return ((i + 31) * 31) + mode.hashCode();
        }

        /* renamed from: b */
        public PorterDuffColorFilter m36261b(int i, PorterDuff.Mode mode) {
            return get(Integer.valueOf(m36260a(i, mode)));
        }

        /* renamed from: c */
        public PorterDuffColorFilter m36262c(int i, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return put(Integer.valueOf(m36260a(i, mode)), porterDuffColorFilter);
        }
    }

    public TintManager(Context context) {
        this.f46868b = new WeakReference<>(context);
    }

    /* renamed from: c */
    public static PorterDuffColorFilter m36254c(Context context, ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return m36255e(ThemeUtils.m36251j(context, colorStateList.getColorForState(iArr, colorStateList.getDefaultColor())), mode);
    }

    public static void clearTintCache() {
        Iterator<Map.Entry<Context, TintManager>> it2 = f46865j.entrySet().iterator();
        while (it2.hasNext()) {
            TintManager value = it2.next().getValue();
            if (value != null) {
                value.m36258b();
            }
        }
        f46866k.evictAll();
    }

    /* renamed from: e */
    public static PorterDuffColorFilter m36255e(int i, PorterDuff.Mode mode) {
        C8023a c8023a = f46866k;
        PorterDuffColorFilter m36261b = c8023a.m36261b(i, mode);
        if (m36261b != null) {
            return m36261b;
        }
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        c8023a.m36262c(i, mode, porterDuffColorFilter);
        return porterDuffColorFilter;
    }

    /* renamed from: f */
    public static void m36256f(String str) {
    }

    public static TintManager get(Context context) {
        if (context == null) {
            return null;
        }
        if (context instanceof ContextThemeWrapper) {
            context = ((ContextThemeWrapper) context).getBaseContext();
        }
        if (context instanceof android.view.ContextThemeWrapper) {
            context = ((android.view.ContextThemeWrapper) context).getBaseContext();
        }
        WeakHashMap<Context, TintManager> weakHashMap = f46865j;
        TintManager tintManager = weakHashMap.get(context);
        if (tintManager != null) {
            return tintManager;
        }
        TintManager tintManager2 = new TintManager(context);
        weakHashMap.put(context, tintManager2);
        m36256f("[get TintManager] create new TintManager.");
        return tintManager2;
    }

    public static void tintViewBackground(View view, TintInfo tintInfo) {
        Drawable background;
        if (view == null || (background = view.getBackground()) == null) {
            return;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            background.clearColorFilter();
            return;
        }
        background.mutate();
        if (background instanceof ColorDrawable) {
            ((ColorDrawable) background).setColor(ThemeUtils.m36251j(view.getContext(), tintInfo.mTintList.getColorForState(view.getDrawableState(), tintInfo.mTintList.getDefaultColor())));
        } else {
            background.setColorFilter(m36254c(view.getContext(), tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : f46863h, view.getDrawableState()));
        }
    }

    public static void tintViewDrawable(View view, Drawable drawable, TintInfo tintInfo) {
        if (view == null || drawable == null) {
            return;
        }
        if (!tintInfo.mHasTintList && !tintInfo.mHasTintMode) {
            drawable.clearColorFilter();
            return;
        }
        drawable.mutate();
        if (drawable instanceof ColorDrawable) {
            ((ColorDrawable) drawable).setColor(ThemeUtils.m36251j(view.getContext(), tintInfo.mTintList.getColorForState(view.getDrawableState(), tintInfo.mTintList.getDefaultColor())));
        } else {
            drawable.setColorFilter(m36254c(view.getContext(), tintInfo.mHasTintList ? tintInfo.mTintList : null, tintInfo.mHasTintMode ? tintInfo.mTintMode : f46863h, view.getDrawableState()));
        }
    }

    /* renamed from: a */
    public final boolean m36257a(int i, @NonNull Drawable drawable) {
        Drawable.ConstantState constantState;
        if ((drawable instanceof FilterableStateListDrawable) || (constantState = drawable.getConstantState()) == null) {
            return false;
        }
        synchronized (this.f46867a) {
            if (this.f46870d == null) {
                this.f46870d = new SparseArray<>();
            }
            this.f46870d.put(i, new WeakReference<>(constantState));
        }
        return true;
    }

    /* renamed from: b */
    public final void m36258b() {
        SparseArray<ColorStateList> sparseArray = this.f46869c;
        if (sparseArray != null) {
            sparseArray.clear();
        }
        SparseArray<WeakReference<Drawable.ConstantState>> sparseArray2 = this.f46870d;
        if (sparseArray2 != null) {
            sparseArray2.clear();
        }
        SparseArray<String> sparseArray3 = this.f46871e;
        if (sparseArray3 != null) {
            sparseArray3.clear();
        }
    }

    /* renamed from: d */
    public final Drawable m36259d(@NonNull Context context, int i) {
        synchronized (this.f46867a) {
            SparseArray<WeakReference<Drawable.ConstantState>> sparseArray = this.f46870d;
            if (sparseArray == null) {
                return null;
            }
            WeakReference<Drawable.ConstantState> weakReference = sparseArray.get(i);
            if (weakReference != null) {
                Drawable.ConstantState constantState = weakReference.get();
                if (constantState != null) {
                    m36256f("[getCacheDrawable] Get drawable from cache: " + context.getResources().getResourceName(i));
                    return constantState.newDrawable();
                }
                this.f46870d.delete(i);
            }
            return null;
        }
    }

    @Nullable
    public ColorStateList getColorStateList(@ColorRes int i) {
        Context context;
        if (i == 0 || (context = this.f46868b.get()) == null) {
            return null;
        }
        SparseArray<ColorStateList> sparseArray = this.f46869c;
        ColorStateList colorStateList = sparseArray != null ? sparseArray.get(i) : null;
        if (colorStateList == null && (colorStateList = z2e.m58603a(context, i)) != null) {
            if (this.f46869c == null) {
                this.f46869c = new SparseArray<>();
            }
            this.f46869c.append(i, colorStateList);
        }
        return colorStateList;
    }

    @Nullable
    public Drawable getDrawable(@DrawableRes int i) {
        Context context = this.f46868b.get();
        if (context == null || i == 0) {
            return null;
        }
        SparseArray<String> sparseArray = this.f46871e;
        if (sparseArray == null) {
            this.f46871e = new SparseArray<>();
        } else if ("appcompat_skip_skip".equals(sparseArray.get(i))) {
            m36256f("[Match Skip DrawableTag] Skip the drawable which is matched with the skip tag.");
            return null;
        }
        Drawable m36259d = m36259d(context, i);
        if (m36259d == null && (m36259d = DrawableUtils.m36215a(context, i)) != null && !(m36259d instanceof ColorDrawable) && m36257a(i, m36259d)) {
            m36256f("[loadDrawable] Saved drawable to cache: " + context.getResources().getResourceName(i));
        }
        if (m36259d == null) {
            this.f46871e.append(i, "appcompat_skip_skip");
        }
        return m36259d;
    }
}
