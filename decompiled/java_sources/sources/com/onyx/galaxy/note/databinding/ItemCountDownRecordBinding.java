package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemCountDownRecordBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView checkbox;

    @NonNull
    public final TintConstraintLayout clContentLayout;

    @NonNull
    public final TintEditText editCounterName;

    @NonNull
    public final TintFrameLayout flyInput;

    @NonNull
    public final TintFrameLayout flyName;

    @NonNull
    public final TintImageView ivMoreOption;

    @NonNull
    public final TintTextView tvCountName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final TintTextView tvTotalTime;

    public ItemCountDownRecordBinding(Object obj, View view, int i, TintImageView tintImageView, TintConstraintLayout tintConstraintLayout, TintEditText tintEditText, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintImageView tintImageView2, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.checkbox = tintImageView;
        this.clContentLayout = tintConstraintLayout;
        this.editCounterName = tintEditText;
        this.flyInput = tintFrameLayout;
        this.flyName = tintFrameLayout2;
        this.ivMoreOption = tintImageView2;
        this.tvCountName = tintTextView;
        this.tvTime = tintTextView2;
        this.tvTotalTime = tintTextView3;
    }

    public static ItemCountDownRecordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemCountDownRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemCountDownRecordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemCountDownRecordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_count_down_record);
    }

    @NonNull
    @Deprecated
    public static ItemCountDownRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemCountDownRecordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_down_record, viewGroup, z, obj);
    }

    @NonNull
    public static ItemCountDownRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCountDownRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemCountDownRecordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_down_record, null, false, obj);
    }
}
