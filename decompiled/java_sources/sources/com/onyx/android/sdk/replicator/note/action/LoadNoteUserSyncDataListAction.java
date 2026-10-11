package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.replicator.bean.SyncDataBean;
import com.onyx.android.sdk.replicator.replicator.DataReplicator;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0013J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00050\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/LoadNoteUserSyncDataListAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "getSyncDataBeans", "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteUserSyncFileAction;", "syncFileAction", "l", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", "", C6998g.f39679a, "Ljava/util/Collection;", "syncDataBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadNoteUserSyncDataListAction extends BaseNoteSyncAction<LoadNoteUserSyncDataListAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final DataReplicator dataReplicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<SyncDataBean> syncDataBeans;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.LoadNoteUserSyncDataListAction$a */
    /* loaded from: classes8.dex */
    public static final class C7697a<T, R> implements Function {
        public C7697a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CompareNoteUserSyncFileAction> apply(@NotNull LoadNoteUserSyncDataListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CompareNoteUserSyncFileAction(LoadNoteUserSyncDataListAction.this.dataReplicator).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.LoadNoteUserSyncDataListAction$b */
    /* loaded from: classes8.dex */
    public static final class C7698b<T, R> implements Function {
        public C7698b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadNoteUserSyncDataListAction apply(@NotNull CompareNoteUserSyncFileAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteUserSyncDataListAction.this.m35097l(it2);
        }
    }

    public LoadNoteUserSyncDataListAction(@NotNull DataReplicator dataReplicator) {
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        this.dataReplicator = dataReplicator;
        this.syncDataBeans = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadNoteUserSyncDataListAction> create() {
        Observable<LoadNoteUserSyncDataListAction> map = Observable.just(this).flatMap(new C7697a()).map(new C7698b());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<SyncDataBean> getSyncDataBeans() {
        List<SyncDataBean> list;
        list = CollectionsKt___CollectionsKt.toList(this.syncDataBeans);
        return list;
    }

    /* renamed from: l */
    public final LoadNoteUserSyncDataListAction m35097l(CompareNoteUserSyncFileAction syncFileAction) {
        CollectionKt.safeAddAll(this.syncDataBeans, syncFileAction.getSyncDataBeans());
        return this;
    }
}
