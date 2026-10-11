package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public abstract class LayoutInputTextToolBinding extends ViewDataBinding {

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final LinearLayout content;

    @NonNull
    public final TintImageView textAlignCenter;

    @NonNull
    public final TintImageView textAlignLeft;

    @NonNull
    public final TintImageView textAlignRight;

    @NonNull
    public final TintImageView textBackground;

    @NonNull
    public final TintImageView textBold;

    @NonNull
    public final TintImageView textItalic;

    @NonNull
    public final TintTextView textSize;

    @NonNull
    public final TintImageView textSizeAdd;

    @NonNull
    public final TintImageView textSizeDecrease;

    @NonNull
    public final TintLinearLayout textSizeLayout;

    @NonNull
    public final TintTextView textSpacing;

    @NonNull
    public final TintImageView textUnderline;

    @NonNull
    public final TintTextView tvFontName;

    public LayoutInputTextToolBinding(Object obj, View view, int i, ShapeColorPropertyLayout shapeColorPropertyLayout, LinearLayout linearLayout, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, TintImageView tintImageView6, TintTextView tintTextView, TintImageView tintImageView7, TintImageView tintImageView8, TintLinearLayout tintLinearLayout, TintTextView tintTextView2, TintImageView tintImageView9, TintTextView tintTextView3) {
        super(obj, view, i);
        this.colorLayout = shapeColorPropertyLayout;
        this.content = linearLayout;
        this.textAlignCenter = tintImageView;
        this.textAlignLeft = tintImageView2;
        this.textAlignRight = tintImageView3;
        this.textBackground = tintImageView4;
        this.textBold = tintImageView5;
        this.textItalic = tintImageView6;
        this.textSize = tintTextView;
        this.textSizeAdd = tintImageView7;
        this.textSizeDecrease = tintImageView8;
        this.textSizeLayout = tintLinearLayout;
        this.textSpacing = tintTextView2;
        this.textUnderline = tintImageView9;
        this.tvFontName = tintTextView3;
    }

    public static LayoutInputTextToolBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutInputTextToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutInputTextToolBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutInputTextToolBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_input_text_tool);
    }

    @NonNull
    @Deprecated
    public static LayoutInputTextToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutInputTextToolBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_input_text_tool, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutInputTextToolBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutInputTextToolBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutInputTextToolBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_input_text_tool, null, false, obj);
    }
}
