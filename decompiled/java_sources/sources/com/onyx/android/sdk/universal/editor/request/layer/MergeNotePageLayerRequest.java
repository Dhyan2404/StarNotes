package com.onyx.android.sdk.universal.editor.request.layer;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0011\u0012\u0006\u0010\u0015\u001a\u00020\u000b¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0004H\u0002J4\u0010\u000f\u001a \u0012\u0004\u0012\u00020\u000b\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u000e0\r0\f0\n2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0002J\b\u0010\u0010\u001a\u00020\u0004H\u0002R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/layer/MergeNotePageLayerRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", "", "execute", C6999h.f39688c, "", "", "pageIds", "", "", "", "Lkotlin/Pair;", "", C6997f.f39671c, C6998g.f39679a, "", "Ljava/util/List;", "srcLayerIds", "I", "targetLayerId", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;I)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nMergeNotePageLayerRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MergeNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/MergeNotePageLayerRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,118:1\n1002#2,2:119\n766#2:121\n857#2,2:122\n1855#2:124\n766#2:125\n857#2,2:126\n1855#2,2:128\n1856#2:130\n766#2:131\n857#2,2:132\n1855#2:134\n766#2:135\n857#2,2:136\n1855#2:138\n1856#2:146\n1856#2:147\n1855#2:148\n1002#2,2:149\n1856#2:151\n766#2:152\n857#2,2:153\n1855#2:155\n766#2:156\n857#2,2:157\n1855#2,2:159\n1856#2:161\n372#3,7:139\n*S KotlinDebug\n*F\n+ 1 MergeNotePageLayerRequest.kt\ncom/onyx/android/sdk/universal/editor/request/layer/MergeNotePageLayerRequest\n*L\n36#1:119,2\n54#1:121\n54#1:122,2\n55#1:124\n58#1:125\n58#1:126,2\n59#1:128,2\n55#1:130\n70#1:131\n70#1:132,2\n71#1:134\n74#1:135\n74#1:136,2\n75#1:138\n75#1:146\n71#1:147\n83#1:148\n84#1:149,2\n83#1:151\n100#1:152\n100#1:153,2\n101#1:155\n104#1:156\n104#1:157,2\n105#1:159,2\n101#1:161\n77#1:139,7\n*E\n"})
/* loaded from: classes8.dex */
public final class MergeNotePageLayerRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final List<Integer> srcLayerIds;

    /* renamed from: g, reason: from kotlin metadata */
    public final int targetLayerId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MergeNotePageLayerRequest(@NotNull WorkBundle workBundle, @NotNull List<Integer> srcLayerIds, int i) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(srcLayerIds, "srcLayerIds");
        this.srcLayerIds = srcLayerIds;
        this.targetLayerId = i;
    }

    @Override // com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest
    public void execute(@NotNull WorkBundle workBundle) {
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        m41479h();
        m41478g();
    }

    /* renamed from: f */
    public final Map<Integer, List<Pair<String, Long>>> m41477f(Set<String> pageIds) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List<VirtualPage> virtualPageList = getWorkBundle().getVirtualPolicy().getVirtualPageList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (pageIds.contains(((VirtualPage) obj).getBox().getId())) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            List<Shape> shapeList = getWorkBundle().getVirtualPolicy().ensureNotePage((VirtualPage) it2.next()).getShapeList();
            ArrayList<Shape> arrayList2 = new ArrayList();
            for (Object obj2 : shapeList) {
                Shape shape = (Shape) obj2;
                if (this.srcLayerIds.contains(Integer.valueOf(shape.getLayerId())) || shape.getLayerId() == this.targetLayerId) {
                    arrayList2.add(obj2);
                }
            }
            for (Shape shape2 : arrayList2) {
                Date date = shape2.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_CREATE_AT java.lang.String();
                if (date != null) {
                    Integer valueOf = Integer.valueOf(shape2.getLayerId());
                    Object obj3 = linkedHashMap.get(valueOf);
                    if (obj3 == null) {
                        obj3 = new ArrayList();
                        linkedHashMap.put(valueOf, obj3);
                    }
                    CollectionKt.safeAdd((Collection) obj3, new Pair(shape2.getShapeUniqueId(), Long.valueOf(date.getTime())));
                }
            }
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() > 1) {
                CollectionsKt__MutableCollectionsJVMKt.sortWith(list, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.request.layer.MergeNotePageLayerRequest$getPageLayerShapeInfos$lambda$13$$inlined$sortBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues((Long) ((Pair) t).getSecond(), (Long) ((Pair) t2).getSecond());
                        return compareValues;
                    }
                });
            }
        }
        return linkedHashMap;
    }

    /* renamed from: g */
    public final void m41478g() {
        PageInfo pageInfo = getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo();
        int currentLayerId = pageInfo.getCurrentLayerId();
        pageInfo.removeLayers(this.srcLayerIds);
        if (this.srcLayerIds.contains(Integer.valueOf(currentLayerId)) && pageInfo.layerInfoExist(this.targetLayerId)) {
            pageInfo.setCurrentLayerId(this.targetLayerId);
        }
        int currentLayerId2 = pageInfo.getCurrentLayerId();
        Set<String> loadValidShapeNotePageIds = NoteDocNotePage.INSTANCE.loadValidShapeNotePageIds(getWorkBundle().getNoteBundle().getNoteDoc());
        List<VirtualPage> virtualPageList = getWorkBundle().getVirtualPolicy().getVirtualPageList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (loadValidShapeNotePageIds.contains(((VirtualPage) obj).getBox().getId())) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            NotePage ensureNotePage = getWorkBundle().getVirtualPolicy().ensureNotePage((VirtualPage) it2.next());
            List<Shape> shapeList = ensureNotePage.getShapeList();
            ArrayList<Shape> arrayList2 = new ArrayList();
            for (Object obj2 : shapeList) {
                if (this.srcLayerIds.contains(Integer.valueOf(((Shape) obj2).getLayerId()))) {
                    arrayList2.add(obj2);
                }
            }
            for (Shape shape : arrayList2) {
                shape.setLayerId(this.targetLayerId);
                NotePageShape.INSTANCE.saveShape(ensureNotePage, shape);
            }
            NotePageSave.INSTANCE.savePage(ensureNotePage);
            ensureNotePage.getPageInfo().removeLayers(this.srcLayerIds);
            ensureNotePage.getPageInfo().setCurrentLayerId(currentLayerId2);
            getWorkBundle().getNoteBundle().postShapeChangedEvent(ChangedShapeBean.INSTANCE.addShapesToChangedShapeBean(arrayList2));
        }
        getWorkBundle().getNoteBundle().getNoteDoc().getNotePageInfo().updatePageInfoLayers(pageInfo.getLayerList(), currentLayerId2);
    }

    /* renamed from: h */
    public final void m41479h() {
        final List reversed;
        List mutableList;
        Object last;
        List<Pair<String, Long>> list;
        PageInfo pageInfo = getWorkBundle().getVirtualPolicy().ensureGlobalNotePage().getPageInfo();
        Set<String> loadValidShapeNotePageIds = NoteDocNotePage.INSTANCE.loadValidShapeNotePageIds(getWorkBundle().getNoteBundle().getNoteDoc());
        Map<Integer, List<Pair<String, Long>>> m41477f = m41477f(loadValidShapeNotePageIds);
        reversed = CollectionsKt___CollectionsKt.reversed(pageInfo.getLayerList());
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) m41477f.keySet());
        if (mutableList.size() > 1) {
            CollectionsKt__MutableCollectionsJVMKt.sortWith(mutableList, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.request.layer.MergeNotePageLayerRequest$updateShapeInfoByLayerOrder$lambda$2$$inlined$sortBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int i;
                    int compareValues;
                    int intValue = ((Number) t).intValue();
                    Iterator it2 = reversed.iterator();
                    int i2 = 0;
                    while (true) {
                        i = -1;
                        if (!it2.hasNext()) {
                            i2 = -1;
                            break;
                        }
                        if (((LayerInfo) it2.next()).getId() == intValue) {
                            break;
                        }
                        i2++;
                    }
                    Integer valueOf = Integer.valueOf(i2);
                    int intValue2 = ((Number) t2).intValue();
                    Iterator it3 = reversed.iterator();
                    int i3 = 0;
                    while (true) {
                        if (!it3.hasNext()) {
                            break;
                        }
                        if (((LayerInfo) it3.next()).getId() == intValue2) {
                            i = i3;
                            break;
                        }
                        i3++;
                    }
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(i));
                    return compareValues;
                }
            });
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = mutableList.size() - 2;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                List<Pair<String, Long>> list2 = m41477f.get(mutableList.get(size + 1));
                if (list2 != null) {
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) list2);
                    Pair pair = (Pair) last;
                    if (pair != null && (list = m41477f.get(mutableList.get(size))) != null) {
                        Long l = (Long) linkedHashMap.get(pair.getFirst());
                        long longValue = (l != null ? l.longValue() : ((Number) pair.getSecond()).longValue()) + 1;
                        for (Pair<String, Long> pair2 : list) {
                            if (pair2.getSecond().longValue() >= longValue) {
                                break;
                            }
                            linkedHashMap.put(pair2.getFirst(), Long.valueOf(longValue));
                            longValue++;
                        }
                    }
                }
                if (i < 0) {
                    break;
                } else {
                    size = i;
                }
            }
        }
        List<VirtualPage> virtualPageList = getWorkBundle().getVirtualPolicy().getVirtualPageList();
        ArrayList arrayList = new ArrayList();
        for (Object obj : virtualPageList) {
            if (loadValidShapeNotePageIds.contains(((VirtualPage) obj).getBox().getId())) {
                arrayList.add(obj);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            NotePage ensureNotePage = getWorkBundle().getVirtualPolicy().ensureNotePage((VirtualPage) it2.next());
            List<Shape> shapeList = ensureNotePage.getShapeList();
            ArrayList<Shape> arrayList2 = new ArrayList();
            for (Object obj2 : shapeList) {
                if (linkedHashMap.containsKey(((Shape) obj2).getShapeUniqueId())) {
                    arrayList2.add(obj2);
                }
            }
            for (Shape shape : arrayList2) {
                Long l2 = (Long) linkedHashMap.get(shape.getShapeUniqueId());
                if (l2 != null) {
                    shape.setCreatedAt(new Date(l2.longValue()));
                    NotePageShape.INSTANCE.saveShape(ensureNotePage, shape);
                }
            }
        }
    }
}
