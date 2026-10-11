package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PalmCollectionSwitch;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsGestureBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout doubleClickContainer;

    @NonNull
    public final LayoutStylusFunContainerBinding includeFingerFun;

    @NonNull
    public final TintFrameLayout palmGestureContainer;

    @NonNull
    public final PalmCollectionSwitch switchPalmGesture;

    @NonNull
    public final TintFrameLayout threeFingerContainer;

    @NonNull
    public final TintTextView tvFingerDoubleClickFun;

    @NonNull
    public final TintTextView tvFingerDoubleClickName;

    @NonNull
    public final TintTextView tvPalmGestureName;

    @NonNull
    public final TintTextView tvThreeFingerClickFun;

    @NonNull
    public final TintTextView tvThreeFingerName;

    @NonNull
    public final TintTextView tvTowFingerClickFun;

    @NonNull
    public final TintTextView tvTwoFingerName;

    @NonNull
    public final TintFrameLayout twoFingerContainer;

    public FragmentSettingsGestureBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, LayoutStylusFunContainerBinding layoutStylusFunContainerBinding, TintFrameLayout tintFrameLayout2, PalmCollectionSwitch palmCollectionSwitch, TintFrameLayout tintFrameLayout3, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintFrameLayout tintFrameLayout4) {
        super(obj, view, i);
        this.doubleClickContainer = tintFrameLayout;
        this.includeFingerFun = layoutStylusFunContainerBinding;
        this.palmGestureContainer = tintFrameLayout2;
        this.switchPalmGesture = palmCollectionSwitch;
        this.threeFingerContainer = tintFrameLayout3;
        this.tvFingerDoubleClickFun = tintTextView;
        this.tvFingerDoubleClickName = tintTextView2;
        this.tvPalmGestureName = tintTextView3;
        this.tvThreeFingerClickFun = tintTextView4;
        this.tvThreeFingerName = tintTextView5;
        this.tvTowFingerClickFun = tintTextView6;
        this.tvTwoFingerName = tintTextView7;
        this.twoFingerContainer = tintFrameLayout4;
    }

    public static FragmentSettingsGestureBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsGestureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsGestureBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsGestureBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_gesture);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsGestureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsGestureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_gesture, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsGestureBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsGestureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsGestureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_gesture, null, false, obj);
    }
}
