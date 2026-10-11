package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.canhub.cropper.CropImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintRadioButton;
import com.onyx.android.sdk.theme.widgets.TintRelativeLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.FreeCropImageView;

/* loaded from: classes9.dex */
public abstract class DialogImageCropperBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnCancel;

    @NonNull
    public final TintTextView finish;

    @NonNull
    public final TintRadioButton freeCrop;

    @NonNull
    public final FreeCropImageView freeCropView;

    @NonNull
    public final TintRelativeLayout imageContainer;

    @NonNull
    public final RadioGroup radioGroup;

    @NonNull
    public final TintRadioButton rectCrop;

    @NonNull
    public final CropImageView rectCropView;

    /* renamed from: rl */
    @NonNull
    public final TintLinearLayout f56398rl;

    @NonNull
    public final RelativeLayout titleLayout;

    public DialogImageCropperBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, TintRadioButton tintRadioButton, FreeCropImageView freeCropImageView, TintRelativeLayout tintRelativeLayout, RadioGroup radioGroup, TintRadioButton tintRadioButton2, CropImageView cropImageView, TintLinearLayout tintLinearLayout, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.btnCancel = tintTextView;
        this.finish = tintTextView2;
        this.freeCrop = tintRadioButton;
        this.freeCropView = freeCropImageView;
        this.imageContainer = tintRelativeLayout;
        this.radioGroup = radioGroup;
        this.rectCrop = tintRadioButton2;
        this.rectCropView = cropImageView;
        this.f56398rl = tintLinearLayout;
        this.titleLayout = relativeLayout;
    }

    public static DialogImageCropperBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static DialogImageCropperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static DialogImageCropperBinding bind(@NonNull View view, @Nullable Object obj) {
        return (DialogImageCropperBinding) ViewDataBinding.bind(obj, view, C10651R.layout.dialog_image_cropper);
    }

    @NonNull
    @Deprecated
    public static DialogImageCropperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (DialogImageCropperBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_image_cropper, viewGroup, z, obj);
    }

    @NonNull
    public static DialogImageCropperBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static DialogImageCropperBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (DialogImageCropperBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.dialog_image_cropper, null, false, obj);
    }
}
