package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.TouchModeMaxLengthEditText;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupShapeLinkEditBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView back;

    @NonNull
    public final TintImageView close;

    @NonNull
    public final TouchModeMaxLengthEditText edittext;

    @NonNull
    public final TintTextView finish;

    @NonNull
    public final TintTextView linkPosition;

    @NonNull
    public final AppCompatTextView linkPositionInvalidTip;

    @NonNull
    public final TintLinearLayout linkTargetLayout;

    @NonNull
    public final TintTextView linkTo;

    @NonNull
    public final TintLinearLayout linkTypeLayout;

    @NonNull
    public final LinearLayoutCompat titleEditLayout;

    @NonNull
    public final LinearLayoutCompat valueEditLayout;

    @NonNull
    public final TintEditText valueEdittext;

    public PopupShapeLinkEditBinding(Object obj, View view, int i, TintTextView tintTextView, TintImageView tintImageView, TouchModeMaxLengthEditText touchModeMaxLengthEditText, TintTextView tintTextView2, TintTextView tintTextView3, AppCompatTextView appCompatTextView, TintLinearLayout tintLinearLayout, TintTextView tintTextView4, TintLinearLayout tintLinearLayout2, LinearLayoutCompat linearLayoutCompat, LinearLayoutCompat linearLayoutCompat2, TintEditText tintEditText) {
        super(obj, view, i);
        this.back = tintTextView;
        this.close = tintImageView;
        this.edittext = touchModeMaxLengthEditText;
        this.finish = tintTextView2;
        this.linkPosition = tintTextView3;
        this.linkPositionInvalidTip = appCompatTextView;
        this.linkTargetLayout = tintLinearLayout;
        this.linkTo = tintTextView4;
        this.linkTypeLayout = tintLinearLayout2;
        this.titleEditLayout = linearLayoutCompat;
        this.valueEditLayout = linearLayoutCompat2;
        this.valueEdittext = tintEditText;
    }

    public static PopupShapeLinkEditBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShapeLinkEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShapeLinkEditBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShapeLinkEditBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shape_link_edit);
    }

    @NonNull
    @Deprecated
    public static PopupShapeLinkEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShapeLinkEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_link_edit, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShapeLinkEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShapeLinkEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShapeLinkEditBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_link_edit, null, false, obj);
    }
}
