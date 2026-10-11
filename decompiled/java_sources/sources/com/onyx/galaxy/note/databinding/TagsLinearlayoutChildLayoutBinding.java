package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class TagsLinearlayoutChildLayoutBinding extends ViewDataBinding {
    public TagsLinearlayoutChildLayoutBinding(Object obj, View view, int i) {
        super(obj, view, i);
    }

    public static TagsLinearlayoutChildLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static TagsLinearlayoutChildLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static TagsLinearlayoutChildLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (TagsLinearlayoutChildLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.tags_linearlayout_child_layout);
    }

    @NonNull
    @Deprecated
    public static TagsLinearlayoutChildLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (TagsLinearlayoutChildLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.tags_linearlayout_child_layout, viewGroup, z, obj);
    }

    @NonNull
    public static TagsLinearlayoutChildLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static TagsLinearlayoutChildLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (TagsLinearlayoutChildLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.tags_linearlayout_child_layout, null, false, obj);
    }
}
