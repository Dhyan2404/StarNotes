package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightScrollView;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPanelView;
import com.onyx.galaxy.note.p048ui.view.AlphaInputView;
import com.onyx.galaxy.note.p048ui.view.ColorInputView;

/* loaded from: classes9.dex */
public final class ViewColorPickBinding implements ViewBinding {

    @NonNull
    public final FrameLayout addButton;

    @NonNull
    public final AlphaInputView alphaValueText;

    @NonNull
    public final GridLayout cellLayout;

    @NonNull
    public final ColorPanelView colorPanel;

    @NonNull
    public final ColorInputView colorValueText;

    /* renamed from: e */
    @NonNull
    public final LinearLayout f57939e;

    @NonNull
    public final View ivPickedColor;

    @NonNull
    public final MaxHeightScrollView scrollView;

    public ViewColorPickBinding(@NonNull LinearLayout linearLayout, @NonNull FrameLayout frameLayout, @NonNull AlphaInputView alphaInputView, @NonNull GridLayout gridLayout, @NonNull ColorPanelView colorPanelView, @NonNull ColorInputView colorInputView, @NonNull View view, @NonNull MaxHeightScrollView maxHeightScrollView) {
        this.f57939e = linearLayout;
        this.addButton = frameLayout;
        this.alphaValueText = alphaInputView;
        this.cellLayout = gridLayout;
        this.colorPanel = colorPanelView;
        this.colorValueText = colorInputView;
        this.ivPickedColor = view;
        this.scrollView = maxHeightScrollView;
    }

    @NonNull
    public static ViewColorPickBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.addButton;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
        if (frameLayout != null) {
            i = C10651R.id.alphaValueText;
            AlphaInputView alphaInputView = (AlphaInputView) ViewBindings.findChildViewById(view, i);
            if (alphaInputView != null) {
                i = C10651R.id.cellLayout;
                GridLayout gridLayout = (GridLayout) ViewBindings.findChildViewById(view, i);
                if (gridLayout != null) {
                    i = C10651R.id.colorPanel;
                    ColorPanelView colorPanelView = (ColorPanelView) ViewBindings.findChildViewById(view, i);
                    if (colorPanelView != null) {
                        i = C10651R.id.colorValueText;
                        ColorInputView colorInputView = (ColorInputView) ViewBindings.findChildViewById(view, i);
                        if (colorInputView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.iv_picked_color))) != null) {
                            i = C10651R.id.scrollView;
                            MaxHeightScrollView maxHeightScrollView = (MaxHeightScrollView) ViewBindings.findChildViewById(view, i);
                            if (maxHeightScrollView != null) {
                                return new ViewColorPickBinding((LinearLayout) view, frameLayout, alphaInputView, gridLayout, colorPanelView, colorInputView, findChildViewById, maxHeightScrollView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ViewColorPickBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ViewColorPickBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.view_color_pick, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public LinearLayout getRoot() {
        return this.f57939e;
    }
}
