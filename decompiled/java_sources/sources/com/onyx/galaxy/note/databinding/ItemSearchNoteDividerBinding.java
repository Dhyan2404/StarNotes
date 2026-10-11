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
public final class ItemSearchNoteDividerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f57159e;

    public ItemSearchNoteDividerBinding(@NonNull FrameLayout frameLayout) {
        this.f57159e = frameLayout;
    }

    @NonNull
    public static ItemSearchNoteDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemSearchNoteDividerBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemSearchNoteDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemSearchNoteDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_search_note_divider, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f57159e;
    }
}
