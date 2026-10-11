package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsDetailMainBinding extends ViewDataBinding {
    public FragmentSettingsDetailMainBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public static FragmentSettingsDetailMainBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsDetailMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsDetailMainBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsDetailMainBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_detail_main);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsDetailMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsDetailMainBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_detail_main, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsDetailMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsDetailMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsDetailMainBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_detail_main, null, false, obj);
    }
}
