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
public abstract class PopupTagOpBinding extends ViewDataBinding {

    @NonNull
    public final TintLinearLayout btnCreateSubTag;

    @NonNull
    public final TintLinearLayout btnDeleteTag;

    @NonNull
    public final TintLinearLayout btnEdtTag;

    @NonNull
    public final TintLinearLayout btnMoveTag;

    @NonNull
    public final Group groupCreateSubTag;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintView view1;

    @NonNull
    public final TintView view2;

    @NonNull
    public final TintView view3;

    @NonNull
    public final TintView view4;

    public PopupTagOpBinding(Object obj, View view, int i, TintLinearLayout tintLinearLayout, TintLinearLayout tintLinearLayout2, TintLinearLayout tintLinearLayout3, TintLinearLayout tintLinearLayout4, Group group, TintTextView tintTextView, TintView tintView, TintView tintView2, TintView tintView3, TintView tintView4) {
        super(obj, view, i);
        this.btnCreateSubTag = tintLinearLayout;
        this.btnDeleteTag = tintLinearLayout2;
        this.btnEdtTag = tintLinearLayout3;
        this.btnMoveTag = tintLinearLayout4;
        this.groupCreateSubTag = group;
        this.tvTitle = tintTextView;
        this.view1 = tintView;
        this.view2 = tintView2;
        this.view3 = tintView3;
        this.view4 = tintView4;
    }

    public static PopupTagOpBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTagOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTagOpBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTagOpBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tag_op);
    }

    @NonNull
    @Deprecated
    public static PopupTagOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTagOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tag_op, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTagOpBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTagOpBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTagOpBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tag_op, null, false, obj);
    }
}
