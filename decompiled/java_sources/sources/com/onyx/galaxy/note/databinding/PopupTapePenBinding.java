package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.custom.TapeView;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public abstract class PopupTapePenBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addToPenBox;

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final FrameLayout displayAllContainer;

    @NonNull
    public final TintView divider;

    @NonNull
    public final FrameLayout flContentLayout;

    @NonNull
    public final TintFrameLayout flCustomStyle;

    @NonNull
    public final FrameLayout flHeight;

    @NonNull
    public final LinearLayout llMarkTypeContainer;

    @NonNull
    public final TintRecycleView rvTapeStyle;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintSwitchCompat switchTapeDisplayAll;

    @NonNull
    public final TintFrameLayout tapeLineType;

    @NonNull
    public final TintFrameLayout tapeRectangleType;

    @NonNull
    public final TapeView tapeViewLine;

    @NonNull
    public final TapeView tapeViewRectangle;

    @NonNull
    public final AppCompatTextView tvClearAllTape;

    @NonNull
    public final AppCompatTextView tvClearPageTape;

    @NonNull
    public final TintTextView tvColorTitle;

    @NonNull
    public final TintTextView tvStyleTitle;

    @NonNull
    public final MediumTextView tvTitle;

    public PopupTapePenBinding(Object obj, View view, int i, TintTextView tintTextView, ShapeColorPropertyLayout shapeColorPropertyLayout, FrameLayout frameLayout, TintView tintView, FrameLayout frameLayout2, TintFrameLayout tintFrameLayout, FrameLayout frameLayout3, LinearLayout linearLayout, TintRecycleView tintRecycleView, StickSeekBarContainer stickSeekBarContainer, TintSwitchCompat tintSwitchCompat, TintFrameLayout tintFrameLayout2, TintFrameLayout tintFrameLayout3, TapeView tapeView, TapeView tapeView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, TintTextView tintTextView2, TintTextView tintTextView3, MediumTextView mediumTextView) {
        super(obj, view, i);
        this.addToPenBox = tintTextView;
        this.colorLayout = shapeColorPropertyLayout;
        this.displayAllContainer = frameLayout;
        this.divider = tintView;
        this.flContentLayout = frameLayout2;
        this.flCustomStyle = tintFrameLayout;
        this.flHeight = frameLayout3;
        this.llMarkTypeContainer = linearLayout;
        this.rvTapeStyle = tintRecycleView;
        this.seekBarThickness = stickSeekBarContainer;
        this.switchTapeDisplayAll = tintSwitchCompat;
        this.tapeLineType = tintFrameLayout2;
        this.tapeRectangleType = tintFrameLayout3;
        this.tapeViewLine = tapeView;
        this.tapeViewRectangle = tapeView2;
        this.tvClearAllTape = appCompatTextView;
        this.tvClearPageTape = appCompatTextView2;
        this.tvColorTitle = tintTextView2;
        this.tvStyleTitle = tintTextView3;
        this.tvTitle = mediumTextView;
    }

    public static PopupTapePenBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTapePenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTapePenBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTapePenBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tape_pen);
    }

    @NonNull
    @Deprecated
    public static PopupTapePenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTapePenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tape_pen, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTapePenBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTapePenBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTapePenBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tape_pen, null, false, obj);
    }
}
