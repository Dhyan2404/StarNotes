package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.onyx.android.sdk.theme.widgets.TintConstraintLayout;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.p047ui.LongPressPalmCollectionTextView;

/* loaded from: classes9.dex */
public final class LayoutStarNoteDiscoverBinding implements ViewBinding {

    @NonNull
    public final LinearLayout bottomContainer;

    /* renamed from: e */
    @NonNull
    public final TintConstraintLayout f57473e;

    @NonNull
    public final ImageView ivLogo;

    @NonNull
    public final IncludeIcpContainerBinding layoutIcpContainer;

    @NonNull
    public final TintConstraintLayout starNoteDiscoverContainer;

    @NonNull
    public final TintView startNoteDivider;

    @NonNull
    public final TintTextView startNoteTitle;

    @NonNull
    public final TintTextView tvDiscoverStartNote;

    @NonNull
    public final TintTextView tvInformationList;

    @NonNull
    public final TintTextView tvPrivacyAgreement;

    @NonNull
    public final TintTextView tvServiceContact;

    @NonNull
    public final TintTextView tvStarNoteBack;

    @NonNull
    public final TintTextView tvStarNoteCopyright;

    @NonNull
    public final TintTextView tvUserAgreement;

    @NonNull
    public final LongPressPalmCollectionTextView tvVersion;

    public LayoutStarNoteDiscoverBinding(@NonNull TintConstraintLayout tintConstraintLayout, @NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull IncludeIcpContainerBinding includeIcpContainerBinding, @NonNull TintConstraintLayout tintConstraintLayout2, @NonNull TintView tintView, @NonNull TintTextView tintTextView, @NonNull TintTextView tintTextView2, @NonNull TintTextView tintTextView3, @NonNull TintTextView tintTextView4, @NonNull TintTextView tintTextView5, @NonNull TintTextView tintTextView6, @NonNull TintTextView tintTextView7, @NonNull TintTextView tintTextView8, @NonNull LongPressPalmCollectionTextView longPressPalmCollectionTextView) {
        this.f57473e = tintConstraintLayout;
        this.bottomContainer = linearLayout;
        this.ivLogo = imageView;
        this.layoutIcpContainer = includeIcpContainerBinding;
        this.starNoteDiscoverContainer = tintConstraintLayout2;
        this.startNoteDivider = tintView;
        this.startNoteTitle = tintTextView;
        this.tvDiscoverStartNote = tintTextView2;
        this.tvInformationList = tintTextView3;
        this.tvPrivacyAgreement = tintTextView4;
        this.tvServiceContact = tintTextView5;
        this.tvStarNoteBack = tintTextView6;
        this.tvStarNoteCopyright = tintTextView7;
        this.tvUserAgreement = tintTextView8;
        this.tvVersion = longPressPalmCollectionTextView;
    }

    @NonNull
    public static LayoutStarNoteDiscoverBinding bind(@NonNull View view) {
        View findChildViewById;
        int i = C10651R.id.bottom_container;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
        if (linearLayout != null) {
            i = C10651R.id.iv_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = C10651R.id.layout_icp_container))) != null) {
                IncludeIcpContainerBinding bind = IncludeIcpContainerBinding.bind(findChildViewById);
                TintConstraintLayout tintConstraintLayout = (TintConstraintLayout) view;
                i = C10651R.id.start_note_divider;
                TintView tintView = (TintView) ViewBindings.findChildViewById(view, i);
                if (tintView != null) {
                    i = C10651R.id.start_note_title;
                    TintTextView tintTextView = (TintTextView) ViewBindings.findChildViewById(view, i);
                    if (tintTextView != null) {
                        i = C10651R.id.tv_discover_start_note;
                        TintTextView tintTextView2 = (TintTextView) ViewBindings.findChildViewById(view, i);
                        if (tintTextView2 != null) {
                            i = C10651R.id.tv_information_list;
                            TintTextView tintTextView3 = (TintTextView) ViewBindings.findChildViewById(view, i);
                            if (tintTextView3 != null) {
                                i = C10651R.id.tv_privacy_agreement;
                                TintTextView tintTextView4 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                if (tintTextView4 != null) {
                                    i = C10651R.id.tv_service_contact;
                                    TintTextView tintTextView5 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                    if (tintTextView5 != null) {
                                        i = C10651R.id.tv_star_note_back;
                                        TintTextView tintTextView6 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                        if (tintTextView6 != null) {
                                            i = C10651R.id.tv_star_note_copyright;
                                            TintTextView tintTextView7 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                            if (tintTextView7 != null) {
                                                i = C10651R.id.tv_user_agreement;
                                                TintTextView tintTextView8 = (TintTextView) ViewBindings.findChildViewById(view, i);
                                                if (tintTextView8 != null) {
                                                    i = C10651R.id.tv_version;
                                                    LongPressPalmCollectionTextView longPressPalmCollectionTextView = (LongPressPalmCollectionTextView) ViewBindings.findChildViewById(view, i);
                                                    if (longPressPalmCollectionTextView != null) {
                                                        return new LayoutStarNoteDiscoverBinding(tintConstraintLayout, linearLayout, imageView, bind, tintConstraintLayout, tintView, tintTextView, tintTextView2, tintTextView3, tintTextView4, tintTextView5, tintTextView6, tintTextView7, tintTextView8, longPressPalmCollectionTextView);
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
    public static LayoutStarNoteDiscoverBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public static LayoutStarNoteDiscoverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(C10651R.layout.layout_star_note_discover, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public TintConstraintLayout getRoot() {
        return this.f57473e;
    }
}
