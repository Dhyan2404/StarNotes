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
public abstract class PopupBallpointPenBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final ShapeColorArgsPropertyLayout colorLayout;

    @NonNull
    public final TintView divider;

    @NonNull
    public final StickSeekBarContainer seekBarSmooth;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupBallpointPenBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeColorArgsPropertyLayout shapeColorArgsPropertyLayout, TintView tintView, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.colorLayout = shapeColorArgsPropertyLayout;
        this.divider = tintView;
        this.seekBarSmooth = stickSeekBarContainer;
        this.seekBarThickness = stickSeekBarContainer2;
        this.tvColorTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupBallpointPenBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupBallpointPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupBallpointPenBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupBallpointPenBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_ballpoint_pen);
    }

    @NonNull
    @Deprecated
    public static PopupBallpointPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupBallpointPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ballpoint_pen, viewGroup, z, obj);
    }

    @NonNull
    public static PopupBallpointPenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupBallpointPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupBallpointPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_ballpoint_pen, null, false, obj);
    }
}
