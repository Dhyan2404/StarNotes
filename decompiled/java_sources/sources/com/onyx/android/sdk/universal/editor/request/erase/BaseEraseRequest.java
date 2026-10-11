package com.onyx.android.sdk.universal.editor.request.erase;

import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.note.common.data.erase.EraseContext;
import com.onyx.android.sdk.note.common.data.option.ChangedShapeBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.document.doc.NoteDocNotePage;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.request.GetReferenceShapesRequest;
import com.onyx.android.sdk.universal.editor.WorkBundle;
import com.onyx.android.sdk.universal.editor.extension.WorkBundleKt;
import com.onyx.android.sdk.universal.editor.request.RxBaseAppRequest;
import com.onyx.android.sdk.universal.editor.request.shape.CreateCrossPageShapesRequest;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010%\u001a\u00020$\u0012\u0006\u0010\u0019\u001a\u00020\u0012\u0012\u0006\u0010!\u001a\u00020\u001a¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0004J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004J\u001c\u0010\f\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004J\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004J\u001c\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004J\u0016\u0010\u000f\u001a\u00020\u00042\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004J\u0016\u0010\u0010\u001a\u00020\u00112\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0004R\"\u0010\u0019\u001a\u00020\u00128\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006("}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest;", "Lcom/onyx/android/sdk/universal/editor/request/RxBaseAppRequest;", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "", "setNotePage", "getNotePage", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "splitShapes", "getSplitRelationalShapes", "shapeList", "getTargetShapes", "getReferenceShapes", "createCrossPageShapes", "addShapes", "removeShapes", "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", C6997f.f39671c, "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "getRenderContext", "()Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "setRenderContext", "(Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "renderContext", "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "getEraseContext", "()Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;", "setEraseContext", "(Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V", "eraseContext", C6999h.f39688c, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Lcom/onyx/android/sdk/universal/editor/WorkBundle;", "workBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/data/erase/EraseContext;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nBaseEraseRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseEraseRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,112:1\n215#2:113\n216#2:116\n215#2,2:117\n215#2,2:119\n288#3,2:114\n*S KotlinDebug\n*F\n+ 1 BaseEraseRequest.kt\ncom/onyx/android/sdk/universal/editor/request/erase/BaseEraseRequest\n*L\n79#1:113\n79#1:116\n96#1:117,2\n106#1:119,2\n80#1:114,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class BaseEraseRequest extends RxBaseAppRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public EraseContext eraseContext;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public NotePage notePage;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseEraseRequest(@NotNull WorkBundle workBundle, @NotNull RenderContext renderContext, @NotNull EraseContext eraseContext) {
        super(workBundle);
        Intrinsics.checkNotNullParameter(workBundle, "workBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(eraseContext, "eraseContext");
        this.renderContext = renderContext;
        this.eraseContext = eraseContext;
    }

    public final void addShapes(@NotNull List<? extends Shape> addShapes) {
        Intrinsics.checkNotNullParameter(addShapes, "addShapes");
        for (Map.Entry entry : CollectionKt.toMapList(addShapes, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.BaseEraseRequest$addShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        }, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.BaseEraseRequest$addShapes$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }).entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getWorkBundle().getNoteBundle().getNoteDoc(), (String) entry.getKey());
            if (notePage != null) {
                ShapeUtils.INSTANCE.setShapeZOrder((Collection<? extends Shape>) entry.getValue(), notePage);
                NotePageShape.addShapeList$default(NotePageShape.INSTANCE, notePage, (Collection) entry.getValue(), 0, 2, null);
            }
        }
    }

    @NotNull
    public final List<Shape> createCrossPageShapes(@NotNull List<? extends Shape> shapeList) {
        List<Shape> list;
        Object obj;
        List<Shape> emptyList;
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        List<? extends Shape> list2 = shapeList;
        if (CollectionKt.isNullOrEmpty(list2)) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        List<BoxInfo> visibleBoxList = WorkBundleKt.visibleBoxList(getWorkBundle());
        Map<String, List<Shape>> pageShapeMap = ShapeTypes.INSTANCE.toPageShapeMap(list2);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, List<Shape>> entry : pageShapeMap.entrySet()) {
            Iterator<T> it2 = visibleBoxList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    obj = null;
                    break;
                }
                obj = it2.next();
                if (Intrinsics.areEqual(((BoxInfo) obj).getId(), entry.getKey())) {
                    break;
                }
            }
            BoxInfo boxInfo = (BoxInfo) obj;
            if (boxInfo != null) {
                RectF boundingRectWithWidth = ShapeRectUtils.INSTANCE.getBoundingRectWithWidth(entry.getValue());
                CreateCrossPageShapesRequest createCrossPageShapesRequest = new CreateCrossPageShapesRequest(getWorkBundle(), boxInfo.getOriginRectFWithMargin().contains(boundingRectWithWidth) ? visibleBoxList : WorkBundleKt.collectIntersectsVisibleBoxList(getWorkBundle(), boundingRectWithWidth, boxInfo), boxInfo, entry.getValue());
                createCrossPageShapesRequest.execute2();
                linkedHashMap.putAll(createCrossPageShapesRequest.getShapeMap());
            }
        }
        list = CollectionsKt___CollectionsKt.toList(linkedHashMap.keySet());
        return list;
    }

    @NotNull
    public final EraseContext getEraseContext() {
        return this.eraseContext;
    }

    @Nullable
    public final NotePage getNotePage() {
        return this.notePage;
    }

    @NotNull
    public final List<Shape> getReferenceShapes(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        GetReferenceShapesRequest getReferenceShapesRequest = new GetReferenceShapesRequest(getWorkBundle().getNoteBundle(), ShapeTypes.INSTANCE.filterNormalShapes(shapeList));
        getReferenceShapesRequest.execute2();
        return getReferenceShapesRequest.getReferenceShapeList();
    }

    @NotNull
    public final RenderContext getRenderContext() {
        return this.renderContext;
    }

    @NotNull
    public final List<Shape> getSplitRelationalShapes(@NotNull List<? extends Shape> splitShapes) {
        Intrinsics.checkNotNullParameter(splitShapes, "splitShapes");
        ArrayList arrayList = new ArrayList();
        List<Shape> targetShapes = getTargetShapes(splitShapes);
        CollectionKt.safeAddAll(arrayList, targetShapes);
        CollectionKt.safeAddAll(arrayList, getReferenceShapes(targetShapes));
        CollectionKt.safeAddAll(arrayList, getReferenceShapes(splitShapes));
        return arrayList;
    }

    @NotNull
    public final List<Shape> getTargetShapes(@NotNull List<? extends Shape> shapeList) {
        Intrinsics.checkNotNullParameter(shapeList, "shapeList");
        return ShapeTypes.INSTANCE.getTargetShapes(shapeList);
    }

    @NotNull
    public final ChangedShapeBean removeShapes(@NotNull List<? extends Shape> removeShapes) {
        Intrinsics.checkNotNullParameter(removeShapes, "removeShapes");
        ChangedShapeBean changedShapeBean = new ChangedShapeBean();
        for (Map.Entry entry : CollectionKt.toMapList(removeShapes, new Function1<Shape, String>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.BaseEraseRequest$removeShapes$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final String invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2.getPageUniqueId();
            }
        }, new Function1<Shape, Shape>() { // from class: com.onyx.android.sdk.universal.editor.request.erase.BaseEraseRequest$removeShapes$2
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Shape invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return it2;
            }
        }).entrySet()) {
            NotePage notePage = NoteDocNotePage.INSTANCE.getNotePage(getWorkBundle().getNoteBundle().getNoteDoc(), (String) entry.getKey());
            ChangedShapeBean changedShapeBean2 = null;
            if (notePage != null) {
                changedShapeBean2 = NotePage.removeShapeList$default(notePage, (List) entry.getValue(), false, 2, null);
            }
            changedShapeBean.merge(changedShapeBean2);
        }
        return changedShapeBean;
    }

    public final void setEraseContext(@NotNull EraseContext eraseContext) {
        Intrinsics.checkNotNullParameter(eraseContext, "<set-?>");
        this.eraseContext = eraseContext;
    }

    public final void setNotePage(@Nullable NotePage notePage) {
        this.notePage = notePage;
    }

    public final void setRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "<set-?>");
        this.renderContext = renderContext;
    }
}
