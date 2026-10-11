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
public abstract class PopupInkPenBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final ShapeColorArgsPropertyLayout colorLayout;

    @NonNull
    public final TintView divider;

    @NonNull
    public final StickSeekBarContainer seekBarNib;

    @NonNull
    public final StickSeekBarContainer seekBarPressure;

    @NonNull
    public final StickSeekBarContainer seekBarSmooth;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final StickSeekBarContainer seekBarVelocity;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityAmplifier;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityIgnoreThreshold;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityLowerBound;

    @NonNull
    public final StickSeekBarContainer seekBarVelocityUpperBound;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupInkPenBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeColorArgsPropertyLayout shapeColorArgsPropertyLayout, TintView tintView, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, StickSeekBarContainer stickSeekBarContainer3, StickSeekBarContainer stickSeekBarContainer4, StickSeekBarContainer stickSeekBarContainer5, StickSeekBarContainer stickSeekBarContainer6, StickSeekBarContainer stickSeekBarContainer7, StickSeekBarContainer stickSeekBarContainer8, StickSeekBarContainer stickSeekBarContainer9, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.colorLayout = shapeColorArgsPropertyLayout;
        this.divider = tintView;
        this.seekBarNib = stickSeekBarContainer;
        this.seekBarPressure = stickSeekBarContainer2;
        this.seekBarSmooth = stickSeekBarContainer3;
        this.seekBarThickness = stickSeekBarContainer4;
        this.seekBarVelocity = stickSeekBarContainer5;
        this.seekBarVelocityAmplifier = stickSeekBarContainer6;
        this.seekBarVelocityIgnoreThreshold = stickSeekBarContainer7;
        this.seekBarVelocityLowerBound = stickSeekBarContainer8;
        this.seekBarVelocityUpperBound = stickSeekBarContainer9;
        this.tvColorTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupInkPenBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupInkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupInkPenBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupInkPenBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_ink_pen);
    }

    @NonNull
    @Deprecated
    public static PopupInkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupInkPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_pen, viewGroup, z, obj);
    }

    @NonNull
    public static PopupInkPenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupInkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupInkPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ink_pen, null, false, obj);
    }
}
