package com.onyx.android.sdk.theme.utils;

import android.R;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.DrawableWrapper;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.StateSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.WrapperListAdapter;
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.graphics.drawable.WrappedDrawable;
import androidx.recyclerview.widget.RecyclerView;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.skin.C7996R;
import com.onyx.android.sdk.theme.widgets.Tintable;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.z2e;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedList;
import kotlin.enums.EnumEntries;

/* loaded from: classes8.dex */
public class ThemeUtils {

    /* renamed from: d */
    public static Context f46852d;

    /* renamed from: g */
    public static Field f46855g;

    /* renamed from: h */
    public static Method f46856h;

    /* renamed from: i */
    public static Field f46857i;

    /* renamed from: j */
    public static Method f46858j;

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f46849a = new ThreadLocal<>();
    public static final int[] DISABLED_STATE_SET = {-16842910};
    public static final int[] ENABLED_STATE_SET = {R.attr.state_enabled};
    public static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    public static final int[] ACTIVATED_STATE_SET = {R.attr.state_activated};
    public static final int[] PRESSED_STATE_SET = {R.attr.state_pressed};
    public static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int[] SELECTED_STATE_SET = {R.attr.state_selected};
    public static final int[] EMPTY_STATE_SET = new int[0];

    /* renamed from: b */
    public static final int[] f46850b = new int[1];

    /* renamed from: c */
    public static boolean f46851c = false;

    /* renamed from: e */
    public static boolean f46853e = false;

    /* renamed from: f */
    public static boolean f46854f = false;

    /* loaded from: classes8.dex */
    public interface ExtraRefreshable {
        void refreshGlobal(Activity activity);

        void refreshSpecificView(View view);
    }

    /* loaded from: classes8.dex */
    public interface SwitchColor {
        String getColorResNameById(@ColorRes int i);

        String getDrawableNameById(@DrawableRes int i);

        void init(Context context);

        void reloadResource(Context context);

        @ColorInt
        int replaceColor(Context context, @ColorInt int i);

        @ColorInt
        int replaceColorById(Context context, int i, @ColorRes int i2);

        @DrawableRes
        int replaceDrawableRes(int i, @DrawableRes int i2);
    }

    /* renamed from: a */
    public static String m36242a(Context context, @ColorRes int i) {
        return ThemeSwitchColor.getInstance().getColorResNameById(i);
    }

    /* renamed from: b */
    public static String m36243b(Context context, @DrawableRes int i) {
        return ThemeSwitchColor.getInstance().getDrawableNameById(i);
    }

    /* renamed from: c */
    public static int m36244c(Context context, @AttrRes int i, float f) {
        return ColorUtils.setAlphaComponent(getThemeAttrColor(context, i), Math.round(Color.alpha(r0) * f));
    }

    public static boolean containsNinePatch(Drawable drawable) {
        Drawable wrapperDrawable = getWrapperDrawable(drawable);
        if ((wrapperDrawable instanceof NinePatchDrawable) || (wrapperDrawable instanceof InsetDrawable) || (wrapperDrawable instanceof LayerDrawable)) {
            return true;
        }
        if (wrapperDrawable instanceof StateListDrawable) {
            DrawableContainer.DrawableContainerState drawableContainerState = (DrawableContainer.DrawableContainerState) wrapperDrawable.getConstantState();
            if (drawableContainerState == null) {
                return true;
            }
            for (Drawable drawable2 : drawableContainerState.getChildren()) {
                Drawable wrapperDrawable2 = getWrapperDrawable(drawable2);
                if ((wrapperDrawable2 instanceof NinePatchDrawable) || (wrapperDrawable2 instanceof InsetDrawable) || (wrapperDrawable2 instanceof LayerDrawable)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    public static TypedValue m36245d() {
        ThreadLocal<TypedValue> threadLocal = f46849a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* renamed from: e */
    public static void m36246e(Context context) {
        if (isPlugTheme()) {
            m36247f(context);
        }
    }

    /* renamed from: f */
    public static void m36247f(Context context) {
        String savedPlugThemePath = ThemeHelper.getSavedPlugThemePath(context);
        String plugThemePackageName = ThemeHelper.getPlugThemePackageName();
        if (savedPlugThemePath.isEmpty() || plugThemePackageName.isEmpty()) {
            return;
        }
        loadPlugThemeResource(context, savedPlugThemePath, plugThemePackageName);
    }

    /* renamed from: g */
    public static TintInfo m36248g(ColorStateList colorStateList) {
        boolean z;
        if (colorStateList == null) {
            return null;
        }
        int defaultColor = colorStateList.getDefaultColor();
        LinkedList linkedList = new LinkedList();
        LinkedList linkedList2 = new LinkedList();
        int[] iArr = DISABLED_STATE_SET;
        int colorForState = colorStateList.getColorForState(iArr, 0);
        if (colorForState != defaultColor) {
            linkedList.add(iArr);
            linkedList2.add(Integer.valueOf(colorForState));
            z = true;
        } else {
            z = false;
        }
        int[] iArr2 = PRESSED_STATE_SET;
        int colorForState2 = colorStateList.getColorForState(m36253l(z, iArr2), 0);
        if (colorForState2 != defaultColor) {
            linkedList.add(iArr2);
            linkedList2.add(Integer.valueOf(colorForState2));
        }
        int[] iArr3 = FOCUSED_STATE_SET;
        int colorForState3 = colorStateList.getColorForState(m36253l(z, iArr3), 0);
        if (colorForState3 != defaultColor) {
            linkedList.add(iArr3);
            linkedList2.add(Integer.valueOf(colorForState3));
        }
        int[] iArr4 = CHECKED_STATE_SET;
        int colorForState4 = colorStateList.getColorForState(m36253l(z, iArr4), 0);
        if (colorForState4 != defaultColor) {
            linkedList.add(iArr4);
            linkedList2.add(Integer.valueOf(colorForState4));
        }
        int[] iArr5 = SELECTED_STATE_SET;
        int colorForState5 = colorStateList.getColorForState(m36253l(z, iArr5), 0);
        if (colorForState5 != defaultColor) {
            linkedList.add(iArr5);
            linkedList2.add(Integer.valueOf(colorForState5));
        }
        int[] iArr6 = EMPTY_STATE_SET;
        int colorForState6 = colorStateList.getColorForState(m36253l(z, iArr6), 0);
        if (colorForState6 != 0) {
            linkedList.add(iArr6);
            linkedList2.add(Integer.valueOf(colorForState6));
        }
        if (linkedList2.size() > 1) {
            return new TintInfo(linkedList, linkedList2);
        }
        return null;
    }

    @ColorInt
    public static int getColor(Context context, @ColorInt int i) {
        return m36251j(context, i);
    }

    @ColorInt
    public static int getColorById(@ColorRes int i) {
        return f46851c ? getPlugColorById(f46852d, i) : m36252k(f46852d, i);
    }

    public static int getDisabledThemeAttrColor(Context context, @AttrRes int i) {
        ColorStateList themeAttrColorStateList = getThemeAttrColorStateList(context, i);
        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
            return themeAttrColorStateList.getColorForState(DISABLED_STATE_SET, themeAttrColorStateList.getDefaultColor());
        }
        TypedValue m36245d = m36245d();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, m36245d, true);
        return m36244c(context, i, m36245d.getFloat());
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public static Drawable getDrawableById(Context context, int i, @DrawableRes int i2) {
        int replaceDrawableRes = ThemeSwitchColor.getInstance().replaceDrawableRes(i, i2);
        Drawable m36215a = DrawableUtils.m36215a(context, replaceDrawableRes);
        return m36215a != null ? m36215a : context.getDrawable(replaceDrawableRes);
    }

    @ColorInt
    public static int getPlugColorById(Context context, @ColorRes int i) {
        try {
            return ResourceManager.getInstance().getColor(m36242a(context, i));
        } catch (Exception unused) {
            return context.getColor(i);
        }
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public static Drawable getPlugDrawableById(Context context, @DrawableRes int i) {
        if (!isPlugTheme()) {
            return null;
        }
        try {
            return ResourceManager.getInstance().getDrawableByName(m36243b(context, i));
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SkinType getTheme() {
        int theme = ThemeHelper.getTheme();
        EnumEntries<SkinType> entries = SkinType.getEntries();
        for (int i = 0; i < entries.size(); i++) {
            SkinType skinType = (SkinType) entries.get(i);
            if (skinType.getThemeType() == theme) {
                return skinType;
            }
        }
        return SkinType.DEFAULT;
    }

    public static boolean getThemeAttrBoolean(Context context, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getBoolean(0, false);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    @ColorInt
    public static int getThemeAttrColor(Context context, @AttrRes int i) {
        if (hasThemeAttr(context, i)) {
            return m36252k(context, getThemeAttrId(context, i));
        }
        return 0;
    }

    public static ColorStateList getThemeAttrColorStateList(Context context, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getColorStateList(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int getThemeAttrDimensionPixelSize(Context context, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getDimensionPixelSize(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int getThemeAttrId(Context context, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.getResourceId(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static ColorStateList getThemeColorStateList(Context context, ColorStateList colorStateList) {
        int[][] iArr;
        int[] iArr2;
        int i;
        if (colorStateList == null) {
            return null;
        }
        if (colorStateList.isStateful()) {
            TintInfo m36248g = m36248g(colorStateList);
            if (m36248g == null || m36248g.isInvalid()) {
                return colorStateList;
            }
            int i2 = 0;
            int[] iArr3 = m36248g.f46860b[0];
            int[] iArr4 = DISABLED_STATE_SET;
            if (!StateSet.stateSetMatches(iArr3, iArr4)) {
                int[][] iArr5 = m36248g.f46860b;
                iArr = new int[iArr5.length + 1];
                iArr2 = new int[iArr5.length + 1];
                iArr[0] = iArr4;
                iArr2[0] = getDisabledThemeAttrColor(context, C7996R.attr.themeColorSecondary);
                i = 1;
            } else {
                int[][] iArr6 = m36248g.f46860b;
                iArr = new int[iArr6.length];
                iArr2 = new int[iArr6.length];
                i = 0;
            }
            while (true) {
                int[][] iArr7 = m36248g.f46860b;
                if (i2 < iArr7.length) {
                    iArr[i] = iArr7[i2];
                    iArr2[i] = m36251j(context, m36248g.f46859a[i2]);
                    i++;
                    i2++;
                } else {
                    return new ColorStateList(iArr, iArr2);
                }
            }
        } else {
            return ColorStateList.valueOf(m36251j(context, colorStateList.getDefaultColor()));
        }
    }

    public static Drawable getThemeDrawable(int i) {
        return DrawableUtils.m36215a(f46852d, i);
    }

    public static Drawable getThemeDrawableById(Context context, @DrawableRes int i) {
        return !isPlugTheme() ? getDrawableById(context, getTheme().getThemeType(), i) : getPlugDrawableById(context, i);
    }

    public static int getThemePrimaryColor() {
        return getColorById(C7996R.color.theme_primary_color_01);
    }

    public static int getThemeTypeForWeb() {
        SkinType theme = getTheme();
        return theme == SkinType.AUTO_SYSTEM ? isSystemNightMode(ResManager.INSTANCE.getContext()) ? SkinType.DARK.getThemeType() : SkinType.DEFAULT.getThemeType() : theme.getThemeType();
    }

    public static Activity getWrapperActivity(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return getWrapperActivity(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static ContextWrapper getWrapperContext(Context context, @StyleRes int i) {
        if (context == null) {
            return null;
        }
        return new ContextThemeWrapper(context, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"RestrictedApi"})
    public static Drawable getWrapperDrawable(Drawable drawable) {
        if (drawable instanceof WrappedDrawable) {
            return ((WrappedDrawable) drawable).getWrappedDrawable();
        }
        boolean z = drawable instanceof DrawableWrapper;
        return (z || z) ? ((DrawableWrapper) drawable).getDrawable() : drawable;
    }

    @ColorInt
    /* renamed from: h */
    public static int m36249h(Context context, int i, @ColorRes int i2) {
        return isPlugTheme() ? getPlugColorById(context, i2) : ThemeSwitchColor.getInstance().replaceColorById(context, i, i2);
    }

    public static boolean hasThemeAttr(Context context, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        try {
            return obtainStyledAttributes.hasValue(0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @SuppressLint({"SoonBlockedPrivateApi"})
    /* renamed from: i */
    public static void m36250i(View view, ExtraRefreshable extraRefreshable) {
        if (view == 0) {
            return;
        }
        view.destroyDrawingCache();
        int i = 0;
        if (view instanceof Tintable) {
            ((Tintable) view).tint();
            if (!(view instanceof ViewGroup)) {
                return;
            }
            while (true) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (i >= viewGroup.getChildCount()) {
                    return;
                }
                m36250i(viewGroup.getChildAt(i), extraRefreshable);
                i++;
            }
        } else {
            if (extraRefreshable != null) {
                extraRefreshable.refreshSpecificView(view);
            }
            if (view instanceof AbsListView) {
                try {
                    if (f46857i == null) {
                        Field declaredField = AbsListView.class.getDeclaredField("mRecycler");
                        f46857i = declaredField;
                        declaredField.setAccessible(true);
                    }
                    if (f46858j == null) {
                        Method declaredMethod = Class.forName("android.widget.AbsListView$RecycleBin").getDeclaredMethod(Constants.CLEAR_ATTRIBUTES, new Class[0]);
                        f46858j = declaredMethod;
                        declaredMethod.setAccessible(true);
                    }
                    f46858j.invoke(f46857i.get(view), new Object[0]);
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                } catch (IllegalAccessException e2) {
                    e2.printStackTrace();
                } catch (NoSuchFieldException e3) {
                    e3.printStackTrace();
                } catch (NoSuchMethodException e4) {
                    e4.printStackTrace();
                } catch (InvocationTargetException e5) {
                    e5.printStackTrace();
                }
                ListAdapter listAdapter = (ListAdapter) ((AbsListView) view).getAdapter();
                while (listAdapter instanceof WrapperListAdapter) {
                    listAdapter = ((WrapperListAdapter) listAdapter).getWrappedAdapter();
                }
                if (listAdapter instanceof BaseAdapter) {
                    ((BaseAdapter) listAdapter).notifyDataSetChanged();
                }
            }
            if (view instanceof RecyclerView) {
                try {
                    if (f46855g == null) {
                        Field declaredField2 = RecyclerView.class.getDeclaredField(C6998g.f39679a);
                        f46855g = declaredField2;
                        declaredField2.setAccessible(true);
                    }
                    if (f46856h == null) {
                        Method declaredMethod2 = RecyclerView.Recycler.class.getDeclaredMethod(Constants.CLEAR_ATTRIBUTES, new Class[0]);
                        f46856h = declaredMethod2;
                        declaredMethod2.setAccessible(true);
                    }
                    f46856h.invoke(f46855g.get(view), new Object[0]);
                } catch (ClassNotFoundException e6) {
                    e6.printStackTrace();
                } catch (IllegalAccessException e7) {
                    e7.printStackTrace();
                } catch (NoSuchFieldException e8) {
                    e8.printStackTrace();
                } catch (NoSuchMethodException e9) {
                    e9.printStackTrace();
                } catch (InvocationTargetException e10) {
                    e10.printStackTrace();
                }
                RecyclerView recyclerView = (RecyclerView) view;
                recyclerView.getRecycledViewPool().clear();
                recyclerView.invalidateItemDecorations();
            }
            if (!(view instanceof ViewGroup)) {
                return;
            }
            while (true) {
                ViewGroup viewGroup2 = (ViewGroup) view;
                if (i >= viewGroup2.getChildCount()) {
                    return;
                }
                m36250i(viewGroup2.getChildAt(i), extraRefreshable);
                i++;
            }
        }
    }

    public static void init(Context context) {
        f46852d = context;
        m36246e(context);
        ThemeSwitchColor.getInstance().init(f46852d);
    }

    public static boolean isPlugTheme() {
        return ThemeHelper.getTheme() == 3;
    }

    public static boolean isSkipAnimatedSelector() {
        if (!f46854f) {
            String str = Build.VERSION.RELEASE;
            f46853e = !"unknown".equals(str) && "5.0".compareTo(str) <= 0 && "5.1".compareTo(str) > 0;
            f46854f = true;
        }
        return f46853e;
    }

    public static boolean isSystemNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    @ColorInt
    /* renamed from: j */
    public static int m36251j(Context context, @ColorInt int i) {
        return ThemeSwitchColor.getInstance().replaceColor(context, i);
    }

    @ColorInt
    /* renamed from: k */
    public static int m36252k(Context context, @ColorRes int i) {
        return m36249h(context, getTheme().getThemeType(), i);
    }

    /* renamed from: l */
    public static int[] m36253l(boolean z, int[] iArr) {
        return iArr.length > 0 ? z ? new int[]{ENABLED_STATE_SET[0], iArr[0]} : iArr : z ? ENABLED_STATE_SET : iArr;
    }

    public static boolean loadPlugThemeResource(Context context, String str, String str2) {
        try {
            if (new File(str).exists()) {
                AssetManager assetManager = (AssetManager) AssetManager.class.newInstance();
                assetManager.getClass().getMethod("addAssetPath", String.class).invoke(assetManager, str);
                Resources resources = context.getResources();
                ResourceManager.getInstance().setPluginResource(new Resources(assetManager, resources.getDisplayMetrics(), resources.getConfiguration()), str2);
                f46851c = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            f46851c = false;
        }
        return f46851c;
    }

    public static void refreshUI(Context context) {
        refreshUI(context, null);
    }

    public static void refreshView(View view) {
        m36250i(view, null);
    }

    public static void releasePlugTheme() {
        ThemeHelper.releasePluginTheme();
    }

    public static void reloadResource(Context context) {
        TintManager.clearTintCache();
        ThemeSwitchColor.getInstance().reloadResource(context);
    }

    public static void setPlugTheme(Context context, String str, String str2) {
        String plugPathByName = ThemeHelper.getPlugPathByName(context, str);
        if (loadPlugThemeResource(context, plugPathByName, str2)) {
            ThemeHelper.savePlugTheme(new File(plugPathByName), str2);
        }
    }

    public static void setTheme(Context context, int i) {
        if (i == 8) {
            reloadResource(context);
        }
        ThemeHelper.setTheme(i);
        refreshUI(context);
    }

    public static Drawable tintDrawable(Drawable drawable, @ColorInt int i, PorterDuff.Mode mode) {
        if (drawable == null) {
            return null;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTint(wrap, i);
        DrawableCompat.setTintMode(drawable, mode);
        return wrap;
    }

    @SuppressLint({"ResourceType"})
    public static Drawable tintDrawableByColorId(Context context, Drawable drawable, @ColorRes int i) {
        if (drawable == null) {
            return null;
        }
        return i <= 0 ? drawable : tintDrawable(drawable, m36251j(context, context.getResources().getColor(i)));
    }

    @SuppressLint({"ResourceType"})
    public static Drawable tintDrawableByColorList(Context context, Drawable drawable, @ColorRes int i, PorterDuff.Mode mode) {
        if (drawable == null) {
            return null;
        }
        if (i <= 0) {
            return drawable;
        }
        ColorStateList colorStateList = TintManager.get(context).getColorStateList(i);
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        return tintDrawable(drawable, colorStateList, mode);
    }

    @SuppressLint({"ResourceType"})
    public static Drawable tintDrawableByDrawableId(Context context, @DrawableRes int i, @ColorInt int i2) {
        if (i <= 0) {
            return null;
        }
        return tintDrawable(context.getResources().getDrawable(i), i2);
    }

    public static Resources updateNightMode(Resources resources, boolean z) {
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        int i = configuration.uiMode & (-16);
        configuration.uiMode = i;
        int i2 = z ? 32 : 16;
        if (i != i2) {
            configuration.uiMode = i2 | (i & (-49));
            resources.updateConfiguration(configuration, displayMetrics);
        }
        return resources;
    }

    public static void refreshUI(Context context, ExtraRefreshable extraRefreshable) {
        TintManager.clearTintCache();
        Activity wrapperActivity = getWrapperActivity(context);
        if (wrapperActivity != null) {
            if (extraRefreshable != null) {
                extraRefreshable.refreshGlobal(wrapperActivity);
            }
            m36250i(wrapperActivity.getWindow().getDecorView().findViewById(R.id.content), extraRefreshable);
        }
    }

    @SuppressLint({"ResourceType"})
    public static Drawable tintDrawable(Context context, @DrawableRes int i, @ColorRes int i2) {
        if (i <= 0 || i2 <= 0) {
            return null;
        }
        return tintDrawableByColorId(context, context.getResources().getDrawable(i), i2);
    }

    public static int getThemeAttrId(Context context, AttributeSet attributeSet, @AttrRes int i) {
        int[] iArr = f46850b;
        iArr[0] = i;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        try {
            return obtainStyledAttributes.getResourceId(0, 0);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static Drawable tintDrawable(Drawable drawable, @ColorInt int i) {
        return tintDrawable(drawable, i, PorterDuff.Mode.SRC_IN);
    }

    public static Drawable tintDrawable(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (drawable == null) {
            return null;
        }
        Drawable wrap = DrawableCompat.wrap(drawable.mutate());
        DrawableCompat.setTintList(wrap, colorStateList);
        DrawableCompat.setTintMode(drawable, mode);
        return wrap;
    }

    public static ColorStateList getThemeColorStateList(Context context, @ColorRes int i) {
        return z2e.m58603a(context, i);
    }
}
