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
public abstract class LayoutCounterTipsViewBinding extends ViewDataBinding {

    @NonNull
    public final ShadowLayout icon;

    @NonNull
    public final TintImageView ivAction;

    @NonNull
    public final TintTextView tvTimeName;

    @NonNull
    public final TintTextView tvTip;

    public LayoutCounterTipsViewBinding(Object obj, View view, int i, ShadowLayout shadowLayout, TintImageView tintImageView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.icon = shadowLayout;
        this.ivAction = tintImageView;
        this.tvTimeName = tintTextView;
        this.tvTip = tintTextView2;
    }

    public static LayoutCounterTipsViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCounterTipsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutCounterTipsViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutCounterTipsViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_counter_tips_view);
    }

    @NonNull
    @Deprecated
    public static LayoutCounterTipsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutCounterTipsViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_tips_view, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutCounterTipsViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutCounterTipsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutCounterTipsViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_counter_tips_view, null, false, obj);
    }
}
