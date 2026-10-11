package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemUniversalShapeViewPagerBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final RecyclerView f57251e;

    @NonNull
    public final RecyclerView recyclerView;

    public ItemUniversalShapeViewPagerBinding(@NonNull RecyclerView recyclerView, @NonNull RecyclerView recyclerView2) {
        this.f57251e = recyclerView;
        this.recyclerView = recyclerView2;
    }

    @NonNull
    public static ItemUniversalShapeViewPagerBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new ItemUniversalShapeViewPagerBinding(recyclerView, recyclerView);
    }

    @NonNull
    public static ItemUniversalShapeViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemUniversalShapeViewPagerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_universal_shape_view_pager, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public RecyclerView getRoot() {
        return this.f57251e;
    }
}
