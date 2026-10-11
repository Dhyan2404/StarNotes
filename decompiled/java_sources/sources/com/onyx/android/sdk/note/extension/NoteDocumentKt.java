package com.onyx.android.sdk.note.extension;

import android.graphics.RectF;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.ReferenceShape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000F\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u001a\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\u001a\u0010\u0000\u001a\u00020\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u001a?\u0010\b\u001a\u00020\u0001*\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2%\b\u0002\u0010\r\u001a\u001f\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000e\u001a&\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\f0\u000b*\u00020\t2\u0006\u0010\u0014\u001a\u00020\u00032\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\f0\u000b\u001a \u0010\u0016\u001a\u00020\u0017*\u00020\t2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170\u000b2\u0006\u0010\u0019\u001a\u00020\u0017\u001a\n\u0010\u001a\u001a\u00020\u001b*\u00020\t¨\u0006\u001c"}, m61528d2 = {"updateNotePageInfo", "", "globalNotePage", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "globalPageInfo", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "ensureInitReferenceShape", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "shapeList", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "notePageLoad", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "padId", "filterInPageRectShapeList", "targetNotePage", "shapes", "mergeLayers", "", "srcLayerIds", "targetLayerId", "viewportRect", "Landroid/graphics/RectF;", "sdk-note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nNoteDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,99:1\n1855#2,2:100\n*S KotlinDebug\n*F\n+ 1 NoteDocument.kt\ncom/onyx/android/sdk/note/extension/NoteDocumentKt\n*L\n51#1:100,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteDocumentKt {
    /* renamed from: c */
    public static final NotePage m34090c(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (NotePage) tmp0.invoke(obj);
    }

    /* renamed from: d */
    public static final RectF m34091d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (RectF) tmp0.invoke(obj);
    }

    public static final void ensureInitReferenceShape(@NotNull NoteDocument noteDocument, @NotNull List<? extends Shape> shapeList, @NotNull Function1<? super String, NotePage> notePageLoad) {
        ShapeReferenceBean shapeReferenceBean;
        NotePage invoke;
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        Intrinsics.checkNotNullParameter(notePageLoad, "notePageLoad");
        for (Shape shape : ShapeTypes.INSTANCE.filterReferenceShapes(shapeList)) {
            ReferenceShape referenceShape = shape instanceof ReferenceShape ? (ReferenceShape) shape : null;
            if (referenceShape != null && referenceShape.getTargetShape() == null && (shapeReferenceBean = referenceShape.getShapeReferenceBean()) != null && (invoke = notePageLoad.invoke(shapeReferenceBean.getPageId())) != null) {
                referenceShape.setTargetShape(NotePageShape.INSTANCE.getShapeById(invoke, shapeReferenceBean.getShapeId()));
                referenceShape.updateShapeRect();
            }
        }
    }

    public static /* synthetic */ void ensureInitReferenceShape$default(final NoteDocument noteDocument, List list, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<String, NotePage>() { // from class: com.onyx.android.sdk.note.extension.NoteDocumentKt$ensureInitReferenceShape$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final NotePage invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return NoteDocNotePage.INSTANCE.getNotePage(NoteDocument.this, it2);
                }
            };
        }
        ensureInitReferenceShape(noteDocument, list, function1);
    }

    @NotNull
    public static final List<Shape> filterInPageRectShapeList(@NotNull final NoteDocument noteDocument, @NotNull NotePage targetNotePage, @NotNull List<? extends Shape> shapes) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(targetNotePage, "targetNotePage");
        Intrinsics.checkNotNullParameter(shapes, "shapes");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ensureInitReferenceShape(noteDocument, targetNotePage.getShapeList(), new NoteDocumentKt$filterInPageRectShapeList$1(linkedHashMap, noteDocument));
        ArrayList arrayList = new ArrayList();
        for (Shape shape : shapes) {
            Shape targetShape = ShapeTypes.INSTANCE.getTargetShape(shape);
            String pageUniqueId = targetShape.getPageUniqueId();
            final Function1<String, NotePage> function1 = new Function1<String, NotePage>() { // from class: com.onyx.android.sdk.note.extension.NoteDocumentKt$filterInPageRectShapeList$notePage$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                @Nullable
                public final NotePage invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return NoteDocNotePage.INSTANCE.getNotePage(NoteDocument.this, it2);
                }
            };
            final NotePage notePage = (NotePage) linkedHashMap.computeIfAbsent(pageUniqueId, new Function() { // from class: com.sunia.HTREnginev2.fvj
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    NotePage m34090c;
                    m34090c = NoteDocumentKt.m34090c(Function1.this, obj);
                    return m34090c;
                }
            });
            if (notePage == null) {
                arrayList.add(shape);
            } else {
                String pageUniqueId2 = notePage.getPageUniqueId();
                final Function1<String, RectF> function12 = new Function1<String, RectF>() { // from class: com.onyx.android.sdk.note.extension.NoteDocumentKt$filterInPageRectShapeList$pageRect$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final RectF invoke(@NotNull String pageId) {
                        Intrinsics.checkNotNullParameter(pageId, "pageId");
                        return new RectF(NotePage.this.getPageInfo().getPageRect());
                    }
                };
                Object computeIfAbsent = linkedHashMap2.computeIfAbsent(pageUniqueId2, new Function() { // from class: com.sunia.HTREnginev2.gvj
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        RectF m34091d;
                        m34091d = NoteDocumentKt.m34091d(Function1.this, obj);
                        return m34091d;
                    }
                });
                Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
                if (RectF.intersects(ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(targetShape), (RectF) computeIfAbsent)) {
                    CollectionKt.safeAdd(arrayList, shape);
                }
            }
        }
        return arrayList;
    }

    public static final int mergeLayers(@NotNull NoteDocument noteDocument, @NotNull List<Integer> srcLayerIds, int i) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        Intrinsics.checkNotNullParameter(srcLayerIds, "srcLayerIds");
        PageInfo pageInfo = noteDocument.ensureGlobalNotePage().getPageInfo();
        int currentLayerId = pageInfo.getCurrentLayerId();
        pageInfo.removeLayers(srcLayerIds);
        if (srcLayerIds.contains(Integer.valueOf(currentLayerId)) && pageInfo.layerInfoExist(i)) {
            pageInfo.setCurrentLayerId(i);
        }
        return pageInfo.getCurrentLayerId();
    }

    public static final void updateNotePageInfo(@Nullable NotePage notePage, @Nullable NotePage notePage2) {
        updateNotePageInfo(notePage != null ? notePage.getPageInfo() : null, notePage2 != null ? notePage2.getPageInfo() : null);
    }

    @NotNull
    public static final RectF viewportRect(@NotNull NoteDocument noteDocument) {
        Intrinsics.checkNotNullParameter(noteDocument, "<this>");
        return noteDocument.getViewSize().toRectF();
    }

    public static final void updateNotePageInfo(@Nullable PageInfo pageInfo, @Nullable PageInfo pageInfo2) {
        if (pageInfo2 == null || pageInfo == null) {
            return;
        }
        int currentLayerId = pageInfo.getCurrentLayerId();
        if (pageInfo2.getLayerCount() > pageInfo.getLayerCount()) {
            pageInfo.mergePageInfo(pageInfo2);
            if (pageInfo.layerInfoExist(currentLayerId)) {
                pageInfo.setCurrentLayerId(currentLayerId);
            }
        }
        pageInfo2.setLayerList(pageInfo.getLayerList());
        pageInfo2.setCurrentLayerId(pageInfo.getCurrentLayerId());
    }
}
