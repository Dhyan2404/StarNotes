package com.onyx.android.sdk.note.common.document.page;

import com.onyx.android.sdk.base.data.TinyPoint;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Benchmark;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.AnnotationShape;
import com.onyx.android.sdk.note.common.shape.object.AnnotationShapeMigrate;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShapeCompat;
import com.onyx.android.sdk.note.common.utils.ShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeLinkUtils;
import com.onyx.android.sdk.replicator.note.data.constant.NoteConstant;
import com.onyx.android.sdk.replicator.note.data.point.ShapeRepo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.onyx.android.sdk.replicator.note.p035db.ShapeQueryArgsExtKt;
import com.onyx.android.sdk.replicator.note.p035db.model.ShapeModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\f\u0010\rJ\n\u0010\u0004\u001a\u00020\u0003*\u00020\u0002J\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0002J\u0012\u0010\b\u001a\u00020\u0003*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0018\u0010\u000b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/document/page/NotePageLoad;", "", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "", "ensurePageLoaded", "loadPage", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "checkShapePoints", "notePage", "b", "a", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class NotePageLoad {

    @NotNull
    public static final NotePageLoad INSTANCE = new NotePageLoad();

    /* renamed from: a */
    public final void m33782a(NotePage notePage, Shape shape) {
        AnnotationShape annotationShape = shape instanceof AnnotationShape ? (AnnotationShape) shape : null;
        if (annotationShape != null && AnnotationShapeMigrate.INSTANCE.migrate(annotationShape)) {
            NotePageShape.INSTANCE.saveShape(notePage, annotationShape);
        }
    }

    /* renamed from: b */
    public final void m33783b(NotePage notePage, Shape shape) {
        HWRTextShape hWRTextShape = shape instanceof HWRTextShape ? (HWRTextShape) shape : null;
        if (hWRTextShape != null && HWRTextShapeCompat.INSTANCE.updateHWRTextShapeChange(hWRTextShape)) {
            NotePageShape.INSTANCE.saveShape(notePage, hWRTextShape);
        }
    }

    public final void checkShapePoints(@NotNull NotePage notePage, @NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (ShapeTypes.INSTANCE.isTextShape(shape) && shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().isEmpty()) {
            NoteConstant noteConstant = NoteConstant.INSTANCE;
            TouchPoint touchPoint = new TouchPoint(noteConstant.getSHAPE_DEFAULT_POSITION(), noteConstant.getSHAPE_DEFAULT_POSITION());
            shape.onDown(touchPoint, touchPoint);
            TouchPoint touchPoint2 = new TouchPoint(touchPoint);
            ShapeTextStyle textStyle = shape.getTextStyle();
            if (textStyle != null) {
                touchPoint2.setX(touchPoint.getX() + textStyle.getTextWidth());
                touchPoint2.setY(touchPoint.getY() + textStyle.getTextHeight());
            }
            shape.onUp(touchPoint2, touchPoint2);
            shape.updatePoints();
        }
    }

    public final void ensurePageLoaded(@NotNull NotePage notePage) {
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        if (notePage.getIsLoaded()) {
            return;
        }
        loadPage(notePage);
    }

    public final void loadPage(@NotNull final NotePage notePage) {
        List<TinyPoint> tinyPointList;
        Intrinsics.checkNotNullParameter(notePage, "<this>");
        Benchmark benchmark = new Benchmark();
        notePage.getNewAddedShapeMap().clear();
        notePage.getRemovedShapeMap().clear();
        final List<ShapeModel> loadShapeList = notePage.getProviderHolder().getNoteShapeProvider().loadShapeList(ShapeQueryArgsExtKt.loadShapeListQuery(notePage.getDocumentUniqueId(), notePage.getPageUniqueId(), (String) null, (Integer) 0));
        benchmark.reportDebug(new Function0<String>() { // from class: com.onyx.android.sdk.note.common.document.page.NotePageLoad$loadPage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final String invoke() {
                return "load page:" + NotePage.this.getPageUniqueId() + " load cb ShapeList:" + loadShapeList.size();
            }
        });
        LinkedHashMap<String, ShapeRepo> loadShapePointList = notePage.getPointLoader().loadShapePointList();
        int size = loadShapePointList.size();
        int size2 = loadShapeList.size();
        HashSet<String> hashSet = new HashSet();
        for (ShapeModel shapeModel : loadShapeList) {
            Shape shapeFromModel = ShapeConvertUtils.INSTANCE.shapeFromModel(notePage.getProviderHolder(), shapeModel);
            ShapeLinkUtils.INSTANCE.loadShapeLinkModel(notePage.getProviderHolder().getNoteLinkProvider(), shapeModel, notePage.getLinkMap());
            ShapeRepo remove = loadShapePointList.remove(shapeFromModel.getShapeUniqueId());
            if (!ShapeTypes.INSTANCE.needLoadTouchPoints(shapeFromModel)) {
                notePage.getShapeList().add(shapeFromModel);
            } else if (remove != null && (tinyPointList = remove.getTinyPointList()) != null) {
                if (shapeFromModel.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().isEmpty()) {
                    shapeFromModel.addPoints(new TouchPointList().addAll(tinyPointList, shapeFromModel.getShapeCreateArgs().getMaxPressure()));
                } else {
                    CollectionKt.add(hashSet, shapeModel.getRevisionId());
                }
                checkShapePoints(notePage, shapeFromModel);
                if (shapeFromModel.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().size() >= 2) {
                    notePage.getShapeList().add(shapeFromModel);
                    m33783b(notePage, shapeFromModel);
                    notePage.updateTagShapeChange(shapeFromModel, true);
                    m33782a(notePage, shapeFromModel);
                }
            }
        }
        notePage.sortShapeList();
        for (String str : hashSet) {
            Debug.INSTANCE.m32044e(NotePage.class, "empty shape repo documentId: " + notePage.getDocumentUniqueId() + ", pageId: " + notePage.getPageUniqueId() + "revisionId: " + str, new Object[0]);
        }
        benchmark.report("load page:" + notePage.getPageUniqueId() + ", shape count: " + notePage.getShapeList().size() + ", shapeRepoCount: " + size + ", modelCount: " + size2);
        notePage.setLoaded(true);
    }
}
