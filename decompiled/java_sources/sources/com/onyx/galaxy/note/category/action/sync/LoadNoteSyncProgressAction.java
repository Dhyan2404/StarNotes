package com.onyx.galaxy.note.category.action.sync;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.android.sdk.replicator.note.action.BaseNoteSyncAction;
import com.onyx.android.sdk.replicator.progress.SyncProgressBundle;
import com.onyx.android.sdk.replicator.progress.p037db.SyncProgressProvider;
import com.onyx.android.sdk.replicator.progress.p037db.model.SyncProgressModel;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\b\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction;", "Lcom/onyx/android/sdk/replicator/note/action/BaseNoteSyncAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;", "l", "list", "m", "", C6997f.f39671c, "Ljava/util/List;", "docIdList", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadNoteSyncProgressAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadNoteSyncProgressAction.kt\ncom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,43:1\n1855#2,2:44\n*S KotlinDebug\n*F\n+ 1 LoadNoteSyncProgressAction.kt\ncom/onyx/galaxy/note/category/action/sync/LoadNoteSyncProgressAction\n*L\n38#1:44,2\n*E\n"})
/* loaded from: classes9.dex */
public final class LoadNoteSyncProgressAction extends BaseNoteSyncAction<LoadNoteSyncProgressAction> {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<String> docIdList;

    /* renamed from: com.onyx.galaxy.note.category.action.sync.LoadNoteSyncProgressAction$a */
    /* loaded from: classes9.dex */
    public static final class C11171a<T, R> implements Function {
        public C11171a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<SyncProgressModel> apply(@NotNull LoadNoteSyncProgressAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteSyncProgressAction.this.m42911l();
        }
    }

    /* renamed from: com.onyx.galaxy.note.category.action.sync.LoadNoteSyncProgressAction$b */
    /* loaded from: classes9.dex */
    public static final class C11172b<T, R> implements Function {
        public C11172b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final LoadNoteSyncProgressAction apply(@NotNull List<SyncProgressModel> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return LoadNoteSyncProgressAction.this.m42912m(it2);
        }
    }

    public LoadNoteSyncProgressAction(@NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.docIdList = docIdList;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<LoadNoteSyncProgressAction> create() {
        if (AccountDataBundle.INSTANCE.canSync()) {
            SyncProgressBundle syncProgressBundle = SyncProgressBundle.INSTANCE;
            if (!(!syncProgressBundle.getSyncProgressMap().isEmpty())) {
                Observable<LoadNoteSyncProgressAction> map = Observable.just(this).observeOn(syncProgressBundle.getObserveOn()).map(new C11171a()).observeOn(getMainUIScheduler()).map(new C11172b());
                Intrinsics.checkNotNullExpressionValue(map, "map(...)");
                return map;
            }
        }
        Observable<LoadNoteSyncProgressAction> just = Observable.just(this);
        Intrinsics.checkNotNullExpressionValue(just, "just(...)");
        return just;
    }

    /* renamed from: l */
    public final List<SyncProgressModel> m42911l() {
        SyncProgressProvider userSyncProgressProvider = KSyncBundle.INSTANCE.getUserSyncProgressProvider(AccountDataBundle.INSTANCE.getSyncUserId());
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.m72251setLimit(4000);
        return userSyncProgressProvider.loadProgressListInBatch(cBQueryArgs.andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_UNIQUE_ID, this.docIdList)));
    }

    /* renamed from: m */
    public final LoadNoteSyncProgressAction m42912m(List<SyncProgressModel> list) {
        for (SyncProgressModel syncProgressModel : list) {
            SyncProgressBundle.INSTANCE.getSyncProgressMap().put(syncProgressModel.getUniqueId(), syncProgressModel.getDocProgress());
        }
        return this;
    }
}
