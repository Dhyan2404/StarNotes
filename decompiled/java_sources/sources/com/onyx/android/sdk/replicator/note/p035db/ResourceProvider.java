package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0012\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\tJ\u0018\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006J\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00020\t2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0016\u0010\u0013\u001a\u00020\u00042\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0011J\u0010\u0010\u0014\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u0006J\b\u0010\u0017\u001a\u00020\u0016H\u0002¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/ResourceProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;", "resourceModel", "", "saveResourceModel", "", CouchFieldKey.KEY_RESOURCE_ID, "loadResourceModel", "", "resourceIds", "loadResourceList", "documentId", CouchFieldKey.KEY_LOCAL_PATH, "loadFromPath", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "", "list", "saveResourceList", "removeResource", Constants.CLEAR_ATTRIBUTES, "Lcom/couchbase/lite/Collection;", "a", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nResourceProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResourceProvider.kt\ncom/onyx/android/sdk/replicator/note/db/ResourceProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,65:1\n48#2,5:66\n1549#3:71\n1620#3,3:72\n*S KotlinDebug\n*F\n+ 1 ResourceProvider.kt\ncom/onyx/android/sdk/replicator/note/db/ResourceProvider\n*L\n49#1:66,5\n62#1:71\n62#1:72,3\n*E\n"})
/* loaded from: classes8.dex */
public final class ResourceProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResourceProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final Collection m35183a() {
        return ensureCollection(SyncConstant.COLLECTION_RESOURCE_MODEL);
    }

    public final void clear(@NotNull String documentId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        List<ResourceModel> loadResourceList = loadResourceList(ResourceQueryArgsExtKt.loadDocResourceListQuery(documentId));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadResourceList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadResourceList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ResourceModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35183a(), arrayList);
    }

    @Nullable
    public final ResourceModel loadFromPath(@NotNull String documentId, @NotNull String localPath) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadResourceList(ResourceQueryArgsExtKt.loadResourceByLocalPath(documentId, localPath)));
        return (ResourceModel) firstOrNull;
    }

    @NotNull
    public final List<ResourceModel> loadResourceList(@NotNull List<String> resourceIds) {
        List<ResourceModel> emptyList;
        Intrinsics.checkNotNullParameter(resourceIds, "resourceIds");
        if (!resourceIds.isEmpty()) {
            return loadResourceList(ResourceQueryArgsExtKt.loadResourceByIds(resourceIds));
        }
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        return emptyList;
    }

    @Nullable
    public final ResourceModel loadResourceModel(@Nullable String resourceId) {
        List<String> listOf;
        Object firstOrNull;
        if (resourceId == null || resourceId.length() == 0) {
            return null;
        }
        listOf = CollectionsKt__CollectionsJVMKt.listOf(resourceId);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadResourceList(listOf));
        return (ResourceModel) firstOrNull;
    }

    public final void removeResource(@Nullable String resourceId) {
        List<String> listOf;
        if (resourceId == null) {
            return;
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35183a = m35183a();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(resourceId);
        couchCollections.deleteListByIds(m35183a, listOf);
    }

    public final void saveResourceList(@Nullable java.util.Collection<ResourceModel> list) {
        CouchCollections.INSTANCE.saveList(m35183a(), getDatabase(), list);
    }

    public final void saveResourceModel(@NotNull ResourceModel resourceModel) {
        Intrinsics.checkNotNullParameter(resourceModel, "resourceModel");
        resourceModel.beforeSave();
        CouchCollections.INSTANCE.saveDocument(m35183a(), (Collection) resourceModel);
    }

    @NotNull
    public final List<ResourceModel> loadResourceList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35183a = m35183a();
        if (m35183a == null || (str = m35183a.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35183a, queryArgs), ResourceModel.class, str);
    }
}
