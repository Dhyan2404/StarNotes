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
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public abstract class PopupEraserBinding extends ViewDataBinding {

    @NonNull
    public final TintView divider;

    @NonNull
    public final FrameLayout eraserAllContains;

    @NonNull
    public final FrameLayout eraserCancel;

    @NonNull
    public final FrameLayout eraserOnlyMarkPenContainer;

    @NonNull
    public final FrameLayout eraserOnlyTapeContainer;

    @NonNull
    public final TintLinearLayout flContentLayout;

    @NonNull
    public final FrameLayout flHeight;

    @NonNull
    public final TintImageView ivEraseCancelGuide;

    @NonNull
    public final TintImageView ivScribbleEraseGuide;

    @NonNull
    public final LinearLayout llEraserTypeContainer;

    @NonNull
    public final TintLinearLayout llyPressureEraser;

    @NonNull
    public final TintImageView pixelEraser;

    @NonNull
    public final FrameLayout pressureEraserContainer;

    @NonNull
    public final FrameLayout scratchEraseContainer;

    @NonNull
    public final TintSwitchCompat scribbleErase;

    @NonNull
    public final StickSeekBarContainer seekBarPressure;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintImageView selectEraser;

    @NonNull
    public final TintImageView strokeEraser;

    @NonNull
    public final TintSwitchCompat switchAllContains;

    @NonNull
    public final TintSwitchCompat switchEraserCancel;

    @NonNull
    public final TintSwitchCompat switchOnlyMarkPen;

    @NonNull
    public final TintSwitchCompat switchOnlyTape;

    @NonNull
    public final TintSwitchCompat switchPressureEraser;

    @NonNull
    public final AppCompatTextView tvClearPage;

    @NonNull
    public final MediumTextView tvTitle;

    @NonNull
    public final View viewDividerLine;

    public PopupEraserBinding(Object obj, View view, int i, TintView tintView, FrameLayout frameLayout, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, TintLinearLayout tintLinearLayout, FrameLayout frameLayout5, TintImageView tintImageView, TintImageView tintImageView2, LinearLayout linearLayout, TintLinearLayout tintLinearLayout2, TintImageView tintImageView3, FrameLayout frameLayout6, FrameLayout frameLayout7, TintSwitchCompat tintSwitchCompat, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, TintImageView tintImageView4, TintImageView tintImageView5, TintSwitchCompat tintSwitchCompat2, TintSwitchCompat tintSwitchCompat3, TintSwitchCompat tintSwitchCompat4, TintSwitchCompat tintSwitchCompat5, TintSwitchCompat tintSwitchCompat6, AppCompatTextView appCompatTextView, MediumTextView mediumTextView, View view2) {
        super(obj, view, i);
        this.divider = tintView;
        this.eraserAllContains = frameLayout;
        this.eraserCancel = frameLayout2;
        this.eraserOnlyMarkPenContainer = frameLayout3;
        this.eraserOnlyTapeContainer = frameLayout4;
        this.flContentLayout = tintLinearLayout;
        this.flHeight = frameLayout5;
        this.ivEraseCancelGuide = tintImageView;
        this.ivScribbleEraseGuide = tintImageView2;
        this.llEraserTypeContainer = linearLayout;
        this.llyPressureEraser = tintLinearLayout2;
        this.pixelEraser = tintImageView3;
        this.pressureEraserContainer = frameLayout6;
        this.scratchEraseContainer = frameLayout7;
        this.scribbleErase = tintSwitchCompat;
        this.seekBarPressure = stickSeekBarContainer;
        this.seekBarThickness = stickSeekBarContainer2;
        this.selectEraser = tintImageView4;
        this.strokeEraser = tintImageView5;
        this.switchAllContains = tintSwitchCompat2;
        this.switchEraserCancel = tintSwitchCompat3;
        this.switchOnlyMarkPen = tintSwitchCompat4;
        this.switchOnlyTape = tintSwitchCompat5;
        this.switchPressureEraser = tintSwitchCompat6;
        this.tvClearPage = appCompatTextView;
        this.tvTitle = mediumTextView;
        this.viewDividerLine = view2;
    }

    public static PopupEraserBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupEraserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupEraserBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupEraserBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_eraser);
    }

    @NonNull
    @Deprecated
    public static PopupEraserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupEraserBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_eraser, viewGroup, z, obj);
    }

    @NonNull
    public static PopupEraserBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupEraserBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupEraserBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_eraser, null, false, obj);
    }
}
