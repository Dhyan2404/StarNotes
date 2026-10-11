package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public abstract class PopupPencilBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final ShapeColorArgsPropertyLayout colorLayout;

    @NonNull
    public final TintView divider;

    @NonNull
    public final StickSeekBarContainer seekBarAlpha;

    @NonNull
    public final StickSeekBarContainer seekBarPressure;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupPencilBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeColorArgsPropertyLayout shapeColorArgsPropertyLayout, TintView tintView, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, StickSeekBarContainer stickSeekBarContainer3, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.colorLayout = shapeColorArgsPropertyLayout;
        this.divider = tintView;
        this.seekBarAlpha = stickSeekBarContainer;
        this.seekBarPressure = stickSeekBarContainer2;
        this.seekBarThickness = stickSeekBarContainer3;
        this.tvColorTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupPencilBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupPencilBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupPencilBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupPencilBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_pencil);
    }

    @NonNull
    @Deprecated
    public static PopupPencilBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupPencilBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pencil, viewGroup, z, obj);
    }

    @NonNull
    public static PopupPencilBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupPencilBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupPencilBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_pencil, null, false, obj);
    }
}
