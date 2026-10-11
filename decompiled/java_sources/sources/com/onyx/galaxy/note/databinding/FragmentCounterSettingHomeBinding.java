package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentCounterSettingHomeBinding extends ViewDataBinding {

    @NonNull
    public final RadioGroup radioGroup;

    @NonNull
    public final TintRadioButton rbCountDown;

    @NonNull
    public final TintRadioButton rbCountUp;

    @NonNull
    public final TintFrameLayout titleContainer;

    @NonNull
    public final ViewPager2 vpContainer;

    public FragmentCounterSettingHomeBinding(Object obj, View view, int i, RadioGroup radioGroup, TintRadioButton tintRadioButton, TintRadioButton tintRadioButton2, TintFrameLayout tintFrameLayout, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.radioGroup = radioGroup;
        this.rbCountDown = tintRadioButton;
        this.rbCountUp = tintRadioButton2;
        this.titleContainer = tintFrameLayout;
        this.vpContainer = viewPager2;
    }

    public static FragmentCounterSettingHomeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentCounterSettingHomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentCounterSettingHomeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentCounterSettingHomeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_counter_setting_home);
    }

    @NonNull
    @Deprecated
    public static FragmentCounterSettingHomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentCounterSettingHomeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_counter_setting_home, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentCounterSettingHomeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentCounterSettingHomeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentCounterSettingHomeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_counter_setting_home, null, false, obj);
    }
}
