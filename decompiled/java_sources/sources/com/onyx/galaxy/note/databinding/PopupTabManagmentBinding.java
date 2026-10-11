package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintRecycleView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.common.view.MaxHeightFrameLayout;

/* loaded from: classes9.dex */
public abstract class PopupTabManagmentBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView closeTab;

    @NonNull
    public final FrameLayout flContainer;

    @NonNull
    public final FrameLayout flContentWrapper;

    @NonNull
    public final MaxHeightFrameLayout listViewContainer;

    @NonNull
    public final TintRecycleView listview;

    @NonNull
    public final LinearLayout llTabsOperations;

    @NonNull
    public final TintTextView toggleTab;

    public PopupTabManagmentBinding(Object obj, View view, int i, TintTextView tintTextView, FrameLayout frameLayout, FrameLayout frameLayout2, MaxHeightFrameLayout maxHeightFrameLayout, TintRecycleView tintRecycleView, LinearLayout linearLayout, TintTextView tintTextView2) {
        super(obj, view, i);
        this.closeTab = tintTextView;
        this.flContainer = frameLayout;
        this.flContentWrapper = frameLayout2;
        this.listViewContainer = maxHeightFrameLayout;
        this.listview = tintRecycleView;
        this.llTabsOperations = linearLayout;
        this.toggleTab = tintTextView2;
    }

    public static PopupTabManagmentBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static PopupTabManagmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static PopupTabManagmentBinding bind(@NonNull View view, @Nullable Object obj) {
        return (PopupTabManagmentBinding) ViewDataBinding.bind(obj, view, C10651R.layout.popup_tab_managment);
    }

    @NonNull
    @Deprecated
    public static PopupTabManagmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (PopupTabManagmentBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tab_managment, viewGroup, z, obj);
    }

    @NonNull
    public static PopupTabManagmentBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static PopupTabManagmentBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (PopupTabManagmentBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.popup_tab_managment, null, false, obj);
    }
}
