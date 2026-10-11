package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.GuideTipsView;

/* loaded from: classes9.dex */
public abstract class PopupTipsGuideBinding extends ViewDataBinding {

    @NonNull
    public final GuideTipsView guideView;

    public PopupTipsGuideBinding(Object obj, View view, int i, GuideTipsView guideTipsView) {
        super(obj, view, i);
        this.guideView = guideTipsView;
    }

    public static PopupTipsGuideBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTipsGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTipsGuideBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTipsGuideBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tips_guide);
    }

    @NonNull
    @Deprecated
    public static PopupTipsGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTipsGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tips_guide, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTipsGuideBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTipsGuideBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTipsGuideBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tips_guide, null, false, obj);
    }
}
