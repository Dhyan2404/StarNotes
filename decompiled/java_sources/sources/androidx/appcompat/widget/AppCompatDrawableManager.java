package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.C0118R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public final class AppCompatDrawableManager {

    /* renamed from: b */
    public static final String f1534b = "AppCompatDrawableManag";

    /* renamed from: c */
    public static final boolean f1535c = false;

    /* renamed from: d */
    public static final PorterDuff.Mode f1536d = PorterDuff.Mode.SRC_IN;

    /* renamed from: e */
    public static AppCompatDrawableManager f1537e;

    /* renamed from: a */
    public ResourceManagerInternal f1538a;

    /* renamed from: androidx.appcompat.widget.AppCompatDrawableManager$a */
    /* loaded from: classes3.dex */
    public class C0229a implements ResourceManagerInternal.ResourceManagerHooks {

        /* renamed from: a */
        public final int[] f1539a = {C0118R.drawable.abc_textfield_search_default_mtrl_alpha, C0118R.drawable.abc_textfield_default_mtrl_alpha, C0118R.drawable.abc_ab_share_pack_mtrl_alpha};

        /* renamed from: b */
        public final int[] f1540b = {C0118R.drawable.abc_ic_commit_search_api_mtrl_alpha, C0118R.drawable.abc_seekbar_tick_mark_material, C0118R.drawable.abc_ic_menu_share_mtrl_alpha, C0118R.drawable.abc_ic_menu_copy_mtrl_am_alpha, C0118R.drawable.abc_ic_menu_cut_mtrl_alpha, C0118R.drawable.abc_ic_menu_selectall_mtrl_alpha, C0118R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

        /* renamed from: c */
        public final int[] f1541c = {C0118R.drawable.abc_textfield_activated_mtrl_alpha, C0118R.drawable.abc_textfield_search_activated_mtrl_alpha, C0118R.drawable.abc_cab_background_top_mtrl_alpha, C0118R.drawable.abc_text_cursor_material, C0118R.drawable.abc_text_select_handle_left_mtrl, C0118R.drawable.abc_text_select_handle_middle_mtrl, C0118R.drawable.abc_text_select_handle_right_mtrl};

        /* renamed from: d */
        public final int[] f1542d = {C0118R.drawable.abc_popup_background_mtrl_mult, C0118R.drawable.abc_cab_background_internal_bg, C0118R.drawable.abc_menu_hardkey_panel_mtrl_mult};

        /* renamed from: e */
        public final int[] f1543e = {C0118R.drawable.abc_tab_indicator_material, C0118R.drawable.abc_textfield_search_material};

        /* renamed from: f */
        public final int[] f1544f = {C0118R.drawable.abc_btn_check_material, C0118R.drawable.abc_btn_radio_material, C0118R.drawable.abc_btn_check_material_anim, C0118R.drawable.abc_btn_radio_material_anim};

        /* renamed from: a */
        public final boolean m728a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final ColorStateList m729b(@NonNull Context context) {
            return m730c(context, 0);
        }

        /* renamed from: c */
        public final ColorStateList m730c(@NonNull Context context, @ColorInt int i) {
            int themeAttrColor = ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlHighlight);
            return new ColorStateList(new int[][]{ThemeUtils.f1996c, ThemeUtils.f1999f, ThemeUtils.f1997d, ThemeUtils.f2003j}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, C0118R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i), ColorUtils.compositeColors(themeAttrColor, i), i});
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i) {
            if (i == C0118R.drawable.abc_cab_background_top_material) {
                return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, C0118R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, C0118R.drawable.abc_cab_background_top_mtrl_alpha)});
            }
            if (i == C0118R.drawable.abc_ratingbar_material) {
                return m734g(resourceManagerInternal, context, C0118R.dimen.abc_star_big);
            }
            if (i == C0118R.drawable.abc_ratingbar_indicator_material) {
                return m734g(resourceManagerInternal, context, C0118R.dimen.abc_star_medium);
            }
            if (i == C0118R.drawable.abc_ratingbar_small_material) {
                return m734g(resourceManagerInternal, context, C0118R.dimen.abc_star_small);
            }
            return null;
        }

        /* renamed from: d */
        public final ColorStateList m731d(@NonNull Context context) {
            return m730c(context, ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorAccent));
        }

        /* renamed from: e */
        public final ColorStateList m732e(@NonNull Context context) {
            return m730c(context, ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorButtonNormal));
        }

        /* renamed from: f */
        public final ColorStateList m733f(Context context) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, C0118R.attr.colorSwitchThumbNormal);
            if (themeAttrColorStateList == null || !themeAttrColorStateList.isStateful()) {
                iArr[0] = ThemeUtils.f1996c;
                iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, C0118R.attr.colorSwitchThumbNormal);
                iArr[1] = ThemeUtils.f2000g;
                iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlActivated);
                iArr[2] = ThemeUtils.f2003j;
                iArr2[2] = ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorSwitchThumbNormal);
            } else {
                int[] iArr3 = ThemeUtils.f1996c;
                iArr[0] = iArr3;
                iArr2[0] = themeAttrColorStateList.getColorForState(iArr3, 0);
                iArr[1] = ThemeUtils.f2000g;
                iArr2[1] = ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlActivated);
                iArr[2] = ThemeUtils.f2003j;
                iArr2[2] = themeAttrColorStateList.getDefaultColor();
            }
            return new ColorStateList(iArr, iArr2);
        }

        /* renamed from: g */
        public final LayerDrawable m734g(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DimenRes int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable drawable = resourceManagerInternal.getDrawable(context, C0118R.drawable.abc_star_black_48dp);
            Drawable drawable2 = resourceManagerInternal.getDrawable(context, C0118R.drawable.abc_star_half_black_48dp);
            if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) drawable;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawable.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) drawable2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                drawable2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, R.id.background);
            layerDrawable.setId(1, R.id.secondaryProgress);
            layerDrawable.setId(2, R.id.progress);
            return layerDrawable;
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public ColorStateList getTintListForDrawableRes(@NonNull Context context, int i) {
            if (i == C0118R.drawable.abc_edit_text_material) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_edittext);
            }
            if (i == C0118R.drawable.abc_switch_track_mtrl_alpha) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_switch_track);
            }
            if (i == C0118R.drawable.abc_switch_thumb_material) {
                return m733f(context);
            }
            if (i == C0118R.drawable.abc_btn_default_mtrl_shape) {
                return m732e(context);
            }
            if (i == C0118R.drawable.abc_btn_borderless_material) {
                return m729b(context);
            }
            if (i == C0118R.drawable.abc_btn_colored_material) {
                return m731d(context);
            }
            if (i == C0118R.drawable.abc_spinner_mtrl_am_alpha || i == C0118R.drawable.abc_spinner_textfield_background_material) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_spinner);
            }
            if (m728a(this.f1540b, i)) {
                return ThemeUtils.getThemeAttrColorStateList(context, C0118R.attr.colorControlNormal);
            }
            if (m728a(this.f1543e, i)) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_default);
            }
            if (m728a(this.f1544f, i)) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_btn_checkable);
            }
            if (i == C0118R.drawable.abc_seekbar_thumb_material) {
                return AppCompatResources.getColorStateList(context, C0118R.color.abc_tint_seek_thumb);
            }
            return null;
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public PorterDuff.Mode getTintModeForDrawableRes(int i) {
            if (i == C0118R.drawable.abc_switch_thumb_material) {
                return PorterDuff.Mode.MULTIPLY;
            }
            return null;
        }

        /* renamed from: h */
        public final void m735h(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = AppCompatDrawableManager.f1536d;
            }
            mutate.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i, mode));
        }

        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        public boolean tintDrawable(@NonNull Context context, int i, @NonNull Drawable drawable) {
            if (i == C0118R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                m735h(layerDrawable.findDrawableByLayerId(R.id.background), ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlNormal), AppCompatDrawableManager.f1536d);
                m735h(layerDrawable.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlNormal), AppCompatDrawableManager.f1536d);
                m735h(layerDrawable.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlActivated), AppCompatDrawableManager.f1536d);
                return true;
            }
            if (i != C0118R.drawable.abc_ratingbar_material && i != C0118R.drawable.abc_ratingbar_indicator_material && i != C0118R.drawable.abc_ratingbar_small_material) {
                return false;
            }
            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
            m735h(layerDrawable2.findDrawableByLayerId(R.id.background), ThemeUtils.getDisabledThemeAttrColor(context, C0118R.attr.colorControlNormal), AppCompatDrawableManager.f1536d);
            m735h(layerDrawable2.findDrawableByLayerId(R.id.secondaryProgress), ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlActivated), AppCompatDrawableManager.f1536d);
            m735h(layerDrawable2.findDrawableByLayerId(R.id.progress), ThemeUtils.getThemeAttrColor(context, C0118R.attr.colorControlActivated), AppCompatDrawableManager.f1536d);
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0060 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x004b  */
        @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean tintDrawableUsingColorFilter(@androidx.annotation.NonNull android.content.Context r7, int r8, @androidx.annotation.NonNull android.graphics.drawable.Drawable r9) {
            /*
                r6 = this;
                android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.m722a()
                int[] r1 = r6.f1539a
                boolean r1 = r6.m728a(r1, r8)
                r2 = 1
                r3 = 0
                r4 = -1
                if (r1 == 0) goto L14
                int r6 = androidx.appcompat.C0118R.attr.colorControlNormal
            L11:
                r1 = r2
            L12:
                r8 = r4
                goto L49
            L14:
                int[] r1 = r6.f1541c
                boolean r1 = r6.m728a(r1, r8)
                if (r1 == 0) goto L1f
                int r6 = androidx.appcompat.C0118R.attr.colorControlActivated
                goto L11
            L1f:
                int[] r1 = r6.f1542d
                boolean r6 = r6.m728a(r1, r8)
                r1 = 16842801(0x1010031, float:2.3693695E-38)
                if (r6 == 0) goto L2e
                android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
            L2c:
                r6 = r1
                goto L11
            L2e:
                int r6 = androidx.appcompat.C0118R.drawable.abc_list_divider_mtrl_alpha
                if (r8 != r6) goto L41
                r6 = 1109603123(0x42233333, float:40.8)
                int r6 = java.lang.Math.round(r6)
                r8 = 16842800(0x1010030, float:2.3693693E-38)
                r1 = r2
                r5 = r8
                r8 = r6
                r6 = r5
                goto L49
            L41:
                int r6 = androidx.appcompat.C0118R.drawable.abc_dialog_material_background
                if (r8 != r6) goto L46
                goto L2c
            L46:
                r6 = r3
                r1 = r6
                goto L12
            L49:
                if (r1 == 0) goto L60
                android.graphics.drawable.Drawable r9 = r9.mutate()
                int r6 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r6)
                android.graphics.PorterDuffColorFilter r6 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r6, r0)
                r9.setColorFilter(r6)
                if (r8 == r4) goto L5f
                r9.setAlpha(r8)
            L5f:
                return r2
            L60:
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.C0229a.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
        }
    }

    /* renamed from: e */
    public static void m723e(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.m837r(drawable, tintInfo, iArr);
    }

    public static synchronized AppCompatDrawableManager get() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            if (f1537e == null) {
                preload();
            }
            appCompatDrawableManager = f1537e;
        }
        return appCompatDrawableManager;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (AppCompatDrawableManager.class) {
            porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(i, mode);
        }
        return porterDuffColorFilter;
    }

    public static synchronized void preload() {
        synchronized (AppCompatDrawableManager.class) {
            if (f1537e == null) {
                AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
                f1537e = appCompatDrawableManager;
                appCompatDrawableManager.f1538a = ResourceManagerInternal.get();
                f1537e.f1538a.setHooks(new C0229a());
            }
        }
    }

    /* renamed from: b */
    public synchronized Drawable m724b(@NonNull Context context, @DrawableRes int i, boolean z) {
        return this.f1538a.m844i(context, i, z);
    }

    /* renamed from: c */
    public synchronized ColorStateList m725c(@NonNull Context context, @DrawableRes int i) {
        return this.f1538a.m845j(context, i);
    }

    /* renamed from: d */
    public synchronized Drawable m726d(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i) {
        return this.f1538a.m849p(context, vectorEnabledTintResources, i);
    }

    /* renamed from: f */
    public boolean m727f(@NonNull Context context, @DrawableRes int i, @NonNull Drawable drawable) {
        return this.f1538a.m851s(context, i, drawable);
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i) {
        return this.f1538a.getDrawable(context, i);
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        this.f1538a.onConfigurationChanged(context);
    }
}
