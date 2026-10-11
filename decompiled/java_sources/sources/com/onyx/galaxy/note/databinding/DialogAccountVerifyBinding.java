package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.onyx.android.sdk.theme.widgets.TintLinearLayout;
import com.onyx.android.sdk.theme.widgets.TintTabLayoutView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class DialogAccountVerifyBinding implements ViewBinding {

    @NonNull
    public final TintTextView cancelButton;

    /* renamed from: e */
    @NonNull
    public final TintLinearLayout f56312e;

    @NonNull
    public final TintTabLayoutView tabLayout;

    @NonNull
    public final TintTextView titleText;

    @NonNull
    public final ViewPager2 viewPager;

    public DialogAccountVerifyBinding(@NonNull TintLinearLayout tintLinearLayout, @NonNull TintTextView tintTextView, @NonNull TintTabLayoutView tintTabLayoutView, @NonNull TintTextView tintTextView2, @NonNull ViewPager2 viewPager2) {
        this.f56312e = tintLinearLayout;
        this.cancelButton = tintTextView;
        this.tabLayout = tintTabLayoutView;
        this.titleText = tintTextView2;
        this.viewPager = viewPager2;
    }

    @NonNull
    public static DialogAccountVerifyBinding bind(@NonNull View view) {
        int i = C10651R.id.cancelButton;
        TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
        if (tintTextView != null) {
            i = C10651R.id.tabLayout;
            TintTabLayoutView tintTabLayoutView = (TintTabLayoutView) ViewBindings.findChildViewById(view, i);
            if (tintTabLayoutView != null) {
                i = C10651R.id.titleText;
                TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                if (tintTextView2 != null) {
                    i = C10651R.id.viewPager;
                    ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
                    if (viewPager2 != null) {
                        return new DialogAccountVerifyBinding((TintLinearLayout) view, tintTextView, tintTabLayoutView, tintTextView2, viewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static DialogAccountVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static DialogAccountVerifyBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.dialog_account_verify, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintLinearLayout getRoot() {
        return this.f56312e;
    }
}
