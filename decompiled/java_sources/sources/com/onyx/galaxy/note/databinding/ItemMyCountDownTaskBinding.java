package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemMyCountDownTaskBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivExpandFlagArrow;

    @NonNull
    public final TintImageView ivMoreOption;

    @NonNull
    public final TintRecycleView rvTaskTimeList;

    @NonNull
    public final TintTextView tvCountName;

    @NonNull
    public final TintTextView tvStart;

    @NonNull
    public final TintTextView tvTotalTime;

    public ItemMyCountDownTaskBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintRecycleView tintRecycleView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.ivExpandFlagArrow = tintImageView;
        this.ivMoreOption = tintImageView2;
        this.rvTaskTimeList = tintRecycleView;
        this.tvCountName = tintTextView;
        this.tvStart = tintTextView2;
        this.tvTotalTime = tintTextView3;
    }

    public static ItemMyCountDownTaskBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemMyCountDownTaskBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemMyCountDownTaskBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_my_count_down_task);
    }

    @NonNull
    @Deprecated
    public static ItemMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemMyCountDownTaskBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_my_count_down_task, viewGroup, z, obj);
    }

    @NonNull
    public static ItemMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemMyCountDownTaskBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemMyCountDownTaskBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_my_count_down_task, null, false, obj);
    }
}
