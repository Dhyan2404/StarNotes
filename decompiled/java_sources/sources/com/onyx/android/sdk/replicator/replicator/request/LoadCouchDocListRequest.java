package com.onyx.android.sdk.replicator.replicator.request;

import com.couchbase.lite.CouchbaseLiteException;
import com.couchbase.lite.DataSource;
import com.couchbase.lite.Expression;
import com.couchbase.lite.MutableDocument;
import com.couchbase.lite.QueryBuilder;
import com.couchbase.lite.Result;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.Where;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0002\u001a\u00020\u0000H\u0016J\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003J \u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003H\u0002R\u0016\u0010\u000b\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\nR\u001c\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u001e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/replicator/request/LoadCouchDocListRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "execute", "", "Lcom/couchbase/lite/MutableDocument;", "getDocumentList", "", "docIdList", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", "b", "Ljava/util/List;", "c", "documentList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;Ljava/util/List;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadCouchDocListRequest extends RxBaseRequest<LoadCouchDocListRequest> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public CouchHolder couchHolder;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public List<String> docIdList;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public List<MutableDocument> documentList;

    public LoadCouchDocListRequest(@NotNull CouchHolder couchHolder, @NotNull List<String> docIdList) {
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        Intrinsics.checkNotNullParameter(docIdList, "docIdList");
        this.couchHolder = couchHolder;
        this.docIdList = docIdList;
    }

    /* renamed from: a */
    public final List<MutableDocument> m35780a(List<String> docIdList) {
        List<MutableDocument> list;
        List<String> list2 = docIdList;
        List<Result> list3 = null;
        if (list2 == null || list2.isEmpty()) {
            return null;
        }
        int size = CollectionKt.getSize(list2);
        Expression[] expressionArr = new Expression[size];
        for (int i = 0; i < size; i++) {
            expressionArr[i] = Expression.string(docIdList.get(i));
        }
        SelectResult[] allResults = CouchUtils.INSTANCE.getAllResults();
        Where where = QueryBuilder.select((SelectResult[]) Arrays.copyOf(allResults, allResults.length)).from(DataSource.collection(this.couchHolder.ensureCollectionRequireNonNull())).where(Expression.property(CouchFieldKey.KEY_UNIQUE_ID).m9759in((Expression[]) Arrays.copyOf(expressionArr, size)));
        Intrinsics.checkNotNullExpressionValue(where, "where(...)");
        try {
            list3 = where.execute().allResults();
        } catch (CouchbaseLiteException e) {
            e.printStackTrace();
        }
        list = CollectionsKt___CollectionsKt.toList(CouchUtils.INSTANCE.fromQueryResultList(list3));
        return list;
    }

    @Nullable
    public final List<MutableDocument> getDocumentList() {
        return this.documentList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public LoadCouchDocListRequest execute() throws Exception {
        this.documentList = m35780a(this.docIdList);
        return this;
    }
}
