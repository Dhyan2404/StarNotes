package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemCountDownMultipleTimeListBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText edtCountName;

    @NonNull
    public final TintRelativeLayout itemContainer;

    @NonNull
    public final TintImageView ivMoreOption;

    @NonNull
    public final TintTextView tvTotalTime;

    public ItemCountDownMultipleTimeListBinding(Object obj, View view, int i, TintEditText tintEditText, TintRelativeLayout tintRelativeLayout, TintImageView tintImageView, TintTextView tintTextView) {
        super(obj, view, i);
        this.edtCountName = tintEditText;
        this.itemContainer = tintRelativeLayout;
        this.ivMoreOption = tintImageView;
        this.tvTotalTime = tintTextView;
    }

    public static ItemCountDownMultipleTimeListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemCountDownMultipleTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemCountDownMultipleTimeListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemCountDownMultipleTimeListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_count_down_multiple_time_list);
    }

    @NonNull
    @Deprecated
    public static ItemCountDownMultipleTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemCountDownMultipleTimeListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_down_multiple_time_list, viewGroup, z, obj);
    }

    @NonNull
    public static ItemCountDownMultipleTimeListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCountDownMultipleTimeListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemCountDownMultipleTimeListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_down_multiple_time_list, null, false, obj);
    }
}
