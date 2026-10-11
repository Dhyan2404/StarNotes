package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutWifiAndMobileContainerBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout flWifiAndMobileContainer;

    @NonNull
    public final TintFrameLayout flWifiOnlyContainer;

    @NonNull
    public final TintImageView ivSyncOnWifi;

    @NonNull
    public final TintImageView ivSyncOnWifiAndMobileNetworks;

    @Bindable
    protected Boolean mIsWifiOnly;

    public LayoutWifiAndMobileContainerBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintImageView tintImageView, TintImageView tintImageView2) {
        super(obj, view, i);
        this.flWifiAndMobileContainer = tintFrameLayout;
        this.flWifiOnlyContainer = tintFrameLayout2;
        this.ivSyncOnWifi = tintImageView;
        this.ivSyncOnWifiAndMobileNetworks = tintImageView2;
    }

    public static LayoutWifiAndMobileContainerBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutWifiAndMobileContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public Boolean getIsWifiOnly() {
        return this.mIsWifiOnly;
    }

    public abstract void setIsWifiOnly(@Nullable Boolean bool);

    @Deprecated
    public static LayoutWifiAndMobileContainerBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutWifiAndMobileContainerBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_wifi_and_mobile_container);
    }

    @NonNull
    @Deprecated
    public static LayoutWifiAndMobileContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutWifiAndMobileContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_wifi_and_mobile_container, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutWifiAndMobileContainerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutWifiAndMobileContainerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutWifiAndMobileContainerBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_wifi_and_mobile_container, null, false, obj);
    }
}
