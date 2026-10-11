package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarView;

/* loaded from: classes9.dex */
public abstract class PopupSeekBarBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarView seekBar;

    @NonNull
    public final TintTextView valueText;

    public PopupSeekBarBinding(Object obj, View view, int i, StickSeekBarView stickSeekBarView, TintTextView tintTextView) {
        super(obj, view, i);
        this.seekBar = stickSeekBarView;
        this.valueText = tintTextView;
    }

    public static PopupSeekBarBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupSeekBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupSeekBarBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupSeekBarBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_seek_bar);
    }

    @NonNull
    @Deprecated
    public static PopupSeekBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupSeekBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_seek_bar, viewGroup, z, obj);
    }

    @NonNull
    public static PopupSeekBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupSeekBarBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupSeekBarBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_seek_bar, null, false, obj);
    }
}
