package com.onyx.android.sdk.note.request.page;

import android.graphics.Matrix;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.note.request.page.RotateNotePageRequest;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u0013¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002J\u0016\u0010\r\u001a\u00020\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0002R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/page/RotateNotePageRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "referenceShapes", "j", "normalShapes", C6999h.f39688c, "", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", C6998g.f39679a, "Ljava/util/Collection;", "boxInfoList", "", "F", "rotation", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;F)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRotateNotePageRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RotateNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/RotateNotePageRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,100:1\n1855#2:101\n1855#2,2:102\n1856#2:104\n1603#2,9:105\n1855#2:114\n1856#2:116\n1612#2:117\n1477#2:118\n1502#2,3:119\n1505#2,3:129\n1855#2,2:133\n1477#2:136\n1502#2,3:137\n1505#2,3:147\n1477#2:152\n1502#2,3:153\n1505#2,3:163\n1620#2,3:167\n1#3:115\n1#3:170\n372#4,7:122\n372#4,7:140\n372#4,7:156\n215#5:132\n216#5:135\n215#5,2:150\n215#5:166\n216#5:171\n1313#6,2:172\n*S KotlinDebug\n*F\n+ 1 RotateNotePageRequest.kt\ncom/onyx/android/sdk/note/request/page/RotateNotePageRequest\n*L\n36#1:101\n43#1:102,2\n36#1:104\n57#1:105,9\n57#1:114\n57#1:116\n57#1:117\n58#1:118\n58#1:119,3\n58#1:129,3\n61#1:133,2\n69#1:136\n69#1:137,3\n69#1:147,3\n85#1:152\n85#1:153,3\n85#1:163,3\n87#1:167,3\n57#1:115\n58#1:122,7\n69#1:140,7\n85#1:156,7\n59#1:132\n59#1:135\n69#1:150,2\n85#1:166\n85#1:171\n96#1:172,2\n*E\n"})
/* loaded from: classes8.dex */
public final class RotateNotePageRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<BoxInfo> boxInfoList;

    /* renamed from: h, reason: from kotlin metadata */
    public final float rotation;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RotateNotePageRequest(@NotNull NoteBundle noteBundle, @NotNull Collection<BoxInfo> boxInfoList, float f) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(boxInfoList, "boxInfoList");
        this.boxInfoList = boxInfoList;
        this.rotation = f;
    }

    /* renamed from: i */
    public static final boolean m34174i(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* renamed from: k */
    public static final boolean m34175k(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (CollectionKt.isNullOrEmpty(this.boxInfoList)) {
            return;
        }
        for (BoxInfo boxInfo : this.boxInfoList) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(noteBundle.getNoteDoc(), boxInfo.getId());
            if (notePage == null) {
                return;
            }
            BoxInfo copy = boxInfo.copy();
            BoxInfo.Companion companion = BoxInfo.INSTANCE;
            companion.rotate(copy, -this.rotation);
            Matrix rotate = companion.rotate(copy, this.rotation);
            Iterator<T> it2 = notePage.getShapeList().iterator();
            while (it2.hasNext()) {
                ((Shape) it2.next()).postConcat(rotate);
            }
            NotePageShape.INSTANCE.updateShapeList(notePage);
            Pair<List<Shape>, List<Shape>> splitShapes = ShapeTypes.INSTANCE.splitShapes(notePage.getShapeList());
            m34177j(notePage, splitShapes.getSecond());
            m34176h(splitShapes.getFirst());
        }
        noteBundle.getCommandManager().reset();
    }

    /* renamed from: h */
    public final void m34176h(List<? extends Shape> normalShapes) {
        Sequence asSequence;
        Sequence filter;
        Sequence mapNotNull;
        Sequence flattenSequenceOfIterable;
        Sequence distinctBy;
        Set set;
        List<ShapeReferenceBean> referenceShapeBeanList;
        asSequence = CollectionsKt___CollectionsKt.asSequence(normalShapes);
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.request.page.RotateNotePageRequest$removeNormalShapeReferenceShapes$normalShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(it2.hasReferenceShapeBeanList());
            }
        });
        mapNotNull = SequencesKt___SequencesKt.mapNotNull(filter, new Function1<Shape, List<ShapeReferenceBean>>() { // from class: com.onyx.android.sdk.note.request.page.RotateNotePageRequest$removeNormalShapeReferenceShapes$removeShapeBeanList$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final List<ShapeReferenceBean> invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                ShapeSourceBean shapeSrcBean = it2.getShapeSrcBean();
                if (shapeSrcBean != null) {
                    return shapeSrcBean.getReferenceShapeBeanList();
                }
                return null;
            }
        });
        flattenSequenceOfIterable = SequencesKt__SequencesKt.flattenSequenceOfIterable(mapNotNull);
        distinctBy = SequencesKt___SequencesKt.distinctBy(flattenSequenceOfIterable, new Function1<ShapeReferenceBean, String>() { // from class: com.onyx.android.sdk.note.request.page.RotateNotePageRequest$removeNormalShapeReferenceShapes$removeShapeBeanList$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeReferenceBean it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageId() + it2.getShapeId();
            }
        });
        set = SequencesKt___SequencesKt.toSet(distinctBy);
        final LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String pageId = ((ShapeReferenceBean) obj).getPageId();
            Object obj2 = linkedHashMap.get(pageId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageId, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), (String) entry.getKey());
            if (notePage != null) {
                Iterable iterable = (Iterable) entry.getValue();
                LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    linkedHashSet2.add(((ShapeReferenceBean) it2.next()).getShapeId());
                }
                linkedHashSet.addAll(linkedHashSet2);
                List<Shape> shapeListById = NotePageShape.INSTANCE.getShapeListById(notePage, linkedHashSet2);
                if (!CollectionKt.isNonBlank(shapeListById)) {
                    shapeListById = null;
                }
                if (shapeListById != null) {
                    NotePage.removeShapeList$default(notePage, shapeListById, false, 2, null);
                    NotePageSave.INSTANCE.savePage(notePage);
                }
            }
        }
        Iterator it3 = filter.iterator();
        while (it3.hasNext()) {
            ShapeSourceBean shapeSrcBean = ((Shape) it3.next()).getShapeSrcBean();
            if (shapeSrcBean != null && (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) != null) {
                final Function1<ShapeReferenceBean, Boolean> function1 = new Function1<ShapeReferenceBean, Boolean>() { // from class: com.onyx.android.sdk.note.request.page.RotateNotePageRequest$removeNormalShapeReferenceShapes$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Boolean invoke(@NotNull ShapeReferenceBean it4) {
                        Intrinsics.checkNotNullParameter(it4, "it");
                        return Boolean.valueOf(linkedHashSet.contains(it4.getShapeId()));
                    }
                };
                referenceShapeBeanList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.bsl
                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj3) {
                        boolean m34174i;
                        m34174i = RotateNotePageRequest.m34174i(Function1.this, obj3);
                        return m34174i;
                    }
                });
            }
        }
    }

    /* renamed from: j */
    public final void m34177j(NotePage notePage, List<? extends Shape> referenceShapes) {
        Boolean bool;
        List<ShapeReferenceBean> referenceShapeBeanList;
        final String pageUniqueId = notePage.getPageUniqueId();
        NotePage.removeShapeList$default(notePage, referenceShapes, false, 2, null);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it2 = referenceShapes.iterator();
        while (it2.hasNext()) {
            ShapeReferenceBean shapeReferenceBean = ((Shape) it2.next()).getShapeReferenceBean();
            if (shapeReferenceBean != null) {
                arrayList.add(shapeReferenceBean);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : arrayList) {
            String pageId = ((ShapeReferenceBean) obj).getPageId();
            Object obj2 = linkedHashMap.get(pageId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageId, obj2);
            }
            ((List) obj2).add(obj);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            NotePage notePage2 = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), (String) entry.getKey());
            if (notePage2 != null) {
                Iterator it3 = ((Iterable) entry.getValue()).iterator();
                while (it3.hasNext()) {
                    Shape shapeById = NotePageShape.INSTANCE.getShapeById(notePage2, ((ShapeReferenceBean) it3.next()).getShapeId());
                    if (shapeById != null) {
                        ShapeSourceBean shapeSrcBean = shapeById.getShapeSrcBean();
                        if (shapeSrcBean == null || (referenceShapeBeanList = shapeSrcBean.getReferenceShapeBeanList()) == null) {
                            bool = null;
                        } else {
                            final Function1<ShapeReferenceBean, Boolean> function1 = new Function1<ShapeReferenceBean, Boolean>() { // from class: com.onyx.android.sdk.note.request.page.RotateNotePageRequest$removeReferenceShapes$3$1$result$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                @NotNull
                                public final Boolean invoke(@NotNull ShapeReferenceBean it4) {
                                    Intrinsics.checkNotNullParameter(it4, "it");
                                    return Boolean.valueOf(Intrinsics.areEqual(it4.getPageId(), pageUniqueId));
                                }
                            };
                            bool = Boolean.valueOf(referenceShapeBeanList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.asl
                                @Override // java.util.function.Predicate
                                public final boolean test(Object obj3) {
                                    boolean m34175k;
                                    m34175k = RotateNotePageRequest.m34175k(Function1.this, obj3);
                                    return m34175k;
                                }
                            }));
                        }
                        if (Intrinsics.areEqual(bool, Boolean.TRUE)) {
                            linkedHashSet.add(shapeById);
                        }
                    }
                }
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj3 : linkedHashSet) {
            String pageUniqueId2 = ((Shape) obj3).getPageUniqueId();
            Object obj4 = linkedHashMap2.get(pageUniqueId2);
            if (obj4 == null) {
                obj4 = new ArrayList();
                linkedHashMap2.put(pageUniqueId2, obj4);
            }
            ((List) obj4).add(obj3);
        }
        for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
            NotePage notePage3 = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), (String) entry2.getKey());
            if (notePage3 != null) {
                NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage3, (Collection) entry2.getValue(), 0, 2, null);
                NotePageSave.INSTANCE.savePage(notePage3);
            }
        }
    }
}
