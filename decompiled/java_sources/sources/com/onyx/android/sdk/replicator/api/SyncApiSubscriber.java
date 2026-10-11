package com.onyx.android.sdk.replicator.api;

import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.common.sync.MMKVBackup;
import com.onyx.android.sdk.data.couchbase.bean.StartReplicatorBean;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.event.SaveNoteTreeEvent;
import com.onyx.android.sdk.replicator.event.SyncChangedNoteTreeEvent;
import com.onyx.android.sdk.replicator.event.SyncForceDeletedNoteTreeEvent;
import com.onyx.android.sdk.replicator.event.SyncNoteTreeEvent;
import com.onyx.android.sdk.replicator.note.action.SaveNoteTreeAction;
import com.onyx.android.sdk.replicator.note.action.StartNoteTreeReplicatorAction;
import com.onyx.android.sdk.replicator.note.action.SyncNoteTreeAction;
import com.onyx.android.sdk.replicator.replicator.action.PurgeForceRemoveNoteDataAction;
import com.onyx.android.sdk.replicator.utils.KSyncLogUtils;
import com.sunia.HTREnginev2.gon;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\bH\u0007J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\nH\u0007J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\fH\u0007J\u0006\u0010\r\u001a\u00020\u0004¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/api/SyncApiSubscriber;", "", "()V", "onSaveNoteTreeEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/onyx/android/sdk/replicator/event/SaveNoteTreeEvent;", "onSyncChangedNoteTreeEvent", "Lcom/onyx/android/sdk/replicator/event/SyncChangedNoteTreeEvent;", "onSyncForceDeletedNoteTreeEvent", "Lcom/onyx/android/sdk/replicator/event/SyncForceDeletedNoteTreeEvent;", "onSyncNoteTreeEvent", "Lcom/onyx/android/sdk/replicator/event/SyncNoteTreeEvent;", gon.f71290o0, "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class SyncApiSubscriber {
    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSaveNoteTreeEvent(@NotNull SaveNoteTreeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        KSyncLogUtils.INSTANCE.m35864d(SyncApiSubscriber.class, "save note tree size:" + CollectionKt.getSize(event.getSyncNoteTreeBean().getNoteModels()));
        RxBaseAction.execute$default(new SaveNoteTreeAction(event.getSyncNoteTreeBean()), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncChangedNoteTreeEvent(@NotNull SyncChangedNoteTreeEvent event) {
        List<String> mutableList;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!event.getDocIdList().isEmpty() && AccountDataBundle.INSTANCE.isAlreadyLogin() && MMKVBackup.INSTANCE.getCloudAutoSyncOption().get()) {
            KSyncLogUtils.INSTANCE.m35864d(SyncApiSubscriber.class, "prepare sync doc size: " + event.getDocIdList().size());
            StartReplicatorBean startReplicatorBean = new StartReplicatorBean(0, false, false, false, null, null, false, 127, null);
            startReplicatorBean.setSyncAll(false);
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) event.getDocIdList());
            startReplicatorBean.setSyncDocIdList(mutableList);
            RxBaseAction.execute$default(new StartNoteTreeReplicatorAction(startReplicatorBean), null, null, null, 7, null);
        }
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncForceDeletedNoteTreeEvent(@NotNull SyncForceDeletedNoteTreeEvent event) {
        List mutableList;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getDocIdList().isEmpty()) {
            return;
        }
        KSyncLogUtils.INSTANCE.m35864d(SyncApiSubscriber.class, "prepare sync force deleted doc size: " + event.getDocIdList().size());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) event.getDocIdList());
        RxBaseAction.execute$default(new PurgeForceRemoveNoteDataAction(mutableList, true), null, null, null, 7, null);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public final void onSyncNoteTreeEvent(@NotNull SyncNoteTreeEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        KSyncLogUtils.INSTANCE.m35864d(SyncApiSubscriber.class, "sync note tree size:" + CollectionKt.getSize(event.getSyncNoteTreeBean().getNoteModels()));
        RxBaseAction.execute$default(new SyncNoteTreeAction(event.getSyncNoteTreeBean()), null, null, null, 7, null);
    }

    public final void start() {
        KSyncBundle.INSTANCE.getEventBusHolder().register(this);
    }
}
