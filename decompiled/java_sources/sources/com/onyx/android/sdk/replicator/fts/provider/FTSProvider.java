package com.onyx.android.sdk.replicator.fts.provider;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.SelectResult;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.data.font.CJKCompat;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.common.data.TextContentType;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.fts.model.FTSContentModel;
import com.onyx.android.sdk.replicator.fts.model.FTSPageStateModel;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.onyx.galaxy.note.message.data.MessageConst;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u00107\u001a\u000206¢\u0006\u0004\b8\u00109J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\b\u001a\u00020\u0007J\u001e\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u000bJ\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u000f\u001a\u00020\u000bJ\u001c\u0010\u0014\u001a\u00020\u00072\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u000f\u001a\u00020\u000bJ\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00030\t2\u0006\u0010\u0015\u001a\u00020\u0003J\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00030\tJ\u001c\u0010\u0019\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\"\u0010\u0019\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\tJ\u001c\u0010\u001a\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\u000b2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\tJ\u001c\u0010\u001d\u001a\u00020\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\t2\u0006\u0010\u001c\u001a\u00020\u001bJ\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001e0\t2\u0006\u0010\b\u001a\u00020\u0007J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001e0\tJ\u001a\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\tJ0\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001e0\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\t2\u0014\b\u0002\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\"J\u0014\u0010&\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u001e0\tJ\u001c\u0010&\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\u001c\u0010'\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00022\u0006\u0010\u000e\u001a\u00020\rJ\"\u0010'\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\tJ\"\u0010)\u001a\u00020\u00052\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\t2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\r0\tJ\u0006\u0010*\u001a\u00020\u0005J\u001e\u0010,\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001e0\t0+R\u001b\u00102\u001a\u00020-8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u001b\u00105\u001a\u00020-8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b3\u0010/\u001a\u0004\b4\u00101¨\u0006:"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/fts/provider/FTSProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "", "Lcom/onyx/android/sdk/replicator/fts/model/FTSContentModel;", MessageConst.KEY_CONTENT_LIST, "", "saveFtsContent", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "args", "", "queryFtsContentByArgs", "", CouchFieldKey.KEY_TOC_PAGE_ID, "Lcom/onyx/android/sdk/data/common/data/TextContentType;", "type", "keyword", "", "isPageContainsKeyword", "types", "queryMatchedPageIds", "createTypesWithKeywordQueryArgs", Constants.ATTRNAME_CONDITION, "queryFtsContentByCondition", "queryAllFtsContent", "pageIds", "deleteFtsContent", "isPageIndexed", "", "pageCount", "isAllPageIndexed", "Lcom/onyx/android/sdk/replicator/fts/model/FTSPageStateModel;", "queryPageStateByArgs", "queryAllPageState", "queryIndexedPageIds", "Lkotlin/Function1;", BreakpointSQLiteHelper.f39283i, "queryIndexedPageStateModels", "models", "savePageStates", "deletePageState", "contentTypes", "removeAllPageData", "truncateAll", "Lkotlin/Pair;", "queryAll", "Lcom/couchbase/lite/Collection;", "a", "Lkotlin/Lazy;", "getContentCollection", "()Lcom/couchbase/lite/Collection;", "contentCollection", "b", "getPageStateCollection", "pageStateCollection", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nFTSProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,205:1\n1855#2,2:206\n766#2:208\n857#2,2:209\n1855#2,2:211\n1549#2:240\n1620#2,3:241\n1549#2:244\n1620#2,3:245\n1549#2:254\n1620#2,3:255\n1549#2:258\n1620#2,3:259\n1549#2:262\n1620#2,3:263\n1477#2:290\n1502#2,3:291\n1505#2,3:301\n1549#2:315\n1620#2,3:316\n1855#2,2:324\n1855#2,2:326\n1549#2:328\n1620#2,3:329\n56#3,8:213\n48#3,5:221\n64#3,4:226\n48#3,5:230\n48#3,5:235\n29#3:248\n48#3,5:249\n56#3,8:266\n48#3,5:274\n64#3,4:279\n58#3:283\n29#3:284\n48#3,5:285\n48#3,5:319\n29#3:332\n48#3,5:333\n29#3:338\n48#3,5:339\n372#4,7:294\n526#4:304\n511#4,6:305\n125#5:311\n152#5,3:312\n*S KotlinDebug\n*F\n+ 1 FTSProvider.kt\ncom/onyx/android/sdk/replicator/fts/provider/FTSProvider\n*L\n40#1:206,2\n42#1:208\n42#1:209,2\n43#1:211,2\n65#1:240\n65#1:241,3\n70#1:244\n70#1:245,3\n101#1:254\n101#1:255,3\n108#1:258\n108#1:259,3\n115#1:262\n115#1:263,3\n136#1:290\n136#1:291,3\n136#1:301,3\n146#1:315\n146#1:316,3\n152#1:324,2\n161#1:326,2\n182#1:328\n182#1:329,3\n48#1:213,8\n48#1:221,5\n48#1:226,4\n57#1:230,5\n65#1:235,5\n88#1:248\n88#1:249,5\n121#1:266,8\n121#1:274,5\n121#1:279,4\n121#1:283\n125#1:284\n125#1:285,5\n148#1:319,5\n200#1:332\n200#1:333,5\n201#1:338\n201#1:339,5\n136#1:294,7\n137#1:304\n137#1:305,6\n138#1:311\n138#1:312,3\n*E\n"})
/* loaded from: classes8.dex */
public final class FTSProvider extends BaseCouchProvider {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy contentCollection;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Lazy pageStateCollection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FTSProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Lazy lazy;
        Lazy lazy2;
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.fts.provider.FTSProvider$contentCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return FTSProvider.this.ensureCollection(SyncConstant.COLLECTION_FTS_CONTENT_MODEL);
            }
        });
        this.contentCollection = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Collection>() { // from class: com.onyx.android.sdk.replicator.fts.provider.FTSProvider$pageStateCollection$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Collection invoke() {
                return FTSProvider.this.ensureCollection(SyncConstant.COLLECTION_FTS_PAGE_STATE_MODEL);
            }
        });
        this.pageStateCollection = lazy2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ List queryIndexedPageStateModels$default(FTSProvider fTSProvider, List list, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.replicator.fts.provider.FTSProvider$queryIndexedPageStateModels$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@NotNull CBQueryArgs it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                    invoke2(cBQueryArgs);
                    return Unit.INSTANCE;
                }
            };
        }
        return fTSProvider.queryIndexedPageStateModels(list, function1);
    }

    @NotNull
    public final CBQueryArgs createTypesWithKeywordQueryArgs(@NotNull List<? extends TextContentType> types, @NotNull String keyword) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        cBQueryArgs.andWith(couchUtils.inExpression("type", arrayList));
        cBQueryArgs.andWith(CouchUtils.INSTANCE.likeExpression("content", '%' + keyword + '%', true));
        return cBQueryArgs;
    }

    public final void deleteFtsContent(@NotNull java.util.Collection<String> pageIds, @NotNull TextContentType type) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(type, "type");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CouchCollections.INSTANCE.deleteByExpression(getContentCollection(), getDatabase(), cBQueryArgs.andWith(couchUtils.equalExpression("type", type.name())).andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIds)));
    }

    public final void deletePageState(@NotNull java.util.Collection<String> pageIds, @NotNull TextContentType type) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(type, "type");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("type", type.name())).andWith(couchUtils.inExpression(CouchFieldKey.KEY_TOC_PAGE_ID, pageIds));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection pageStateCollection = getPageStateCollection();
        Database database = getPageStateCollection().getDatabase();
        Intrinsics.checkNotNullExpressionValue(database, "getDatabase(...)");
        couchCollections.deleteByExpression(pageStateCollection, database, andWith);
    }

    @NotNull
    public final Collection getContentCollection() {
        return (Collection) this.contentCollection.getValue();
    }

    @NotNull
    public final Collection getPageStateCollection() {
        return (Collection) this.pageStateCollection.getValue();
    }

    public final boolean isAllPageIndexed(@NotNull List<? extends TextContentType> types, int pageCount) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        return CouchCollections.INSTANCE.count(getPageStateCollection(), cBQueryArgs.andWith(couchUtils.inExpression("type", arrayList)).andWith(CouchUtils.INSTANCE.equalExpression("indexed", Boolean.TRUE))) >= ((long) (pageCount * types.size()));
    }

    public final boolean isPageContainsKeyword(@NotNull String pageId, @NotNull TextContentType type, @NotNull String keyword) {
        String str;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        cBQueryArgs.andWith(couchUtils.equalExpression("type", type.name()));
        cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_PAGE_ID, pageId));
        cBQueryArgs.andWith(couchUtils.likeExpression("content", '%' + keyword + '%', true));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        cBQueryArgs.setVarargSelectResults(property);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection contentCollection = getContentCollection();
        if (contentCollection == null || (str = contentCollection.getName()) == null) {
            str = "_default";
        }
        return couchUtils.fromResultList(couchCollections.queryResultList(contentCollection, cBQueryArgs), FTSContentModel.class, str).size() > 0;
    }

    public final boolean isPageIndexed(@NotNull String pageId, @NotNull List<? extends TextContentType> types) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_TOC_PAGE_ID, pageId));
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        return CouchCollections.INSTANCE.count(getPageStateCollection(), andWith.andWith(couchUtils.inExpression("type", arrayList)).andWith(CouchUtils.INSTANCE.equalExpression("indexed", Boolean.TRUE))) >= ((long) types.size());
    }

    @NotNull
    public final Pair<List<FTSContentModel>, List<FTSPageStateModel>> queryAll() {
        String str;
        String name;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection contentCollection = getContentCollection();
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        String str2 = "_default";
        if (contentCollection == null || (str = contentCollection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List fromResultList = couchUtils.fromResultList(couchCollections.queryResultList(contentCollection, selectAll), FTSContentModel.class, str);
        Collection pageStateCollection = getPageStateCollection();
        CBQueryArgs selectAll2 = new CBQueryArgs().selectAll();
        if (pageStateCollection != null && (name = pageStateCollection.getName()) != null) {
            str2 = name;
        }
        Intrinsics.checkNotNull(str2);
        List fromResultList2 = couchUtils.fromResultList(couchCollections.queryResultList(pageStateCollection, selectAll2), FTSPageStateModel.class, str2);
        Debug.INSTANCE.m32037d("contents.size=" + fromResultList.size() + " states.size=" + fromResultList2.size());
        return TuplesKt.m61535to(fromResultList, fromResultList2);
    }

    @NotNull
    public final List<FTSContentModel> queryAllFtsContent() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection contentCollection = getContentCollection();
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        if (contentCollection == null || (str = contentCollection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(contentCollection, selectAll), FTSContentModel.class, str);
    }

    @NotNull
    public final List<FTSPageStateModel> queryAllPageState() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection pageStateCollection = getPageStateCollection();
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        if (pageStateCollection == null || (str = pageStateCollection.getName()) == null) {
            str = "_default";
        }
        Intrinsics.checkNotNull(str);
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(pageStateCollection, selectAll), FTSPageStateModel.class, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (r2 == null) goto L6;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.fts.model.FTSContentModel> queryFtsContentByArgs(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.couchbase.CBQueryArgs r7) {
        /*
            r6 = this;
            java.lang.String r0 = "args"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.onyx.android.sdk.data.couchbase.utils.CouchCollections r0 = com.onyx.android.sdk.data.couchbase.utils.CouchCollections.INSTANCE
            com.couchbase.lite.Collection r6 = r6.getContentCollection()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L10:
            if (r6 == 0) goto L18
            java.lang.String r2 = r6.getName()
            if (r2 != 0) goto L1a
        L18:
            java.lang.String r2 = "_default"
        L1a:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r3 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r4 = r0.queryResultList(r6, r7)
            java.lang.Class<com.onyx.android.sdk.replicator.fts.model.FTSContentModel> r5 = com.onyx.android.sdk.replicator.fts.model.FTSContentModel.class
            java.util.List r2 = r3.fromResultList(r4, r5, r2)
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            r1.addAll(r3)
            int r3 = r7.getOffset()
            int r4 = r2.size()
            int r3 = r3 + r4
            r7.m72252setOffset(r3)
            int r2 = r2.size()
            int r3 = r7.getLimit()
            if (r2 >= r3) goto L10
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.fts.provider.FTSProvider.queryFtsContentByArgs(com.onyx.android.sdk.data.couchbase.CBQueryArgs):java.util.List");
    }

    @NotNull
    public final List<FTSContentModel> queryFtsContentByCondition(@NotNull FTSContentModel condition) {
        Intrinsics.checkNotNullParameter(condition, "condition");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        if (condition.getType().length() > 0) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression("type", condition.getType()));
        }
        if (condition.getPageUniqueId().length() > 0) {
            cBQueryArgs.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_PAGE_ID, condition.getPageUniqueId()));
        }
        cBQueryArgs.andWith(CouchUtils.INSTANCE.likeExpression("content", '%' + condition.getContent() + '%', true));
        return queryFtsContentByArgs(cBQueryArgs);
    }

    @NotNull
    public final List<String> queryIndexedPageIds(@NotNull List<? extends TextContentType> types) {
        Intrinsics.checkNotNullParameter(types, "types");
        List<FTSPageStateModel> queryIndexedPageStateModels = queryIndexedPageStateModels(types, new Function1<CBQueryArgs, Unit>() { // from class: com.onyx.android.sdk.replicator.fts.provider.FTSProvider$queryIndexedPageIds$models$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(CBQueryArgs cBQueryArgs) {
                invoke2(cBQueryArgs);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull CBQueryArgs it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_TOC_PAGE_ID);
                Intrinsics.checkNotNullExpressionValue(property, "property(...)");
                SelectResult.C2166As property2 = SelectResult.property("type");
                Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
                it2.setVarargSelectResults(property, property2).setDistinct(true);
            }
        });
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : queryIndexedPageStateModels) {
            String pageId = ((FTSPageStateModel) obj).getPageId();
            Object obj2 = linkedHashMap.get(pageId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageId, obj2);
            }
            ((List) obj2).add(obj);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((List) entry.getValue()).size() == types.size()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        ArrayList arrayList = new ArrayList(linkedHashMap2.size());
        Iterator it2 = linkedHashMap2.entrySet().iterator();
        while (it2.hasNext()) {
            arrayList.add((String) ((Map.Entry) it2.next()).getKey());
        }
        return arrayList;
    }

    @NotNull
    public final List<FTSPageStateModel> queryIndexedPageStateModels(@NotNull List<? extends TextContentType> types, @NotNull Function1<? super CBQueryArgs, Unit> block) {
        int collectionSizeOrDefault;
        String str;
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(block, "block");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression("type", arrayList));
        block.invoke(andWith);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection pageStateCollection = getPageStateCollection();
        if (pageStateCollection == null || (str = pageStateCollection.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(pageStateCollection, andWith), FTSPageStateModel.class, str);
    }

    @NotNull
    public final List<String> queryMatchedPageIds(@NotNull List<? extends TextContentType> types, @NotNull String keyword) {
        String str;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(types, "types");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        CBQueryArgs createTypesWithKeywordQueryArgs = createTypesWithKeywordQueryArgs(types, keyword);
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_PAGE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        CBQueryArgs distinct = createTypesWithKeywordQueryArgs.setVarargSelectResults(property).setDistinct(true);
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection contentCollection = getContentCollection();
        if (contentCollection == null || (str = contentCollection.getName()) == null) {
            str = "_default";
        }
        List fromResultList = CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(contentCollection, distinct), FTSContentModel.class, str);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(fromResultList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = fromResultList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((FTSContentModel) it2.next()).getPageUniqueId());
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (r2 == null) goto L6;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.fts.model.FTSPageStateModel> queryPageStateByArgs(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.couchbase.CBQueryArgs r7) {
        /*
            r6 = this;
            java.lang.String r0 = "args"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.onyx.android.sdk.data.couchbase.utils.CouchCollections r0 = com.onyx.android.sdk.data.couchbase.utils.CouchCollections.INSTANCE
            com.couchbase.lite.Collection r6 = r6.getPageStateCollection()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L10:
            if (r6 == 0) goto L18
            java.lang.String r2 = r6.getName()
            if (r2 != 0) goto L1a
        L18:
            java.lang.String r2 = "_default"
        L1a:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r3 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r4 = r0.queryResultList(r6, r7)
            java.lang.Class<com.onyx.android.sdk.replicator.fts.model.FTSPageStateModel> r5 = com.onyx.android.sdk.replicator.fts.model.FTSPageStateModel.class
            java.util.List r2 = r3.fromResultList(r4, r5, r2)
            r3 = r2
            java.util.Collection r3 = (java.util.Collection) r3
            r1.addAll(r3)
            int r3 = r7.getOffset()
            int r4 = r2.size()
            int r3 = r3 + r4
            r7.m72252setOffset(r3)
            int r2 = r2.size()
            int r3 = r7.getLimit()
            if (r2 >= r3) goto L10
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.fts.provider.FTSProvider.queryPageStateByArgs(com.onyx.android.sdk.data.couchbase.CBQueryArgs):java.util.List");
    }

    public final void removeAllPageData(@NotNull List<String> pageIds, @NotNull List<? extends TextContentType> contentTypes) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(contentTypes, "contentTypes");
        deleteFtsContent(pageIds, contentTypes);
        deletePageState(pageIds, contentTypes);
    }

    public final void saveFtsContent(@NotNull java.util.Collection<FTSContentModel> contentList) {
        Intrinsics.checkNotNullParameter(contentList, "contentList");
        java.util.Collection<FTSContentModel> collection = contentList;
        for (FTSContentModel fTSContentModel : collection) {
            String lowerCase = StringKt.replaceBreakLine$default(CJKCompat.INSTANCE.CJKToStandard(fTSContentModel.getContent()), null, 1, null).toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(Locale.ROOT)");
            fTSContentModel.setContent(lowerCase);
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : collection) {
            if (((FTSContentModel) obj).getCreatedAt() <= 0) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((FTSContentModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(getContentCollection(), getDatabase(), contentList);
    }

    public final void savePageStates(@NotNull List<FTSPageStateModel> models) {
        Intrinsics.checkNotNullParameter(models, "models");
        Iterator<T> it2 = models.iterator();
        while (it2.hasNext()) {
            ((FTSPageStateModel) it2.next()).forceUpdateTime();
        }
        CouchCollections.INSTANCE.saveList(getPageStateCollection(), getDatabase(), models);
    }

    public final void truncateAll() {
        CBQueryArgs selectAll = new CBQueryArgs().selectAll();
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection contentCollection = getContentCollection();
        Database database = getContentCollection().getDatabase();
        Intrinsics.checkNotNullExpressionValue(database, "getDatabase(...)");
        couchCollections.deleteByExpression(contentCollection, database, selectAll);
        Collection pageStateCollection = getPageStateCollection();
        Database database2 = getPageStateCollection().getDatabase();
        Intrinsics.checkNotNullExpressionValue(database2, "getDatabase(...)");
        couchCollections.deleteByExpression(pageStateCollection, database2, selectAll);
    }

    public final void deleteFtsContent(@NotNull java.util.Collection<String> pageIds, @NotNull List<? extends TextContentType> types) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_PAGE_ID, pageIds));
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        CouchCollections.INSTANCE.deleteByExpression(getContentCollection(), getDatabase(), andWith.andWith(couchUtils.inExpression("type", arrayList)));
    }

    public final void deletePageState(@NotNull List<String> pageIds, @NotNull List<? extends TextContentType> types) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(types, "types");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_TOC_PAGE_ID, pageIds));
        List<? extends TextContentType> list = types;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((TextContentType) it2.next()).name());
        }
        CBQueryArgs andWith2 = andWith.andWith(couchUtils.inExpression("type", arrayList));
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection pageStateCollection = getPageStateCollection();
        Database database = getPageStateCollection().getDatabase();
        Intrinsics.checkNotNullExpressionValue(database, "getDatabase(...)");
        couchCollections.deleteByExpression(pageStateCollection, database, andWith2);
    }

    public final void savePageStates(@NotNull java.util.Collection<String> pageIds, @NotNull TextContentType type) {
        Intrinsics.checkNotNullParameter(pageIds, "pageIds");
        Intrinsics.checkNotNullParameter(type, "type");
        ArrayList arrayList = new ArrayList();
        for (String str : pageIds) {
            FTSPageStateModel fTSPageStateModel = new FTSPageStateModel();
            fTSPageStateModel.setPageId(str);
            fTSPageStateModel.setType(type.name());
            fTSPageStateModel.setIndexed(true);
            fTSPageStateModel.forceUpdateTime();
            arrayList.add(fTSPageStateModel);
        }
        savePageStates(arrayList);
    }
}
