package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintEditText;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public abstract class LayoutNotePageSettingsBinding extends ViewDataBinding {

    @NonNull
    public final TintFrameLayout addToOutline;

    @NonNull
    public final TintFrameLayout changeNewPageTemplate;

    @NonNull
    public final TintFrameLayout changeTemplate;

    @NonNull
    public final TintFrameLayout createPageLink;

    @NonNull
    public final FrameLayout deleteCurrentPage;

    @NonNull
    public final View guideDivider;

    @NonNull
    public final ConstraintLayout llJumpPage;

    @NonNull
    public final TintTextView page;

    @NonNull
    public final TintEditText pageEdittext;

    @NonNull
    public final TintFrameLayout pageRecycleBin;

    @NonNull
    public final TintTextView pageSuffix;

    @NonNull
    public final TintFrameLayout rotatePage;

    @NonNull
    public final TintFrameLayout whitespaceAdjustment;

    public LayoutNotePageSettingsBinding(Object obj, View view, int i, TintFrameLayout tintFrameLayout, TintFrameLayout tintFrameLayout2, TintFrameLayout tintFrameLayout3, TintFrameLayout tintFrameLayout4, FrameLayout frameLayout, View view2, ConstraintLayout constraintLayout, TintTextView tintTextView, TintEditText tintEditText, TintFrameLayout tintFrameLayout5, TintTextView tintTextView2, TintFrameLayout tintFrameLayout6, TintFrameLayout tintFrameLayout7) {
        super(obj, view, i);
        this.addToOutline = tintFrameLayout;
        this.changeNewPageTemplate = tintFrameLayout2;
        this.changeTemplate = tintFrameLayout3;
        this.createPageLink = tintFrameLayout4;
        this.deleteCurrentPage = frameLayout;
        this.guideDivider = view2;
        this.llJumpPage = constraintLayout;
        this.page = tintTextView;
        this.pageEdittext = tintEditText;
        this.pageRecycleBin = tintFrameLayout5;
        this.pageSuffix = tintTextView2;
        this.rotatePage = tintFrameLayout6;
        this.whitespaceAdjustment = tintFrameLayout7;
    }

    public static LayoutNotePageSettingsBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutNotePageSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Deprecated
    public static LayoutNotePageSettingsBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutNotePageSettingsBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_note_page_settings);
    }

    @NonNull
    @Deprecated
    public static LayoutNotePageSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutNotePageSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_page_settings, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutNotePageSettingsBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutNotePageSettingsBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutNotePageSettingsBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_note_page_settings, null, false, obj);
    }
}
