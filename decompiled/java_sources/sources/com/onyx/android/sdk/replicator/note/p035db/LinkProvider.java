package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u0012\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\nJ\u0016\u0010\u000f\u001a\u00020\u00042\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\rJ\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\nJ\b\u0010\u0013\u001a\u00020\u0012H\u0002¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/LinkProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "linkModel", "", "saveLinkModel", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "loadLinkList", "", "linkId", "loadLinkModel", "", "list", "saveLinkList", "documentId", Constants.CLEAR_ATTRIBUTES, "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLinkProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n48#2,5:49\n1549#3:54\n1620#3,3:55\n*S KotlinDebug\n*F\n+ 1 LinkProvider.kt\ncom/onyx/android/sdk/replicator/note/db/LinkProvider\n*L\n31#1:49,5\n45#1:54\n45#1:55,3\n*E\n"})
/* loaded from: classes8.dex */
public final class LinkProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinkProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35173a() {
        return ensureCollection(SyncConstant.COLLECTION_LINK_MODEL);
    }

    public final void clear(@NotNull String documentId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<LinkModel> loadLinkList = loadLinkList(LinkQueryArgsExtKt.loadDocLinkListQuery(documentId));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadLinkList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadLinkList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((LinkModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35173a(), arrayList);
    }

    @NotNull
    public final List<LinkModel> loadLinkList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35173a = m35173a();
        if (m35173a == null || (str = m35173a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35173a, queryArgs), LinkModel.class, str);
    }

    @Nullable
    public final LinkModel loadLinkModel(@Nullable String linkId) {
        Object firstOrNull;
        if (linkId == null) {
            return null;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadLinkList(LinkQueryArgsExtKt.loadLinkById(linkId)));
        return (LinkModel) firstOrNull;
    }

    public final void saveLinkList(@Nullable java.util.Collection<LinkModel> list) {
        CouchCollections.INSTANCE.saveList(m35173a(), getDatabase(), list);
    }

    public final void saveLinkModel(@NotNull LinkModel linkModel) {
        Intrinsics.checkNotNullParameter(linkModel, "linkModel");
        CouchCollections.INSTANCE.saveDocument(m35173a(), (Collection) linkModel);
    }
}
