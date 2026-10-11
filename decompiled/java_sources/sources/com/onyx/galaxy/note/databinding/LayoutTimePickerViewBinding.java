package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutTimePickerViewBinding extends ViewDataBinding {

    @NonNull
    public final WheelView wvHour;

    @NonNull
    public final WheelView wvMinute;

    @NonNull
    public final WheelView wvSecond;

    public LayoutTimePickerViewBinding(Object obj, View view, int i, WheelView wheelView, WheelView wheelView2, WheelView wheelView3) {
        super(obj, view, i);
        this.wvHour = wheelView;
        this.wvMinute = wheelView2;
        this.wvSecond = wheelView3;
    }

    public static LayoutTimePickerViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutTimePickerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutTimePickerViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutTimePickerViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_time_picker_view);
    }

    @NonNull
    @Deprecated
    public static LayoutTimePickerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutTimePickerViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_time_picker_view, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutTimePickerViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutTimePickerViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutTimePickerViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_time_picker_view, null, false, obj);
    }
}
