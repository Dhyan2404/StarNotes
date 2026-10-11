package com.onyx.android.sdk.textbox.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.widget.TintImageView;
import com.onyx.android.sdk.textbox.widget.TintLinearLayout;

/* loaded from: classes8.dex */
public abstract class LayoutTextBoxBinding extends ViewDataBinding {

    @NonNull
    public final FrameLayout btnMove;

    @NonNull
    public final TintLinearLayout editorContainer;

    @NonNull
    public final TintImageView ivBottom;

    @NonNull
    public final TintImageView ivLeft;

    @NonNull
    public final TintImageView ivMove;

    @NonNull
    public final TintImageView ivRight;

    @NonNull
    public final TintImageView ivTop;

    @NonNull
    public final FrameLayout leftBottomHandle;

    @NonNull
    public final FrameLayout leftTopHandle;

    @Bindable
    protected Boolean mIsAdaptiveMode;

    @Bindable
    protected Integer mResizeIconRes;

    @NonNull
    public final FrameLayout rightBottomHandle;

    @NonNull
    public final FrameLayout rightTopHandle;

    @NonNull
    public final FrameLayout selectionBottomHandle;

    @NonNull
    public final FrameLayout selectionLeftHandle;

    @NonNull
    public final FrameLayout selectionRightHandle;

    @NonNull
    public final FrameLayout selectionTopHandle;

    @NonNull
    public final View touchContainer;

    public LayoutTextBoxBinding(Object obj, View view, int i, FrameLayout frameLayout, TintLinearLayout tintLinearLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, FrameLayout frameLayout2, FrameLayout frameLayout3, FrameLayout frameLayout4, FrameLayout frameLayout5, FrameLayout frameLayout6, FrameLayout frameLayout7, FrameLayout frameLayout8, FrameLayout frameLayout9, View view2) {
        super(obj, view, i);
        this.btnMove = frameLayout;
        this.editorContainer = tintLinearLayout;
        this.ivBottom = tintImageView;
        this.ivLeft = tintImageView2;
        this.ivMove = tintImageView3;
        this.ivRight = tintImageView4;
        this.ivTop = tintImageView5;
        this.leftBottomHandle = frameLayout2;
        this.leftTopHandle = frameLayout3;
        this.rightBottomHandle = frameLayout4;
        this.rightTopHandle = frameLayout5;
        this.selectionBottomHandle = frameLayout6;
        this.selectionLeftHandle = frameLayout7;
        this.selectionRightHandle = frameLayout8;
        this.selectionTopHandle = frameLayout9;
        this.touchContainer = view2;
    }

    public static LayoutTextBoxBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutTextBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public Boolean getIsAdaptiveMode() {
        return this.mIsAdaptiveMode;
    }

    @Nullable
    public Integer getResizeIconRes() {
        return this.mResizeIconRes;
    }

    public abstract void setIsAdaptiveMode(@Nullable Boolean bool);

    public abstract void setResizeIconRes(@Nullable Integer num);

    @Deprecated
    public static LayoutTextBoxBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutTextBoxBinding) ViewDataBinding.bind(obj, view, C8002R.layout.layout_text_box);
    }

    @NonNull
    @Deprecated
    public static LayoutTextBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutTextBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C8002R.layout.layout_text_box, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutTextBoxBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutTextBoxBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutTextBoxBinding) ViewDataBinding.inflateInternal(layoutInflater, C8002R.layout.layout_text_box, null, false, obj);
    }
}
