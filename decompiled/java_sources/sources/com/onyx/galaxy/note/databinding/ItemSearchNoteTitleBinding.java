package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemSearchNoteTitleBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57164e;

    @NonNull
    public final TintTextView tvTitle;

    public ItemSearchNoteTitleBinding(@NonNull FrameLayout frameLayout, @NonNull TintTextView tintTextView) {
        this.f57164e = frameLayout;
        this.tvTitle = tintTextView;
    }

    @NonNull
    public static ItemSearchNoteTitleBinding bind(@NonNull View view) {
        int i = C10651R.id.tv_title;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            return new ItemSearchNoteTitleBinding((FrameLayout) view, tintTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemSearchNoteTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchNoteTitleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_search_note_title, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57164e;
    }
}
