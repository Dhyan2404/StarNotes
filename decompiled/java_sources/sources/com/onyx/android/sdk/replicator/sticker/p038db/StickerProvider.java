package com.onyx.android.sdk.replicator.sticker.p038db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.Ordering;
import com.couchbase.lite.SelectResult;
import com.couchbase.lite.UnitOfWork;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.lite.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseReplicatorModel;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.sticker.http.ComposedStickerData;
import com.onyx.android.sdk.replicator.sticker.model.StickerCategoryModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerRelationModel;
import com.onyx.android.sdk.replicator.sticker.model.StickerUsageModel;
import com.onyx.android.sdk.replicator.sticker.p038db.StickerProvider;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010E\u001a\u00020D¢\u0006\u0004\bF\u0010GJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002J\u0014\u0010\u000e\u001a\u00020\u00062\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u0004J\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u000f\u001a\u00020\u0004J\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00020\f2\u0006\u0010\u0014\u001a\u00020\u0004J\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\fJ\u000e\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001aJ\u0014\u0010\u001f\u001a\u00020\u00062\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001a0\fJ\u000e\u0010 \u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001a0\fJ\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001a0\f2\u0006\u0010\u0005\u001a\u00020\u0004J\u0006\u0010#\u001a\u00020\u001aJ\u0016\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004J\u0014\u0010'\u001a\b\u0012\u0004\u0012\u00020&0\f2\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010)\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004J\u0016\u0010*\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010+\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004J\f\u0010-\u001a\b\u0012\u0004\u0012\u00020,0\fJ\u000e\u00100\u001a\u00020\u00062\u0006\u0010/\u001a\u00020.J\u000e\u00101\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0004R\u0014\u00105\u001a\u0002028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b3\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010;\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u00108R\u0014\u0010=\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u00108R\u0014\u0010?\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u00108R\u0014\u0010C\u001a\u00020@8\u0002X\u0082D¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/db/StickerProvider;", "", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerModel;", "sticker", "", CouchFieldKey.KEY_CATEGORY_ID, "", "addSticker", "Lcom/onyx/android/sdk/replicator/sticker/http/ComposedStickerData;", "compose", "syncStickers", "deleteSticker", "", "stickers", "deleteStickers", "id", "", "isStickerExist", "loadStickerById", "loadStickerByCategory", "parentCategoryId", "loadStickerByParentCategory", "loadRecentStickers", "deleteStickerByCategory", "newCategoryId", "moveStickerCategory", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerCategoryModel;", "category", "addCategory", "updateCategory", "categories", "syncCategories", "deleteCategory", "loadAllCategory", "loadSubCategories", "loadDefaultCategory", CouchFieldKey.KEY_STICKER_ID, "addRelation", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerRelationModel;", "loadRelationByCategoryId", "deleteRelationByCategoryId", "deleteRelationByStickerId", "updateRelation", "saveRecentUsage", "Lcom/onyx/android/sdk/replicator/sticker/model/StickerUsageModel;", "loadRecentUsage", "", "deleteSize", "deleteOldUsage", "deleteUsageByStickerId", "Lcom/couchbase/lite/Database;", "a", "Lcom/couchbase/lite/Database;", "database", "Lcom/couchbase/lite/Collection;", "b", "Lcom/couchbase/lite/Collection;", "stickerCollection", "c", "categoryCollection", "d", "relationCollection", "e", "usageCollection", "", C6997f.f39671c, "I", "maxRecent", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "holder", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nStickerProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,269:1\n48#2,5:270\n38#2,15:275\n48#2,5:304\n48#2,5:311\n38#2,15:316\n48#2,5:331\n48#2,5:336\n48#2,5:341\n1855#3,2:290\n1002#3,2:292\n1549#3:294\n1620#3,3:295\n1855#3,2:298\n1002#3,2:300\n1855#3,2:302\n1855#3,2:309\n1549#3:346\n1620#3,3:347\n1855#3,2:350\n*S KotlinDebug\n*F\n+ 1 StickerProvider.kt\ncom/onyx/android/sdk/replicator/sticker/db/StickerProvider\n*L\n50#1:270,5\n93#1:275,15\n168#1:304,5\n179#1:311,5\n186#1:316,15\n200#1:331,5\n245#1:336,5\n258#1:341,5\n99#1:290,2\n103#1:292,2\n110#1:294\n110#1:295,3\n112#1:298,2\n115#1:300,2\n122#1:302,2\n169#1:309,2\n57#1:346\n57#1:347,3\n75#1:350,2\n*E\n"})
/* loaded from: classes8.dex */
public final class StickerProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Database database;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Collection stickerCollection;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Collection categoryCollection;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Collection relationCollection;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Collection usageCollection;

    /* renamed from: f, reason: from kotlin metadata */
    public final int maxRecent;

    public StickerProvider(@NotNull CouchHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        this.database = holder.ensureDB();
        String simpleName = StickerModel.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "getSimpleName(...)");
        this.stickerCollection = holder.ensureCollection(simpleName);
        String simpleName2 = StickerCategoryModel.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName2, "getSimpleName(...)");
        this.categoryCollection = holder.ensureCollection(simpleName2);
        String simpleName3 = StickerRelationModel.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName3, "getSimpleName(...)");
        this.relationCollection = holder.ensureCollection(simpleName3);
        String simpleName4 = StickerUsageModel.class.getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName4, "getSimpleName(...)");
        this.usageCollection = holder.ensureCollection(simpleName4);
        this.maxRecent = 50;
    }

    /* renamed from: h */
    public static final void m35857h(StickerProvider this$0, StickerModel sticker, String categoryId) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sticker, "$sticker");
        Intrinsics.checkNotNullParameter(categoryId, "$categoryId");
        CouchCollections.INSTANCE.saveDocument(this$0.stickerCollection, (Collection) sticker);
        this$0.addRelation(sticker.getUniqueId(), categoryId);
    }

    /* renamed from: i */
    public static final void m35858i(StickerProvider this$0, String categoryId) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(categoryId, "$categoryId");
        CouchCollections.INSTANCE.deleteById(this$0.categoryCollection, categoryId);
        this$0.deleteStickerByCategory(categoryId);
        this$0.deleteRelationByCategoryId(categoryId);
    }

    /* renamed from: j */
    public static final void m35859j(StickerProvider this$0, StickerModel sticker) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sticker, "$sticker");
        CouchCollections.INSTANCE.delete(this$0.stickerCollection, sticker);
        this$0.deleteRelationByStickerId(sticker.getUniqueId());
        this$0.deleteUsageByStickerId(sticker.getUniqueId());
    }

    /* renamed from: k */
    public static final void m35860k(StickerProvider this$0, List stickers) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(stickers, "$stickers");
        CouchCollections.INSTANCE.deleteInBatch(this$0.stickerCollection, this$0.database, stickers);
        Iterator it2 = stickers.iterator();
        while (it2.hasNext()) {
            StickerModel stickerModel = (StickerModel) it2.next();
            this$0.deleteRelationByStickerId(stickerModel.getUniqueId());
            this$0.deleteUsageByStickerId(stickerModel.getUniqueId());
        }
    }

    /* renamed from: l */
    public static final void m35861l(StickerProvider this$0, String stickerId) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(stickerId, "$stickerId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_STICKER_ID, stickerId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        couchCollections.deleteByExpression(this$0.usageCollection, this$0.database, cBQueryArgs);
        StickerUsageModel stickerUsageModel = new StickerUsageModel();
        stickerUsageModel.setStickerId(stickerId);
        stickerUsageModel.setUpdatedAt(System.currentTimeMillis());
        couchCollections.saveDocument(this$0.usageCollection, (Collection) stickerUsageModel);
        this$0.deleteOldUsage(couchCollections.countAll(this$0.usageCollection) - this$0.maxRecent);
    }

    /* renamed from: m */
    public static final void m35862m(StickerProvider this$0, List categories) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(categories, "$categories");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.notEqualExpression("type", 4));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        couchCollections.deleteByExpression(this$0.categoryCollection, this$0.database, cBQueryArgs);
        couchCollections.saveList(this$0.categoryCollection, this$0.database, categories);
    }

    /* renamed from: n */
    public static final void m35863n(List stickerModelList, StickerProvider this$0, ComposedStickerData compose) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(stickerModelList, "$stickerModelList");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(compose, "$compose");
        List list = stickerModelList;
        if (!list.isEmpty()) {
            CouchCollections.INSTANCE.deleteInBatch(this$0.stickerCollection, this$0.database, stickerModelList);
        }
        CouchCollections.INSTANCE.saveList(this$0.stickerCollection, this$0.database, compose.getStickers());
        if (!list.isEmpty()) {
            List list2 = stickerModelList;
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(((StickerModel) it2.next()).getUniqueId());
            }
            CouchCollections.INSTANCE.deleteByExpression(this$0.relationCollection, this$0.database, new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_STICKER_ID, arrayList)));
        }
        CouchCollections.INSTANCE.saveList(this$0.relationCollection, this$0.database, compose.getStickerCategoryShips());
    }

    public final void addCategory(@NotNull StickerCategoryModel category) {
        Intrinsics.checkNotNullParameter(category, "category");
        category.setUniqueId(category.getUniqueId());
        CouchCollections.INSTANCE.saveDocument(this.categoryCollection, (Collection) category);
    }

    public final void addRelation(@NotNull String stickerId, @NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        StickerRelationModel stickerRelationModel = new StickerRelationModel();
        stickerRelationModel.setStickerId(stickerId);
        stickerRelationModel.setCategoryId(categoryId);
        CouchCollections.INSTANCE.saveDocument(this.relationCollection, (Collection) stickerRelationModel);
    }

    public final void addSticker(@NotNull final StickerModel sticker, @NotNull final String categoryId) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.qzm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35857h(StickerProvider.this, sticker, categoryId);
            }
        });
    }

    public final void deleteCategory(@NotNull final String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.ozm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35858i(StickerProvider.this, categoryId);
            }
        });
    }

    public final void deleteOldUsage(long deleteSize) {
        String str;
        if (deleteSize <= 0) {
            return;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.setOrdering(new Ordering[]{couchUtils.getOrdering("updatedAt", true)});
        cBQueryArgs.m72250setDistinct(true);
        cBQueryArgs.m72251setLimit((int) deleteSize);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.usageCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        couchCollections.deleteInBatch(this.usageCollection, this.database, couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerUsageModel.class, str));
    }

    public final void deleteRelationByCategoryId(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_CATEGORY_ID, categoryId));
        CouchCollections.INSTANCE.deleteByExpression(this.relationCollection, this.database, cBQueryArgs);
    }

    public final void deleteRelationByStickerId(@NotNull String stickerId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_STICKER_ID, stickerId));
        CouchCollections.INSTANCE.deleteByExpression(this.relationCollection, this.database, cBQueryArgs);
    }

    public final void deleteSticker(@NotNull final StickerModel sticker) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.tzm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35859j(StickerProvider.this, sticker);
            }
        });
    }

    public final void deleteStickerByCategory(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        deleteStickers(loadStickerByCategory(categoryId));
    }

    public final void deleteStickers(@NotNull final List<StickerModel> stickers) {
        Intrinsics.checkNotNullParameter(stickers, "stickers");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.pzm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35860k(StickerProvider.this, stickers);
            }
        });
    }

    public final void deleteUsageByStickerId(@NotNull String stickerId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_STICKER_ID, stickerId));
        CouchCollections.INSTANCE.deleteByExpression(this.usageCollection, this.database, cBQueryArgs);
    }

    public final boolean isStickerExist(@NotNull String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, id));
        return CouchCollections.INSTANCE.count(this.stickerCollection, cBQueryArgs) > 0;
    }

    @NotNull
    public final List<StickerCategoryModel> loadAllCategory() {
        String str;
        List<StickerCategoryModel> mutableList;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.nullOrEmpty(CouchFieldKey.KEY_PARENT_UNIQUE_ID));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.categoryCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        List<StickerCategoryModel> fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerCategoryModel.class, str);
        for (StickerCategoryModel stickerCategoryModel : fromResultList) {
            mutableList = CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) loadSubCategories(stickerCategoryModel.getUniqueId()));
            stickerCategoryModel.setSubCategory(mutableList);
        }
        return fromResultList;
    }

    @NotNull
    public final StickerCategoryModel loadDefaultCategory() {
        String str;
        BaseReplicatorModel baseReplicatorModel;
        Object first;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", 2));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.categoryCollection;
        cBQueryArgs.m72250setDistinct(true);
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerCategoryModel.class, str);
        if (!fromResultList.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) fromResultList);
            baseReplicatorModel = (BaseReplicatorModel) first;
        } else {
            baseReplicatorModel = null;
        }
        Intrinsics.checkNotNull(baseReplicatorModel);
        return (StickerCategoryModel) baseReplicatorModel;
    }

    @NotNull
    public final List<StickerModel> loadRecentStickers() {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadRecentUsage().iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, loadStickerById(((StickerUsageModel) it2.next()).getStickerId()));
        }
        return arrayList;
    }

    @NotNull
    public final List<StickerUsageModel> loadRecentUsage() {
        String str;
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.setOrdering(new Ordering[]{couchUtils.getOrdering("updatedAt", false)});
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.usageCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerUsageModel.class, str);
    }

    @NotNull
    public final List<StickerRelationModel> loadRelationByCategoryId(@NotNull String categoryId) {
        String str;
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_CATEGORY_ID, categoryId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.relationCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerRelationModel.class, str);
    }

    @NotNull
    public final List<StickerModel> loadStickerByCategory(@NotNull String categoryId) {
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        List<StickerRelationModel> loadRelationByCategoryId = loadRelationByCategoryId(categoryId);
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadRelationByCategoryId.iterator();
        while (it2.hasNext()) {
            CollectionKt.safeAdd(arrayList, loadStickerById(((StickerRelationModel) it2.next()).getStickerId()));
        }
        if (arrayList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, new Comparator() { // from class: com.onyx.android.sdk.replicator.sticker.db.StickerProvider$loadStickerByCategory$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(-((StickerModel) t).getUpdatedAt()), Long.valueOf(-((StickerModel) t2).getUpdatedAt()));
                    return compareValues;
                }
            });
        }
        return arrayList;
    }

    @Nullable
    public final StickerModel loadStickerById(@NotNull String id) {
        String str;
        BaseReplicatorModel baseReplicatorModel;
        Object first;
        Intrinsics.checkNotNullParameter(id, "id");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, id));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.stickerCollection;
        cBQueryArgs.m72250setDistinct(true);
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerModel.class, str);
        if (!fromResultList.isEmpty()) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) fromResultList);
            baseReplicatorModel = (BaseReplicatorModel) first;
        } else {
            baseReplicatorModel = null;
        }
        return (StickerModel) baseReplicatorModel;
    }

    @NotNull
    public final List<StickerModel> loadStickerByParentCategory(@NotNull String parentCategoryId) {
        List mutableListOf;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(parentCategoryId, "parentCategoryId");
        List<StickerCategoryModel> loadSubCategories = loadSubCategories(parentCategoryId);
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(parentCategoryId);
        List<StickerCategoryModel> list = loadSubCategories;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((StickerCategoryModel) it2.next()).getUniqueId());
        }
        mutableListOf.addAll(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = mutableListOf.iterator();
        while (it3.hasNext()) {
            arrayList2.addAll(loadStickerByCategory((String) it3.next()));
        }
        if (arrayList2.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, new Comparator() { // from class: com.onyx.android.sdk.replicator.sticker.db.StickerProvider$loadStickerByParentCategory$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(-((StickerModel) t).getUpdatedAt()), Long.valueOf(-((StickerModel) t2).getUpdatedAt()));
                    return compareValues;
                }
            });
        }
        return arrayList2;
    }

    @NotNull
    public final List<StickerCategoryModel> loadSubCategories(@NotNull String categoryId) {
        String str;
        Intrinsics.checkNotNullParameter(categoryId, "categoryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PARENT_UNIQUE_ID, categoryId));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.categoryCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(collection, cBQueryArgs), StickerCategoryModel.class, str);
    }

    public final void moveStickerCategory(@NotNull StickerModel sticker, @NotNull String newCategoryId) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        Intrinsics.checkNotNullParameter(newCategoryId, "newCategoryId");
        updateRelation(sticker.getUniqueId(), newCategoryId);
    }

    public final void saveRecentUsage(@NotNull final String stickerId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.uzm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35861l(StickerProvider.this, stickerId);
            }
        });
    }

    public final void syncCategories(@NotNull final List<StickerCategoryModel> categories) {
        Intrinsics.checkNotNullParameter(categories, "categories");
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.rzm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35862m(StickerProvider.this, categories);
            }
        });
    }

    public final void syncStickers(@NotNull final ComposedStickerData compose) {
        String str;
        Intrinsics.checkNotNullParameter(compose, "compose");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.notEqualExpression("type", 4));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        CBQueryArgs varargSelectResults = andWith.setVarargSelectResults(property);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection collection = this.stickerCollection;
        if (collection == null || (str = collection.getName()) == null) {
            str = "_default";
        }
        final List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(collection, varargSelectResults), StickerModel.class, str);
        this.database.inBatch(new UnitOfWork() { // from class: com.sunia.HTREnginev2.szm
            @Override // com.couchbase.lite.UnitOfWork
            public final void run() {
                StickerProvider.m35863n(fromResultList, this, compose);
            }
        });
    }

    public final void updateCategory(@NotNull StickerCategoryModel category) {
        Intrinsics.checkNotNullParameter(category, "category");
        CouchCollections.INSTANCE.update(this.categoryCollection, category);
    }

    public final void updateRelation(@NotNull String stickerId, @NotNull String newCategoryId) {
        Intrinsics.checkNotNullParameter(stickerId, "stickerId");
        Intrinsics.checkNotNullParameter(newCategoryId, "newCategoryId");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_STICKER_ID, stickerId));
        cBQueryArgs.getUpdateValues().put(CouchFieldKey.KEY_CATEGORY_ID, newCategoryId);
        CouchCollections.INSTANCE.updateInBatch(this.relationCollection, this.database, cBQueryArgs);
    }
}
