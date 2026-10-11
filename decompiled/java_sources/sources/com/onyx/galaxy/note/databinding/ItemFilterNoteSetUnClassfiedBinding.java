package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemFilterNoteSetUnClassfiedBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57028e;

    @NonNull
    public final TintImageView ivUnClassify;

    @NonNull
    public final TintConstraintLayout llRoot;

    @NonNull
    public final TintTextView tvUnClassify;

    @NonNull
    public final TintTextView tvUnClassifyCount;

    @NonNull
    public final TintView vDragIn;

    public ItemFilterNoteSetUnClassfiedBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintImageView tintImageView, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintView tintView) {
        this.f57028e = tintConstraintLayout;
        this.ivUnClassify = tintImageView;
        this.llRoot = tintConstraintLayout2;
        this.tvUnClassify = tintTextView;
        this.tvUnClassifyCount = tintTextView2;
        this.vDragIn = tintView;
    }

    @NonNull
    public static ItemFilterNoteSetUnClassfiedBinding bind(@NonNull View view) {
        int i = C10651R.id.iv_un_classify;
        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
        if (tintImageView != null) {
            TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
            i = C10651R.id.tv_un_classify;
            TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView != null) {
                i = C10651R.id.tv_un_classify_count;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.v_drag_in;
                    TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                    if (tintView != null) {
                        return new ItemFilterNoteSetUnClassfiedBinding(tintConstraintLayout, tintImageView, tintConstraintLayout, tintTextView, tintTextView2, tintView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemFilterNoteSetUnClassfiedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemFilterNoteSetUnClassfiedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_filter_note_set_un_classfied, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57028e;
    }
}
