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
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentEditCounterSettingBinding extends ViewDataBinding {

    @NonNull
    public final RadioGroup radioGroup;

    @NonNull
    public final TintRadioButton rbCountDownMultiple;

    @NonNull
    public final TintRadioButton rbCountDownNormal;

    @NonNull
    public final TintTextView tvCancel;

    @NonNull
    public final TintTextView tvSave;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final ViewPager2 vpContainer;

    public FragmentEditCounterSettingBinding(Object obj, View view, int i, RadioGroup radioGroup, TintRadioButton tintRadioButton, TintRadioButton tintRadioButton2, TintTextView tintTextView, TintTextView tintTextView2, MediumTextView mediumTextView, ViewPager2 viewPager2) {
        super(obj, view, i);
        this.radioGroup = radioGroup;
        this.rbCountDownMultiple = tintRadioButton;
        this.rbCountDownNormal = tintRadioButton2;
        this.tvCancel = tintTextView;
        this.tvSave = tintTextView2;
        this.tvTitle = mediumTextView;
        this.vpContainer = viewPager2;
    }

    public static FragmentEditCounterSettingBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentEditCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentEditCounterSettingBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentEditCounterSettingBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_edit_counter_setting);
    }

    @NonNull
    @Deprecated
    public static FragmentEditCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentEditCounterSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_counter_setting, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentEditCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentEditCounterSettingBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentEditCounterSettingBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_edit_counter_setting, null, false, obj);
    }
}
