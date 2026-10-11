package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupCustomCoverBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView tvImportFromFile;

    @NonNull
    public final TintTextView tvImportFromGallery;

    public PopupCustomCoverBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.tvImportFromFile = tintTextView;
        this.tvImportFromGallery = tintTextView2;
    }

    public static PopupCustomCoverBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupCustomCoverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupCustomCoverBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupCustomCoverBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_custom_cover);
    }

    @NonNull
    @Deprecated
    public static PopupCustomCoverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupCustomCoverBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_custom_cover, viewGroup, z, obj);
    }

    @NonNull
    public static PopupCustomCoverBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupCustomCoverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupCustomCoverBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_custom_cover, null, false, obj);
    }
}
