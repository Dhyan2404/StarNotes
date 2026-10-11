package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.android.sdk.theme.widgets.TintChipView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ChipSearchNoteLayoutBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintChipView f56297e;

    public ChipSearchNoteLayoutBinding(@NonNull TintChipView tintChipView) {
        this.f56297e = tintChipView;
    }

    @NonNull
    public static ChipSearchNoteLayoutBinding bind(@NonNull View view) {
        if (view != null) {
            return new ChipSearchNoteLayoutBinding((TintChipView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ChipSearchNoteLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ChipSearchNoteLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.chip_search_note_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintChipView getRoot() {
        return this.f56297e;
    }
}
