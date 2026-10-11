package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsStylusBinding extends ViewDataBinding {

    @NonNull
    public final ScrollView commonDeviceStylusContainer;

    @NonNull
    public final TintFrameLayout doubleClickContainer;

    @NonNull
    public final IncludeStylusPinchSlideContainerBinding includePinchSlide;

    @NonNull
    public final IncludeSpecialDeviceStylusBinding includeSpecialDevice;

    @NonNull
    public final LayoutStylusFunContainerBinding includeStylusFun;

    @NonNull
    public final TintFrameLayout longPressContainer;

    @NonNull
    public final TintFrameLayout primaryClickContainer;

    @NonNull
    public final TintFrameLayout secondaryClickContainer;

    @NonNull
    public final TintTextView tvLongPressName;

    @NonNull
    public final TintTextView tvPrimaryClickFun;

    @NonNull
    public final TintTextView tvPrimaryClickName;

    @NonNull
    public final TintTextView tvSecondaryClickFun;

    @NonNull
    public final TintTextView tvSecondaryClickName;

    @NonNull
    public final TintTextView tvStylusButtonLongPressFun;

    @NonNull
    public final TintTextView tvStylusPenDoubleClickFun;

    @NonNull
    public final TintTextView tvStylusPenDoubleClickName;

    public FragmentSettingsStylusBinding(Object obj, View view, int i, ScrollView scrollView, TintFrameLayout tintFrameLayout, IncludeStylusPinchSlideContainerBinding includeStylusPinchSlideContainerBinding, IncludeSpecialDeviceStylusBinding includeSpecialDeviceStylusBinding, LayoutStylusFunContainerBinding layoutStylusFunContainerBinding, TintFrameLayout tintFrameLayout2, TintFrameLayout tintFrameLayout3, TintFrameLayout tintFrameLayout4, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8) {
        super(obj, view, i);
        this.commonDeviceStylusContainer = scrollView;
        this.doubleClickContainer = tintFrameLayout;
        this.includePinchSlide = includeStylusPinchSlideContainerBinding;
        this.includeSpecialDevice = includeSpecialDeviceStylusBinding;
        this.includeStylusFun = layoutStylusFunContainerBinding;
        this.longPressContainer = tintFrameLayout2;
        this.primaryClickContainer = tintFrameLayout3;
        this.secondaryClickContainer = tintFrameLayout4;
        this.tvLongPressName = tintTextView;
        this.tvPrimaryClickFun = tintTextView2;
        this.tvPrimaryClickName = tintTextView3;
        this.tvSecondaryClickFun = tintTextView4;
        this.tvSecondaryClickName = tintTextView5;
        this.tvStylusButtonLongPressFun = tintTextView6;
        this.tvStylusPenDoubleClickFun = tintTextView7;
        this.tvStylusPenDoubleClickName = tintTextView8;
    }

    public static FragmentSettingsStylusBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsStylusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsStylusBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsStylusBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_stylus);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsStylusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsStylusBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_stylus, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsStylusBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsStylusBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsStylusBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_stylus, null, false, obj);
    }
}
