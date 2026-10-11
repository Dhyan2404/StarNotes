package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.custom.StickSeekBarContainer;

/* loaded from: classes9.dex */
public abstract class LayoutInkBeautifyTypesetBinding extends ViewDataBinding {

    @NonNull
    public final StickSeekBarContainer charSpacingSeekbar;

    @NonNull
    public final StickSeekBarContainer fontSizeSeekbar;

    @NonNull
    public final StickSeekBarContainer lineSpacingSeekbar;

    @NonNull
    public final TintTextView restoreButton;

    @NonNull
    public final TintLinearLayout typesetLayout;

    public LayoutInkBeautifyTypesetBinding(Object obj, View view, int i, StickSeekBarContainer stickSeekBarContainer, StickSeekBarContainer stickSeekBarContainer2, StickSeekBarContainer stickSeekBarContainer3, TintTextView tintTextView, TintLinearLayout tintLinearLayout) {
        super(obj, view, i);
        this.charSpacingSeekbar = stickSeekBarContainer;
        this.fontSizeSeekbar = stickSeekBarContainer2;
        this.lineSpacingSeekbar = stickSeekBarContainer3;
        this.restoreButton = tintTextView;
        this.typesetLayout = tintLinearLayout;
    }

    public static LayoutInkBeautifyTypesetBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutInkBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutInkBeautifyTypesetBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutInkBeautifyTypesetBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_ink_beautify_typeset);
    }

    @NonNull
    @Deprecated
    public static LayoutInkBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutInkBeautifyTypesetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_ink_beautify_typeset, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutInkBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutInkBeautifyTypesetBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutInkBeautifyTypesetBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_ink_beautify_typeset, null, false, obj);
    }
}
