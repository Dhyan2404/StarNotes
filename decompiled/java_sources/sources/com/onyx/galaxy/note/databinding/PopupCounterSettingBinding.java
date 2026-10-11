package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.fragment.app.FragmentContainerView;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupCounterSettingBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView back;

    @NonNull
    public final TintImageView close;

    @NonNull
    public final TintView dividerNavigation;

    @NonNull
    public final TintFrameLayout flRoot;

    @NonNull
    public final TintImageView ivAlarmSetting;

    @NonNull
    public final FragmentContainerView navTimerHostFragmentMain;

    @NonNull
    public final RelativeLayout rlNavigationBar;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupCounterSettingBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintView tintView, TintFrameLayout tintFrameLayout, TintImageView tintImageView3, FragmentContainerView fragmentContainerView, RelativeLayout relativeLayout, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.back = tintImageView;
        this.close = tintImageView2;
        this.dividerNavigation = tintView;
        this.flRoot = tintFrameLayout;
        this.ivAlarmSetting = tintImageView3;
        this.navTimerHostFragmentMain = fragmentContainerView;
        this.rlNavigationBar = relativeLayout;
        this.tvTitle = mediumTextView;
    }

    public static PopupCounterSettingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupCounterSettingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupCounterSettingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_counter_setting);
    }

    @NonNull
    @Deprecated
    public static PopupCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupCounterSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_counter_setting, viewGroup, z, obj);
    }

    @NonNull
    public static PopupCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupCounterSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_counter_setting, null, false, obj);
    }
}
