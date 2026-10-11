package com.onyx.galaxy.note.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.popup.UniversalShapeFavoriteLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout;
import com.onyx.galaxy.note.p048ui.view.PageIndicatorView;

/* loaded from: classes9.dex */
public class PopupUniversalShapeBindingImpl extends PopupUniversalShapeBinding {

    /* renamed from: u0 */
    @Nullable
    public static final ViewDataBinding.IncludedLayouts f57905u0 = null;

    /* renamed from: v0 */
    @Nullable
    public static final SparseIntArray f57906v0;

    /* renamed from: q0 */
    @NonNull
    public final FrameLayout f57907q0;

    /* renamed from: t0 */
    public long f57908t0;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f57906v0 = sparseIntArray;
        sparseIntArray.put(C10651R.id.tv_graph_title, 1);
        sparseIntArray.put(C10651R.id.divider_graph, 2);
        sparseIntArray.put(C10651R.id.scrollView, 3);
        sparseIntArray.put(C10651R.id.favoriteGroup, 4);
        sparseIntArray.put(C10651R.id.favoriteHintText, 5);
        sparseIntArray.put(C10651R.id.favoriteLayout, 6);
        sparseIntArray.put(C10651R.id.viewPager, 7);
        sparseIntArray.put(C10651R.id.pageIndicator, 8);
        sparseIntArray.put(C10651R.id.borderStyleTitle, 9);
        sparseIntArray.put(C10651R.id.borderStyleGroup, 10);
        sparseIntArray.put(C10651R.id.solidStyle, 11);
        sparseIntArray.put(C10651R.id.dashStyle, 12);
        sparseIntArray.put(C10651R.id.dotStyle, 13);
        sparseIntArray.put(C10651R.id.seek_bar_thickness, 14);
        sparseIntArray.put(C10651R.id.tv_color_title, 15);
        sparseIntArray.put(C10651R.id.color_layout, 16);
        sparseIntArray.put(C10651R.id.fillColorGroup, 17);
        sparseIntArray.put(C10651R.id.enableFillColorGroup, 18);
        sparseIntArray.put(C10651R.id.tv_graph_fill_title, 19);
        sparseIntArray.put(C10651R.id.enable_fill, 20);
        sparseIntArray.put(C10651R.id.fill_color_layout, 21);
    }

    public PopupUniversalShapeBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 22, f57905u0, f57906v0));
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f57908t0 = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f57908t0 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f57908t0 = 1L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    public PopupUniversalShapeBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (TintLinearLayout) objArr[10], (TintTextView) objArr[9], (ShapeColorPropertyLayout) objArr[16], (TintImageView) objArr[12], (TintView) objArr[2], (TintImageView) objArr[13], (TintSwitchCompat) objArr[20], (FrameLayout) objArr[18], (TintFrameLayout) objArr[4], (TintTextView) objArr[5], (UniversalShapeFavoriteLayout) objArr[6], (TintLinearLayout) objArr[17], (ShapeFillColorPropertyLayout) objArr[21], (PageIndicatorView) objArr[8], (ScrollView) objArr[3], (StickSeekBarContainer) objArr[14], (TintImageView) objArr[11], (TintTextView) objArr[15], (TintTextView) objArr[19], (MediumTextView) objArr[1], (ViewPager2) objArr[7]);
        this.f57908t0 = -1L;
        FrameLayout frameLayout = (FrameLayout) objArr[0];
        this.f57907q0 = frameLayout;
        frameLayout.setTag(null);
        setRootTag(view);
        invalidateAll();
    }
}
