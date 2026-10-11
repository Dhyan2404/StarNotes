package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintCheckBox;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.category.view.SwipeRecycleViewContainer;

/* loaded from: classes9.dex */
public abstract class PopupSelectFilePagesBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnBack;

    @NonNull
    public final TintTextView fileName;

    @NonNull
    public final TintCheckBox fileSelectAll;

    @NonNull
    public final TintTextView importAction;

    @NonNull
    public final SwipeRecycleViewContainer swipeContainer;

    public PopupSelectFilePagesBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintCheckBox tintCheckBox, TintTextView tintTextView3, SwipeRecycleViewContainer swipeRecycleViewContainer) {
        super(obj, view, i);
        this.btnBack = tintTextView;
        this.fileName = tintTextView2;
        this.fileSelectAll = tintCheckBox;
        this.importAction = tintTextView3;
        this.swipeContainer = swipeRecycleViewContainer;
    }

    public static PopupSelectFilePagesBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSelectFilePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSelectFilePagesBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSelectFilePagesBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_select_file_pages);
    }

    @NonNull
    @Deprecated
    public static PopupSelectFilePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSelectFilePagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_file_pages, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSelectFilePagesBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSelectFilePagesBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSelectFilePagesBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_select_file_pages, null, false, obj);
    }
}
