package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightRecyclerView;
import com.onyx.galaxy.note.p048ui.view.BubbleLayout;

/* loaded from: classes9.dex */
public abstract class PopupTagsListBinding extends ViewDataBinding {

    @NonNull
    public final BubbleLayout bubbleLayout;

    /* renamed from: rv */
    @NonNull
    public final MaxHeightRecyclerView f57867rv;

    public PopupTagsListBinding(Object obj, View view, int i, BubbleLayout bubbleLayout, MaxHeightRecyclerView maxHeightRecyclerView) {
        super(obj, view, i);
        this.bubbleLayout = bubbleLayout;
        this.f57867rv = maxHeightRecyclerView;
    }

    public static PopupTagsListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTagsListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTagsListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTagsListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tags_list);
    }

    @NonNull
    @Deprecated
    public static PopupTagsListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTagsListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tags_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTagsListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTagsListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTagsListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tags_list, null, false, obj);
    }
}
