package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.p048ui.view.ShadowLayout;

/* loaded from: classes9.dex */
public abstract class ItemCustomShortcutBarBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView icDragTag;

    @NonNull
    public final TintImageView icEye;

    @NonNull
    public final TintImageView menuIcon;

    @NonNull
    public final ShadowLayout shadowLayout;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintView vLine;

    public ItemCustomShortcutBarBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, ShadowLayout shadowLayout, TintTextView tintTextView, TintView tintView) {
        super(obj, view, i);
        this.icDragTag = tintImageView;
        this.icEye = tintImageView2;
        this.menuIcon = tintImageView3;
        this.shadowLayout = shadowLayout;
        this.tvTitle = tintTextView;
        this.vLine = tintView;
    }

    public static ItemCustomShortcutBarBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemCustomShortcutBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemCustomShortcutBarBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemCustomShortcutBarBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_custom_shortcut_bar);
    }

    @NonNull
    @Deprecated
    public static ItemCustomShortcutBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemCustomShortcutBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_custom_shortcut_bar, viewGroup, z, obj);
    }

    @NonNull
    public static ItemCustomShortcutBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemCustomShortcutBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemCustomShortcutBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_custom_shortcut_bar, null, false, obj);
    }
}
