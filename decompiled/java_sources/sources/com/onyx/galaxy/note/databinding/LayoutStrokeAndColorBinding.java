package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.toolbar.ShapeColorPropertyLayout;

/* loaded from: classes9.dex */
public abstract class LayoutStrokeAndColorBinding extends ViewDataBinding {

    @NonNull
    public final TextView colorLabel;

    @NonNull
    public final ShapeColorPropertyLayout colorLayout;

    @NonNull
    public final FrameLayout seekBarContainer;

    @NonNull
    public final TextView strokeDesc;

    @NonNull
    public final AppCompatSeekBar strokeSeekbar;

    public LayoutStrokeAndColorBinding(Object obj, View view, int i, TextView textView, ShapeColorPropertyLayout shapeColorPropertyLayout, FrameLayout frameLayout, TextView textView2, AppCompatSeekBar appCompatSeekBar) {
        super(obj, view, i);
        this.colorLabel = textView;
        this.colorLayout = shapeColorPropertyLayout;
        this.seekBarContainer = frameLayout;
        this.strokeDesc = textView2;
        this.strokeSeekbar = appCompatSeekBar;
    }

    public static LayoutStrokeAndColorBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutStrokeAndColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutStrokeAndColorBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutStrokeAndColorBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_stroke_and_color);
    }

    @NonNull
    @Deprecated
    public static LayoutStrokeAndColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutStrokeAndColorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_stroke_and_color, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutStrokeAndColorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutStrokeAndColorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutStrokeAndColorBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_stroke_and_color, null, false, obj);
    }
}
