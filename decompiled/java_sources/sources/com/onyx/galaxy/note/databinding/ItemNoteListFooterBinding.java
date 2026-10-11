package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemNoteListFooterBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57083e;

    public ItemNoteListFooterBinding(@NonNull FrameLayout frameLayout) {
        this.f57083e = frameLayout;
    }

    @NonNull
    public static ItemNoteListFooterBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemNoteListFooterBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemNoteListFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemNoteListFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_note_list_footer, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57083e;
    }
}
