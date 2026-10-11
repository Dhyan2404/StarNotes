package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.universal.editor.display.EditorView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierNewLineAreaView;
import com.onyx.galaxy.note.editor.view.magnifier.MagnifierViewportContainer;

/* loaded from: classes9.dex */
public abstract class MagnifierEditorLayoutBinding extends ViewDataBinding {

    @NonNull
    public final AppCompatImageView eraseCircleView;

    @NonNull
    public final TintImageView ivMagnifierClose;

    @NonNull
    public final TintImageView ivMagnifierDown;

    @NonNull
    public final TintImageView ivMagnifierLeft;

    @NonNull
    public final TintImageView ivMagnifierNewline;

    @NonNull
    public final TintImageView ivMagnifierRight;

    @NonNull
    public final TintImageView ivMagnifierUp;

    @NonNull
    public final TintLinearLayout magnifierActionContainer;

    @NonNull
    public final LinearLayout magnifierEditorContainer;

    @NonNull
    public final EditorView magnifierEditorView;

    @NonNull
    public final FrameLayout magnifierLayout;

    @NonNull
    public final MagnifierNewLineAreaView magnifierNewLineAreaView;

    @NonNull
    public final MagnifierViewportContainer magnifierViewPortContainer;

    public MagnifierEditorLayoutBinding(Object obj, View view, int i, AppCompatImageView appCompatImageView, TintImageView tintImageView, TintImageView tintImageView2, TintImageView tintImageView3, TintImageView tintImageView4, TintImageView tintImageView5, TintImageView tintImageView6, TintLinearLayout tintLinearLayout, LinearLayout linearLayout, EditorView editorView, FrameLayout frameLayout, MagnifierNewLineAreaView magnifierNewLineAreaView, MagnifierViewportContainer magnifierViewportContainer) {
        super(obj, view, i);
        this.eraseCircleView = appCompatImageView;
        this.ivMagnifierClose = tintImageView;
        this.ivMagnifierDown = tintImageView2;
        this.ivMagnifierLeft = tintImageView3;
        this.ivMagnifierNewline = tintImageView4;
        this.ivMagnifierRight = tintImageView5;
        this.ivMagnifierUp = tintImageView6;
        this.magnifierActionContainer = tintLinearLayout;
        this.magnifierEditorContainer = linearLayout;
        this.magnifierEditorView = editorView;
        this.magnifierLayout = frameLayout;
        this.magnifierNewLineAreaView = magnifierNewLineAreaView;
        this.magnifierViewPortContainer = magnifierViewportContainer;
    }

    public static MagnifierEditorLayoutBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static MagnifierEditorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static MagnifierEditorLayoutBinding bind(@NonNull View view, @Nullable Object obj) {
        return (MagnifierEditorLayoutBinding) ViewDataBinding.bind(obj, view, C10651R.layout.magnifier_editor_layout);
    }

    @NonNull
    @Deprecated
    public static MagnifierEditorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (MagnifierEditorLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.magnifier_editor_layout, viewGroup, z, obj);
    }

    @NonNull
    public static MagnifierEditorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static MagnifierEditorLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (MagnifierEditorLayoutBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.magnifier_editor_layout, null, false, obj);
    }
}
