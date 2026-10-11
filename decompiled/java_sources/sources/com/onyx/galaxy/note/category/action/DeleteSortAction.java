package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.bean.SortData;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/DeleteSortAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", CouchFieldKey.KEY_PROVIDER, "l", "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", C6998g.f39679a, "Lcom/onyx/android/sdk/replicator/note/bean/SortData;", "sortData", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/bean/SortData;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteSortAction extends BaseNoteManagementAction<DeleteSortAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SortData sortData;

    /* renamed from: com.onyx.galaxy.note.category.action.DeleteSortAction$a */
    /* loaded from: classes9.dex */
    public static final class C10824a<T, R> implements Function {
        public C10824a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeleteSortAction apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return DeleteSortAction.this.m42240l(it2);
        }
    }

    public DeleteSortAction(@NotNull SortData sortData) {
        Intrinsics.checkNotNullParameter(sortData, "sortData");
        this.sortData = sortData;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteSortAction> create() {
        Observable<DeleteSortAction> observeOn = createSortProviderObservable().map(new C10824a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final DeleteSortAction m42240l(SortProvider provider) {
        if (this.sortData.isEmpty()) {
            return this;
        }
        provider.deleteSortList(this.sortData.toCBQueryArgsWithContentIds());
        return this;
    }
}
