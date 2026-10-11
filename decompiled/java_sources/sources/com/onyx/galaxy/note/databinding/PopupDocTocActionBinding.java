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
public abstract class PopupDocTocActionBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addChildToc;

    @NonNull
    public final TintTextView addSiblingToc;

    @NonNull
    public final TintTextView deleteChildToc;

    @NonNull
    public final TintTextView editChildToc;

    public PopupDocTocActionBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4) {
        super(obj, view, i);
        this.addChildToc = tintTextView;
        this.addSiblingToc = tintTextView2;
        this.deleteChildToc = tintTextView3;
        this.editChildToc = tintTextView4;
    }

    public static PopupDocTocActionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupDocTocActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupDocTocActionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupDocTocActionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_doc_toc_action);
    }

    @NonNull
    @Deprecated
    public static PopupDocTocActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupDocTocActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_doc_toc_action, viewGroup, z, obj);
    }

    @NonNull
    public static PopupDocTocActionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupDocTocActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupDocTocActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_doc_toc_action, null, false, obj);
    }
}
