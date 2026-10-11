package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
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
public abstract class PopupUniversalShapeBinding extends ViewDataBinding {

    @NonNull
    public final TintLinearLayout borderStyleGroup;

    @NonNull
    public final TintTextView borderStyleTitle;

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final TintImageView dashStyle;

    @NonNull
    public final TintView dividerGraph;

    @NonNull
    public final TintImageView dotStyle;

    @NonNull
    public final TintSwitchCompat enableFill;

    @NonNull
    public final FrameLayout enableFillColorGroup;

    @NonNull
    public final TintFrameLayout favoriteGroup;

    @NonNull
    public final TintTextView favoriteHintText;

    @NonNull
    public final UniversalShapeFavoriteLayout favoriteLayout;

    @NonNull
    public final TintLinearLayout fillColorGroup;

    @NonNull
    public final ShapeFillColorPropertyLayout fillColorLayout;

    @NonNull
    public final PageIndicatorView pageIndicator;

    @NonNull
    public final ScrollView scrollView;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintImageView solidStyle;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final TintTextView tvGraphFillTitle;

    @NonNull
    public final MediumTextView tvGraphTitle;

    @NonNull
    public final ViewPager2 viewPager;

    public PopupUniversalShapeBinding(Object obj, View view, int i, TintLinearLayout tintLinearLayout, TintTextView tintTextView, ShapeColorPropertyLayout shapeColorPropertyLayout, TintImageView tintImageView, TintView tintView, TintImageView tintImageView2, TintSwitchCompat tintSwitchCompat, FrameLayout frameLayout, TintFrameLayout tintFrameLayout, TintTextView tintTextView2, UniversalShapeFavoriteLayout universalShapeFavoriteLayout, TintLinearLayout tintLinearLayout2, ShapeFillColorPropertyLayout shapeFillColorPropertyLayout, PageIndicatorView pageIndicatorView, ScrollView scrollView, StickSeekBarContainer stickSeekBarContainer, TintImageView tintImageView3, TintTextView tintTextView3, TintTextView tintTextView4, MediumTextView mediumTextView, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.borderStyleGroup = tintLinearLayout;
        this.borderStyleTitle = tintTextView;
        this.colorLayout = shapeColorPropertyLayout;
        this.dashStyle = tintImageView;
        this.dividerGraph = tintView;
        this.dotStyle = tintImageView2;
        this.enableFill = tintSwitchCompat;
        this.enableFillColorGroup = frameLayout;
        this.favoriteGroup = tintFrameLayout;
        this.favoriteHintText = tintTextView2;
        this.favoriteLayout = universalShapeFavoriteLayout;
        this.fillColorGroup = tintLinearLayout2;
        this.fillColorLayout = shapeFillColorPropertyLayout;
        this.pageIndicator = pageIndicatorView;
        this.scrollView = scrollView;
        this.seekBarThickness = stickSeekBarContainer;
        this.solidStyle = tintImageView3;
        this.tvColorTitle = tintTextView3;
        this.tvGraphFillTitle = tintTextView4;
        this.tvGraphTitle = mediumTextView;
        this.viewPager = viewPager2;
    }

    public static PopupUniversalShapeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupUniversalShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupUniversalShapeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupUniversalShapeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_universal_shape);
    }

    @NonNull
    @Deprecated
    public static PopupUniversalShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupUniversalShapeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_universal_shape, viewGroup, z, obj);
    }

    @NonNull
    public static PopupUniversalShapeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupUniversalShapeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupUniversalShapeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_universal_shape, null, false, obj);
    }
}
