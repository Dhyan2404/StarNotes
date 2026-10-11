package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.google.android.material.button.MaterialButton;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupShapeLinkBinding extends ViewDataBinding {

    @NonNull
    public final MaterialButton bottoming;

    @NonNull
    public final MaterialButton copy;

    @NonNull
    public final MaterialButton cut;

    @NonNull
    public final MaterialButton delete;

    @NonNull
    public final MaterialButton edit;

    @NonNull
    public final MaterialButton gotoLink;

    @NonNull
    public final MaterialButton topping;

    public PopupShapeLinkBinding(Object obj, View view, int i, MaterialButton materialButton, MaterialButton materialButton2, MaterialButton materialButton3, MaterialButton materialButton4, MaterialButton materialButton5, MaterialButton materialButton6, MaterialButton materialButton7) {
        super(obj, view, i);
        this.bottoming = materialButton;
        this.copy = materialButton2;
        this.cut = materialButton3;
        this.delete = materialButton4;
        this.edit = materialButton5;
        this.gotoLink = materialButton6;
        this.topping = materialButton7;
    }

    public static PopupShapeLinkBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupShapeLinkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupShapeLinkBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupShapeLinkBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_shape_link);
    }

    @NonNull
    @Deprecated
    public static PopupShapeLinkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupShapeLinkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_link, viewGroup, z, obj);
    }

    @NonNull
    public static PopupShapeLinkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupShapeLinkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupShapeLinkBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_shape_link, null, false, obj);
    }
}
