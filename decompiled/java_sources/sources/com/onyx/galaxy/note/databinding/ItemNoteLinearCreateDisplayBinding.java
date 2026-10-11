package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemNoteLinearCreateDisplayBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57081e;

    @NonNull
    public final TintImageView ivIconCreate;

    @NonNull
    public final TintImageView ivNoteCreate;

    /* renamed from: tv */
    @NonNull
    public final TintTextView f57082tv;

    @NonNull
    public final TintTextView tvItemCreateTitle;

    @NonNull
    public final TintView vDivider;

    public ItemNoteLinearCreateDisplayBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TintImageView tintImageView, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57081e = constraintLayout;
        this.ivIconCreate = tintImageView;
        this.ivNoteCreate = tintImageView2;
        this.f57082tv = tintTextView;
        this.tvItemCreateTitle = tintTextView2;
        this.vDivider = tintView;
    }

    @NonNull
    public static ItemNoteLinearCreateDisplayBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_icon_create;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            i = C10651R.id.iv_note_create;
            TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
            if (tintImageView2 != null) {
                i = C10651R.id.f53356tv;
                TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView != null) {
                    i = C10651R.id.tv_item_create_title;
                    TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView2 != null) {
                        i = C10651R.id.v_divider;
                        TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                        if (tintView != null) {
                            return new ItemNoteLinearCreateDisplayBinding((ConstraintLayout) view, tintImageView, tintImageView2, tintTextView, tintTextView2, tintView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemNoteLinearCreateDisplayBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteLinearCreateDisplayBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_linear_create_display, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57081e;
    }
}
