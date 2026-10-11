package com.onyx.galaxy.note.category.action;

import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.p035db.SortProvider;
import com.onyx.android.sdk.replicator.note.p035db.model.SortModel;
import com.onyx.galaxy.note.common.action.BaseNoteManagementAction;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.android.schedulers.AndroidSchedulers;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0015\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\f\u0010\rJ\u000e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/SaveSortAction;", "Lcom/onyx/galaxy/note/common/action/BaseNoteManagementAction;", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/replicator/note/db/SortProvider;", CouchFieldKey.KEY_PROVIDER, "l", "", "Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;", C6998g.f39679a, "Ljava/util/List;", "sortModels", Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nSaveSortAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,29:1\n1855#2,2:30\n*S KotlinDebug\n*F\n+ 1 SaveSortAction.kt\ncom/onyx/galaxy/note/category/action/SaveSortAction\n*L\n24#1:30,2\n*E\n"})
/* loaded from: classes9.dex */
public final class SaveSortAction extends BaseNoteManagementAction<SaveSortAction> {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<SortModel> sortModels;

    /* renamed from: com.onyx.galaxy.note.category.action.SaveSortAction$a */
    /* loaded from: classes9.dex */
    public static final class C10966a<T, R> implements Function {
        public C10966a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final SaveSortAction apply(@NotNull SortProvider it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return SaveSortAction.this.m42507l(it2);
        }
    }

    public SaveSortAction(@NotNull List<SortModel> sortModels) {
        Intrinsics.checkNotNullParameter(sortModels, "sortModels");
        this.sortModels = sortModels;
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<SaveSortAction> create() {
        Observable<SaveSortAction> observeOn = createSortProviderObservable().map(new C10966a()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "observeOn(...)");
        return observeOn;
    }

    /* renamed from: l */
    public final SaveSortAction m42507l(SortProvider provider) {
        if (this.sortModels.isEmpty()) {
            return this;
        }
        Iterator<T> it2 = this.sortModels.iterator();
        while (it2.hasNext()) {
            ((SortModel) it2.next()).ensureUniqueIdExist();
        }
        provider.saveSortList(this.sortModels);
        return this;
    }
}
