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
public final class ItemAreaCodeHeaderBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final FrameLayout f56932e;

    public ItemAreaCodeHeaderBinding(@NonNull FrameLayout frameLayout) {
        this.f56932e = frameLayout;
    }

    @NonNull
    public static ItemAreaCodeHeaderBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemAreaCodeHeaderBinding((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemAreaCodeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemAreaCodeHeaderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_area_code_header, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public FrameLayout getRoot() {
        return this.f56932e;
    }
}
