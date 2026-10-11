package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class NoteListEmptyViewBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintTextView f57546e;

    public NoteListEmptyViewBinding(@NonNull TintTextView tintTextView) {
        this.f57546e = tintTextView;
    }

    @NonNull
    public static NoteListEmptyViewBinding bind(@NonNull View view) {
        if (view != null) {
            return new NoteListEmptyViewBinding((TintTextView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static NoteListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static NoteListEmptyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.note_list_empty_view, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintTextView getRoot() {
        return this.f57546e;
    }
}
