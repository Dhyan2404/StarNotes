package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutShapesLocationBarBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout container;

    @NonNull
    public final TintImageView next;

    @NonNull
    public final TintImageView origin;

    @NonNull
    public final TintImageView prev;

    public LayoutShapesLocationBarBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3) {
        super(obj, view, i);
        this.container = tintFrameLayout;
        this.next = tintImageView;
        this.origin = tintImageView2;
        this.prev = tintImageView3;
    }

    public static LayoutShapesLocationBarBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutShapesLocationBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutShapesLocationBarBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutShapesLocationBarBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_shapes_location_bar);
    }

    @NonNull
    @Deprecated
    public static LayoutShapesLocationBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutShapesLocationBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shapes_location_bar, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutShapesLocationBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutShapesLocationBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutShapesLocationBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_shapes_location_bar, null, false, obj);
    }
}
