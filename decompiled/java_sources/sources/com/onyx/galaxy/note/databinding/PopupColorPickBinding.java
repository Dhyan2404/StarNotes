package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.colorpicker.view.ColorPickView;

/* loaded from: classes9.dex */
public final class PopupColorPickBinding implements ViewBinding {

    @NonNull
    public final ColorPickView colorPickView;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f57565e;

    @NonNull
    public final TintRecycleView rvColorSet;

    @NonNull
    public final TintTabLayoutView tabLayout;

    public PopupColorPickBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull ColorPickView colorPickView, @NonNull TintRecycleView tintRecycleView, @NonNull TintTabLayoutView tintTabLayoutView) {
        this.f57565e = tintLinearLayout;
        this.colorPickView = colorPickView;
        this.rvColorSet = tintRecycleView;
        this.tabLayout = tintTabLayoutView;
    }

    @NonNull
    public static PopupColorPickBinding bind(@NonNull View view) {
        int i = C10651R.id.colorPickView;
        ColorPickView colorPickView = (ColorPickView) ViewBindings.findChildViewById(view, i);
        if (colorPickView != null) {
            i = C10651R.id.rv_color_set;
            TintRecycleView tintRecycleView = (TintRecycleView) ViewBindings.findChildViewById(view, i);
            if (tintRecycleView != null) {
                i = C10651R.id.tabLayout;
                TintTabLayoutView tintTabLayoutView = (TintTabLayoutView) ViewBindings.findChildViewById(view, i);
                if (tintTabLayoutView != null) {
                    return new PopupColorPickBinding((TintLinearLayout) view, colorPickView, tintRecycleView, tintTabLayoutView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static PopupColorPickBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static PopupColorPickBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.popup_color_pick, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f57565e;
    }
}
