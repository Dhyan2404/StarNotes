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
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.TimePickerView;

/* loaded from: classes9.dex */
public abstract class FragmentCountDownBinding extends ViewDataBinding {

    @NonNull
    public final TintEditText edtCounterName;

    @NonNull
    public final TintImageView ivNewRecordIndicator;

    @NonNull
    public final TintLinearLayout llMore;

    @NonNull
    public final TintLinearLayout llyInput;

    @NonNull
    public final TintRelativeLayout rlTimerHistoryRecord;

    @NonNull
    public final TimePickerView timePicker;

    @NonNull
    public final TintTextView tvLabelCounterName;

    @NonNull
    public final TintFrameLayout tvMyTimerTask;

    @NonNull
    public final TintTextView tvStart;

    @NonNull
    public final TintTextView tvTimerHistoryRecord;

    public FragmentCountDownBinding(Object obj, View view, int i, TintEditText tintEditText, TintImageView tintImageView, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintRelativeLayout tintRelativeLayout, TimePickerView timePickerView, TintTextView tintTextView, TintFrameLayout tintFrameLayout, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.edtCounterName = tintEditText;
        this.ivNewRecordIndicator = tintImageView;
        this.llMore = tintLinearLayout;
        this.llyInput = tintLinearLayout2;
        this.rlTimerHistoryRecord = tintRelativeLayout;
        this.timePicker = timePickerView;
        this.tvLabelCounterName = tintTextView;
        this.tvMyTimerTask = tintFrameLayout;
        this.tvStart = tintTextView2;
        this.tvTimerHistoryRecord = tintTextView3;
    }

    public static FragmentCountDownBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCountDownBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentCountDownBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_count_down);
    }

    @NonNull
    @Deprecated
    public static FragmentCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_count_down, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentCountDownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentCountDownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentCountDownBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_count_down, null, false, obj);
    }
}
