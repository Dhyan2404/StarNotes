package com.onyx.android.sdk.replicator.note.proto.doc.shape;

import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.p035db.NoteShapeProvider;
import com.onyx.android.sdk.replicator.note.p035db.PBDocRecordProvider;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.PBDocRecordModel;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.proto.data.ShapeDocumentArgs;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.NoteShapePBDocument;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0018\u001a\u00020\u0016\u0012\u0006\u0010\u001b\u001a\u00020\u0019\u0012\u0006\u0010\u001d\u001a\u00020\u000b\u0012\u0006\u0010\u001f\u001a\u00020\u000b¢\u0006\u0004\b(\u0010)J\u0014\u0010\u0005\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J*\u0010\u000f\u001a\u00020\u000e2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nH\u0002J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0010\u001a\u00020\b2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030\u0011H\u0002J\u0016\u0010\u0015\u001a\u00020\u00132\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H\u0002R\u0014\u0010\u0018\u001a\u00020\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u001cR\u0014\u0010\u001f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001cR\u001c\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010!R0\u0010'\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00030#j\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0003`$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&¨\u0006*"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker;", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "list", "setShapeModelList", "check", "", "Lcom/onyx/android/sdk/replicator/note/proto/data/ShapeDocumentArgs;", "argsList", "", "", "Lcom/onyx/android/sdk/replicator/note/db/model/PBDocRecordModel;", "recordModelMap", "", "a", "args", "", "shapeModelMap", "", "b", "c", "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;", "shapeProvider", "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;", "pbDocRecordProvider", Constants.STRING_SIG, "documentId", "d", CouchFieldKey.KEY_TOC_PAGE_ID, "e", "Ljava/util/Collection;", "shapeModelList", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", C6997f.f39671c, "Ljava/util/HashMap;", "removeShapeMap", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/replicator/note/db/NoteShapeProvider;Lcom/onyx/android/sdk/replicator/note/db/PBDocRecordProvider;Ljava/lang/String;Ljava/lang/String;)V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePagePBShapeChecker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,162:1\n1194#2,2:163\n1222#2,4:165\n1603#2,9:169\n1855#2:178\n1856#2:180\n1612#2:181\n1855#2,2:182\n2634#2:191\n2624#2,3:193\n2634#2:196\n1549#2:198\n1620#2,3:199\n1194#2,2:202\n1222#2,4:204\n1#3:179\n1#3:192\n1#3:197\n494#4,7:184\n*S KotlinDebug\n*F\n+ 1 NotePagePBShapeChecker.kt\ncom/onyx/android/sdk/replicator/note/proto/doc/shape/NotePagePBShapeChecker\n*L\n49#1:163,2\n49#1:165,4\n51#1:169,9\n51#1:178\n51#1:180\n51#1:181\n58#1:182,2\n86#1:191\n94#1:193,3\n120#1:196\n146#1:198\n146#1:199,3\n154#1:202,2\n154#1:204,4\n51#1:179\n86#1:192\n120#1:197\n77#1:184,7\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePagePBShapeChecker {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NoteShapeProvider shapeProvider;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final PBDocRecordProvider pbDocRecordProvider;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final String documentId;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final String pageId;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public Collection<ShapeModel> shapeModelList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, ShapeModel> removeShapeMap;

    public NotePagePBShapeChecker(@NotNull NoteShapeProvider shapeProvider, @NotNull PBDocRecordProvider pbDocRecordProvider, @NotNull String documentId, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(shapeProvider, "shapeProvider");
        Intrinsics.checkNotNullParameter(pbDocRecordProvider, "pbDocRecordProvider");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        this.shapeProvider = shapeProvider;
        this.pbDocRecordProvider = pbDocRecordProvider;
        this.documentId = documentId;
        this.pageId = pageId;
        List emptyList = Collections.emptyList();
        Intrinsics.checkNotNullExpressionValue(emptyList, "emptyList(...)");
        this.shapeModelList = emptyList;
        this.removeShapeMap = new HashMap<>();
    }

    /* renamed from: a */
    public final boolean m35423a(List<ShapeDocumentArgs> argsList, Map<String, PBDocRecordModel> recordModelMap) {
        List<ShapeDocumentArgs> reversed;
        reversed = CollectionsKt___CollectionsKt.reversed(argsList);
        for (ShapeDocumentArgs shapeDocumentArgs : reversed) {
            PBDocRecordModel pBDocRecordModel = recordModelMap.get(shapeDocumentArgs.getRevisionId());
            if (pBDocRecordModel != null && pBDocRecordModel.isSynced()) {
                Collection<ShapeModel> collection = this.shapeModelList;
                if (!(collection == null || collection.isEmpty())) {
                    Collection<ShapeModel> collection2 = this.shapeModelList;
                    if (!(collection2 instanceof Collection) || !collection2.isEmpty()) {
                        Iterator<T> it2 = collection2.iterator();
                        while (it2.hasNext()) {
                            if (StringUtils.equals(((ShapeModel) it2.next()).getInfoRevisionId(), shapeDocumentArgs.getRevisionId())) {
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public final void m35424b(ShapeDocumentArgs args, Map<String, ShapeModel> shapeModelMap) {
        List<ShapeModel> fromShapeInfoProtoList$default = NoteShapePBDocument.Companion.fromShapeInfoProtoList$default(NoteShapePBDocument.INSTANCE, new NoteShapePBDocument(new ShapeDocumentArgs().setDocumentId(this.documentId).setPageId(this.pageId).setRevisionId(args.getRevisionId()).setCreateAt(args.getCreateAt())).load().getData(), null, 2, null);
        m35425c(fromShapeInfoProtoList$default);
        ArrayList arrayList = new ArrayList();
        for (ShapeModel shapeModel : fromShapeInfoProtoList$default) {
            String uniqueId = shapeModel.getUniqueId();
            ShapeModel shapeModel2 = shapeModelMap.get(uniqueId);
            if (shapeModel2 == null) {
                shapeModel2 = this.removeShapeMap.get(uniqueId);
            }
            ShapeModel shapeModel3 = shapeModel2;
            if (shapeModel3 == null || shapeModel3.getUpdatedAt() <= shapeModel.getUpdatedAt()) {
                shapeModel.setPageUniqueId(this.pageId);
                shapeModel.setDocumentUniqueId(this.documentId);
                shapeModel.setPointSaveType(1);
                shapeModel.setCoordType(1);
                arrayList.add(shapeModel);
                shapeModelMap.put(shapeModel.getUniqueId(), shapeModel);
            } else {
                Debug.INSTANCE.m32052i(NotePagePBShapeChecker.class, uniqueId + " is newer on database", new Object[0]);
            }
        }
        Debug.INSTANCE.m32052i(NotePagePBShapeChecker.class, "documentId:" + this.documentId + " pageId:" + this.pageId + "  revisionId:" + args.getRevisionId() + " update shape count: " + CollectionKt.getSize(arrayList), new Object[0]);
        this.shapeProvider.saveShapeList(arrayList);
    }

    /* renamed from: c */
    public final void m35425c(List<ShapeModel> list) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        int mapCapacity;
        int coerceAtLeast;
        List<ShapeModel> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ShapeModel) it2.next()).getUniqueId());
        }
        int size = CollectionKt.getSize(arrayList);
        for (int i = 0; i < size; i += NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT()) {
            List safelySubList = CollectionKt.safelySubList(arrayList, i, NoteConstant.INSTANCE.getCOMMON_BATCH_DATA_COUNT() + i);
            CBQueryArgs inRemovedShapeIdListQuery = ShapeQueryArgsExtKt.inRemovedShapeIdListQuery(safelySubList);
            inRemovedShapeIdListQuery.m72251setLimit(safelySubList.size());
            List<ShapeModel> loadShapeList = this.shapeProvider.loadShapeList(inRemovedShapeIdListQuery);
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadShapeList, 10);
            mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault2);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
            LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
            for (Object obj : loadShapeList) {
                linkedHashMap.put(((ShapeModel) obj).getUniqueId(), obj);
            }
            this.removeShapeMap.putAll(linkedHashMap);
        }
    }

    @NotNull
    public final Collection<ShapeModel> check() {
        int collectionSizeOrDefault;
        int mapCapacity;
        int coerceAtLeast;
        Map<String, ShapeModel> mutableMap;
        List list;
        List<ShapeDocumentArgs> docPageShapeArgsList = ShapeDocumentUtils.INSTANCE.docPageShapeArgsList(this.documentId, this.pageId);
        List<ShapeDocumentArgs> list2 = docPageShapeArgsList;
        if (list2 == null || list2.isEmpty()) {
            return this.shapeModelList;
        }
        Collection<ShapeModel> collection = this.shapeModelList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(collection, 10);
        mapCapacity = MapsKt__MapsJVMKt.mapCapacity(collectionSizeOrDefault);
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(mapCapacity, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(coerceAtLeast);
        for (Object obj : collection) {
            linkedHashMap.put(((ShapeModel) obj).getUniqueId(), obj);
        }
        mutableMap = MapsKt__MapsKt.toMutableMap(linkedHashMap);
        List<ShapeDocumentArgs> list3 = docPageShapeArgsList;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = list3.iterator();
        while (it2.hasNext()) {
            String revisionId = ((ShapeDocumentArgs) it2.next()).getRevisionId();
            if (revisionId != null) {
                arrayList.add(revisionId);
            }
        }
        Map<String, PBDocRecordModel> loadRecordModelMap = this.pbDocRecordProvider.loadRecordModelMap(this.documentId, arrayList);
        boolean m35423a = m35423a(docPageShapeArgsList, loadRecordModelMap);
        if (m35423a) {
            Debug.INSTANCE.m32052i(NotePagePBShapeChecker.class, this.pageId + " is need reload shape", new Object[0]);
        }
        ArrayList arrayList2 = new ArrayList();
        for (ShapeDocumentArgs shapeDocumentArgs : list3) {
            PBDocRecordModel pBDocRecordModel = loadRecordModelMap.get(shapeDocumentArgs.getRevisionId());
            boolean z = pBDocRecordModel != null && pBDocRecordModel.isSynced();
            if (m35423a || !z) {
                m35424b(shapeDocumentArgs, mutableMap);
                if (!z) {
                    PBDocRecordModel pBDocRecordModel2 = new PBDocRecordModel();
                    String trimToEmpty = StringUtils.trimToEmpty(shapeDocumentArgs.getRevisionId());
                    Intrinsics.checkNotNullExpressionValue(trimToEmpty, "trimToEmpty(...)");
                    pBDocRecordModel2.setUniqueId(trimToEmpty);
                    pBDocRecordModel2.setStatus(1);
                    pBDocRecordModel2.setTimeStamp(shapeDocumentArgs.getCreateAt());
                    pBDocRecordModel2.setDocumentId(this.documentId);
                    pBDocRecordModel2.setPageId(this.pageId);
                    arrayList2.add(pBDocRecordModel2);
                }
            }
        }
        this.pbDocRecordProvider.saveRecordList(arrayList2);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Map.Entry<String, ShapeModel> entry : mutableMap.entrySet()) {
            if (entry.getValue().isEnabled()) {
                linkedHashMap2.put(entry.getKey(), entry.getValue());
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap2.values());
        return list;
    }

    @NotNull
    public final NotePagePBShapeChecker setShapeModelList(@NotNull Collection<ShapeModel> list) {
        Intrinsics.checkNotNullParameter(list, "list");
        this.shapeModelList = list;
        return this;
    }
}
