package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.p039ui.EllipsizingTextView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemNoteGridCreateDisplayBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57079e;

    @NonNull
    public final LinearLayout fastCreateLayout;

    @NonNull
    public final TintImageView ivIconCreate;

    @NonNull
    public final TintImageView ivNoteCreate;

    @NonNull
    public final TintImageView lockImage;

    /* renamed from: tv */
    @NonNull
    public final TintTextView f57080tv;

    @NonNull
    public final EllipsizingTextView tvItemCreateTitle;

    public ItemNoteGridCreateDisplayBinding(@NonNull FrameLayout frameLayout, @NonNull LinearLayout linearLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintImageView tintImageView3, @NonNull TintTextView tintTextView, @NonNull EllipsizingTextView ellipsizingTextView) {
        this.f57079e = frameLayout;
        this.fastCreateLayout = linearLayout;
        this.ivIconCreate = tintImageView;
        this.ivNoteCreate = tintImageView2;
        this.lockImage = tintImageView3;
        this.f57080tv = tintTextView;
        this.tvItemCreateTitle = ellipsizingTextView;
    }

    @NonNull
    public static ItemNoteGridCreateDisplayBinding bind(@NonNull View view) {
        int i = C10651R.id.fastCreateLayout;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = C10651R.id.iv_icon_create;
            TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView != null) {
                i = C10651R.id.iv_note_create;
                TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                if (tintImageView2 != null) {
                    i = C10651R.id.lockImage;
                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                    if (tintImageView3 != null) {
                        i = C10651R.id.f53356tv;
                        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView != null) {
                            i = C10651R.id.tv_item_create_title;
                            EllipsizingTextView ellipsizingTextView = (EllipsizingTextView) ViewBindings.findChildViewById(view, i);
                            if (ellipsizingTextView != null) {
                                return new ItemNoteGridCreateDisplayBinding((FrameLayout) view, linearLayout, tintImageView, tintImageView2, tintImageView3, tintTextView, ellipsizingTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemNoteGridCreateDisplayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteGridCreateDisplayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_grid_create_display, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57079e;
    }
}
