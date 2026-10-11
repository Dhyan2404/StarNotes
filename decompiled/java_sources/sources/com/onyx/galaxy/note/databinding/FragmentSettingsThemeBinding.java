package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.AutoFitRecycleView;

/* loaded from: classes9.dex */
public abstract class FragmentSettingsThemeBinding extends ViewDataBinding {

    @NonNull
    public final AutoFitRecycleView rlThemeList;

    public FragmentSettingsThemeBinding(Object obj, View view, int i, AutoFitRecycleView autoFitRecycleView) {
        super(obj, view, i);
        this.rlThemeList = autoFitRecycleView;
    }

    public static FragmentSettingsThemeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentSettingsThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static FragmentSettingsThemeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (FragmentSettingsThemeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.fragment_settings_theme);
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (FragmentSettingsThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_theme, viewGroup, z, obj);
    }

    @NonNull
    public static FragmentSettingsThemeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static FragmentSettingsThemeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (FragmentSettingsThemeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.fragment_settings_theme, null, false, obj);
    }
}
