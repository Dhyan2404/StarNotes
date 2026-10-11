package com.onyx.galaxy.note.settings.p047ui.fragment;

import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m61528d2 = {"com/onyx/galaxy/note/settings/ui/fragment/SettingsHelpAndFeedbackFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onDestroy", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsHelpAndFeedbackFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ SettingsHelpAndFeedbackFragment f61714e;

    public SettingsHelpAndFeedbackFragment$onCreate$1(SettingsHelpAndFeedbackFragment settingsHelpAndFeedbackFragment) {
        this.f61714e = settingsHelpAndFeedbackFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(owner, "owner");
        compositeDisposable = this.f61714e.compositeDisposable;
        compositeDisposable.clear();
    }
}
