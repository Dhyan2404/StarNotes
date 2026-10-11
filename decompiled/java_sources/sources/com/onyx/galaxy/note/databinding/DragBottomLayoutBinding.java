package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.PageMarginView;
import com.onyx.galaxy.note.editor.view.drag.DragProgressView;

/* loaded from: classes9.dex */
public abstract class DragBottomLayoutBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView allowUp;

    @NonNull
    public final DragProgressView stateImage;

    @NonNull
    public final TintTextView stateText;

    @NonNull
    public final PageMarginView templateThumbnail;

    public DragBottomLayoutBinding(Object obj, View view, int i, TintImageView tintImageView, DragProgressView dragProgressView, TintTextView tintTextView, PageMarginView pageMarginView) {
        super(obj, view, i);
        this.allowUp = tintImageView;
        this.stateImage = dragProgressView;
        this.stateText = tintTextView;
        this.templateThumbnail = pageMarginView;
    }

    public static DragBottomLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DragBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DragBottomLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DragBottomLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.drag_bottom_layout);
    }

    @NonNull
    @Deprecated
    public static DragBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DragBottomLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.drag_bottom_layout, viewGroup, z, obj);
    }

    @NonNull
    public static DragBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DragBottomLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DragBottomLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.drag_bottom_layout, null, false, obj);
    }
}
