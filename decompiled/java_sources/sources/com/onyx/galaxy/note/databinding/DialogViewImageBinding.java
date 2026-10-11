package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.github.chrisbanes.photoview.PhotoView;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class DialogViewImageBinding extends ViewDataBinding {

    @NonNull
    public final PhotoView image;

    @NonNull
    public final TintTextView percent;

    @NonNull
    public final TintTextView quit;

    @NonNull
    public final TintImageView scaleDown;

    @NonNull
    public final TintImageView scaleRestore;

    @NonNull
    public final TintImageView scaleUp;

    public DialogViewImageBinding(Object obj, View view, int i, PhotoView photoView, TintTextView tintTextView, TintTextView tintTextView2, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3) {
        super(obj, view, i);
        this.image = photoView;
        this.percent = tintTextView;
        this.quit = tintTextView2;
        this.scaleDown = tintImageView;
        this.scaleRestore = tintImageView2;
        this.scaleUp = tintImageView3;
    }

    public static DialogViewImageBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogViewImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogViewImageBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogViewImageBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_view_image);
    }

    @NonNull
    @Deprecated
    public static DialogViewImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogViewImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_view_image, viewGroup, z, obj);
    }

    @NonNull
    public static DialogViewImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogViewImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogViewImageBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_view_image, null, false, obj);
    }
}
