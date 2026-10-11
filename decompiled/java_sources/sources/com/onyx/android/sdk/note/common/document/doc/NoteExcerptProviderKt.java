package com.onyx.android.sdk.note.common.document.doc;

import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.note.p035db.model.extenstion.ShapeModelOptionsKt;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u0002\u001a\u0010\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0007*\u00020\u0002\u001a\u0014\u0010\u000b\u001a\u0004\u0018\u00010\f*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0014\u0010\r\u001a\u0004\u0018\u00010\f*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u0018\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\f0\u0007*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u0004\u001a\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\f0\u0007*\u00020\u00022\b\b\u0002\u0010\u0011\u001a\u00020\u0001\u001a\u0018\u0010\u0012\u001a\u00020\u0013*\u00020\u00022\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\f0\u0007¨\u0006\u0015"}, m61528d2 = {"createLoadEnabledExcerptShapeArgs", "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "excerptId", "", "createLoadEnabledExcerptShapeListArgs", "excerptShapeTypeList", "", "", "loadAllTapeShapeModelList", "Lcom/onyx/android/sdk/replicator/note/db/model/ShapeModel;", "loadExcerpt", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "loadExcerptFromCB", "loadExcerptList", "keyword", "loadExcerptListFromCB", "queryArgs", "updateExcerptShapeModelInCB", "", "excerptInfoBeanList", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteExcerptProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteExcerptProvider.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1603#2,9:114\n1855#2:123\n1856#2:125\n1612#2:126\n766#2:127\n857#2,2:128\n766#2:130\n857#2,2:131\n1655#2,8:133\n1603#2,9:141\n1855#2:150\n1856#2:152\n1612#2:153\n1549#2:154\n1620#2,3:155\n1855#2:158\n1856#2:160\n1549#2:161\n1620#2,3:162\n1#3:124\n1#3:151\n1#3:159\n*S KotlinDebug\n*F\n+ 1 NoteExcerptProvider.kt\ncom/onyx/android/sdk/note/common/document/doc/NoteExcerptProviderKt\n*L\n28#1:114,9\n28#1:123\n28#1:125\n28#1:126\n29#1:127\n29#1:128,2\n32#1:130\n32#1:131,2\n36#1:133,8\n56#1:141,9\n56#1:150\n56#1:152\n56#1:153\n79#1:154\n79#1:155,3\n85#1:158\n85#1:160\n109#1:161\n109#1:162,3\n28#1:124\n56#1:151\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteExcerptProviderKt {
    /* renamed from: b */
    public static final int m33774b(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    @NotNull
    public static final CBQueryArgs createLoadEnabledExcerptShapeArgs(@NotNull NoteDocument noteDocument, @NotNull String excerptId) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        return createLoadEnabledExcerptShapeListArgs(noteDocument).andWith(CouchUtils.INSTANCE.equalExpression(CouchFieldKey.KEY_UNIQUE_ID, excerptId));
    }

    @NotNull
    public static final CBQueryArgs createLoadEnabledExcerptShapeListArgs(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        return cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, noteDocument.getDocumentUniqueId())).andWith(couchUtils.inExpression("shapeType", excerptShapeTypeList(noteDocument))).andWith(couchUtils.equalExpression("status", 0));
    }

    @NotNull
    public static final List<Integer> excerptShapeTypeList(@NotNull NoteDocument noteDocument) {
        List<Integer> listOf;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{41, 44});
        return listOf;
    }

    @NotNull
    public static final List<ShapeModel> loadAllTapeShapeModelList(@NotNull NoteDocument noteDocument) {
        int collectionSizeOrDefault;
        List<ShapeModel> plus;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        CBQueryArgs cBQueryArgs = new CBQueryArgs();
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<ShapeModel> loadShapeList = noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(cBQueryArgs.andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, noteDocument.getDocumentUniqueId())).andWith(couchUtils.equalExpression("shapeType", 39)).andWith(couchUtils.equalExpression("status", 0)));
        if (loadShapeList.isEmpty()) {
            return new ArrayList();
        }
        CBQueryArgs andWith = new CBQueryArgs().andWith(couchUtils.equalExpression(CouchFieldKey.KEY_DOCUMENT_ID, noteDocument.getDocumentUniqueId())).andWith(couchUtils.equalExpression("status", 0)).andWith(couchUtils.equalExpression("shapeType", 2000));
        List<ShapeModel> list = loadShapeList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ShapeModel) it2.next()).getUniqueId());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) loadShapeList, (Iterable) noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(andWith.andWith(couchUtils.inExpression(CouchFieldKey.KEY_CONNECTION_SHAPE_ID, arrayList))));
        return plus;
    }

    @Nullable
    public static final ExcerptInfoBean loadExcerpt(@NotNull NoteDocument noteDocument, @NotNull String excerptId) {
        ExcerptInfoBean excerptInfoBean;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        Shape loadShapeById = NoteDocShape.INSTANCE.loadShapeById(noteDocument, excerptId);
        return (loadShapeById == null || (excerptInfoBean = ShapePersistOptionsKt.getExcerptInfoBean(loadShapeById)) == null) ? loadExcerptFromCB(noteDocument, excerptId) : excerptInfoBean;
    }

    @Nullable
    public static final ExcerptInfoBean loadExcerptFromCB(@NotNull NoteDocument noteDocument, @NotNull String excerptId) {
        Object firstOrNull;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(excerptId, "excerptId");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) loadExcerptListFromCB(noteDocument, createLoadEnabledExcerptShapeArgs(noteDocument, excerptId)));
        return (ExcerptInfoBean) firstOrNull;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x005c, code lost:
    
        if (r5 != false) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0078 A[SYNTHETIC] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.List<com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean> loadExcerptList(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.note.common.document.doc.NoteDocument r7, @org.jetbrains.annotations.NotNull java.lang.String r8) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "keyword"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            com.onyx.android.sdk.note.common.document.doc.NoteDocShape r0 = com.onyx.android.sdk.note.common.document.doc.NoteDocShape.INSTANCE
            java.util.List r0 = r0.loadExcerptShapeList(r7)
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        L1b:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L31
            java.lang.Object r2 = r0.next()
            com.onyx.android.sdk.note.common.shape.Shape r2 = (com.onyx.android.sdk.note.common.shape.Shape) r2
            com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r2 = com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt.getExcerptInfoBean(r2)
            if (r2 == 0) goto L1b
            r1.add(r2)
            goto L1b
        L31:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r1 = r1.iterator()
        L3a:
            boolean r2 = r1.hasNext()
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L65
            java.lang.Object r2 = r1.next()
            r5 = r2
            com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r5 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r5
            int r6 = r8.length()
            if (r6 != 0) goto L51
            r6 = r4
            goto L52
        L51:
            r6 = r3
        L52:
            if (r6 != 0) goto L5e
            java.lang.String r5 = r5.getNote()
            boolean r5 = kotlin.text.StringsKt.contains(r5, r8, r4)
            if (r5 == 0) goto L5f
        L5e:
            r3 = r4
        L5f:
            if (r3 == 0) goto L3a
            r0.add(r2)
            goto L3a
        L65:
            com.onyx.android.sdk.data.couchbase.CBQueryArgs r1 = createLoadEnabledExcerptShapeListArgs(r7)
            java.util.List r7 = loadExcerptListFromCB(r7, r1)
            java.lang.Iterable r7 = (java.lang.Iterable) r7
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r7 = r7.iterator()
        L78:
            boolean r2 = r7.hasNext()
            if (r2 == 0) goto La4
            java.lang.Object r2 = r7.next()
            r5 = r2
            com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r5 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r5
            int r6 = r8.length()
            if (r6 != 0) goto L8d
            r6 = r4
            goto L8e
        L8d:
            r6 = r3
        L8e:
            if (r6 != 0) goto L9d
            java.lang.String r5 = r5.getNote()
            boolean r5 = kotlin.text.StringsKt.contains(r5, r8, r4)
            if (r5 == 0) goto L9b
            goto L9d
        L9b:
            r5 = r3
            goto L9e
        L9d:
            r5 = r4
        L9e:
            if (r5 == 0) goto L78
            r1.add(r2)
            goto L78
        La4:
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            r7.addAll(r0)
            r7.addAll(r1)
            java.util.HashSet r8 = new java.util.HashSet
            r8.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r7 = r7.iterator()
        Lbd:
            boolean r1 = r7.hasNext()
            if (r1 == 0) goto Ld8
            java.lang.Object r1 = r7.next()
            r2 = r1
            com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r2 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r2
            java.lang.String r2 = r2.getUniqueId()
            boolean r2 = r8.add(r2)
            if (r2 == 0) goto Lbd
            r0.add(r1)
            goto Lbd
        Ld8:
            com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2 r7 = new kotlin.jvm.functions.Function2<com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean, com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean, java.lang.Integer>() { // from class: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2
                static {
                    /*
                        com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2 r0 = new com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2) com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2.INSTANCE com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 2
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ java.lang.Integer invoke(com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r1, com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r2) {
                    /*
                        r0 = this;
                        com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r1 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r1
                        com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r2 = (com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean) r2
                        java.lang.Integer r0 = r0.invoke(r1, r2)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function2
                @org.jetbrains.annotations.NotNull
                public final java.lang.Integer invoke(com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r3, com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean r4) {
                    /*
                        r2 = this;
                        float r2 = r3.getOrderIndex()
                        float r0 = r4.getOrderIndex()
                        int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                        if (r2 != 0) goto Le
                        r2 = 1
                        goto Lf
                    Le:
                        r2 = 0
                    Lf:
                        if (r2 != 0) goto L34
                        float r2 = r3.getOrderIndex()
                        r0 = 0
                        int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                        if (r2 < 0) goto L34
                        float r2 = r4.getOrderIndex()
                        int r2 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
                        if (r2 >= 0) goto L23
                        goto L34
                    L23:
                        float r2 = r3.getOrderIndex()
                        float r3 = r4.getOrderIndex()
                        int r2 = java.lang.Float.compare(r2, r3)
                        java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                        return r2
                    L34:
                        long r2 = r3.getCreatedAt()
                        long r0 = r4.getCreatedAt()
                        int r2 = kotlin.jvm.internal.Intrinsics.compare(r2, r0)
                        java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt$loadExcerptList$2.invoke(com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean, com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean):java.lang.Integer");
                }
            }
            com.sunia.HTREnginev2.jvj r8 = new com.sunia.HTREnginev2.jvj
            r8.<init>()
            java.util.List r7 = kotlin.collections.CollectionsKt.sortedWith(r0, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt.loadExcerptList(com.onyx.android.sdk.note.common.document.doc.NoteDocument, java.lang.String):java.util.List");
    }

    @NotNull
    public static final List<ExcerptInfoBean> loadExcerptListFromCB(@NotNull NoteDocument noteDocument, @NotNull CBQueryArgs queryArgs) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(queryArgs, "queryArgs");
        List<ShapeModel> loadShapeList = noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(queryArgs);
        if (loadShapeList.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = loadShapeList.iterator();
        while (it2.hasNext()) {
            ExcerptInfoBean excerptInfoBean = ShapeModelOptionsKt.getExcerptInfoBean((ShapeModel) it2.next());
            if (excerptInfoBean != null) {
                arrayList.add(excerptInfoBean);
            }
        }
        return arrayList;
    }

    public static /* synthetic */ List loadExcerptListFromCB$default(NoteDocument noteDocument, CBQueryArgs cBQueryArgs, int i, Object obj) {
        if ((i & 1) != 0) {
            cBQueryArgs = createLoadEnabledExcerptShapeListArgs(noteDocument);
        }
        return loadExcerptListFromCB(noteDocument, cBQueryArgs);
    }

    public static final boolean updateExcerptShapeModelInCB(@NotNull NoteDocument noteDocument, @NotNull List<ExcerptInfoBean> excerptInfoBeanList) {
        int collectionSizeOrDefault;
        Object obj;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(excerptInfoBeanList, "excerptInfoBeanList");
        CBQueryArgs createLoadEnabledExcerptShapeListArgs = createLoadEnabledExcerptShapeListArgs(noteDocument);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<ExcerptInfoBean> list = excerptInfoBeanList;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((ExcerptInfoBean) it2.next()).getUniqueId());
        }
        List<ShapeModel> loadShapeList = noteDocument.getProviderHolder().getNoteShapeProvider().loadShapeList(createLoadEnabledExcerptShapeListArgs.andWith(couchUtils.inIdsExpression(arrayList)));
        if (loadShapeList.isEmpty()) {
            return false;
        }
        ArrayList arrayList2 = new ArrayList();
        for (ShapeModel shapeModel : loadShapeList) {
            Iterator<T> it3 = list.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it3.next();
                if (Intrinsics.areEqual(((ExcerptInfoBean) obj).getUniqueId(), shapeModel.getUniqueId())) {
                    break;
                }
            }
            ExcerptInfoBean excerptInfoBean = (ExcerptInfoBean) obj;
            if (excerptInfoBean != null) {
                ShapeModelOptionsKt.setExcerptInfoBean(shapeModel, excerptInfoBean);
                arrayList2.add(shapeModel);
            }
        }
        noteDocument.getProviderHolder().getNoteShapeProvider().saveShapeList(arrayList2);
        return true;
    }
}
