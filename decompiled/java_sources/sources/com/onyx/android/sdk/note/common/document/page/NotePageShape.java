package com.onyx.android.sdk.note.common.document.page;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTags;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.graphical.GraphicalShape;
import com.onyx.android.sdk.note.common.shape.object.ObjectShape;
import com.onyx.android.sdk.note.common.utils.ShapeTimestampUtils;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u001a\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bC\u0010DJ\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J\u001c\u0010\n\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0003H\u0002J\u0014\u0010\f\u001a\u00020\u000b*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\u0002J \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f*\u00020\u00022\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00030\rH\u0002J\u0012\u0010\u0011\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J\u001c\u0010\u0013\u001a\u00020\u0005*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0012\u001a\u00020\u000bJ\"\u0010\u0016\u001a\u00020\u0005*\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00142\b\b\u0002\u0010\u0012\u001a\u00020\u000bJ\u0018\u0010\u0017\u001a\u00020\u0005*\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u0014J\n\u0010\u0018\u001a\u00020\u0005*\u00020\u0002J\u0018\u0010\u0019\u001a\u00020\u0007*\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\rJ\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u0003*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aJ\u0012\u0010\u001f\u001a\u00020\u001e*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001aJ\u0012\u0010 \u001a\u00020\u001e*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001aJ\n\u0010!\u001a\u00020\u0005*\u00020\u0002J\u0014\u0010\"\u001a\u0004\u0018\u00010\u0003*\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aJ\u001e\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001a0#J\u0010\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0018\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u0006\u0010'\u001a\u00020\u001eJ\u0018\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u0006\u0010)\u001a\u00020\u000bJ\u001e\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\rJ\u0010\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\n\u0010-\u001a\u00020\u000b*\u00020\u0002J \u0010/\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u000e\u0010.\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\rJ \u00101\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u000e\u00100\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\rJ\f\u00102\u001a\u0004\u0018\u00010\u0003*\u00020\u0002J\u0010\u00103\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0010\u00104\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0010\u00105\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0010\u00106\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0010\u00107\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\u0010\u00108\u001a\b\u0012\u0004\u0012\u00020\u00030\u000f*\u00020\u0002J\u0010\u00109\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u0002J\n\u0010:\u001a\u00020\u001e*\u00020\u0002J\n\u0010;\u001a\u00020\u000b*\u00020\u0002J\u0018\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u0006\u0010<\u001a\u00020\u001aJ\u0018\u0010=\u001a\b\u0012\u0004\u0012\u00020\u00030\r*\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0003J(\u0010B\u001a\u00020\u00052\u0018\u0010?\u001a\u0014\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\r0>2\u0006\u0010A\u001a\u00020@¨\u0006E"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;", "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "", "c", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "changedShapeBean", "removeShape", C6997f.f39671c, "", "d", "", "shapeList", "", "e", "saveShape", FirebaseAnalytics.Param.INDEX, "addShape", "", "shapes", "addShapeList", "addTransformedShapeList", "updateShapeList", "removeShapeList", "", "shapeId", "removeShapeById", "shapeUniqueId", "", "isShapeRemoved", "isMemShapeRemoved", "updateTimestampShape", "getShapeById", "", "shapeIds", "getShapeListById", "getRegularShapes", "onlyVisible", "getShapesSortByLayer", "layerId", "getShapesByLayerId", "getRelationShapes", "currentLayerShapes", "currentLayerShapeCount", CouchFieldKey.KEY_TAG_ID_LIST, "getShapeByTagIds", "linkIdList", "getShapeByLinkIds", "getRichTextShape", "getAudioShapes", "getAttachmentShapes", "getLinkShapes", "getTapeShapes", "getReferenceShapes", "getRenderShapeList", "getExcerptShapes", "hasShapes", "getCurrentLayerShapeCount", CouchFieldKey.KEY_GROUP_ID, "loadShapeListByGroupId", "", "layerMap", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "ensureLayerList", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNotePageShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotePageShape.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n1855#2,2:305\n1855#2,2:307\n1747#2,3:309\n766#2:312\n857#2,2:313\n766#2:315\n857#2,2:316\n766#2:318\n857#2,2:319\n1549#2:321\n1620#2,3:322\n766#2:326\n857#2,2:327\n766#2:329\n857#2,2:330\n766#2:332\n857#2,2:333\n766#2:335\n857#2,2:336\n1774#2,4:338\n766#2:342\n857#2,2:343\n766#2:345\n857#2,2:346\n766#2:348\n857#2,2:349\n766#2:351\n857#2,2:352\n766#2:354\n857#2,2:355\n766#2:357\n857#2,2:358\n1855#2,2:360\n766#2:362\n857#2,2:363\n1774#2,4:365\n1#3:325\n*S KotlinDebug\n*F\n+ 1 NotePageShape.kt\ncom/onyx/android/sdk/note/common/document/page/NotePageShape\n*L\n57#1:305,2\n65#1:307,2\n96#1:309,3\n122#1:312\n122#1:313,2\n123#1:315\n123#1:316,2\n124#1:318\n124#1:319,2\n125#1:321\n125#1:322,3\n145#1:326\n145#1:327,2\n149#1:329\n149#1:330,2\n161#1:332\n161#1:333,2\n165#1:335\n165#1:336,2\n186#1:338,4\n190#1:342\n190#1:343,2\n194#1:345\n194#1:346,2\n202#1:348\n202#1:349,2\n206#1:351\n206#1:352,2\n210#1:354\n210#1:355,2\n214#1:357\n214#1:358,2\n228#1:360,2\n266#1:362\n266#1:363,2\n274#1:365,4\n*E\n"})
/* loaded from: classes8.dex */
public final class NotePageShape {

    @NotNull
    public static final NotePageShape INSTANCE = new NotePageShape();

    public static /* synthetic */ void addShape$default(NotePageShape notePageShape, NotePage notePage, Shape shape, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        notePageShape.addShape(notePage, shape, i);
    }

    public static /* synthetic */ void addShapeList$default(NotePageShape notePageShape, NotePage notePage, Collection collection, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = -1;
        }
        notePageShape.addShapeList(notePage, collection, i);
    }

    /* renamed from: b */
    public static final boolean m33791b(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    public final void addShape(@NotNull NotePage notePage, @NotNull final Shape shape, int i) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        List<Shape> shapeList = notePage.getShapeList();
        final Function1<Shape, Boolean> function1 = new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageShape$addShape$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(Shape.this.getShapeUniqueId(), it2.getShapeUniqueId()));
            }
        };
        shapeList.removeIf(new Predicate() { // from class: com.sunia.HTREnginev2.v0k
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean m33791b;
                m33791b = NotePageShape.m33791b(Function1.this, obj);
                return m33791b;
            }
        });
        if (i >= 0) {
            notePage.getShapeList().add(i, shape);
        } else {
            notePage.getShapeList().add(shape);
        }
        m33792c(notePage, shape);
        notePage.setDirty(true);
    }

    public final void addShapeList(@NotNull NotePage notePage, @NotNull Collection<? extends Shape> shapes, int i) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            addShape(notePage, it2.next(), i);
        }
    }

    public final void addTransformedShapeList(@NotNull NotePage notePage, @NotNull Collection<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        for (Shape shape : shapes) {
            notePage.getShapeList().add(shape);
            INSTANCE.m33792c(notePage, shape);
        }
        notePage.setDirty(true);
    }

    /* renamed from: c */
    public final void m33792c(NotePage notePage, Shape shape) {
        notePage.updateShape(shape);
        notePage.getNewAddedShapeMap().put(shape.getShapeUniqueId(), shape);
        notePage.getRemovedShapeMap().remove(shape.getShapeUniqueId());
        notePage.updateTagShapeChange(shape, true);
    }

    public final int currentLayerShapeCount(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        if ((shapeList instanceof Collection) && shapeList.isEmpty()) {
            return 0;
        }
        Iterator<T> it2 = shapeList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if ((((Shape) it2.next()).getLayerId() == notePage.getLayerIndex()) && (i = i + 1) < 0) {
                CollectionsKt__CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    @NotNull
    public final List<Shape> currentLayerShapes(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        return getShapesByLayerId(notePage, notePage.getLayerIndex());
    }

    /* renamed from: d */
    public final int m33793d(NotePage notePage, Shape shape) {
        int size = notePage.getShapeList().size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.areEqual(notePage.getShapeList().get(i).getShapeUniqueId(), shape.getShapeUniqueId())) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: e */
    public final List<Shape> m33794e(NotePage notePage, List<? extends Shape> list) {
        List<? extends Shape> mutableList;
        List<? extends Shape> mutableList2;
        List mutableList3;
        List<? extends Shape> list2 = list;
        if (CollectionKt.isNullOrEmpty(list2)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        Map<Integer, ? extends List<? extends Shape>> mapList = CollectionKt.toMapList(list2, new Function1<Shape, Integer>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageShape$sortShapesByLayerIdAndType$layerMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(it2.getLayerId());
            }
        }, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageShape$sortShapesByLayerIdAndType$layerMap$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        });
        ensureLayerList(mapList, notePage.getPageInfo());
        for (LayerInfo layerInfo : notePage.getPageInfo().getLayerList()) {
            ArrayList arrayList2 = new ArrayList();
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) CollectionKt.ensureList(mapList.get(Integer.valueOf(layerInfo.getId()))));
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeTypes.filterNonUnderContentBottomShapes(mutableList));
            List<Shape> filterUnderContentBottomShapes = shapeTypes.filterUnderContentBottomShapes(mutableList);
            List<Shape> filterTapesShapes = shapeTypes.filterTapesShapes(mutableList);
            List<? extends Shape> list3 = mutableList2;
            mutableList.removeAll(list3);
            List<Shape> list4 = filterUnderContentBottomShapes;
            mutableList.removeAll(list4);
            List<Shape> list5 = filterTapesShapes;
            mutableList.removeAll(list5);
            if (notePage.getDarkTheme()) {
                mutableList3 = CollectionsKt___CollectionsKt.toMutableList((Collection) shapeTypes.filterMarkerShapes(mutableList2));
                List list6 = mutableList3;
                CollectionKt.safeAddAll(list6, shapeTypes.filterSubTypeMarkerShapes(mutableList2));
                mutableList2.removeAll(list6);
                arrayList2.addAll(mutableList2);
                arrayList2.addAll(list6);
            } else {
                arrayList2.addAll(list3);
            }
            arrayList2.addAll(list4);
            arrayList2.addAll(mutableList);
            arrayList2.addAll(list5);
            CollectionKt.safeAddAll(arrayList, arrayList2);
        }
        if (CollectionKt.getSize(arrayList) != CollectionKt.getSize(list2)) {
            Debug.INSTANCE.m32059w(NotePage.class, "sortShapesByLayerIdAndType not equal sortedList:" + CollectionKt.getSize(arrayList) + ",originList:" + CollectionKt.getSize(list2), new Object[0]);
        }
        return arrayList;
    }

    public final void ensureLayerList(@NotNull Map<Integer, ? extends List<? extends Shape>> layerMap, @NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(layerMap, "layerMap");
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        if (layerMap.size() == pageInfo.getLayerCount()) {
            return;
        }
        Iterator<Integer> it2 = layerMap.keySet().iterator();
        while (it2.hasNext()) {
            int intValue = it2.next().intValue();
            if (!pageInfo.layerInfoExist(intValue)) {
                pageInfo.addNewLayerInfo(intValue);
            }
        }
    }

    /* renamed from: f */
    public final void m33795f(NotePage notePage, ChangedShapeBean changedShapeBean, Shape shape) {
        List<String> mutableList;
        if (CollectionKt.isNullOrEmpty(shape.getTagIdList())) {
            return;
        }
        List<Shape> shapeByTagIds = notePage.getShapeByTagIds(shape.getTagIdList());
        for (Shape shape2 : shapeByTagIds) {
            List<String> tagIdList = shape.getTagIdList();
            if (tagIdList != null) {
                List<String> removeTagIds = ShapeTags.INSTANCE.removeTagIds(shape2, tagIdList);
                if (CollectionKt.isNonBlank(removeTagIds)) {
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) removeTagIds);
                    changedShapeBean.addShapeTag(shape2, mutableList);
                }
            }
        }
        if (shapeByTagIds.isEmpty()) {
            return;
        }
        addShapeList$default(this, notePage, shapeByTagIds, 0, 2, null);
    }

    @NotNull
    public final List<Shape> getAttachmentShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isAttachmentShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getAudioShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isAudioShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    public final int getCurrentLayerShapeCount(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        if ((shapeList instanceof Collection) && shapeList.isEmpty()) {
            return 0;
        }
        Iterator<T> it2 = shapeList.iterator();
        int i = 0;
        while (it2.hasNext()) {
            if ((((Shape) it2.next()).getLayerId() == notePage.getLayerIndex()) && (i = i + 1) < 0) {
                CollectionsKt__CollectionsKt.throwCountOverflow();
            }
        }
        return i;
    }

    @NotNull
    public final List<Shape> getExcerptShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isExcerptShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getLinkShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isLinkShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getReferenceShapes(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        return ShapeTypes.INSTANCE.filterReferenceShapes(notePage.getShapeList());
    }

    @NotNull
    public final List<Shape> getRegularShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            Shape shape = (Shape) obj;
            if ((shape instanceof GraphicalShape) || (shape instanceof ObjectShape)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getRelationShapes(@NotNull NotePage notePage, @NotNull List<? extends Shape> shapes) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        HashSet hashSet = new HashSet(shapes);
        for (Shape shape : shapes) {
            CollectionKt.safeAddAll(arrayList, shape.getTagIdList());
            CollectionKt.safeAddAll(arrayList2, shape.getLinkIdList());
        }
        hashSet.addAll(notePage.getShapeByTagIds(arrayList));
        hashSet.addAll(getShapeByLinkIds(notePage, arrayList));
        list = CollectionsKt___CollectionsKt.toList(hashSet);
        return list;
    }

    @NotNull
    public final List<Shape> getRenderShapeList(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        notePage.sortShapeList();
        return m33794e(notePage, notePage.getShapeList());
    }

    @Nullable
    public final Shape getRichTextShape(@NotNull NotePage notePage) {
        Object obj;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Iterator<T> it2 = notePage.getShapeList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (ShapeTypes.INSTANCE.isRichTextShape((Shape) obj)) {
                break;
            }
        }
        return (Shape) obj;
    }

    @Nullable
    public final Shape getShapeById(@NotNull NotePage notePage, @NotNull String shapeId) {
        Object obj;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Iterator<T> it2 = notePage.getShapeList().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            if (Intrinsics.areEqual(((Shape) obj).getShapeUniqueId(), shapeId)) {
                break;
            }
        }
        return (Shape) obj;
    }

    @NotNull
    public final List<Shape> getShapeByLinkIds(@NotNull NotePage notePage, @Nullable List<String> list) {
        List<Shape> list2;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (CollectionKt.contains(list, ((Shape) obj).getLinkIdList())) {
                arrayList.add(obj);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        return list2;
    }

    @NotNull
    public final List<Shape> getShapeByTagIds(@NotNull NotePage notePage, @Nullable List<String> list) {
        List<Shape> list2;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (CollectionKt.contains(list, ((Shape) obj).getTagIdList())) {
                arrayList.add(obj);
            }
        }
        list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        return list2;
    }

    @NotNull
    public final List<Shape> getShapeListById(@NotNull NotePage notePage, @NotNull Set<String> shapeIds) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeIds, "shapeIds");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (shapeIds.contains(((Shape) obj).getShapeUniqueId())) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getShapesByLayerId(@NotNull NotePage notePage, int i) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (((Shape) obj).getLayerId() == i) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    @NotNull
    public final List<Shape> getShapesSortByLayer(@NotNull NotePage notePage, boolean z) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        if (notePage.getPageInfo().getLayerList().isEmpty()) {
            return notePage.getShapeList();
        }
        List<Shape> renderShapeList = getRenderShapeList(notePage);
        if (!z) {
            return renderShapeList;
        }
        Map map = CollectionKt.toMap(notePage.getPageInfo().getLayerList(), new Function1<LayerInfo, Integer>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageShape$getShapesSortByLayer$layerMap$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Integer invoke(@NotNull LayerInfo it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Integer.valueOf(it2.getId());
            }
        });
        ArrayList arrayList = new ArrayList();
        for (Object obj : renderShapeList) {
            LayerInfo layerInfo = (LayerInfo) map.get(Integer.valueOf(((Shape) obj).getLayerId()));
            boolean z2 = false;
            if (layerInfo != null && layerInfo.getShow()) {
                z2 = true;
            }
            if (z2) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> getTapeShapes(@NotNull NotePage notePage) {
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isTargetTapeShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        list = CollectionsKt___CollectionsKt.toList(arrayList);
        return list;
    }

    public final boolean hasShapes(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        return notePage.getShapeList().size() > 0;
    }

    public final boolean isMemShapeRemoved(@NotNull NotePage notePage, @NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        return notePage.getRemovedShapeMap().containsKey(shapeUniqueId);
    }

    public final boolean isShapeRemoved(@NotNull NotePage notePage, @NotNull String shapeUniqueId) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeUniqueId, "shapeUniqueId");
        List<Shape> shapeList = notePage.getShapeList();
        boolean z = false;
        if (!(shapeList instanceof Collection) || !shapeList.isEmpty()) {
            Iterator<T> it2 = shapeList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                if (Intrinsics.areEqual(((Shape) it2.next()).getShapeUniqueId(), shapeUniqueId)) {
                    z = true;
                    break;
                }
            }
        }
        return !z;
    }

    @NotNull
    public final List<Shape> loadShapeListByGroupId(@NotNull NotePage notePage, @NotNull final String groupId) {
        Sequence asSequence;
        Sequence filter;
        List<Shape> list;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(groupId, "groupId");
        asSequence = CollectionsKt___CollectionsKt.asSequence(notePage.getShapeList());
        filter = SequencesKt___SequencesKt.filter(asSequence, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageShape$loadShapeListByGroupId$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(Intrinsics.areEqual(groupId, it2.getGroupId()));
            }
        });
        list = SequencesKt___SequencesKt.toList(filter);
        return list;
    }

    @Nullable
    public final Shape removeShapeById(@NotNull NotePage notePage, @NotNull String shapeId) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapeId, "shapeId");
        Shape shapeById = getShapeById(notePage, shapeId);
        if (shapeById == null) {
            return null;
        }
        NotePage.removeShape$default(notePage, shapeById, false, 2, null);
        return shapeById;
    }

    @NotNull
    public final ChangedShapeBean removeShapeList(@NotNull NotePage notePage, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        if (shapes.isEmpty()) {
            return changedShapeBean;
        }
        Iterator<? extends Shape> it2 = shapes.iterator();
        while (it2.hasNext()) {
            changedShapeBean.merge(NotePage.removeShape$default(notePage, it2.next(), false, 2, null));
        }
        return changedShapeBean;
    }

    public final void saveShape(@NotNull NotePage notePage, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        addShape$default(this, notePage, shape, 0, 2, null);
    }

    public final void updateShapeList(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Iterator<T> it2 = notePage.getShapeList().iterator();
        while (it2.hasNext()) {
            INSTANCE.m33792c(notePage, (Shape) it2.next());
        }
        notePage.setDirty(true);
    }

    public final void updateTimestampShape(@NotNull NotePage notePage) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        List<Shape> shapeList = notePage.getShapeList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapeList) {
            if (ShapeTypes.INSTANCE.isTimestampShape((Shape) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (!notePage.getUpdatedTimeShapeIds().contains(((Shape) obj2).getShapeUniqueId())) {
                arrayList2.add(obj2);
            }
        }
        ArrayList<Shape> arrayList3 = new ArrayList();
        for (Object obj3 : arrayList2) {
            if (ShapeTimestampUtils.INSTANCE.updateShapeTimestamp((Shape) obj3)) {
                arrayList3.add(obj3);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList3, 10);
        ArrayList arrayList4 = new ArrayList(collectionSizeOrDefault);
        for (Shape shape : arrayList3) {
            notePage.getUpdatedTimeShapeIds().add(shape.getShapeUniqueId());
            addShape$default(INSTANCE, notePage, shape, 0, 2, null);
            arrayList4.add(Unit.INSTANCE);
        }
    }

    @NotNull
    public final List<Shape> loadShapeListByGroupId(@NotNull NotePage notePage, @NotNull Shape shape) {
        List<Shape> listOf;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        String groupId = shape.getGroupId();
        if (groupId == null || groupId.length() == 0) {
            Debug.INSTANCE.m32059w(notePage.getClass(), "shape groupId empty, expected not empty", new Object[0]);
            listOf = CollectionsKt__CollectionsJVMKt.listOf(shape);
            return listOf;
        }
        return loadShapeListByGroupId(notePage, groupId);
    }
}
