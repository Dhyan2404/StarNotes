package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupStickersBinding extends ViewDataBinding {

    @NonNull
    public final LayoutLoadingStickerBinding loadingBinding;

    @NonNull
    public final FrameLayout loadingContainer;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final ViewPager2 viewPager;

    public PopupStickersBinding(Object obj, View view, int i, LayoutLoadingStickerBinding layoutLoadingStickerBinding, FrameLayout frameLayout, TintTabLayoutView tintTabLayoutView, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.loadingBinding = layoutLoadingStickerBinding;
        this.loadingContainer = frameLayout;
        this.tabLayout = tintTabLayoutView;
        this.viewPager = viewPager2;
    }

    public static PopupStickersBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupStickersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupStickersBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupStickersBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_stickers);
    }

    @NonNull
    @Deprecated
    public static PopupStickersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupStickersBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_stickers, viewGroup, z, obj);
    }

    @NonNull
    public static PopupStickersBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupStickersBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupStickersBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_stickers, null, false, obj);
    }
}
