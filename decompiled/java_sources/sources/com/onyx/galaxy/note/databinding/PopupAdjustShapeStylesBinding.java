package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.MediumTextView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintSwitchCompat;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeFillColorPropertyLayout;

/* loaded from: classes9.dex */
public final class PopupAdjustShapeStylesBinding implements ViewBinding {

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final TintTextView colorTitle;

    @NonNull
    public final TintView divider;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57547e;

    @NonNull
    public final FrameLayout enableFillColorGroup;

    @NonNull
    public final ShapeFillColorPropertyLayout fillColorLayout;

    @NonNull
    public final TintSwitchCompat fillColorSwitch;

    @NonNull
    public final TintTextView fillColorSwitchTitle;

    @NonNull
    public final TintLinearLayout penGroup;

    @NonNull
    public final LayoutStrokeStyleBinding penStrokeStyle;

    @NonNull
    public final TintTextView penStrokeStyleTitle;

    @NonNull
    public final StickSeekBarContainer seekBarThickness;

    @NonNull
    public final TintLinearLayout shapeFillGroup;

    @NonNull
    public final MediumTextView titleBar;

    public PopupAdjustShapeStylesBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull ShapeColorPropertyLayout shapeColorPropertyLayout, @NonNull TintTextView tintTextView, @NonNull TintView tintView, @NonNull FrameLayout frameLayout, @NonNull ShapeFillColorPropertyLayout shapeFillColorPropertyLayout, @NonNull TintSwitchCompat tintSwitchCompat, @NonNull TintTextView tintTextView2, @NonNull TintLinearLayout tintLinearLayout2, @NonNull LayoutStrokeStyleBinding layoutStrokeStyleBinding, @NonNull TintTextView tintTextView3, @NonNull StickSeekBarContainer stickSeekBarContainer, @NonNull TintLinearLayout tintLinearLayout3, @NonNull MediumTextView mediumTextView) {
        this.f57547e = tintLinearLayout;
        this.colorLayout = shapeColorPropertyLayout;
        this.colorTitle = tintTextView;
        this.divider = tintView;
        this.enableFillColorGroup = frameLayout;
        this.fillColorLayout = shapeFillColorPropertyLayout;
        this.fillColorSwitch = tintSwitchCompat;
        this.fillColorSwitchTitle = tintTextView2;
        this.penGroup = tintLinearLayout2;
        this.penStrokeStyle = layoutStrokeStyleBinding;
        this.penStrokeStyleTitle = tintTextView3;
        this.seekBarThickness = stickSeekBarContainer;
        this.shapeFillGroup = tintLinearLayout3;
        this.titleBar = mediumTextView;
    }

    @NonNull
    public static PopupAdjustShapeStylesBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.color_layout;
        ShapeColorPropertyLayout shapeColorPropertyLayout = (ShapeColorPropertyLayout) ViewBindings.findChildViewById(view, i);
        if (shapeColorPropertyLayout != null) {
            i = C10651R.id.color_title;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.divider;
                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                if (tintView != null) {
                    i = C10651R.id.enableFillColorGroup;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                    if (frameLayout != null) {
                        i = C10651R.id.fillColorLayout;
                        ShapeFillColorPropertyLayout shapeFillColorPropertyLayout = (ShapeFillColorPropertyLayout) ViewBindings.findChildViewById(view, i);
                        if (shapeFillColorPropertyLayout != null) {
                            i = C10651R.id.fillColorSwitch;
                            TintSwitchCompat tintSwitchCompat = (TintSwitchCompat) ViewBindings.findChildViewById(view, i);
                            if (tintSwitchCompat != null) {
                                i = C10651R.id.fillColorSwitchTitle;
                                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView2 != null) {
                                    i = C10651R.id.penGroup;
                                    TintLinearLayout tintLinearLayout = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (tintLinearLayout != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.penStrokeStyle))) != null) {
                                        LayoutStrokeStyleBinding bind = LayoutStrokeStyleBinding.bind(findChildViewById);
                                        i = C10651R.id.penStrokeStyleTitle;
                                        TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView3 != null) {
                                            i = C10651R.id.seek_bar_thickness;
                                            StickSeekBarContainer stickSeekBarContainer = (StickSeekBarContainer) ViewBindings.findChildViewById(view, i);
                                            if (stickSeekBarContainer != null) {
                                                i = C10651R.id.shapeFillGroup;
                                                TintLinearLayout tintLinearLayout2 = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                                if (tintLinearLayout2 != null) {
                                                    i = C10651R.id.titleBar;
                                                    MediumTextView mediumTextView = (MediumTextView) ViewBindings.findChildViewById(view, i);
                                                    if (mediumTextView != null) {
                                                        return new PopupAdjustShapeStylesBinding((TintLinearLayout) view, shapeColorPropertyLayout, tintTextView, tintView, frameLayout, shapeFillColorPropertyLayout, tintSwitchCompat, tintTextView2, tintLinearLayout, bind, tintTextView3, stickSeekBarContainer, tintLinearLayout2, mediumTextView);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupAdjustShapeStylesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupAdjustShapeStylesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_adjust_shape_styles, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57547e;
    }
}
