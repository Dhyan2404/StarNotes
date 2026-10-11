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

/* loaded from: classes9.dex */
public abstract class PopupAudioActionBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView audioLink;

    @NonNull
    public final TintTextView audioRecognize;

    @NonNull
    public final TintTextView delete;

    @NonNull
    public final TintTextView gotoLink;

    @NonNull
    public final TintTextView rename;

    public PopupAudioActionBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3, TintTextView tintTextView4, TintTextView tintTextView5) {
        super(obj, view, i);
        this.audioLink = tintTextView;
        this.audioRecognize = tintTextView2;
        this.delete = tintTextView3;
        this.gotoLink = tintTextView4;
        this.rename = tintTextView5;
    }

    public static PopupAudioActionBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupAudioActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupAudioActionBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupAudioActionBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_audio_action);
    }

    @NonNull
    @Deprecated
    public static PopupAudioActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupAudioActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_audio_action, viewGroup, z, obj);
    }

    @NonNull
    public static PopupAudioActionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupAudioActionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupAudioActionBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_audio_action, null, false, obj);
    }
}
