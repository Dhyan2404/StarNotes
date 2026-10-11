package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.TimePickerView;

/* loaded from: classes9.dex */
public abstract class FragmentEditNormalCountDownBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final TintEditText edtCounterName;

    @NonNull
    public final TintRelativeLayout rlTaskName;

    @NonNull
    public final TimePickerView timePicker;

    @NonNull
    public final TintTextView tvTotalTime;

    public FragmentEditNormalCountDownBinding(Object obj, View view, int i, TintView tintView, TintEditText tintEditText, TintRelativeLayout tintRelativeLayout, TimePickerView timePickerView, TintTextView tintTextView) {
        super(obj, view, i);
        this.divider = tintView;
        this.edtCounterName = tintEditText;
        this.rlTaskName = tintRelativeLayout;
        this.timePicker = timePickerView;
        this.tvTotalTime = tintTextView;
    }

    public static FragmentEditNormalCountDownBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentEditNormalCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentEditNormalCountDownBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentEditNormalCountDownBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_edit_normal_count_down);
    }

    @NonNull
    @Deprecated
    public static FragmentEditNormalCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentEditNormalCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_normal_count_down, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentEditNormalCountDownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentEditNormalCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentEditNormalCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_normal_count_down, null, false, obj);
    }
}
