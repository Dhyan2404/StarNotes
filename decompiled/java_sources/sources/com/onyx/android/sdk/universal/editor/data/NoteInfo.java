package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.shape.Shape;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\fH\u0002J\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0011J\u0014\u0010\u0014\u001a\u00020\u00152\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011J\u0006\u0010\u0017\u001a\u00020\u0015J(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00112\u0018\u0010\u0019\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\u001a0\u0011H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/NoteInfo;", "", "()V", "noteDrawingArgs", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "getNoteDrawingArgs", "()Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "setNoteDrawingArgs", "(Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;)V", "pageStashShapeCountMap", "", "", "", "totalShapeCount", "addPageStashShapeCount", CouchFieldKey.KEY_TOC_PAGE_ID, "stashShapeCount", "", "shapeList", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "clearPageStashCount", "", "pageIdList", "destroy", "filterSavePageIds", "pageShapeCountPairList", "Lkotlin/Pair;", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteInfo.kt\ncom/onyx/android/sdk/universal/editor/data/NoteInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,53:1\n1477#2:54\n1502#2,3:55\n1505#2,3:65\n766#2:72\n857#2,2:73\n1549#2:75\n1620#2,3:76\n1855#2,2:86\n372#3,7:58\n372#3,7:79\n125#4:68\n152#4,3:69\n215#4,2:88\n*S KotlinDebug\n*F\n+ 1 NoteInfo.kt\ncom/onyx/android/sdk/universal/editor/data/NoteInfo\n*L\n14#1:54\n14#1:55,3\n14#1:65,3\n21#1:72\n21#1:73,2\n22#1:75\n22#1:76,3\n37#1:86,2\n14#1:58,7\n30#1:79,7\n15#1:68\n15#1:69,3\n41#1:88,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteInfo {
    private static final int PAGE_MAX_STASH_COUNT = 50;
    private static final int TOTAL_PAGE_MAX_STASH_COUNT = 300;

    @NotNull
    private NoteDrawingArgs noteDrawingArgs = new NoteDrawingArgs(0.0f, 0, 0, 0, 0.0f, 0, null, null, 255, null);

    @NotNull
    private Map<String, Integer> pageStashShapeCountMap = new LinkedHashMap();
    private int totalShapeCount;

    /* JADX INFO: Access modifiers changed from: private */
    public final List<String> filterSavePageIds(List<Pair<String, Integer>> pageShapeCountPairList) {
        int collectionSizeOrDefault;
        List<String> list;
        ArrayList arrayList = new ArrayList();
        for (Object obj : pageShapeCountPairList) {
            if (((Number) ((Pair) obj).getSecond()).intValue() >= 50) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add((String) ((Pair) it2.next()).getFirst());
        }
        if (!arrayList2.isEmpty() || this.totalShapeCount < 300) {
            return arrayList2;
        }
        list = CollectionsKt___CollectionsKt.toList(this.pageStashShapeCountMap.keySet());
        return list;
    }

    @NotNull
    public final List<String> addPageStashShapeCount(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : shapeList) {
            String pageUniqueId = ((Shape) obj).getPageUniqueId();
            Object obj2 = linkedHashMap.get(pageUniqueId);
            if (obj2 == null) {
                obj2 = new ArrayList();
                linkedHashMap.put(pageUniqueId, obj2);
            }
            ((List) obj2).add(obj);
        }
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(TuplesKt.m61535to(entry.getKey(), Integer.valueOf(addPageStashShapeCount((String) entry.getKey(), ((List) entry.getValue()).size()))));
        }
        return (List) AnyKt.transform(arrayList, new Function1<List<? extends Pair<? extends String, ? extends Integer>>, List<? extends String>>() { // from class: com.onyx.android.sdk.universal.editor.data.NoteInfo$addPageStashShapeCount$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ List<? extends String> invoke(List<? extends Pair<? extends String, ? extends Integer>> list) {
                return invoke2((List<Pair<String, Integer>>) list);
            }

            @NotNull
            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final List<String> invoke2(@NotNull List<Pair<String, Integer>> it2) {
                List<String> filterSavePageIds;
                Intrinsics.checkNotNullParameter(it2, "it");
                filterSavePageIds = NoteInfo.this.filterSavePageIds(it2);
                return filterSavePageIds;
            }
        });
    }

    public final void clearPageStashCount(@NotNull List<String> pageIdList) {
        Intrinsics.checkNotNullParameter(pageIdList, "pageIdList");
        Iterator<T> it2 = pageIdList.iterator();
        while (it2.hasNext()) {
            this.pageStashShapeCountMap.remove((String) it2.next());
        }
        this.totalShapeCount = 0;
        Iterator<Map.Entry<String, Integer>> it3 = this.pageStashShapeCountMap.entrySet().iterator();
        while (it3.hasNext()) {
            this.totalShapeCount += it3.next().getValue().intValue();
        }
    }

    public final void destroy() {
        this.pageStashShapeCountMap.clear();
        this.totalShapeCount = 0;
    }

    @NotNull
    public final NoteDrawingArgs getNoteDrawingArgs() {
        return this.noteDrawingArgs;
    }

    public final void setNoteDrawingArgs(@NotNull NoteDrawingArgs noteDrawingArgs) {
        Intrinsics.checkNotNullParameter(noteDrawingArgs, "<set-?>");
        this.noteDrawingArgs = noteDrawingArgs;
    }

    private final int addPageStashShapeCount(String pageId, int stashShapeCount) {
        Map<String, Integer> map = this.pageStashShapeCountMap;
        Integer num = map.get(pageId);
        if (num == null) {
            num = 0;
            map.put(pageId, num);
        }
        int intValue = num.intValue() + stashShapeCount;
        this.pageStashShapeCountMap.put(pageId, Integer.valueOf(intValue));
        this.totalShapeCount += stashShapeCount;
        return intValue;
    }
}
