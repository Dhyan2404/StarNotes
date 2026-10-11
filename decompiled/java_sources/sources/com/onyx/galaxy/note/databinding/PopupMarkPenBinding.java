package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.PhysicalMarkPenGroup;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorArgsPropertyLayout;

/* loaded from: classes9.dex */
public abstract class PopupMarkPenBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final ShapeColorArgsPropertyLayout colorLayout;

    @NonNull
    public final TintView divider;

    @NonNull
    public final FrameLayout lineDrawingContainer;

    @NonNull
    public final LinearLayout llMarkTypeContainer;

    @NonNull
    public final PhysicalMarkPenGroup rightAngleType;

    @NonNull
    public final PhysicalMarkPenGroup roundCornerType;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintSwitchCompat switchLineDrawing;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupMarkPenBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeColorArgsPropertyLayout shapeColorArgsPropertyLayout, TintView tintView, FrameLayout frameLayout, LinearLayout linearLayout, PhysicalMarkPenGroup physicalMarkPenGroup, PhysicalMarkPenGroup physicalMarkPenGroup2, StickSeekBarContainer stickSeekBarContainer, TintSwitchCompat tintSwitchCompat, TintTextView tintTextView2, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.colorLayout = shapeColorArgsPropertyLayout;
        this.divider = tintView;
        this.lineDrawingContainer = frameLayout;
        this.llMarkTypeContainer = linearLayout;
        this.rightAngleType = physicalMarkPenGroup;
        this.roundCornerType = physicalMarkPenGroup2;
        this.seekBarThickness = stickSeekBarContainer;
        this.switchLineDrawing = tintSwitchCompat;
        this.tvColorTitle = tintTextView2;
        this.tvTitle = mediumTextView;
    }

    public static PopupMarkPenBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupMarkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupMarkPenBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupMarkPenBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_mark_pen);
    }

    @NonNull
    @Deprecated
    public static PopupMarkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupMarkPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_mark_pen, viewGroup, z, obj);
    }

    @NonNull
    public static PopupMarkPenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupMarkPenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupMarkPenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_mark_pen, null, false, obj);
    }
}
