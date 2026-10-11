package com.onyx.android.sdk.replicator.note.action;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.utils.JSONUtils;
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
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001f\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\f¢\u0006\u0004\b\u0014\u0010\u0015J\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004J\u0006\u0010\b\u001a\u00020\u0007J\u0010\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tH\u0002R\u0014\u0010\u000f\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00050\u00108\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/bean/SyncDataBean;", "getSyncDataBeans", "", "printSyncDataBeans", "Lcom/onyx/android/sdk/replicator/note/action/CompareNoteDocSyncFileAction;", "syncFileAction", "l", "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", C6997f.f39671c, "Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;", "dataReplicator", "", C6998g.f39679a, "Ljava/util/Collection;", "syncDataBeans", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/replicator/DataReplicator;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteDocSyncDataListAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,42:1\n1855#2,2:43\n*S KotlinDebug\n*F\n+ 1 LoadNoteDocSyncDataListAction.kt\ncom/onyx/android/sdk/replicator/note/action/LoadNoteDocSyncDataListAction\n*L\n38#1:43,2\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadNoteDocSyncDataListAction extends BaseNoteSyncAction<LoadNoteDocSyncDataListAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final DataReplicator dataReplicator;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<SyncDataBean> syncDataBeans;

    /* renamed from: com.onyx.android.sdk.replicator.note.action.LoadNoteDocSyncDataListAction$a */
    /* loaded from: classes8.dex */
    public static final class C7695a<T, R> implements Function {
        public C7695a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends CompareNoteDocSyncFileAction> apply(@NotNull LoadNoteDocSyncDataListAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new CompareNoteDocSyncFileAction(LoadNoteDocSyncDataListAction.this.dataReplicator).build();
        }
    }

    /* renamed from: com.onyx.android.sdk.replicator.note.action.LoadNoteDocSyncDataListAction$b */
    /* loaded from: classes8.dex */
    public static final class C7696b<T, R> implements Function {
        public C7696b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadNoteDocSyncDataListAction apply(@NotNull CompareNoteDocSyncFileAction syncFileAction) {
            Intrinsics.checkNotNullParameter(syncFileAction, "syncFileAction");
            return LoadNoteDocSyncDataListAction.this.m35094l(syncFileAction);
        }
    }

    public LoadNoteDocSyncDataListAction(@NotNull DataReplicator dataReplicator) {
        Intrinsics.checkNotNullParameter(dataReplicator, "dataReplicator");
        this.dataReplicator = dataReplicator;
        this.syncDataBeans = new ArrayList();
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadNoteDocSyncDataListAction> create() {
        Observable<LoadNoteDocSyncDataListAction> map = Observable.just(this).flatMap(new C7695a()).map(new C7696b());
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
    public final LoadNoteDocSyncDataListAction m35094l(CompareNoteDocSyncFileAction syncFileAction) {
        CollectionKt.safeAddAll(this.syncDataBeans, syncFileAction.getSyncDataBeans());
        return this;
    }

    public final void printSyncDataBeans() {
        for (SyncDataBean syncDataBean : this.syncDataBeans) {
            Debug.INSTANCE.m32035d(LoadNoteDocSyncDataListAction.class, "need sync data:" + JSONUtils.INSTANCE.toJson(syncDataBean), new Object[0]);
        }
    }
}
