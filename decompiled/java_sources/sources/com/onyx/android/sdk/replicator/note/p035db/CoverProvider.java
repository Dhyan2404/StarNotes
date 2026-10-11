package com.onyx.android.sdk.replicator.note.p035db;

import android.util.Log;
import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.account.AccountDataBundle;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.note.bean.TemplateQueryBean;
import com.onyx.android.sdk.replicator.note.bean.TemplateResourceWrapper;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.CoverModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateCategoryModel;
import com.onyx.android.sdk.replicator.note.p035db.model.TemplateResourceModel;
import com.onyx.android.sdk.replicator.note.utils.TemplateResourcesKt;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00109\u001a\u000208¢\u0006\u0004\b:\u0010;J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0007\u001a\u00020\u0006J\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000bJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u000eJ\u0010\u0010\u0015\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u000eJ\u0010\u0010\u0016\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0017\u001a\u00020\tJ\u0014\u0010\u001b\u001a\u00020\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u001e\u0010 \u001a\u00020\u001f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\b2\b\b\u0002\u0010\u001e\u001a\u00020\u0012J\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\t0\b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u0012\u0010\"\u001a\u0004\u0018\u00010\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\tJ\u001e\u0010$\u001a\u00020\u001f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020#0\b2\b\b\u0002\u0010\u001e\u001a\u00020\u0012J\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020#0\b2\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000e0\bJ\u0006\u0010'\u001a\u00020\u001aJ\u0006\u0010(\u001a\u00020\u001aJ\u0006\u0010)\u001a\u00020\u001aJ\u001e\u0010*\u001a\u00020\u001f2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\b2\b\b\u0002\u0010\u001e\u001a\u00020\u0012J\u001a\u0010-\u001a\b\u0012\u0004\u0012\u00020\u001c0\b2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0\bJ\u0014\u0010/\u001a\u00020\u00122\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\t0\bJ\u000e\u00101\u001a\u00020\u00122\u0006\u00100\u001a\u00020\u000eJ\u0006\u00102\u001a\u00020\u001aJ\u0010\u00104\u001a\u00020\u001a2\b\b\u0002\u00103\u001a\u00020\u000eJ\u000e\u00106\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000eJ\u000e\u00107\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u000e¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/CoverProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/couchbase/lite/Collection;", "b", "a", "c", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "cbQueryArgs", "", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;", "loadCoverList", "Lcom/onyx/android/sdk/replicator/note/bean/TemplateQueryBean;", "templateQueryBean", "loadListByCategory", "", "category", "loadCustomListByCategory", "coverId", "", "checkCoverModelEnable", "checkCoverModelExist", "loadCoverById", "loadCoverEnableById", "coverModel", "save", "coverList", "", "saveList", "Lcom/onyx/android/sdk/replicator/note/db/model/CoverCategoryModel;", "list", "isUpgrade", "", "saveCoverCategoryList", "loadCoversResource", "loadCoverResource", "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;", "saveTemplateResourceList", "uniqueIdList", "loadCoverResources", "removeOfficialCoverModel", "removeOfficialCoverCategory", "removeOfficialCoverResource", "saveCoverList", "", "types", "loadCoverCategoryList", "coverModelList", SyncConstant.SYNC_ACTION_REMOVE, "title", "checkTemplateNameRepeat", "purgeCustomCoverModel", CouchFieldKey.KEY_UID, "purgeCustomCoverResource", CouchFieldKey.KEY_CATEGORY_ID, "removeCoverCategory", "removeCoverByCategory", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCoverProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoverProvider.kt\ncom/onyx/android/sdk/replicator/note/db/CoverProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,227:1\n48#2,5:228\n137#2,3:237\n48#2,5:240\n128#2:245\n129#2,3:251\n137#2,3:262\n48#2,5:265\n128#2:270\n129#2,3:276\n48#2,5:279\n48#2,5:288\n48#2,5:297\n137#2,3:310\n48#2,5:313\n128#2:318\n129#2,3:324\n48#2,5:327\n48#2,5:332\n1549#3:233\n1620#3,3:234\n766#3:246\n857#3:247\n288#3,2:248\n858#3:250\n1855#3,2:254\n1855#3,2:256\n1549#3:258\n1620#3,3:259\n766#3:271\n857#3:272\n288#3,2:273\n858#3:275\n1549#3:284\n1620#3,3:285\n1549#3:293\n1620#3,3:294\n1549#3:302\n1620#3,3:303\n1549#3:306\n1620#3,3:307\n766#3:319\n857#3:320\n288#3,2:321\n858#3:323\n1855#3,2:337\n1549#3:339\n1620#3,3:340\n*S KotlinDebug\n*F\n+ 1 CoverProvider.kt\ncom/onyx/android/sdk/replicator/note/db/CoverProvider\n*L\n49#1:228,5\n94#1:237,3\n94#1:240,5\n95#1:245\n95#1:251,3\n128#1:262,3\n128#1:265,5\n129#1:270\n129#1:276,3\n137#1:279,5\n148#1:288,5\n158#1:297,5\n169#1:310,3\n169#1:313,5\n170#1:318\n170#1:324,3\n180#1:327,5\n210#1:332,5\n93#1:233\n93#1:234,3\n95#1:246\n95#1:247\n96#1:248,2\n95#1:250\n102#1:254,2\n111#1:256,2\n127#1:258\n127#1:259,3\n129#1:271\n129#1:272\n130#1:273,2\n129#1:275\n142#1:284\n142#1:285,3\n151#1:293\n151#1:294,3\n159#1:302\n159#1:303,3\n168#1:306\n168#1:307,3\n170#1:319\n170#1:320\n171#1:321,2\n170#1:323\n211#1:337,2\n212#1:339\n212#1:340,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CoverProvider extends BaseCouchProvider {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoverProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    public static /* synthetic */ void purgeCustomCoverResource$default(CoverProvider coverProvider, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = AccountDataBundle.INSTANCE.getSyncUserId();
        }
        coverProvider.purgeCustomCoverResource(str);
    }

    public static /* synthetic */ long saveCoverCategoryList$default(CoverProvider coverProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return coverProvider.saveCoverCategoryList(list, z);
    }

    public static /* synthetic */ long saveCoverList$default(CoverProvider coverProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return coverProvider.saveCoverList(list, z);
    }

    public static /* synthetic */ long saveTemplateResourceList$default(CoverProvider coverProvider, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return coverProvider.saveTemplateResourceList(list, z);
    }

    /* renamed from: a */
    public final Collection m35162a() {
        return ensureCollection(SyncConstant.COLLECTION_COVER_CATEGORY_MODEL);
    }

    /* renamed from: b */
    public final Collection m35163b() {
        return ensureCollection(SyncConstant.COLLECTION_COVER_MODEL);
    }

    /* renamed from: c */
    public final Collection m35164c() {
        return ensureCollection(SyncConstant.COLLECTION_COVER_RESOURCE_MODEL);
    }

    public final boolean checkCoverModelEnable(@NotNull String coverId) {
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        return loadCoverEnableById(coverId) != null;
    }

    public final boolean checkCoverModelExist(@NotNull String coverId) {
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        return loadCoverById(coverId) != null;
    }

    public final boolean checkTemplateNameRepeat(@NotNull String title) {
        Intrinsics.checkNotNullParameter(title, "title");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return !loadCoverList(cBQueryArgs.andWith(couchUtils.equalExpression("title", title)).andWith(couchUtils.equalExpression("status", 0))).isEmpty();
    }

    @Nullable
    public final CoverModel loadCoverById(@NotNull String coverId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadCoverList(CoverQueryArgsExtKt.loadCoverByIdQuery(coverId)));
        return (CoverModel) firstOrNull;
    }

    @NotNull
    public final List<CoverCategoryModel> loadCoverCategoryList(@NotNull List<Integer> types) {
        String str;
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.inExpression("source", types));
        cBQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35162a = m35162a();
        if (m35162a == null || (str = m35162a.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35162a, cBQueryArgs), CoverCategoryModel.class, str);
    }

    @Nullable
    public final CoverModel loadCoverEnableById(@NotNull String coverId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(coverId, "coverId");
        CBQueryArgs loadCoverByIdQuery = CoverQueryArgsExtKt.loadCoverByIdQuery(coverId);
        loadCoverByIdQuery.andWith(CouchUtils.INSTANCE.equalExpression("status", 0));
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadCoverList(loadCoverByIdQuery));
        return (CoverModel) firstOrNull;
    }

    @NotNull
    public final List<CoverModel> loadCoverList(@NotNull CBQueryArgs cbQueryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(cbQueryArgs, "cbQueryArgs");
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cbQueryArgs.setVarargOrdering(couchUtils.getOrdering(CouchFieldKey.KEY_ORDER_INDEX, true));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35163b = m35163b();
        if (m35163b == null || (str = m35163b.getName()) == null) {
            str = "_default";
        }
        return loadCoversResource(couchUtils.fromResultList(couchCollections.queryResultList(m35163b, cbQueryArgs), CoverModel.class, str));
    }

    @Nullable
    public final CoverModel loadCoverResource(@Nullable CoverModel coverModel) {
        if (coverModel == null) {
            return null;
        }
        Map map = CollectionKt.toMap(loadCoverResources(coverModel.getResourceIdList()), new Function1<TemplateResourceModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.CoverProvider$loadCoverResource$templateResourceMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull TemplateResourceModel it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getUniqueId();
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = coverModel.getResourceIdList().iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, map.get((String) it2.next()));
        }
        TemplateResourceWrapper templateResourceWrapper = new TemplateResourceWrapper();
        templateResourceWrapper.setResourceList(arrayList);
        templateResourceWrapper.setTemplateUniqueId(TemplateResourceWrapper.INSTANCE.generateResourceId(coverModel.getCategoryId(), coverModel.getUniqueId()));
        coverModel.setTemplateResourceWrapper(templateResourceWrapper);
        return coverModel;
    }

    @NotNull
    public final List<TemplateResourceModel> loadCoverResources(@NotNull List<String> uniqueIdList) {
        String str;
        Intrinsics.checkNotNullParameter(uniqueIdList, "uniqueIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, uniqueIdList));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35164c = m35164c();
        if (m35164c == null || (str = m35164c.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(m35164c, andWith), TemplateResourceModel.class, str);
    }

    @NotNull
    public final List<CoverModel> loadCoversResource(@NotNull List<CoverModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            loadCoverResource((CoverModel) it2.next());
        }
        return list;
    }

    @NotNull
    public final List<CoverModel> loadCustomListByCategory(@NotNull String category) {
        Intrinsics.checkNotNullParameter(category, "category");
        return loadCoverList(CoverQueryArgsExtKt.loadCustomListByCategoryQuery(category));
    }

    @NotNull
    public final List<CoverModel> loadListByCategory(@NotNull TemplateQueryBean templateQueryBean) {
        Intrinsics.checkNotNullParameter(templateQueryBean, "templateQueryBean");
        return loadCoverList(CoverQueryArgsExtKt.loadListByCategoryQuery(templateQueryBean));
    }

    public final void purgeCustomCoverModel() {
        CouchCollections.INSTANCE.deleteByExpression(m35163b(), getDatabase(), new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("source", 1)));
    }

    public final void purgeCustomCoverResource(@NotNull String uid) {
        String str;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(uid, "uid");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 1)).andWith(couchUtils.equalExpression("type", 1));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35164c = m35164c();
        if (m35164c == null || (str = m35164c.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35164c, andWith), TemplateResourceModel.class, str);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            TemplateResourcesKt.deleteRelatedFile((TemplateResourceModel) it2.next(), uid);
        }
        CouchCollections couchCollections2 = CouchCollections.INSTANCE;
        Collection m35164c2 = m35164c();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it3 = fromResultList.iterator();
        while (it3.hasNext()) {
            arrayList.add(((TemplateResourceModel) it3.next()).getUniqueId());
        }
        couchCollections2.deleteListByIds(m35164c2, arrayList);
    }

    public final boolean remove(@NotNull List<CoverModel> coverModelList) {
        Intrinsics.checkNotNullParameter(coverModelList, "coverModelList");
        for (CoverModel coverModel : coverModelList) {
            coverModel.setStatus(1);
            coverModel.resetRevisionId();
        }
        saveCoverList$default(this, coverModelList, false, 2, null);
        return true;
    }

    public final void removeCoverByCategory(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        List<CoverModel> loadListByCategory = loadListByCategory(new TemplateQueryBean(categoryId, null, null, null, 14, null));
        if (!loadListByCategory.isEmpty()) {
            remove(loadListByCategory);
        }
    }

    public final void removeCoverCategory(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        removeCoverByCategory(categoryId);
        CouchCollections.INSTANCE.deleteById(m35162a(), categoryId);
    }

    public final void removeOfficialCoverCategory() {
        String str;
        int collectionSizeOrDefault;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35162a = m35162a();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 0));
        if (m35162a == null || (str = m35162a.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35162a, andWith), TemplateCategoryModel.class, str);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateCategoryModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35162a(), arrayList);
    }

    public final void removeOfficialCoverModel() {
        int collectionSizeOrDefault;
        List<CoverModel> loadCoverList = loadCoverList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("source", 0)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadCoverList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadCoverList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((CoverModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35163b(), arrayList);
    }

    public final void removeOfficialCoverResource() {
        String str;
        int collectionSizeOrDefault;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("source", 0)).andWith(couchUtils.equalExpression("type", 0));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35164c = m35164c();
        if (m35164c == null || (str = m35164c.getName()) == null) {
            str = "_default";
        }
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35164c, andWith), TemplateResourceModel.class, str);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35164c(), arrayList);
    }

    public final boolean save(@NotNull CoverModel coverModel) {
        Intrinsics.checkNotNullParameter(coverModel, "coverModel");
        CouchCollections.INSTANCE.saveDocument(m35163b(), (Collection) coverModel);
        return true;
    }

    public final long saveCoverCategoryList(@NotNull List<CoverCategoryModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35162a = m35162a();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35162a, getDatabase(), list);
        }
        List<CoverCategoryModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((CoverCategoryModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35162a.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35162a, andWith), CoverCategoryModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            CoverCategoryModel coverCategoryModel = (CoverCategoryModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((CoverCategoryModel) obj).getUniqueId(), coverCategoryModel.getUniqueId())) {
                    break;
                }
            }
            CoverCategoryModel coverCategoryModel2 = (CoverCategoryModel) obj;
            boolean z = true;
            if (coverCategoryModel2 != null && coverCategoryModel.getVersion() <= coverCategoryModel2.getVersion()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(CoverCategoryModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35162a, database, arrayList2);
        return arrayList2.size();
    }

    public final long saveCoverList(@NotNull List<CoverModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35163b = m35163b();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35163b, getDatabase(), list);
        }
        List<CoverModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((CoverModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35163b.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35163b, andWith), CoverModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            CoverModel coverModel = (CoverModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((CoverModel) obj).getUniqueId(), coverModel.getUniqueId())) {
                    break;
                }
            }
            CoverModel coverModel2 = (CoverModel) obj;
            boolean z = true;
            if (coverModel2 != null && coverModel.getVersion() <= coverModel2.getVersion() && coverModel.getStatus() == coverModel2.getStatus()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(CoverModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35163b, database, arrayList2);
        return arrayList2.size();
    }

    public final void saveList(@NotNull List<CoverModel> coverList) {
        Intrinsics.checkNotNullParameter(coverList, "coverList");
        CouchCollections.INSTANCE.saveList(m35163b(), getDatabase(), coverList);
    }

    public final long saveTemplateResourceList(@NotNull List<TemplateResourceModel> list, boolean isUpgrade) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(list, "list");
        Collection m35164c = m35164c();
        if (!isUpgrade) {
            return CouchCollections.INSTANCE.saveList(m35164c, getDatabase(), list);
        }
        List<TemplateResourceModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TemplateResourceModel) it2.next()).getUniqueId());
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, arrayList));
        String name = m35164c.getName();
        if (name == null) {
            name = "_default";
        }
        Intrinsics.checkNotNull(name);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(m35164c, andWith), TemplateResourceModel.class, name);
        Database database = getDatabase();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            TemplateResourceModel templateResourceModel = (TemplateResourceModel) ((BaseReplicatorModel) obj2);
            Iterator it3 = fromResultList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((TemplateResourceModel) obj).getUniqueId(), templateResourceModel.getUniqueId())) {
                    break;
                }
            }
            TemplateResourceModel templateResourceModel2 = (TemplateResourceModel) obj;
            boolean z = true;
            if (templateResourceModel2 != null && templateResourceModel.getVersion() <= templateResourceModel2.getVersion()) {
                z = false;
            }
            if (z) {
                arrayList2.add(obj2);
            }
        }
        Log.d(Collection.class.getSimpleName(), "updated size: " + Reflection.getOrCreateKotlinClass(TemplateResourceModel.class).getSimpleName() + ' ' + arrayList2.size());
        couchCollections.saveList(m35164c, database, arrayList2);
        return arrayList2.size();
    }
}
