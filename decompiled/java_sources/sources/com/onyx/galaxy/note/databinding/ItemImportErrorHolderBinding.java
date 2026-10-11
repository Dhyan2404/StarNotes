package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.galaxy.note.C10651R;

/* loaded from: classes9.dex */
public final class ItemImportErrorHolderBinding implements ViewBinding {

    /* renamed from: e */
    @NonNull
    public final ConstraintLayout f57048e;

    @NonNull
    public final ProgressBar progressRetry;

    @NonNull
    public final TextView tvCompleted;

    @NonNull
    public final TextView tvErrorCode;

    @NonNull
    public final TextView tvErrorCodeDes;

    @NonNull
    public final TextView tvErrorName;

    @NonNull
    public final TextView tvRetry;

    public ItemImportErrorHolderBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f57048e = constraintLayout;
        this.progressRetry = progressBar;
        this.tvCompleted = textView;
        this.tvErrorCode = textView2;
        this.tvErrorCodeDes = textView3;
        this.tvErrorName = textView4;
        this.tvRetry = textView5;
    }

    @NonNull
    public static ItemImportErrorHolderBinding bind(@NonNull View view) {
        int i = C10651R.id.progress_retry;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
        if (progressBar != null) {
            i = C10651R.id.tv_completed;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView != null) {
                i = C10651R.id.tv_error_code;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView2 != null) {
                    i = C10651R.id.tv_error_code_des;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView3 != null) {
                        i = C10651R.id.tv_error_name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                        if (textView4 != null) {
                            i = C10651R.id.tv_retry;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                return new ItemImportErrorHolderBinding((ConstraintLayout) view, progressBar, textView, textView2, textView3, textView4, textView5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @NonNull
    public static ItemImportErrorHolderBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static ItemImportErrorHolderBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.item_import_error_holder, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public ConstraintLayout getRoot() {
        return this.f57048e;
    }
}
