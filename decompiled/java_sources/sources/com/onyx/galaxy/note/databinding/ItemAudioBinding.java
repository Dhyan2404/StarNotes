package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class ItemAudioBinding extends ViewDataBinding {

    @NonNull
    public final TintRadioButton checkbox;

    @NonNull
    public final TintImageView ivPlay;

    @Bindable
    protected AudioInfoBean mModel;

    @NonNull
    public final TintImageView moreSettings;

    @NonNull
    public final RelativeLayout rlContentLayout;

    @NonNull
    public final TintTextView title;

    @NonNull
    public final TintTextView tvDuration;

    @NonNull
    public final TintTextView tvTime;

    public ItemAudioBinding(Object obj, View view, int i, TintRadioButton tintRadioButton, TintImageView tintImageView, TintImageView tintImageView2, RelativeLayout relativeLayout, TintTextView tintTextView, TintTextView tintTextView2, TintTextView tintTextView3) {
        super(obj, view, i);
        this.checkbox = tintRadioButton;
        this.ivPlay = tintImageView;
        this.moreSettings = tintImageView2;
        this.rlContentLayout = relativeLayout;
        this.title = tintTextView;
        this.tvDuration = tintTextView2;
        this.tvTime = tintTextView3;
    }

    public static ItemAudioBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ItemAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AudioInfoBean getModel() {
        return this.mModel;
    }

    public abstract void setModel(@Nullable AudioInfoBean audioInfoBean);

    @Deprecated
    public static ItemAudioBinding bind(@NonNull View view, @Nullable Object obj) {
        return (ItemAudioBinding) ViewDataBinding.bind(obj, view, C10651R.layout.item_audio);
    }

    @NonNull
    @Deprecated
    public static ItemAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (ItemAudioBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_audio, viewGroup, z, obj);
    }

    @NonNull
    public static ItemAudioBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static ItemAudioBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (ItemAudioBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.item_audio, null, false, obj);
    }
}
