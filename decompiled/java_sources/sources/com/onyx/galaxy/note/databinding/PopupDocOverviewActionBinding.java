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
public abstract class PopupDocOverviewActionBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView addPageAfterCurrentPage;

    @NonNull
    public final TintTextView addToCustomPaper;

    @NonNull
    public final TintTextView addToToc;

    @NonNull
    public final TintTextView cloneCurrentPage;

    @NonNull
    public final TintTextView deleteCurrentPage;

    @NonNull
    public final TintTextView duplicateCurrentPage;

    @NonNull
    public final TintTextView pastePage;

    @NonNull
    public final TintTextView rotateCurrentPage;

    public PopupDocOverviewActionBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5, TintTextView tintTextView6, TintTextView tintTextView7, TintTextView tintTextView8) {
        super(obj, view, i);
        this.addPageAfterCurrentPage = tintTextView;
        this.addToCustomPaper = tintTextView2;
        this.addToToc = tintTextView3;
        this.cloneCurrentPage = tintTextView4;
        this.deleteCurrentPage = tintTextView5;
        this.duplicateCurrentPage = tintTextView6;
        this.pastePage = tintTextView7;
        this.rotateCurrentPage = tintTextView8;
    }

    public static PopupDocOverviewActionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupDocOverviewActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupDocOverviewActionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupDocOverviewActionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_doc_overview_action);
    }

    @NonNull
    @Deprecated
    public static PopupDocOverviewActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupDocOverviewActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_doc_overview_action, viewGroup, z, obj);
    }

    @NonNull
    public static PopupDocOverviewActionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupDocOverviewActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupDocOverviewActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_doc_overview_action, null, false, obj);
    }
}
