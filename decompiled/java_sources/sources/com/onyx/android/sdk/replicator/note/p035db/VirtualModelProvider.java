package com.onyx.android.sdk.replicator.note.p035db;

import com.couchbase.lite.Collection;
import com.couchbase.lite.Database;
import com.couchbase.lite.Expression;
import com.couchbase.lite.SelectResult;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Tree;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.base.BaseCouchProvider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchCollections;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.replicator.bean.DataFetchType;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualBookmarkModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel;
import com.onyx.android.sdk.replicator.note.utils.TocListUtils;
import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 C2\u00020\u0001:\u0001CB\u000f\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J\b\u0010\t\u001a\u00020\u0007H\u0002J\b\u0010\n\u001a\u00020\u0007H\u0002J\b\u0010\u000b\u001a\u00020\u0007H\u0002J\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\r\u001a\u00020\fJ\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J(\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0018\u0010\u0015\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0004\u0012\u00020\u00070\u0014J\u000e\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019J\u0014\u0010\u001e\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ\b\u0010 \u001a\u0004\u0018\u00010\u001fJ\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u000eJ\u000e\u0010#\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u001fJ\u0014\u0010&\u001a\u00020\u00072\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020%0$J\u0014\u0010'\u001a\u00020\u001b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020%0\u000eJ\u0014\u0010)\u001a\b\u0012\u0004\u0012\u00020%0(2\u0006\u0010\u0013\u001a\u00020\u0012J\f\u0010)\u001a\b\u0012\u0004\u0012\u00020%0(J\f\u0010*\u001a\b\u0012\u0004\u0012\u00020%0\u000eJ\u001a\u0010,\u001a\b\u0012\u0004\u0012\u00020%0\u000e2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eJ\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020%0\u000e2\f\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eJ\u0014\u00100\u001a\u00020/2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eJ\f\u00101\u001a\b\u0012\u0004\u0012\u00020%0\u000eJ\u0014\u00102\u001a\b\u0012\u0004\u0012\u00020%0\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J\u000e\u00103\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0012J\u0014\u00105\u001a\u00020\u00172\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00190$J\u000e\u00106\u001a\u00020/2\u0006\u0010\u0013\u001a\u00020\u0012J\u0014\u00108\u001a\b\u0012\u0004\u0012\u0002070\u000e2\u0006\u0010\u0013\u001a\u00020\u0012J\f\u00109\u001a\b\u0012\u0004\u0012\u0002070\u000eJ\f\u0010:\u001a\b\u0012\u0004\u0012\u0002070\u000eJ\u0014\u0010;\u001a\u00020\u001b2\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u0002070\u000eJ\u0014\u0010<\u001a\u00020/2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eJ\u0014\u0010=\u001a\u00020/2\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eJ\u0006\u0010>\u001a\u00020\u0007¨\u0006D"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/VirtualModelProvider;", "Lcom/onyx/android/sdk/data/couchbase/base/BaseCouchProvider;", "Lcom/couchbase/lite/Collection;", C6998g.f39679a, C6997f.f39671c, C6999h.f39688c, "e", "", "c", "b", "d", "a", "Lcom/onyx/android/sdk/replicator/bean/DataFetchType;", "type", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualPageModel;", "loadVirtualPageModelList", "loadValidVirtualPageModelList", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "queryArgs", "Lkotlin/Function1;", "batchCallback", "loadVirtualPageModelListInBatch", "", "loadVirtualPageCount", "", CouchFieldKey.KEY_TOC_PAGE_ID, "", "checkPageExist", "list", "saveVirtualPageList", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "loadVirtualDocModel", "loadVirtualDocModelList", "model", "saveVirtualDocModel", "", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualTocModel;", "fillVirtualTocList", "saveVirtualTocList", "Lcom/onyx/android/sdk/base/data/Tree;", "loadVirtualTocTree", "loadEnabledVirtualTocModelList", "pageIdList", "loadVirtualTocModelListByPage", "parentIdList", "loadVirtualTocModelListByParent", "", "removeVirtualTocByPageId", "loadEmptyRevisionIdTocModelList", "loadVirtualTocModelList", "countVirtualToc", "idList", "removeVirtualToc", "deleteVirtualToc", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualBookmarkModel;", "loadVirtualBookmarkList", "loadEnabledVirtualBookmarkModelList", "loadEmptyRevisionIdBookmarkModelList", "saveVirtualBookmarkList", "removeVirtualBookmarkByPageId", "removeVirtualBookmark", Constants.CLEAR_ATTRIBUTES, "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "couchHolder", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/data/couchbase/CouchHolder;)V", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVirtualModelProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualModelProvider.kt\ncom/onyx/android/sdk/replicator/note/db/VirtualModelProvider\n+ 2 CouchCollections.kt\ncom/onyx/android/sdk/data/couchbase/utils/CouchCollections\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,318:1\n63#2:319\n48#2,5:320\n64#2,4:325\n48#2,5:331\n56#2,8:340\n48#2,5:348\n64#2,4:353\n58#2:357\n48#2,5:366\n1855#3,2:329\n1855#3,2:336\n1855#3,2:338\n1549#3:358\n1620#3,3:359\n1549#3:362\n1620#3,3:363\n1855#3,2:371\n1855#3,2:373\n1549#3:375\n1620#3,3:376\n1549#3:379\n1620#3,3:380\n1549#3:383\n1620#3,3:384\n1549#3:387\n1620#3,3:388\n1549#3:391\n1620#3,3:392\n*S KotlinDebug\n*F\n+ 1 VirtualModelProvider.kt\ncom/onyx/android/sdk/replicator/note/db/VirtualModelProvider\n*L\n95#1:319\n95#1:320,5\n95#1:325,4\n126#1:331,5\n214#1:340,8\n214#1:348,5\n214#1:353,4\n214#1:357\n244#1:366,5\n113#1:329,2\n149#1:336,2\n197#1:338,2\n232#1:358\n232#1:359,3\n238#1:362\n238#1:363,3\n262#1:371,2\n274#1:373,2\n286#1:375\n286#1:376,3\n300#1:379\n300#1:380,3\n305#1:383\n305#1:384,3\n310#1:387\n310#1:388,3\n315#1:391\n315#1:392,3\n*E\n"})
/* loaded from: classes8.dex */
public final class VirtualModelProvider extends BaseCouchProvider {
    public static final int VIRTUAL_PAGE_QUERY_LIMIT = 5000;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[DataFetchType.values().length];
            try {
                iArr[DataFetchType.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataFetchType.REMOVED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VirtualModelProvider(@NotNull CouchHolder couchHolder) {
        super(couchHolder);
        Intrinsics.checkNotNullParameter(couchHolder, "couchHolder");
    }

    /* renamed from: a */
    public final void m35189a() {
        int collectionSizeOrDefault;
        List<VirtualBookmarkModel> loadVirtualBookmarkList = loadVirtualBookmarkList(new CBQueryArgs());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualBookmarkList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualBookmarkList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualBookmarkModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35193e(), arrayList);
    }

    /* renamed from: b */
    public final void m35190b() {
        int collectionSizeOrDefault;
        List<VirtualDocModel> loadVirtualDocModelList = loadVirtualDocModelList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualDocModelList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualDocModelList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualDocModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35194f(), arrayList);
    }

    /* renamed from: c */
    public final void m35191c() {
        int collectionSizeOrDefault;
        List<VirtualPageModel> loadVirtualPageModelList = loadVirtualPageModelList();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualPageModelList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualPageModelList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualPageModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35195g(), arrayList);
    }

    public final boolean checkPageExist(@NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        CBQueryArgs loadEnabledVirtualPageQuery = VirtualPageQueryArgsKt.loadEnabledVirtualPageQuery();
        loadEnabledVirtualPageQuery.andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, pageId));
        return CollectionKt.isNonBlank(CouchCollections.INSTANCE.queryResultList(m35195g(), loadEnabledVirtualPageQuery));
    }

    public final void clear() {
        m35190b();
        m35191c();
        m35192d();
        m35189a();
    }

    public final long countVirtualToc(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return CouchCollections.INSTANCE.queryDocumentCount(m35196h(), queryArgs.getWhereEx());
    }

    /* renamed from: d */
    public final void m35192d() {
        int collectionSizeOrDefault;
        List<VirtualTocModel> loadVirtualTocModelList = loadVirtualTocModelList(new CBQueryArgs());
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualTocModelList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualTocModelList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualTocModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35196h(), arrayList);
    }

    public final int deleteVirtualToc(@NotNull CBQueryArgs queryArgs) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        List<VirtualTocModel> loadVirtualTocModelList = loadVirtualTocModelList(queryArgs);
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualTocModelList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualTocModelList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualTocModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35196h(), arrayList);
        return arrayList.size();
    }

    /* renamed from: e */
    public final Collection m35193e() {
        return ensureCollection(SyncConstant.COLLECTION_VIRTUAL_BOOKMARK_MODEL);
    }

    /* renamed from: f */
    public final Collection m35194f() {
        return ensureCollection(SyncConstant.COLLECTION_VIRTUAL_DOC_MODEL);
    }

    public final void fillVirtualTocList(@NotNull java.util.Collection<VirtualTocModel> list) {
        List<VirtualTocModel> mutableList;
        Intrinsics.checkNotNullParameter(list, "list");
        VirtualTocModel virtualTocModel = new VirtualTocModel("", -1);
        virtualTocModel.setStatus(1);
        virtualTocModel.setUniqueId("root");
        mutableList = CollectionsKt___CollectionsKt.toMutableList((java.util.Collection) list);
        mutableList.add(0, virtualTocModel);
        saveVirtualTocList(TocListUtils.INSTANCE.reorderIndex(mutableList));
    }

    /* renamed from: g */
    public final Collection m35195g() {
        return ensureCollection(SyncConstant.COLLECTION_VIRTUAL_PAGE_MODEL);
    }

    /* renamed from: h */
    public final Collection m35196h() {
        return ensureCollection(SyncConstant.COLLECTION_VIRTUAL_TOC_MODEL);
    }

    @NotNull
    public final List<VirtualBookmarkModel> loadEmptyRevisionIdBookmarkModelList() {
        return loadVirtualBookmarkList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")));
    }

    @NotNull
    public final List<VirtualTocModel> loadEmptyRevisionIdTocModelList() {
        return loadVirtualTocModelList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.nullOrEqualExpression(CouchFieldKey.KEY_REVISION_ID, "")));
    }

    @NotNull
    public final List<VirtualBookmarkModel> loadEnabledVirtualBookmarkModelList() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadVirtualBookmarkList(cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).setVarargOrdering(couchUtils.getOrderIndexOrdering()));
    }

    @NotNull
    public final List<VirtualTocModel> loadEnabledVirtualTocModelList() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadVirtualTocModelList(cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).setVarargOrdering(couchUtils.getOrderIndexOrdering()));
    }

    @NotNull
    public final List<VirtualPageModel> loadValidVirtualPageModelList() {
        return loadVirtualPageModelList(VirtualPageQueryArgsKt.loadValidVirtualPageQuery().setVarargOrdering(CouchUtils.INSTANCE.getOrderIndexOrdering()));
    }

    @NotNull
    public final List<VirtualBookmarkModel> loadVirtualBookmarkList(@NotNull CBQueryArgs queryArgs) {
        String str;
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35193e = m35193e();
        if (m35193e == null || (str = m35193e.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35193e, queryArgs), VirtualBookmarkModel.class, str);
    }

    @Nullable
    public final VirtualDocModel loadVirtualDocModel() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadVirtualDocModelList());
        return (VirtualDocModel) firstOrNull;
    }

    @NotNull
    public final List<VirtualDocModel> loadVirtualDocModelList() {
        String str;
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35194f = m35194f();
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        if (m35194f == null || (str = m35194f.getName()) == null) {
            str = "_default";
        }
        return CouchUtils.INSTANCE.fromResultList(couchCollections.queryResultList(m35194f, cBQueryArgs), VirtualDocModel.class, str);
    }

    public final long loadVirtualPageCount(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return CouchCollections.INSTANCE.queryDocumentCount(m35195g(), queryArgs.getWhereEx());
    }

    @NotNull
    public final List<VirtualPageModel> loadVirtualPageModelList(@NotNull DataFetchType type) {
        Expression booleanValue;
        Intrinsics.checkNotNullParameter(type, "type");
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            booleanValue = Expression.booleanValue(true);
        } else if (i != 2) {
            booleanValue = CouchUtils.INSTANCE.getStatusExpression(0);
        } else {
            booleanValue = CouchUtils.INSTANCE.getStatusExpression(1);
        }
        Intrinsics.checkNotNull(booleanValue);
        return loadVirtualPageModelList(new CBQueryArgs().andWith(booleanValue).setVarargOrdering(CouchUtils.INSTANCE.getOrderIndexOrdering()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
    
        if (r1 == null) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void loadVirtualPageModelListInBatch(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.couchbase.CBQueryArgs r6, @org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel>, kotlin.Unit> r7) {
        /*
            r5 = this;
            java.lang.String r0 = "queryArgs"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "batchCallback"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            boolean r0 = r6.isUnlimited()
            if (r0 == 0) goto L15
            r0 = 5000(0x1388, float:7.006E-42)
            r6.m72251setLimit(r0)
        L15:
            com.onyx.android.sdk.data.couchbase.utils.CouchCollections r0 = com.onyx.android.sdk.data.couchbase.utils.CouchCollections.INSTANCE
            com.couchbase.lite.Collection r5 = r5.m35195g()
        L1b:
            if (r5 == 0) goto L23
            java.lang.String r1 = r5.getName()
            if (r1 != 0) goto L25
        L23:
            java.lang.String r1 = "_default"
        L25:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r2 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r3 = r0.queryResultList(r5, r6)
            java.lang.Class<com.onyx.android.sdk.replicator.note.db.model.VirtualPageModel> r4 = com.onyx.android.sdk.replicator.note.p035db.model.VirtualPageModel.class
            java.util.List r1 = r2.fromResultList(r3, r4, r1)
            r7.invoke(r1)
            int r2 = r6.getOffset()
            int r3 = r1.size()
            int r2 = r2 + r3
            r6.m72252setOffset(r2)
            int r1 = r1.size()
            int r2 = r6.getLimit()
            if (r1 >= r2) goto L1b
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider.loadVirtualPageModelListInBatch(com.onyx.android.sdk.data.couchbase.CBQueryArgs, kotlin.jvm.functions.Function1):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
    
        if (r2 == null) goto L9;
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel> loadVirtualTocModelList(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.data.couchbase.CBQueryArgs r7) {
        /*
            r6 = this;
            java.lang.String r0 = "queryArgs"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            boolean r0 = r7.isUnlimited()
            if (r0 == 0) goto L10
            r0 = 5000(0x1388, float:7.006E-42)
            r7.m72251setLimit(r0)
        L10:
            com.onyx.android.sdk.data.couchbase.utils.CouchCollections r0 = com.onyx.android.sdk.data.couchbase.utils.CouchCollections.INSTANCE
            com.couchbase.lite.Collection r6 = r6.m35196h()
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
        L1b:
            if (r6 == 0) goto L23
            java.lang.String r2 = r6.getName()
            if (r2 != 0) goto L25
        L23:
            java.lang.String r2 = "_default"
        L25:
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            com.onyx.android.sdk.data.couchbase.utils.CouchUtils r3 = com.onyx.android.sdk.data.couchbase.utils.CouchUtils.INSTANCE
            java.util.List r4 = r0.queryResultList(r6, r7)
            java.lang.Class<com.onyx.android.sdk.replicator.note.db.model.VirtualTocModel> r5 = com.onyx.android.sdk.replicator.note.p035db.model.VirtualTocModel.class
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
            if (r2 >= r3) goto L1b
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.replicator.note.p035db.VirtualModelProvider.loadVirtualTocModelList(com.onyx.android.sdk.data.couchbase.CBQueryArgs):java.util.List");
    }

    @NotNull
    public final List<VirtualTocModel> loadVirtualTocModelListByPage(@NotNull List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        CBQueryArgs andWith = cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.inExpression(CouchFieldKey.KEY_TOC_PAGE_ID, pageIdList));
        SelectResult.C2166As property = SelectResult.property(CouchFieldKey.KEY_UNIQUE_ID);
        Intrinsics.checkNotNullExpressionValue(property, "property(...)");
        SelectResult.C2166As property2 = SelectResult.property(CouchFieldKey.KEY_PARENT_ID);
        Intrinsics.checkNotNullExpressionValue(property2, "property(...)");
        return loadVirtualTocModelList(andWith.setVarargSelectResults(property, property2));
    }

    @NotNull
    public final List<VirtualTocModel> loadVirtualTocModelListByParent(@NotNull List<String> parentIdList) {
        Intrinsics.checkNotNullParameter(parentIdList, "parentIdList");
        return loadVirtualTocModelList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("status", 0)).andWith(parentIdList.isEmpty() ? CouchUtils.INSTANCE.nullOrEmpty(CouchFieldKey.KEY_PARENT_ID) : CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_PARENT_ID, parentIdList)));
    }

    @NotNull
    public final Tree<VirtualTocModel> loadVirtualTocTree(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        return Tree.INSTANCE.create(loadVirtualTocModelList(queryArgs), new Function1<VirtualTocModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.VirtualModelProvider$loadVirtualTocTree$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull VirtualTocModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getUniqueId();
            }
        }, new Function1<VirtualTocModel, String>() { // from class: com.onyx.android.sdk.replicator.note.db.VirtualModelProvider$loadVirtualTocTree$2
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull VirtualTocModel item) {
                Intrinsics.checkNotNullParameter(item, "item");
                return item.getParentId();
            }
        });
    }

    public final int removeVirtualBookmark(@NotNull List<String> idList) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return 0;
        }
        List<VirtualBookmarkModel> loadVirtualBookmarkList = loadVirtualBookmarkList(VirtualBookmarkQueryArgsKt.loadVirtualBookmarkById(idList));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualBookmarkList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualBookmarkList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualBookmarkModel) it2.next()).getUniqueId());
        }
        CouchCollections.INSTANCE.deleteListByIds(m35193e(), arrayList);
        return arrayList.size();
    }

    public final int removeVirtualBookmarkByPageId(@NotNull List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        if (pageIdList.isEmpty()) {
            return 0;
        }
        List<VirtualBookmarkModel> loadVirtualBookmarkList = loadVirtualBookmarkList(VirtualBookmarkQueryArgsKt.loadVirtualBookmarkByPageId(pageIdList));
        for (VirtualBookmarkModel virtualBookmarkModel : loadVirtualBookmarkList) {
            virtualBookmarkModel.setStatus(1);
            virtualBookmarkModel.resetRevisionId();
        }
        saveVirtualBookmarkList(loadVirtualBookmarkList);
        return loadVirtualBookmarkList.size();
    }

    public final long removeVirtualToc(@NotNull java.util.Collection<String> idList) {
        List list;
        List list2;
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(idList, "idList");
        if (idList.isEmpty()) {
            return 0L;
        }
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        java.util.Collection<String> collection = idList;
        list = CollectionsKt___CollectionsKt.toList(collection);
        long deleteVirtualToc = deleteVirtualToc(cBQueryArgs.andWith(couchUtils.inExpression(CouchFieldKey.KEY_UNIQUE_ID, list))) + 0;
        CBQueryArgs cBQueryArgs2 = new CBQueryArgs();
        list2 = CollectionsKt___CollectionsKt.toList(collection);
        List<VirtualTocModel> loadVirtualTocModelList = loadVirtualTocModelList(cBQueryArgs2.andWith(couchUtils.inExpression(CouchFieldKey.KEY_PARENT_ID, list2)));
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadVirtualTocModelList, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadVirtualTocModelList.iterator();
        while (it2.hasNext()) {
            arrayList.add(((VirtualTocModel) it2.next()).getUniqueId());
        }
        return deleteVirtualToc + removeVirtualToc(arrayList);
    }

    public final int removeVirtualTocByPageId(@NotNull List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        List<VirtualTocModel> loadVirtualTocModelList = loadVirtualTocModelList(new CBQueryArgs().andWith(CouchUtils.INSTANCE.inExpression(CouchFieldKey.KEY_TOC_PAGE_ID, pageIdList)));
        for (VirtualTocModel virtualTocModel : loadVirtualTocModelList) {
            virtualTocModel.setStatus(1);
            virtualTocModel.resetRevisionId();
        }
        saveVirtualTocList(loadVirtualTocModelList);
        return loadVirtualTocModelList.size();
    }

    public final boolean saveVirtualBookmarkList(@NotNull List<VirtualBookmarkModel> list) {
        List list2;
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return false;
        }
        List<VirtualBookmarkModel> list3 = list;
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            ((VirtualBookmarkModel) it2.next()).beforeSave();
        }
        CouchCollections couchCollections = CouchCollections.INSTANCE;
        Collection m35193e = m35193e();
        Database database = getDatabase();
        list2 = CollectionsKt___CollectionsKt.toList(list3);
        couchCollections.saveList(m35193e, database, list2);
        return true;
    }

    public final void saveVirtualDocModel(@NotNull VirtualDocModel model) {
        Intrinsics.checkNotNullParameter(model, "model");
        model.ensureUniqueIdExist();
        CouchCollections.INSTANCE.saveDocument(m35194f(), (Collection) model);
    }

    public final void saveVirtualPageList(@NotNull List<VirtualPageModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return;
        }
        for (VirtualPageModel virtualPageModel : list) {
            virtualPageModel.ensureCreatedAt();
            virtualPageModel.ensureUpdatedAt();
        }
        CouchCollections.INSTANCE.saveList(m35195g(), getDatabase(), list);
    }

    public final boolean saveVirtualTocList(@NotNull List<VirtualTocModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        if (list.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            ((VirtualTocModel) it2.next()).beforeSave();
        }
        CouchCollections.INSTANCE.saveList(m35196h(), getDatabase(), list);
        return true;
    }

    @NotNull
    public final Tree<VirtualTocModel> loadVirtualTocTree() {
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return loadVirtualTocTree(cBQueryArgs.andWith(couchUtils.equalExpression("status", 0)).setVarargOrdering(couchUtils.getOrderIndexOrdering()));
    }

    @NotNull
    public final List<VirtualPageModel> loadVirtualPageModelList() {
        return loadVirtualPageModelList(VirtualPageQueryArgsKt.loadEnabledVirtualPageQuery().setVarargOrdering(CouchUtils.INSTANCE.getOrderIndexOrdering()));
    }

    @NotNull
    public final List<VirtualPageModel> loadVirtualPageModelList(@NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        final ArrayList arrayList = new ArrayList();
        loadVirtualPageModelListInBatch(queryArgs, new Function1<List<? extends VirtualPageModel>, Unit>() { // from class: com.onyx.android.sdk.replicator.note.db.VirtualModelProvider$loadVirtualPageModelList$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends VirtualPageModel> list) {
                invoke2((List<VirtualPageModel>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull List<VirtualPageModel> it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                arrayList.addAll(it2);
            }
        });
        return arrayList;
    }
}
