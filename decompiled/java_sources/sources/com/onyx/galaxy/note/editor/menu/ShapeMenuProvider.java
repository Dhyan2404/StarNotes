package com.onyx.galaxy.note.editor.menu;

import androidx.room.RoomMasterTable;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.galaxy.note.editor.data.SelectionMenuType;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002J\u000e\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u000e\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\u0002H\u0002J\u001e\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u001e\u0010\r\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002J\u0016\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\u00022\u0006\u0010\t\u001a\u00020\u000eH\u0002R\u0014\u0010\u0012\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00108\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0011R&\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/galaxy/note/editor/menu/ShapeMenuProvider;", "", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "Lcom/onyx/galaxy/note/editor/data/SelectionMenuType;", "getShapeMenus", "c", "d", "type", "shapes", "", "b", "a", "", "e", "", "I", "PenShapeSetType", "GraphicalShapeSetType", "", "Ljava/util/Map;", "shapeMenusMap", Constants.CONSTRUCTOR_NAME, "()V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nShapeMenuProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShapeMenuProvider.kt\ncom/onyx/galaxy/note/editor/menu/ShapeMenuProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,172:1\n1655#2,8:173\n1054#2:181\n1855#2,2:182\n766#2:184\n857#2,2:185\n2661#2,7:187\n766#2:194\n857#2,2:195\n1#3:197\n*S KotlinDebug\n*F\n+ 1 ShapeMenuProvider.kt\ncom/onyx/galaxy/note/editor/menu/ShapeMenuProvider\n*L\n99#1:173,8\n100#1:181\n101#1:182,2\n127#1:184\n127#1:185,2\n128#1:187,7\n132#1:194\n132#1:195,2\n*E\n"})
/* loaded from: classes9.dex */
public final class ShapeMenuProvider {

    @NotNull
    public static final ShapeMenuProvider INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    public static final int PenShapeSetType = 1000;

    /* renamed from: b, reason: from kotlin metadata */
    public static final int GraphicalShapeSetType = 1001;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final Map<String, List<SelectionMenuType>> shapeMenusMap;

    static {
        List listOf;
        List listOf2;
        List listOf3;
        List listOf4;
        List listOf5;
        List listOf6;
        List listOf7;
        List listOf8;
        List listOf9;
        ShapeMenuProvider shapeMenuProvider = new ShapeMenuProvider();
        INSTANCE = shapeMenuProvider;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("19", shapeMenuProvider.m46445c());
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(shapeMenuProvider.m46445c());
        arrayList.remove(SelectionMenuType.OCR_AI);
        arrayList.remove(SelectionMenuType.ADD_TO_STICKER);
        Unit unit = Unit.INSTANCE;
        linkedHashMap.put("35", arrayList);
        linkedHashMap.put(RoomMasterTable.DEFAULT_ID, shapeMenuProvider.m46446d());
        SelectionMenuType selectionMenuType = SelectionMenuType.DELETE;
        SelectionMenuType selectionMenuType2 = SelectionMenuType.CUT;
        SelectionMenuType selectionMenuType3 = SelectionMenuType.COPY;
        SelectionMenuType selectionMenuType4 = SelectionMenuType.STYLE;
        SelectionMenuType selectionMenuType5 = SelectionMenuType.TOPPING;
        SelectionMenuType selectionMenuType6 = SelectionMenuType.BOTTOMING;
        SelectionMenuType selectionMenuType7 = SelectionMenuType.HWR_BEAUTIFY;
        SelectionMenuType selectionMenuType8 = SelectionMenuType.HWR_AI;
        SelectionMenuType selectionMenuType9 = SelectionMenuType.CREATE_LINK;
        SelectionMenuType selectionMenuType10 = SelectionMenuType.MOVE_TO_LAYER;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType4, selectionMenuType5, selectionMenuType6, selectionMenuType7, selectionMenuType8, selectionMenuType9, selectionMenuType10});
        linkedHashMap.put("1000", listOf);
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType4, selectionMenuType5, selectionMenuType6, selectionMenuType9, selectionMenuType10});
        linkedHashMap.put("1001", listOf2);
        SelectionMenuType selectionMenuType11 = SelectionMenuType.EDIT;
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType4, selectionMenuType5, selectionMenuType6, selectionMenuType11, selectionMenuType9, selectionMenuType10});
        linkedHashMap.put("40", listOf3);
        listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType4, selectionMenuType10});
        linkedHashMap.put("39", listOf4);
        listOf5 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType5, selectionMenuType6, selectionMenuType11, selectionMenuType9, selectionMenuType10});
        linkedHashMap.put("16", listOf5);
        listOf6 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType5, selectionMenuType6, selectionMenuType11, SelectionMenuType.GOTO_LINK, selectionMenuType10});
        linkedHashMap.put("33", listOf6);
        listOf7 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, SelectionMenuType.PLAY, selectionMenuType2, selectionMenuType5, selectionMenuType6, SelectionMenuType.RENAME, selectionMenuType10});
        linkedHashMap.put("AUDIO", listOf7);
        listOf8 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType10});
        linkedHashMap.put("45", listOf8);
        listOf9 = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{selectionMenuType, selectionMenuType2, selectionMenuType3, selectionMenuType4, selectionMenuType5, selectionMenuType6, selectionMenuType7, selectionMenuType8, selectionMenuType9, selectionMenuType10});
        linkedHashMap.put("48", listOf9);
        shapeMenusMap = linkedHashMap;
    }

    /* renamed from: a */
    public final boolean m46443a(SelectionMenuType type, List<? extends Shape> shapes) {
        if (type != SelectionMenuType.CREATE_LINK || CollectionKt.getSize(shapes) == 1) {
            return true;
        }
        ShapeUtils shapeUtils = ShapeUtils.INSTANCE;
        return shapeUtils.isAllSameType(shapes) && shapeUtils.isAllPenType(shapes);
    }

    /* renamed from: b */
    public final boolean m46444b(SelectionMenuType type, List<? extends Shape> shapes) {
        return type != SelectionMenuType.STYLE || ShapeUtils.INSTANCE.isAllSameType(shapes);
    }

    /* renamed from: c */
    public final List<SelectionMenuType> m46445c() {
        List<SelectionMenuType> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{SelectionMenuType.DELETE, SelectionMenuType.CUT, SelectionMenuType.COPY, SelectionMenuType.CROP, SelectionMenuType.TOPPING, SelectionMenuType.BOTTOMING, SelectionMenuType.ADD_TO_STICKER, SelectionMenuType.OCR_AI, SelectionMenuType.LOCK, SelectionMenuType.CREATE_LINK, SelectionMenuType.MOVE_TO_LAYER});
        return listOf;
    }

    /* renamed from: d */
    public final List<SelectionMenuType> m46446d() {
        List<SelectionMenuType> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new SelectionMenuType[]{SelectionMenuType.DELETE, SelectionMenuType.GOTO_SOURCE, SelectionMenuType.CUT, SelectionMenuType.COPY, SelectionMenuType.TOPPING, SelectionMenuType.BOTTOMING, SelectionMenuType.OCR_AI, SelectionMenuType.LOCK, SelectionMenuType.MOVE_TO_LAYER});
        return listOf;
    }

    /* renamed from: e */
    public final List<SelectionMenuType> m46447e(String type) {
        List<SelectionMenuType> list = shapeMenusMap.get(type);
        if (list == null) {
            list = SelectionMenuType.INSTANCE.getCommonMenuTypes();
        }
        return list;
    }

    @NotNull
    public final List<SelectionMenuType> getShapeMenus(@NotNull List<? extends Shape> shapeList) {
        List<Shape> sortedWith;
        List flatten;
        List distinct;
        List<SelectionMenuType> mutableList;
        Set set;
        Set intersect;
        List mutableList2;
        List<SelectionMenuType> mutableListOf;
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(shapeList);
        if (ShapeUtils.INSTANCE.hasLocked(filterNormalShapes)) {
            mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(SelectionMenuType.UNLOCK);
            if (CollectionKt.contains(shapeList, new Function1<Shape, Boolean>() { // from class: com.onyx.galaxy.note.editor.menu.ShapeMenuProvider$getShapeMenus$1$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull Shape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(ShapeTypes.INSTANCE.isQuoteShape(it2));
                }
            })) {
                mutableListOf.add(SelectionMenuType.GOTO_SOURCE);
            }
            return mutableListOf;
        }
        List<Shape> list = filterNormalShapes;
        if (CollectionKt.isNullOrEmpty(list)) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : filterNormalShapes) {
            Shape shape = (Shape) obj;
            if (hashSet.add(shape.getText() + shape.getType())) {
                arrayList2.add(obj);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.onyx.galaxy.note.editor.menu.ShapeMenuProvider$getShapeMenus$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Boolean.valueOf(shapeTypes.isSupportHWR((Shape) t2)), Boolean.valueOf(shapeTypes.isSupportHWR((Shape) t)));
                return compareValues;
            }
        });
        for (Shape shape2 : sortedWith) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isPenShape(shape2)) {
                mutableList2 = CollectionsKt___CollectionsKt.toMutableList((Collection) INSTANCE.m46447e("1000"));
                if (shapeTypes.isMarkerPenShape(shape2)) {
                    mutableList2.remove(SelectionMenuType.HWR_AI);
                    mutableList2.remove(SelectionMenuType.HWR_BEAUTIFY);
                }
                CollectionKt.safeAdd(arrayList, mutableList2);
            } else if (shapeTypes.isGraphicalShape(shape2)) {
                CollectionKt.safeAdd(arrayList, INSTANCE.m46447e("1001"));
            } else if (shapeTypes.isLinkShape(shape2)) {
                ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape2.getText(), ShapeLinkBean.class);
                String valueOf = String.valueOf(shapeLinkBean != null ? shapeLinkBean.getKey() : null);
                if (shapeMenusMap.containsKey(valueOf)) {
                    CollectionKt.safeAdd(arrayList, INSTANCE.m46447e(valueOf));
                } else {
                    CollectionKt.safeAdd(arrayList, INSTANCE.m46447e(String.valueOf(shape2.getType())));
                }
            } else {
                CollectionKt.safeAdd(arrayList, INSTANCE.m46447e(String.valueOf(shape2.getType())));
            }
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList);
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : flatten) {
            if (((SelectionMenuType) obj2).getUnion()) {
                arrayList3.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        if (!it2.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        Object next = it2.next();
        while (it2.hasNext()) {
            List list2 = (List) it2.next();
            List mergeList = CollectionKt.mergeList((List) next, arrayList3);
            set = CollectionsKt___CollectionsKt.toSet(CollectionKt.mergeList(list2, arrayList3));
            intersect = CollectionsKt___CollectionsKt.intersect(mergeList, set);
            next = CollectionsKt___CollectionsKt.toList(intersect);
        }
        distinct = CollectionsKt___CollectionsKt.distinct((Iterable) next);
        ArrayList arrayList4 = new ArrayList();
        for (Object obj3 : distinct) {
            if (CollectionKt.getSize(list) <= 1 || ((SelectionMenuType) obj3).getMultipleSelection()) {
                arrayList4.add(obj3);
            }
        }
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList4);
        if (!NoteConfigManager.INSTANCE.getEnableInkBeautifyOption().get()) {
            mutableList.remove(SelectionMenuType.HWR_BEAUTIFY);
        }
        return mutableList;
    }
}
