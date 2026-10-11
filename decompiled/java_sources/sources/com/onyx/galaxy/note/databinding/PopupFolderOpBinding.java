package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupFolderOpBinding extends ViewDataBinding {

    @NonNull
    public final TintLinearLayout btnCreateSubFolder;

    @NonNull
    public final TintLinearLayout btnDeleteFolder;

    @NonNull
    public final TintLinearLayout btnEdtFolder;

    @NonNull
    public final TintLinearLayout btnMoveFolder;

    @NonNull
    public final Group groupCreateSubFolder;

    @NonNull
    public final TintTextView tvFolderTitle;

    @NonNull
    public final TintView view1;

    @NonNull
    public final TintView view2;

    @NonNull
    public final TintView view3;

    @NonNull
    public final TintView view4;

    public PopupFolderOpBinding(Object obj, View view, int i, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintLinearLayout tintLinearLayout3, TintLinearLayout tintLinearLayout4, Group group, TintTextView tintTextView, TintView tintView, TintView tintView2, TintView tintView3, TintView tintView4) {
        super(obj, view, i);
        this.btnCreateSubFolder = tintLinearLayout;
        this.btnDeleteFolder = tintLinearLayout2;
        this.btnEdtFolder = tintLinearLayout3;
        this.btnMoveFolder = tintLinearLayout4;
        this.groupCreateSubFolder = group;
        this.tvFolderTitle = tintTextView;
        this.view1 = tintView;
        this.view2 = tintView2;
        this.view3 = tintView3;
        this.view4 = tintView4;
    }

    public static PopupFolderOpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupFolderOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupFolderOpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupFolderOpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_folder_op);
    }

    @NonNull
    @Deprecated
    public static PopupFolderOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupFolderOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_folder_op, viewGroup, z, obj);
    }

    @NonNull
    public static PopupFolderOpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupFolderOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupFolderOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_folder_op, null, false, obj);
    }
}
