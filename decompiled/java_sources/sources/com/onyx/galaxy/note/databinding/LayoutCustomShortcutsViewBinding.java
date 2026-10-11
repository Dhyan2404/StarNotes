package com.onyx.galaxy.note.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.onyx.android.sdk.theme.widgets.TintFrameLayout;
import com.onyx.android.sdk.theme.widgets.TintImageView;
import com.onyx.android.sdk.theme.widgets.TintTextView;
import com.onyx.android.sdk.theme.widgets.TintView;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.editor.view.PalmCollectionFrameLayout;
import com.onyx.galaxy.note.editor.view.PalmCollectionImageView;
import com.onyx.galaxy.note.editor.viewmodel.AudioViewModel;

/* loaded from: classes9.dex */
public abstract class LayoutCustomShortcutsViewBinding extends ViewDataBinding {

    @NonNull
    public final TintTextView btnRecord;

    @NonNull
    public final PalmCollectionImageView ivAddPage;

    @NonNull
    public final PalmCollectionImageView ivAdjustPageWhitespace;

    @NonNull
    public final TintFrameLayout ivAudioSet;

    @NonNull
    public final PalmCollectionImageView ivAudioSetNewRecord;

    @NonNull
    public final PalmCollectionImageView ivAudioSetNormal;

    @NonNull
    public final PalmCollectionImageView ivAudioSetPreview;

    @NonNull
    public final PalmCollectionImageView ivCamera;

    @NonNull
    public final PalmCollectionImageView ivCounter;

    @NonNull
    public final PalmCollectionImageView ivDocOverviewFull;

    @NonNull
    public final PalmCollectionFrameLayout ivEncryption;

    @NonNull
    public final TintImageView ivEncryptionLock;

    @NonNull
    public final TintImageView ivEncryptionUnlock;

    @NonNull
    public final PalmCollectionImageView ivExportDoc;

    @NonNull
    public final PalmCollectionImageView ivFullScreen;

    @NonNull
    public final TintImageView ivNonRealtimeMode;

    @NonNull
    public final PalmCollectionImageView ivNoteMode;

    @NonNull
    public final PalmCollectionImageView ivNoteOverview;

    @NonNull
    public final PalmCollectionFrameLayout ivReadingMode;

    @NonNull
    public final TintImageView ivReadingModeNote;

    @NonNull
    public final TintImageView ivReadingModeReading;

    @NonNull
    public final PalmCollectionFrameLayout ivRealtimeBeautify;

    @NonNull
    public final TintFrameLayout ivRealtimeMode;

    @NonNull
    public final TintImageView ivRealtimeModeInner;

    @NonNull
    public final TintImageView ivRealtimeSettings;

    @NonNull
    public final TintImageView ivRecord;

    @NonNull
    public final PalmCollectionImageView ivScreenShot;

    @NonNull
    public final PalmCollectionImageView ivSlide;

    @NonNull
    public final PalmCollectionImageView ivTitleLayer;

    @NonNull
    public final PalmCollectionImageView ivTitleMore;

    @NonNull
    public final PalmCollectionFrameLayout ivTouchMode;

    @NonNull
    public final TintImageView ivTouchModeFinger;

    @NonNull
    public final TintImageView ivTouchModeStylus;

    @NonNull
    public final HorizontalScrollView leftScrollView;

    @NonNull
    public final LinearLayout leftShortcutContainer;

    @NonNull
    public final TintView leftSideDivider;

    @Bindable
    protected AudioViewModel mAudioViewModel;

    @NonNull
    public final PalmCollectionFrameLayout recordLayout;

    @NonNull
    public final HorizontalScrollView rightScrollView;

    @NonNull
    public final LinearLayout rightShortcutContainer;

    @NonNull
    public final TintView rightSideDivider;

    public LayoutCustomShortcutsViewBinding(Object obj, View view, int i, TintTextView tintTextView, PalmCollectionImageView palmCollectionImageView, PalmCollectionImageView palmCollectionImageView2, TintFrameLayout tintFrameLayout, PalmCollectionImageView palmCollectionImageView3, PalmCollectionImageView palmCollectionImageView4, PalmCollectionImageView palmCollectionImageView5, PalmCollectionImageView palmCollectionImageView6, PalmCollectionImageView palmCollectionImageView7, PalmCollectionImageView palmCollectionImageView8, PalmCollectionFrameLayout palmCollectionFrameLayout, TintImageView tintImageView, TintImageView tintImageView2, PalmCollectionImageView palmCollectionImageView9, PalmCollectionImageView palmCollectionImageView10, TintImageView tintImageView3, PalmCollectionImageView palmCollectionImageView11, PalmCollectionImageView palmCollectionImageView12, PalmCollectionFrameLayout palmCollectionFrameLayout2, TintImageView tintImageView4, TintImageView tintImageView5, PalmCollectionFrameLayout palmCollectionFrameLayout3, TintFrameLayout tintFrameLayout2, TintImageView tintImageView6, TintImageView tintImageView7, TintImageView tintImageView8, PalmCollectionImageView palmCollectionImageView13, PalmCollectionImageView palmCollectionImageView14, PalmCollectionImageView palmCollectionImageView15, PalmCollectionImageView palmCollectionImageView16, PalmCollectionFrameLayout palmCollectionFrameLayout4, TintImageView tintImageView9, TintImageView tintImageView10, HorizontalScrollView horizontalScrollView, LinearLayout linearLayout, TintView tintView, PalmCollectionFrameLayout palmCollectionFrameLayout5, HorizontalScrollView horizontalScrollView2, LinearLayout linearLayout2, TintView tintView2) {
        super(obj, view, i);
        this.btnRecord = tintTextView;
        this.ivAddPage = palmCollectionImageView;
        this.ivAdjustPageWhitespace = palmCollectionImageView2;
        this.ivAudioSet = tintFrameLayout;
        this.ivAudioSetNewRecord = palmCollectionImageView3;
        this.ivAudioSetNormal = palmCollectionImageView4;
        this.ivAudioSetPreview = palmCollectionImageView5;
        this.ivCamera = palmCollectionImageView6;
        this.ivCounter = palmCollectionImageView7;
        this.ivDocOverviewFull = palmCollectionImageView8;
        this.ivEncryption = palmCollectionFrameLayout;
        this.ivEncryptionLock = tintImageView;
        this.ivEncryptionUnlock = tintImageView2;
        this.ivExportDoc = palmCollectionImageView9;
        this.ivFullScreen = palmCollectionImageView10;
        this.ivNonRealtimeMode = tintImageView3;
        this.ivNoteMode = palmCollectionImageView11;
        this.ivNoteOverview = palmCollectionImageView12;
        this.ivReadingMode = palmCollectionFrameLayout2;
        this.ivReadingModeNote = tintImageView4;
        this.ivReadingModeReading = tintImageView5;
        this.ivRealtimeBeautify = palmCollectionFrameLayout3;
        this.ivRealtimeMode = tintFrameLayout2;
        this.ivRealtimeModeInner = tintImageView6;
        this.ivRealtimeSettings = tintImageView7;
        this.ivRecord = tintImageView8;
        this.ivScreenShot = palmCollectionImageView13;
        this.ivSlide = palmCollectionImageView14;
        this.ivTitleLayer = palmCollectionImageView15;
        this.ivTitleMore = palmCollectionImageView16;
        this.ivTouchMode = palmCollectionFrameLayout4;
        this.ivTouchModeFinger = tintImageView9;
        this.ivTouchModeStylus = tintImageView10;
        this.leftScrollView = horizontalScrollView;
        this.leftShortcutContainer = linearLayout;
        this.leftSideDivider = tintView;
        this.recordLayout = palmCollectionFrameLayout5;
        this.rightScrollView = horizontalScrollView2;
        this.rightShortcutContainer = linearLayout2;
        this.rightSideDivider = tintView2;
    }

    public static LayoutCustomShortcutsViewBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCustomShortcutsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @Nullable
    public AudioViewModel getAudioViewModel() {
        return this.mAudioViewModel;
    }

    public abstract void setAudioViewModel(@Nullable AudioViewModel audioViewModel);

    @Deprecated
    public static LayoutCustomShortcutsViewBinding bind(@NonNull View view, @Nullable Object obj) {
        return (LayoutCustomShortcutsViewBinding) ViewDataBinding.bind(obj, view, C10651R.layout.layout_custom_shortcuts_view);
    }

    @NonNull
    @Deprecated
    public static LayoutCustomShortcutsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable Object obj) {
        return (LayoutCustomShortcutsViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_custom_shortcuts_view, viewGroup, z, obj);
    }

    @NonNull
    public static LayoutCustomShortcutsViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    @Deprecated
    public static LayoutCustomShortcutsViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable Object obj) {
        return (LayoutCustomShortcutsViewBinding) ViewDataBinding.inflateInternal(layoutInflater, C10651R.layout.layout_custom_shortcuts_view, null, false, obj);
    }
}
