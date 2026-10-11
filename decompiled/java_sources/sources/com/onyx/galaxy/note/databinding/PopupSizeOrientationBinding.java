package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class PopupSizeOrientationBinding implements ViewBinding {

    @NonNull
    public final RecyclerView clSizeFormat;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57840e;

    @NonNull
    public final TintRadioButton rbOrientationHorizontal;

    @NonNull
    public final TintRadioButton rbOrientationVertical;

    @NonNull
    public final RadioGroup rgOrientation;

    @NonNull
    public final LinearLayout sizeFormatContainer;

    public PopupSizeOrientationBinding(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull TintRadioButton tintRadioButton, @NonNull TintRadioButton tintRadioButton2, @NonNull RadioGroup radioGroup, @NonNull LinearLayout linearLayout) {
        this.f57840e = constraintLayout;
        this.clSizeFormat = recyclerView;
        this.rbOrientationHorizontal = tintRadioButton;
        this.rbOrientationVertical = tintRadioButton2;
        this.rgOrientation = radioGroup;
        this.sizeFormatContainer = linearLayout;
    }

    @NonNull
    public static PopupSizeOrientationBinding bind(@NonNull View view) {
        int i = C10651R.id.cl_size_format;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
        if (recyclerView != null) {
            i = C10651R.id.rb_orientation_horizontal;
            TintRadioButton tintRadioButton = (TintRadioButton) ViewBindings.findChildViewById(view, i);
            if (tintRadioButton != null) {
                i = C10651R.id.rb_orientation_vertical;
                TintRadioButton tintRadioButton2 = (TintRadioButton) ViewBindings.findChildViewById(view, i);
                if (tintRadioButton2 != null) {
                    i = C10651R.id.rg_orientation;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                    if (radioGroup != null) {
                        i = C10651R.id.size_format_container;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout != null) {
                            return new PopupSizeOrientationBinding((ConstraintLayout) view, recyclerView, tintRadioButton, tintRadioButton2, radioGroup, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupSizeOrientationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupSizeOrientationBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_size_orientation, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57840e;
    }
}
