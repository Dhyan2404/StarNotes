package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemTagsListBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TextView f57213e;

    /* renamed from: tv */
    @NonNull
    public final TextView f57214tv;

    public ItemTagsListBinding(@NonNull TextView textView, @NonNull TextView textView2) {
        this.f57213e = textView;
        this.f57214tv = textView2;
    }

    @NonNull
    public static ItemTagsListBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) view;
        return new ItemTagsListBinding(textView, textView);
    }

    @NonNull
    public static ItemTagsListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemTagsListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_tags_list, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TextView getRoot() {
        return this.f57213e;
    }
}
