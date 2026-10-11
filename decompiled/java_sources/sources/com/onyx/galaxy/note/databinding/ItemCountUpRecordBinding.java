package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ThemeRecyclerView;

/* loaded from: classes9.dex */
public abstract class ItemCountUpRecordBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView checkbox;

    @NonNull
    public final TintEditText editCounterName;

    @NonNull
    public final TintFrameLayout flyInput;

    @NonNull
    public final TintFrameLayout flyName;

    @NonNull
    public final TintImageView ivExpandFlagArrow;

    @NonNull
    public final TintImageView ivMoreOption;

    @NonNull
    public final ThemeRecyclerView rvTaskTimeList;

    @NonNull
    public final TintTextView tvCountName;

    @NonNull
    public final TintTextView tvTime;

    @NonNull
    public final TintTextView tvTotalTime;

    public ItemCountUpRecordBinding(Object obj, View view, int i, TintImageView tintImageView, TintEditText tintEditText, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintImageView tintImageView2, TintImageView tintImageView3, ThemeRecyclerView themeRecyclerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.checkbox = tintImageView;
        this.editCounterName = tintEditText;
        this.flyInput = tintFrameLayout;
        this.flyName = tintFrameLayout2;
        this.ivExpandFlagArrow = tintImageView2;
        this.ivMoreOption = tintImageView3;
        this.rvTaskTimeList = themeRecyclerView;
        this.tvCountName = tintTextView;
        this.tvTime = tintTextView2;
        this.tvTotalTime = tintTextView3;
    }

    public static ItemCountUpRecordBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemCountUpRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemCountUpRecordBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemCountUpRecordBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_count_up_record);
    }

    @NonNull
    @Deprecated
    public static ItemCountUpRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemCountUpRecordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_up_record, viewGroup, z, obj);
    }

    @NonNull
    public static ItemCountUpRecordBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCountUpRecordBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemCountUpRecordBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_count_up_record, null, false, obj);
    }
}
