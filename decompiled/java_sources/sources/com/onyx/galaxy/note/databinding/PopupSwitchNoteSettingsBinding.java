package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupSwitchNoteSettingsBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final TintTextView tvCommonSettings;

    @NonNull
    public final TintTextView tvDocLocalSettings;

    public PopupSwitchNoteSettingsBinding(Object obj, View view, int i, TintView tintView, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.divider = tintView;
        this.tvCommonSettings = tintTextView;
        this.tvDocLocalSettings = tintTextView2;
    }

    public static PopupSwitchNoteSettingsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSwitchNoteSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSwitchNoteSettingsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSwitchNoteSettingsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_switch_note_settings);
    }

    @NonNull
    @Deprecated
    public static PopupSwitchNoteSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSwitchNoteSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_switch_note_settings, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSwitchNoteSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSwitchNoteSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSwitchNoteSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_switch_note_settings, null, false, obj);
    }
}
