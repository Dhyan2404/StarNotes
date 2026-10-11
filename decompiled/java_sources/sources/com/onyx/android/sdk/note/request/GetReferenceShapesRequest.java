package com.onyx.android.sdk.note.request;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeSourceBean;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010!\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u001c\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0012\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u0007H\u0002R\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001d\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0006¢\u0006\f\n\u0004\b\n\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00070\u00118\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0012\u001a\u0004\b\u0017\u0010\u0014¨\u0006\u001b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shapeList", "", C6999h.f39688c, C6998g.f39679a, "shape", C6997f.f39671c, "Ljava/util/Collection;", "getShapeList", "()Ljava/util/Collection;", "", "Ljava/util/List;", "getNormalShapeList", "()Ljava/util/List;", "normalShapeList", "i", "getReferenceShapeList", "referenceShapeList", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nGetReferenceShapesRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GetReferenceShapesRequest.kt\ncom/onyx/android/sdk/note/request/GetReferenceShapesRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,77:1\n1603#2,9:78\n1855#2:87\n1856#2:89\n1612#2:90\n1855#2,2:92\n1603#2,9:95\n1855#2:104\n1856#2:106\n1612#2:107\n1855#2,2:109\n1#3:88\n1#3:105\n215#4:91\n216#4:94\n215#4:108\n216#4:111\n*S KotlinDebug\n*F\n+ 1 GetReferenceShapesRequest.kt\ncom/onyx/android/sdk/note/request/GetReferenceShapesRequest\n*L\n42#1:78,9\n42#1:87\n42#1:89\n42#1:90\n47#1:92,2\n60#1:95,9\n60#1:104\n60#1:106\n60#1:107\n64#1:109,2\n42#1:88\n60#1:105\n45#1:91\n45#1:94\n62#1:108\n62#1:111\n*E\n"})
/* loaded from: classes8.dex */
public final class GetReferenceShapesRequest extends BaseRxNoteRequest {

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Collection<Shape> shapeList;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> normalShapeList;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Shape> referenceShapeList;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public GetReferenceShapesRequest(@NotNull NoteBundle noteBundle, @NotNull Collection<? extends Shape> shapeList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        this.shapeList = shapeList;
        this.normalShapeList = new ArrayList();
        this.referenceShapeList = new ArrayList();
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        CollectionKt.safeAddAll(this.referenceShapeList, m34113h(this.shapeList));
        CollectionKt.safeAddAll(this.normalShapeList, m34112g(this.shapeList));
        this.normalShapeList.removeAll(this.shapeList);
        CollectionKt.safeAddAll(this.referenceShapeList, m34113h(this.normalShapeList));
        this.referenceShapeList.removeAll(this.shapeList);
    }

    /* renamed from: f */
    public final void m34111f(Shape shape) {
        List listOfNotNull;
        ReferenceShape referenceShape = shape instanceof ReferenceShape ? (ReferenceShape) shape : null;
        if (referenceShape != null && referenceShape.getTargetShape() == null) {
            NoteDocument noteDoc = getNoteBundle().getNoteDoc();
            listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(referenceShape);
            NoteDocumentKt.ensureInitReferenceShape$default(noteDoc, listOfNotNull, null, 2, null);
        }
    }

    /* renamed from: g */
    public final List<Shape> m34112g(Collection<? extends Shape> shapeList) {
        ArrayList arrayList = new ArrayList();
        List<Shape> filterReferenceShapes = ShapeTypes.INSTANCE.filterReferenceShapes(shapeList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = filterReferenceShapes.iterator();
        while (it2.hasNext()) {
            ShapeReferenceBean shapeReferenceBean = ((Shape) it2.next()).getShapeReferenceBean();
            if (shapeReferenceBean != null) {
                arrayList2.add(shapeReferenceBean);
            }
        }
        for (Map.Entry entry : CollectionKt.toMapList(arrayList2, new Function1<ShapeReferenceBean, String>() { // from class: com.onyx.android.sdk.note.request.GetReferenceShapesRequest$getNormalShapeList$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeReferenceBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getPageId();
            }
        }, new Function1<ShapeReferenceBean, ShapeReferenceBean>() { // from class: com.onyx.android.sdk.note.request.GetReferenceShapesRequest$getNormalShapeList$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ShapeReferenceBean invoke(@NotNull ShapeReferenceBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }).entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), (String) entry.getKey());
            if (notePage != null) {
                Iterator it3 = ((Iterable) entry.getValue()).iterator();
                while (it3.hasNext()) {
                    CollectionKt.safeAdd(arrayList, NotePageShape.INSTANCE.getShapeById(notePage, ((ShapeReferenceBean) it3.next()).getShapeId()));
                }
            }
        }
        return arrayList;
    }

    @NotNull
    public final List<Shape> getNormalShapeList() {
        return this.normalShapeList;
    }

    @NotNull
    public final List<Shape> getReferenceShapeList() {
        return this.referenceShapeList;
    }

    @NotNull
    public final Collection<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: h */
    public final List<Shape> m34113h(Collection<? extends Shape> shapeList) {
        List flatten;
        ArrayList arrayList = new ArrayList();
        List<Shape> filterNormalShapes = ShapeTypes.INSTANCE.filterNormalShapes(shapeList);
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it2 = filterNormalShapes.iterator();
        while (it2.hasNext()) {
            ShapeSourceBean shapeSrcBean = ((Shape) it2.next()).getShapeSrcBean();
            List<ShapeReferenceBean> referenceShapeBeanList = shapeSrcBean != null ? shapeSrcBean.getReferenceShapeBeanList() : null;
            if (referenceShapeBeanList != null) {
                arrayList2.add(referenceShapeBeanList);
            }
        }
        flatten = CollectionsKt__IterablesKt.flatten(arrayList2);
        for (Map.Entry entry : CollectionKt.toMapList(flatten, new Function1<ShapeReferenceBean, String>() { // from class: com.onyx.android.sdk.note.request.GetReferenceShapesRequest$getReferenceShapeList$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull ShapeReferenceBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3.getPageId();
            }
        }, new Function1<ShapeReferenceBean, ShapeReferenceBean>() { // from class: com.onyx.android.sdk.note.request.GetReferenceShapesRequest$getReferenceShapeList$3
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final ShapeReferenceBean invoke(@NotNull ShapeReferenceBean it3) {
                Intrinsics.checkNotNullParameter(it3, "it");
                return it3;
            }
        }).entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getNoteBundle().getNoteDoc(), (String) entry.getKey());
            if (notePage != null) {
                Iterator it3 = ((Iterable) entry.getValue()).iterator();
                while (it3.hasNext()) {
                    Shape shapeById = NotePageShape.INSTANCE.getShapeById(notePage, ((ShapeReferenceBean) it3.next()).getShapeId());
                    m34111f(shapeById);
                    CollectionKt.safeAdd(arrayList, shapeById);
                }
            }
        }
        return arrayList;
    }
}
