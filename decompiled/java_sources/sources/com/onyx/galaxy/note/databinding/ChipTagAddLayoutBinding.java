package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.google.android.material.chip.Chip;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ChipTagAddLayoutBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final Chip f56298e;

    public ChipTagAddLayoutBinding(@NonNull Chip chip) {
        this.f56298e = chip;
    }

    @NonNull
    public static ChipTagAddLayoutBinding bind(@NonNull View view) {
        if (view != null) {
            return new ChipTagAddLayoutBinding((Chip) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ChipTagAddLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ChipTagAddLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.chip_tag_add_layout, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public Chip getRoot() {
        return this.f56298e;
    }
}
