package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemScaleBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivDelete;

    @NonNull
    public final LinearLayout llBg;

    @NonNull
    public final TintTextView tvContent;

    public ItemScaleBinding(Object obj, View view, int i, TintImageView tintImageView, LinearLayout linearLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivDelete = tintImageView;
        this.llBg = linearLayout;
        this.tvContent = tintTextView;
    }

    public static ItemScaleBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemScaleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemScaleBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemScaleBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_scale);
    }

    @NonNull
    @Deprecated
    public static ItemScaleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemScaleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_scale, viewGroup, z, obj);
    }

    @NonNull
    public static ItemScaleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemScaleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemScaleBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_scale, null, false, obj);
    }
}
