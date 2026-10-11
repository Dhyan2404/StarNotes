package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.aitsuki.swipe.SwipeMenuRecyclerView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class PopupAudioListBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView delete;

    @NonNull
    public final TintTextView finish;

    @NonNull
    public final SwipeMenuRecyclerView recyclerView;

    @NonNull
    public final TintTextView selectAll;

    @NonNull
    public final TintTextView selection;

    @NonNull
    public final RelativeLayout selectionLayout;

    public PopupAudioListBinding(Object obj, View view, int i, TintTextView tintTextView, TintTextView tintTextView2, SwipeMenuRecyclerView swipeMenuRecyclerView, TintTextView tintTextView3, TintTextView tintTextView4, RelativeLayout relativeLayout) {
        super(obj, view, i);
        this.delete = tintTextView;
        this.finish = tintTextView2;
        this.recyclerView = swipeMenuRecyclerView;
        this.selectAll = tintTextView3;
        this.selection = tintTextView4;
        this.selectionLayout = relativeLayout;
    }

    public static PopupAudioListBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupAudioListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupAudioListBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupAudioListBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_audio_list);
    }

    @NonNull
    @Deprecated
    public static PopupAudioListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupAudioListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_audio_list, viewGroup, z, obj);
    }

    @NonNull
    public static PopupAudioListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupAudioListBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupAudioListBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_audio_list, null, false, obj);
    }
}
