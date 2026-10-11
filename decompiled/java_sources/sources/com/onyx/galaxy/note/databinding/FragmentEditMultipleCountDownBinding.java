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
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.TimePickerView;
import com.onyx.galaxy.note.p048ui.view.ExpandToMaxHeightRecyclerView;

/* loaded from: classes9.dex */
public abstract class FragmentEditMultipleCountDownBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final TintEditText edtCounterName;

    @NonNull
    public final TintImageView ivIconTaskTimeAdd;

    @NonNull
    public final TintRelativeLayout rlButton;

    @NonNull
    public final TintRelativeLayout rlTaskName;

    @NonNull
    public final ExpandToMaxHeightRecyclerView rvTaskTimeList;

    @NonNull
    public final TimePickerView timePicker;

    @NonNull
    public final TintTextView tvSaveTime;

    @NonNull
    public final TintTextView tvTaskTimeAdd;

    @NonNull
    public final TintTextView tvTotalTime;

    public FragmentEditMultipleCountDownBinding(Object obj, View view, int i, TintView tintView, TintEditText tintEditText, TintImageView tintImageView, TintRelativeLayout tintRelativeLayout, TintRelativeLayout tintRelativeLayout2, ExpandToMaxHeightRecyclerView expandToMaxHeightRecyclerView, TimePickerView timePickerView, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.divider = tintView;
        this.edtCounterName = tintEditText;
        this.ivIconTaskTimeAdd = tintImageView;
        this.rlButton = tintRelativeLayout;
        this.rlTaskName = tintRelativeLayout2;
        this.rvTaskTimeList = expandToMaxHeightRecyclerView;
        this.timePicker = timePickerView;
        this.tvSaveTime = tintTextView;
        this.tvTaskTimeAdd = tintTextView2;
        this.tvTotalTime = tintTextView3;
    }

    public static FragmentEditMultipleCountDownBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentEditMultipleCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentEditMultipleCountDownBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentEditMultipleCountDownBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_edit_multiple_count_down);
    }

    @NonNull
    @Deprecated
    public static FragmentEditMultipleCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentEditMultipleCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_multiple_count_down, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentEditMultipleCountDownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentEditMultipleCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentEditMultipleCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_multiple_count_down, null, false, obj);
    }
}
