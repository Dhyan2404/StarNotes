package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutScreenCaptureBinding extends ViewDataBinding {

    @NonNull
    public final AppCompatImageView bottomHandle;

    @NonNull
    public final AppCompatImageView btnCancel;

    @NonNull
    public final AppCompatImageView btnOk;

    @NonNull
    public final LinearLayout buttonGroup;

    @NonNull
    public final AppCompatImageView leftBottomHandle;

    @NonNull
    public final AppCompatImageView leftHandle;

    @NonNull
    public final AppCompatImageView leftTopHandle;

    @NonNull
    public final AppCompatImageView rightBottomHandle;

    @NonNull
    public final AppCompatImageView rightHandle;

    @NonNull
    public final AppCompatImageView rightTopHandle;

    @NonNull
    public final ConstraintLayout shotContainer;

    @NonNull
    public final View shotView;

    @NonNull
    public final AppCompatImageView topHandle;

    public LayoutScreenCaptureBinding(Object obj, View view, int i, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, AppCompatImageView appCompatImageView7, AppCompatImageView appCompatImageView8, AppCompatImageView appCompatImageView9, ConstraintLayout constraintLayout, View view2, AppCompatImageView appCompatImageView10) {
        super(obj, view, i);
        this.bottomHandle = appCompatImageView;
        this.btnCancel = appCompatImageView2;
        this.btnOk = appCompatImageView3;
        this.buttonGroup = linearLayout;
        this.leftBottomHandle = appCompatImageView4;
        this.leftHandle = appCompatImageView5;
        this.leftTopHandle = appCompatImageView6;
        this.rightBottomHandle = appCompatImageView7;
        this.rightHandle = appCompatImageView8;
        this.rightTopHandle = appCompatImageView9;
        this.shotContainer = constraintLayout;
        this.shotView = view2;
        this.topHandle = appCompatImageView10;
    }

    public static LayoutScreenCaptureBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutScreenCaptureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutScreenCaptureBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutScreenCaptureBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_screen_capture);
    }

    @NonNull
    @Deprecated
    public static LayoutScreenCaptureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutScreenCaptureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_screen_capture, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutScreenCaptureBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutScreenCaptureBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutScreenCaptureBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_screen_capture, null, false, obj);
    }
}
