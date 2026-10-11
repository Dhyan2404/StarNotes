package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.ResizableRecyclerView;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class LayoutPenBoxBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout flyContent;

    @NonNull
    public final TintFrameLayout icon;

    @NonNull
    public final TintImageView ivOperation;

    @NonNull
    public final TintImageView ivPenBox;

    @NonNull
    public final ResizableRecyclerView listview;

    @NonNull
    public final TintLinearLayout llyContent;

    @NonNull
    public final ShadowLayout shadowContent;

    public LayoutPenBoxBinding(Object obj, View view, int i, FrameLayout frameLayout, TintFrameLayout tintFrameLayout, TintImageView tintImageView, TintImageView tintImageView2, ResizableRecyclerView resizableRecyclerView, TintLinearLayout tintLinearLayout, ShadowLayout shadowLayout) {
        super(obj, view, i);
        this.flyContent = frameLayout;
        this.icon = tintFrameLayout;
        this.ivOperation = tintImageView;
        this.ivPenBox = tintImageView2;
        this.listview = resizableRecyclerView;
        this.llyContent = tintLinearLayout;
        this.shadowContent = shadowLayout;
    }

    public static LayoutPenBoxBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutPenBoxBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutPenBoxBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_pen_box);
    }

    @NonNull
    @Deprecated
    public static LayoutPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutPenBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_pen_box, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutPenBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutPenBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_pen_box, null, false, obj);
    }
}
