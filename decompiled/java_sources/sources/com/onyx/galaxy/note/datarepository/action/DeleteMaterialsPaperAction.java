package com.onyx.galaxy.note.datarepository.action;

import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.KSyncBundle;
import com.onyx.galaxy.note.datarepository.download.DataRepositoryManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.schedulers.Schedulers;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\b\u0010\u0005\u001a\u00020\u0004H\u0002R\u0017\u0010\u000b\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/datarepository/action/DeleteMaterialsPaperAction;", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", "l", "", "e", Constants.STRING_SIG, "getResourceId", "()Ljava/lang/String;", CouchFieldKey.KEY_RESOURCE_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class DeleteMaterialsPaperAction extends RxBaseAction<DeleteMaterialsPaperAction> {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String resourceId;

    /* renamed from: com.onyx.galaxy.note.datarepository.action.DeleteMaterialsPaperAction$a */
    /* loaded from: classes9.dex */
    public static final class C11728a<T> implements Consumer {
        public C11728a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull DeleteMaterialsPaperAction it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            DeleteMaterialsPaperAction.this.m45418l();
        }
    }

    public DeleteMaterialsPaperAction(@NotNull String resourceId) {
        Intrinsics.checkNotNullParameter(resourceId, "resourceId");
        this.resourceId = resourceId;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<DeleteMaterialsPaperAction> create() {
        Observable<DeleteMaterialsPaperAction> doOnNext = Observable.just(this).observeOn(Schedulers.m61350io()).doOnNext(new C11728a());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    @NotNull
    public final String getResourceId() {
        return this.resourceId;
    }

    /* renamed from: l */
    public final void m45418l() {
        KSyncBundle kSyncBundle = KSyncBundle.INSTANCE;
        kSyncBundle.getUserTemplateProvider().removeTemplateCategoryAndTemplate(this.resourceId);
        kSyncBundle.getUserDataRepositoryProvider().deleteMaterialAddRecord(this.resourceId);
        DataRepositoryManager.INSTANCE.deleteLibrary(this.resourceId);
    }
}
