package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupLinkWebsiteBinding extends ViewDataBinding {

    @NonNull
    public final ImageView closeButton;

    @NonNull
    public final ImageView image;

    public PopupLinkWebsiteBinding(Object obj, View view, int i, ImageView imageView, ImageView imageView2) {
        super(obj, view, i);
        this.closeButton = imageView;
        this.image = imageView2;
    }

    public static PopupLinkWebsiteBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupLinkWebsiteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupLinkWebsiteBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupLinkWebsiteBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_link_website);
    }

    @NonNull
    @Deprecated
    public static PopupLinkWebsiteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupLinkWebsiteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_link_website, viewGroup, z, obj);
    }

    @NonNull
    public static PopupLinkWebsiteBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupLinkWebsiteBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupLinkWebsiteBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_link_website, null, false, obj);
    }
}
