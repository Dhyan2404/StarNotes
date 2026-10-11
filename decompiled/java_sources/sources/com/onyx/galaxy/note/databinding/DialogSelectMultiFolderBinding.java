package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class DialogSelectMultiFolderBinding implements ViewBinding {

    @NonNull
    public final TintTextView cancelButton;

    @NonNull
    public final TintTextView currentFolderTitleText;

    @NonNull
    public final TintTextView doneButton;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f56530e;

    @NonNull
    public final EmptyViewSelectMultiFolderBinding emptyBinding;

    @NonNull
    public final TintConstraintLayout multiFolderLayout;

    @NonNull
    public final View parentSizeView;

    @NonNull
    public final TintImageView selectAllButton;

    @NonNull
    public final TintTextView selectAllText;

    @NonNull
    public final TintTextView selectScopeText;

    @NonNull
    public final TintImageView selectUnclassifiedButton;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final TintFrameLayout treeLayout;

    @NonNull
    public final RecyclerView treeListView;

    @NonNull
    public final TintImageView unclassifiedIcon;

    @NonNull
    public final TintLinearLayout unclassifiedLayout;

    @NonNull
    public final TintTextView unclassifiedText;

    public DialogSelectMultiFolderBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull EmptyViewSelectMultiFolderBinding emptyViewSelectMultiFolderBinding, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull View view, @NonNull TintImageView tintImageView, @NonNull TintTextView tintTextView4, @NonNull TintTextView tintTextView5, @NonNull TintImageView tintImageView2, @NonNull TintTextView tintTextView6, @NonNull TintFrameLayout tintFrameLayout, @NonNull RecyclerView recyclerView, @NonNull TintImageView tintImageView3, @NonNull TintLinearLayout tintLinearLayout, @NonNull TintTextView tintTextView7) {
        this.f56530e = tintConstraintLayout;
        this.cancelButton = tintTextView;
        this.currentFolderTitleText = tintTextView2;
        this.doneButton = tintTextView3;
        this.emptyBinding = emptyViewSelectMultiFolderBinding;
        this.multiFolderLayout = tintConstraintLayout2;
        this.parentSizeView = view;
        this.selectAllButton = tintImageView;
        this.selectAllText = tintTextView4;
        this.selectScopeText = tintTextView5;
        this.selectUnclassifiedButton = tintImageView2;
        this.titleText = tintTextView6;
        this.treeLayout = tintFrameLayout;
        this.treeListView = recyclerView;
        this.unclassifiedIcon = tintImageView3;
        this.unclassifiedLayout = tintLinearLayout;
        this.unclassifiedText = tintTextView7;
    }

    @NonNull
    public static DialogSelectMultiFolderBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.cancelButton;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.currentFolderTitleText;
            TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
            if (tintTextView2 != null) {
                i = C10651R.id.doneButton;
                TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView3 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.emptyBinding))) != null) {
                    EmptyViewSelectMultiFolderBinding bind = EmptyViewSelectMultiFolderBinding.bind(findChildViewById);
                    TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
                    i = C10651R.id.parentSizeView;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, i);
                    if (findChildViewById2 != null) {
                        i = C10651R.id.selectAllButton;
                        TintImageView tintImageView = (TintImageView) ViewBindings.findChildViewById(view, i);
                        if (tintImageView != null) {
                            i = C10651R.id.selectAllText;
                            TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView4 != null) {
                                i = C10651R.id.selectScopeText;
                                TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView5 != null) {
                                    i = C10651R.id.selectUnclassifiedButton;
                                    TintImageView tintImageView2 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                    if (tintImageView2 != null) {
                                        i = C10651R.id.titleText;
                                        TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView6 != null) {
                                            i = C10651R.id.treeLayout;
                                            TintFrameLayout tintFrameLayout = (TintFrameLayout) ViewBindings.findChildViewById(view, i);
                                            if (tintFrameLayout != null) {
                                                i = C10651R.id.treeListView;
                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                                if (recyclerView != null) {
                                                    i = C10651R.id.unclassifiedIcon;
                                                    TintImageView tintImageView3 = (TintImageView) ViewBindings.findChildViewById(view, i);
                                                    if (tintImageView3 != null) {
                                                        i = C10651R.id.unclassifiedLayout;
                                                        TintLinearLayout tintLinearLayout = (TintLinearLayout) ViewBindings.findChildViewById(view, i);
                                                        if (tintLinearLayout != null) {
                                                            i = C10651R.id.unclassifiedText;
                                                            TintTextView tintTextView7 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                            if (tintTextView7 != null) {
                                                                return new DialogSelectMultiFolderBinding(tintConstraintLayout, tintTextView, tintTextView2, tintTextView3, bind, tintConstraintLayout, findChildViewById2, tintImageView, tintTextView4, tintTextView5, tintImageView2, tintTextView6, tintFrameLayout, recyclerView, tintImageView3, tintLinearLayout, tintTextView7);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static DialogSelectMultiFolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogSelectMultiFolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.dialog_select_multi_folder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f56530e;
    }
}
