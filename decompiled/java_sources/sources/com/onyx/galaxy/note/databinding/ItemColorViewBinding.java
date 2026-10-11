package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ColorView;

/* loaded from: classes9.dex */
public final class ItemColorViewBinding implements ViewBinding {

    @NonNull
    public final FrameLayout clsContainer;

    @NonNull
    public final ColorView colorView;

    /* renamed from: e */
    @NonNull
    public final FrameLayout f56950e;

    public ItemColorViewBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ColorView colorView) {
        this.f56950e = frameLayout;
        this.clsContainer = frameLayout2;
        this.colorView = colorView;
    }

    @NonNull
    public static ItemColorViewBinding bind(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i = C10651R.id.color_view;
        ColorView colorView = (ColorView) ViewBindings.findChildViewById(view, i);
        if (colorView != null) {
            return new ItemColorViewBinding(frameLayout, frameLayout, colorView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemColorViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemColorViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_color_view, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f56950e;
    }
}
