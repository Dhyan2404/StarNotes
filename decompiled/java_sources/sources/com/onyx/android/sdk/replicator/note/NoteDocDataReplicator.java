package com.onyx.android.sdk.replicator.note;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.replicator.bean.DataReplicatorInfo;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.note.NoteDocDataReplicator;
import com.onyx.android.sdk.replicator.note.action.LoadNoteDocSyncDataListAction;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\f\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\r\u001a\u00020\u0000H\u0016¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/NoteDocDataReplicator;", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "eventBus", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;", "(Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;Lcom/onyx/android/sdk/replicator/bean/DataReplicatorInfo;)V", "addDataCommitPoint", "", "dataBean", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "onDataSyncSuccess", "onPullDataSaveSuccess", "syncActual", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDocDataReplicator extends DataReplicator {

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteDocDataReplicator$a */
    /* loaded from: classes8.dex */
    public static final class C7651a<T> implements Consumer {
        public C7651a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull LoadNoteDocSyncDataListAction action) {
            Intrinsics.checkNotNullParameter(action, "action");
            NoteDocDataReplicator.this.syncDataFile(action.getSyncDataBeans());
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.NoteDocDataReplicator$b */
    /* loaded from: classes8.dex */
    public static final class C7652b<T> implements Consumer {
        public C7652b() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull Throwable it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            NoteDocDataReplicator.this.postSyncProgressEvent();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoteDocDataReplicator(@NotNull EventBusHolder eventBus, @NotNull DataReplicatorInfo info) {
        super(eventBus, info);
        Intrinsics.checkNotNullParameter(eventBus, "eventBus");
        Intrinsics.checkNotNullParameter(info, "info");
    }

    /* renamed from: B */
    public static final void m34993B(NoteDocDataReplicator this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.postSyncProgressEvent();
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DataReplicator
    public void addDataCommitPoint(@Nullable SyncDataBean dataBean) {
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DataReplicator
    public void onDataSyncSuccess(@Nullable SyncDataBean dataBean) {
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DataReplicator
    public void onPullDataSaveSuccess(@Nullable SyncDataBean dataBean) {
    }

    @Override // com.onyx.android.sdk.replicator.replicator.DataReplicator
    @NotNull
    public NoteDocDataReplicator syncActual() {
        new LoadNoteDocSyncDataListAction(this).build().doOnNext(new C7651a()).doOnError(new C7652b()).doOnComplete(new Action() { // from class: com.sunia.HTREnginev2.dvj
            @Override // io.reactivex.rxjava3.functions.Action
            public final void run() {
                NoteDocDataReplicator.m34993B(NoteDocDataReplicator.this);
            }
        }).subscribe();
        return this;
    }
}
