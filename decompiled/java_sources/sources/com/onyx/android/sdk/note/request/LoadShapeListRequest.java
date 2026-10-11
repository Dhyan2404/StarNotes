package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocShape;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.onyx.android.sdk.replicator.provider.NoteProviderHolder;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR*\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\u000f\"\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/LoadShapeListRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "", "shapeIdList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", C6997f.f39671c, C6998g.f39679a, "Ljava/util/List;", "getShapeIdList", "()Ljava/util/List;", C6999h.f39688c, "getShapeList", "setShapeList", "(Ljava/util/List;)V", "shapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/List;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nLoadShapeListRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LoadShapeListRequest.kt\ncom/onyx/android/sdk/note/request/LoadShapeListRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,56:1\n1549#2:57\n1620#2,3:58\n1360#2:61\n1446#2,2:62\n1549#2:64\n1620#2,3:65\n1448#2,3:68\n*S KotlinDebug\n*F\n+ 1 LoadShapeListRequest.kt\ncom/onyx/android/sdk/note/request/LoadShapeListRequest\n*L\n45#1:57\n45#1:58,3\n51#1:61\n51#1:62,2\n53#1:64\n53#1:65,3\n51#1:68,3\n*E\n"})
/* loaded from: classes8.dex */
public final class LoadShapeListRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final List<String> shapeIdList;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public List<? extends Shape> shapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadShapeListRequest(@NotNull NoteBundle noteBundle, @NotNull List<String> shapeIdList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeIdList, "shapeIdList");
        this.shapeIdList = shapeIdList;
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Set<String> mutableSet;
        Set minus;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (this.shapeIdList.isEmpty()) {
            return;
        }
        mutableSet = CollectionsKt___CollectionsKt.toMutableSet(this.shapeIdList);
        List<Shape> loadShapeListById = NoteDocShape.INSTANCE.loadShapeListById(noteBundle.getNoteDoc(), mutableSet);
        this.shapeList = loadShapeListById;
        minus = SetsKt___SetsKt.minus((Set) mutableSet, (Iterable) ShapeTypes.INSTANCE.toShapeIdSet(CollectionKt.ensureList(loadShapeListById)));
        if (!minus.isEmpty()) {
            List<? extends Shape> list = this.shapeList;
            List<? extends Shape> mutableList = list != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) list) : null;
            CollectionKt.safeAddAll(mutableList, m34116f(minus));
            this.shapeList = mutableList;
        }
    }

    /* renamed from: f */
    public final List<Shape> m34116f(Collection<String> shapeIdList) {
        int collectionSizeOrDefault;
        List<Shape> emptyList;
        int collectionSizeOrDefault2;
        Set<String> set;
        NoteDocument noteDoc = getNoteBundle().getNoteDoc();
        NoteProviderHolder providerHolder = noteDoc.getProviderHolder();
        CBQueryArgs inShapeIdListQuery = ShapeQueryArgsExtKt.inShapeIdListQuery(shapeIdList);
        CouchUtils couchUtils = CouchUtils.INSTANCE;
        List<NotePage> loadedNotePages = noteDoc.getLoadedNotePages();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadedNotePages, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = loadedNotePages.iterator();
        while (it2.hasNext()) {
            arrayList.add(((NotePage) it2.next()).getPageUniqueId());
        }
        List<ShapeModel> loadShapeList = providerHolder.getNoteShapeProvider().loadShapeList(inShapeIdListQuery.andWith(couchUtils.notInExpression(CouchFieldKey.KEY_PAGE_ID, arrayList)).andWith(CouchUtils.INSTANCE.equalExpression("status", 0)));
        if (loadShapeList.isEmpty()) {
            return null;
        }
        Set<Map.Entry> entrySet = CollectionKt.toMapList(loadShapeList, new Function1<ShapeModel, String>() { // from class: com.onyx.android.sdk.note.request.LoadShapeListRequest$loadShapeListFromDb$1
            @Override // kotlin.jvm.functions.Function1
            @Nullable
            public final String invoke(@NotNull ShapeModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getPageUniqueId();
            }
        }, new Function1<ShapeModel, ShapeModel>() { // from class: com.onyx.android.sdk.note.request.LoadShapeListRequest$loadShapeListFromDb$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ShapeModel invoke(@NotNull ShapeModel it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }).entrySet();
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : entrySet) {
            NotePage pageByUniqueId = NoteDocNotePage.INSTANCE.getPageByUniqueId(noteDoc, (String) entry.getKey());
            if (pageByUniqueId == null) {
                emptyList = CollectionsKt__CollectionsKt.emptyList();
                return emptyList;
            }
            NotePageShape notePageShape = NotePageShape.INSTANCE;
            Iterable iterable = (Iterable) entry.getValue();
            collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10);
            ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
            Iterator it3 = iterable.iterator();
            while (it3.hasNext()) {
                arrayList3.add(((ShapeModel) it3.next()).getUniqueId());
            }
            set = CollectionsKt___CollectionsKt.toSet(arrayList3);
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, notePageShape.getShapeListById(pageByUniqueId, set));
        }
        return arrayList2;
    }

    @NotNull
    public final List<String> getShapeIdList() {
        return this.shapeIdList;
    }

    @Nullable
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    public final void setShapeList(@Nullable List<? extends Shape> list) {
        this.shapeList = list;
    }
}
