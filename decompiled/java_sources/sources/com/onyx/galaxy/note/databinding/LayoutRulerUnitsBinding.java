package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class LayoutRulerUnitsBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView bottomArrowView;

    @NonNull
    public final ShadowLayout shadowLayout;

    @NonNull
    public final TintTextView tvUnits;

    public LayoutRulerUnitsBinding(Object obj, View view, int i, TintImageView tintImageView, ShadowLayout shadowLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.bottomArrowView = tintImageView;
        this.shadowLayout = shadowLayout;
        this.tvUnits = tintTextView;
    }

    public static LayoutRulerUnitsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutRulerUnitsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutRulerUnitsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutRulerUnitsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_ruler_units);
    }

    @NonNull
    @Deprecated
    public static LayoutRulerUnitsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutRulerUnitsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_ruler_units, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutRulerUnitsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutRulerUnitsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutRulerUnitsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_ruler_units, null, false, obj);
    }
}
