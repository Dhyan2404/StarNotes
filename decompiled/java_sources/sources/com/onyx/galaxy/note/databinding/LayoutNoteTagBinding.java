package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutNoteTagBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivExpand;

    @NonNull
    public final TintRecycleView rvTags;

    @NonNull
    public final LinearLayout tagManagerContainer;

    @NonNull
    public final TintTextView tvTagManager;

    public LayoutNoteTagBinding(Object obj, View view, int i, TintImageView tintImageView, TintRecycleView tintRecycleView, LinearLayout linearLayout, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivExpand = tintImageView;
        this.rvTags = tintRecycleView;
        this.tagManagerContainer = linearLayout;
        this.tvTagManager = tintTextView;
    }

    public static LayoutNoteTagBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutNoteTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutNoteTagBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutNoteTagBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_note_tag);
    }

    @NonNull
    @Deprecated
    public static LayoutNoteTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutNoteTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_tag, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutNoteTagBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutNoteTagBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutNoteTagBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_tag, null, false, obj);
    }
}
