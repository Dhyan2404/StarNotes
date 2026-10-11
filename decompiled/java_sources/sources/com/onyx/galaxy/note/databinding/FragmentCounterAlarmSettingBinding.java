package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;

/* loaded from: classes9.dex */
public abstract class FragmentCounterAlarmSettingBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout flAlarmCountDown;

    @NonNull
    public final TintConstraintLayout flAlarmMultipleCount;

    @NonNull
    public final TintTextView ivMultipleCountTip;

    @NonNull
    public final TintImageView ivVolumeDown;

    @NonNull
    public final TintImageView ivVolumeUp;

    @NonNull
    public final StickSeekBarView seekBarVolume;

    @NonNull
    public final TintSwitchCompat switchAlarmCountDown;

    @NonNull
    public final TintSwitchCompat switchAlarmMultipleCount;

    @NonNull
    public final TintTextView tvLabelMultipleCount;

    public FragmentCounterAlarmSettingBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintConstraintLayout tintConstraintLayout, TintTextView tintTextView, TintImageView tintImageView, TintImageView tintImageView2, StickSeekBarView stickSeekBarView, TintSwitchCompat tintSwitchCompat, TintSwitchCompat tintSwitchCompat2, TintTextView tintTextView2) {
        super(obj, view, i);
        this.flAlarmCountDown = tintFrameLayout;
        this.flAlarmMultipleCount = tintConstraintLayout;
        this.ivMultipleCountTip = tintTextView;
        this.ivVolumeDown = tintImageView;
        this.ivVolumeUp = tintImageView2;
        this.seekBarVolume = stickSeekBarView;
        this.switchAlarmCountDown = tintSwitchCompat;
        this.switchAlarmMultipleCount = tintSwitchCompat2;
        this.tvLabelMultipleCount = tintTextView2;
    }

    public static FragmentCounterAlarmSettingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentCounterAlarmSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCounterAlarmSettingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentCounterAlarmSettingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_counter_alarm_setting);
    }

    @NonNull
    @Deprecated
    public static FragmentCounterAlarmSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentCounterAlarmSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_counter_alarm_setting, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentCounterAlarmSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentCounterAlarmSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentCounterAlarmSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_counter_alarm_setting, null, false, obj);
    }
}
