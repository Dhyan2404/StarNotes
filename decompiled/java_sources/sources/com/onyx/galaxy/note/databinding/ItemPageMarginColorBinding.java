package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;

/* loaded from: classes9.dex */
public final class ItemPageMarginColorBinding implements ViewBinding {

    @NonNull
    public final ColorView colorView;

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57122e;

    public ItemPageMarginColorBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ColorView colorView) {
        this.f57122e = constraintLayout;
        this.colorView = colorView;
    }

    @NonNull
    public static ItemPageMarginColorBinding bind(@NonNull View view) {
        int i = C10651R.id.color_view;
        ColorView colorView = (ColorView) ViewBindings.findChildViewById(view, i);
        if (colorView != null) {
            return new ItemPageMarginColorBinding((ConstraintLayout) view, colorView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemPageMarginColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemPageMarginColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_page_margin_color, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57122e;
    }
}
