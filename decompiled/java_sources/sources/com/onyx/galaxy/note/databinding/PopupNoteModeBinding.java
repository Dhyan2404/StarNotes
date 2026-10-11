package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupNoteModeBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivFingerModeSelected;

    @NonNull
    public final TintImageView ivReadingModeSelected;

    @NonNull
    public final TintImageView ivStylusModeSelected;

    @NonNull
    public final TintLinearLayout llyFingerMode;

    @NonNull
    public final TintLinearLayout llyReadingMode;

    @NonNull
    public final TintLinearLayout llyStylusMode;

    public PopupNoteModeBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintLinearLayout tintLinearLayout3) {
        super(obj, view, i);
        this.ivFingerModeSelected = tintImageView;
        this.ivReadingModeSelected = tintImageView2;
        this.ivStylusModeSelected = tintImageView3;
        this.llyFingerMode = tintLinearLayout;
        this.llyReadingMode = tintLinearLayout2;
        this.llyStylusMode = tintLinearLayout3;
    }

    public static PopupNoteModeBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupNoteModeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupNoteModeBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupNoteModeBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_note_mode);
    }

    @NonNull
    @Deprecated
    public static PopupNoteModeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupNoteModeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_mode, viewGroup, z, obj);
    }

    @NonNull
    public static PopupNoteModeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupNoteModeBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupNoteModeBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_note_mode, null, false, obj);
    }
}
