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

/* loaded from: classes9.dex */
public abstract class ItemFeedbackTypeLayoutBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivCheck;

    @NonNull
    public final TintTextView tvType;

    public ItemFeedbackTypeLayoutBinding(Object obj, View view, int i, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivCheck = tintImageView;
        this.tvType = tintTextView;
    }

    public static ItemFeedbackTypeLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemFeedbackTypeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemFeedbackTypeLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemFeedbackTypeLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_feedback_type_layout);
    }

    @NonNull
    @Deprecated
    public static ItemFeedbackTypeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemFeedbackTypeLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feedback_type_layout, viewGroup, z, obj);
    }

    @NonNull
    public static ItemFeedbackTypeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemFeedbackTypeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemFeedbackTypeLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_feedback_type_layout, null, false, obj);
    }
}
