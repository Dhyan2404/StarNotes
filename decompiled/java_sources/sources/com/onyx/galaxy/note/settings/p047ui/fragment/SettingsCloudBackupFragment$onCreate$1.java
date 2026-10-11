package com.onyx.galaxy.note.settings.p047ui.fragment;

import android.content.Context;
import android.content.IntentFilter;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.onyx.android.sdk.base.eventbus.EventBusHolderKt;
import com.onyx.android.sdk.base.extension.ContextKt;
import com.onyx.android.sdk.cloudstorage.CloudStorageManager;
import com.onyx.android.sdk.data.config.cloudnote.AccountIntentAction;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, m61528d2 = {"com/onyx/galaxy/note/settings/ui/fragment/SettingsCloudBackupFragment$onCreate$1", "Landroidx/lifecycle/DefaultLifecycleObserver;", "onCreate", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onDestroy", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class SettingsCloudBackupFragment$onCreate$1 implements DefaultLifecycleObserver {

    /* renamed from: e */
    public final /* synthetic */ SettingsCloudBackupFragment f61670e;

    public SettingsCloudBackupFragment$onCreate$1(SettingsCloudBackupFragment settingsCloudBackupFragment) {
        this.f61670e = settingsCloudBackupFragment;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(@NotNull LifecycleOwner owner) {
        SettingsCloudBackupFragment$refreshDriverReceiver$1 settingsCloudBackupFragment$refreshDriverReceiver$1;
        Intrinsics.checkNotNullParameter(owner, "owner");
        Context requireContext = this.f61670e.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
        settingsCloudBackupFragment$refreshDriverReceiver$1 = this.f61670e.refreshDriverReceiver;
        ContextKt.registerReceiverCompat(requireContext, settingsCloudBackupFragment$refreshDriverReceiver$1, new IntentFilter(AccountIntentAction.ACCOUNT_QUERY));
        EventBusHolderKt.ensureRegister(CloudStorageManager.INSTANCE.getOurInstance().getEventBus(), this.f61670e);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(@NotNull LifecycleOwner owner) {
        SettingsCloudBackupFragment$refreshDriverReceiver$1 settingsCloudBackupFragment$refreshDriverReceiver$1;
        CompositeDisposable compositeDisposable;
        Intrinsics.checkNotNullParameter(owner, "owner");
        Context requireContext = this.f61670e.requireContext();
        settingsCloudBackupFragment$refreshDriverReceiver$1 = this.f61670e.refreshDriverReceiver;
        requireContext.unregisterReceiver(settingsCloudBackupFragment$refreshDriverReceiver$1);
        EventBusHolderKt.ensureUnRegister(CloudStorageManager.INSTANCE.getOurInstance().getEventBus(), this.f61670e);
        compositeDisposable = this.f61670e.compositeDisposable;
        compositeDisposable.clear();
    }
}
