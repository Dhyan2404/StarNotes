package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemShortcutBarMoreFunctionAudioBinding extends ViewDataBinding {

    @NonNull
    public final Group groupPlay;

    @NonNull
    public final Group groupRecord;

    @NonNull
    public final TintImageView ivIcon;

    @NonNull
    public final TintImageView ivIconRecord;

    @NonNull
    public final TintTextView tvTitle;

    @NonNull
    public final TintTextView tvTitleRecord;

    public ItemShortcutBarMoreFunctionAudioBinding(Object obj, View view, int i, Group group, Group group2, TintImageView tintImageView, TintImageView tintImageView2, TintTextView tintTextView, TintTextView tintTextView2) {
        super(obj, view, i);
        this.groupPlay = group;
        this.groupRecord = group2;
        this.ivIcon = tintImageView;
        this.ivIconRecord = tintImageView2;
        this.tvTitle = tintTextView;
        this.tvTitleRecord = tintTextView2;
    }

    public static ItemShortcutBarMoreFunctionAudioBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_shortcut_bar_more_function_audio);
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_audio, viewGroup, z, obj);
    }

    @NonNull
    public static ItemShortcutBarMoreFunctionAudioBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemShortcutBarMoreFunctionAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemShortcutBarMoreFunctionAudioBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_shortcut_bar_more_function_audio, null, false, obj);
    }
}
