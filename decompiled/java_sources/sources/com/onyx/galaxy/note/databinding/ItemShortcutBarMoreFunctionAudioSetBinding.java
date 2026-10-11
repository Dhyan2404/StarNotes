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
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemShortcutBarMoreFunctionAudioSetBinding extends ViewDataBinding {

    @NonNull
    public final TintImageView ivIcon;

    @NonNull
    public final TintImageView ivIconNewTip;

    @NonNull
    public final TintImageView ivIconPreview;

    @NonNull
    public final TintTextView tvTitle;

    public ItemShortcutBarMoreFunctionAudioSetBinding(Object obj, View view, int i, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintTextView tintTextView) {
        super(obj, view, i);
        this.ivIcon = tintImageView;
        this.ivIconNewTip = tintImageView2;
        this.ivIconPreview = tintImageView3;
        this.tvTitle = tintTextView;
    }

    public static ItemShortcutBarMoreFunctionAudioSetBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionAudioSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioSetBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioSetBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_shortcut_bar_more_function_audio_set);
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioSetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_audio_set, viewGroup, z, obj);
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionAudioSetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioSetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioSetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_audio_set, null, false, obj);
    }
}
