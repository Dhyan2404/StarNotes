package com.onyx.android.sdk.universal.pdf.utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.ContentConstants;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.MemoryUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.data.common.data.TemplateJsonBean;
import com.onyx.android.sdk.data.common.data.template.TemplateResourceConstant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.data.utils.UUIDUtils;
import com.onyx.android.sdk.genericshape.DrawContext;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.genericshape.GeoLayoutMargin;
import com.onyx.android.sdk.genericshape.PageMargins;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.MarginPixel;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.neopdf.NeoPdf;
import com.onyx.android.sdk.neopdf.PdfHighlightInfo;
import com.onyx.android.sdk.neopdf.PdfPageLayerInfo;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.export.PdfExport;
import com.onyx.android.sdk.note.common.document.doc.NoteDocument;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageLoad;
import com.onyx.android.sdk.note.common.document.page.NotePageSave;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeArgs;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.utils.NotePageInfoUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.extension.NoteDocumentKt;
import com.onyx.android.sdk.note.extension.ShapeKt;
import com.onyx.android.sdk.reader.data.ReaderThumbnailRenderArgs;
import com.onyx.android.sdk.reader.request.RenderReaderPageThumbnailRequest;
import com.onyx.android.sdk.replicator.note.data.page.LayerInfo;
import com.onyx.android.sdk.replicator.note.data.page.PageInfo;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeReferenceBean;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.data.ExportDraftPageArgs;
import com.onyx.android.sdk.universal.editor.data.NoteExportArgs;
import com.onyx.android.sdk.universal.editor.doc.VirtualDocPolicy;
import com.onyx.android.sdk.universal.editor.doc.VirtualPage;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.request.page.CreateVirtualPageBitmapRequest;
import com.onyx.android.sdk.universal.p042ui.data.Templates;
import com.onyx.android.sdk.universal.pdf.utils.NoteEmbedUtils;
import com.onyx.android.sdk.universal.pdf.utils.PdfGeoLayoutDrawer;
import com.sun.org.apache.bcel.internal.Constants;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.TimeSource;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010%\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0010 \n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bW\u0010XJ0\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0004H\u0002J\"\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\bH\u0002J(\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\bH\u0002J \u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J(\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001dH\u0002J$\u0010#\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!H\u0002J$\u0010%\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!H\u0002J,\u0010'\u001a\u00020\u001f2\u0012\u0010\"\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001dH\u0002J,\u0010)\u001a\u00020\u001f2\u0012\u0010(\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001d0!2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020\u001dH\u0002J(\u0010-\u001a\u00020\u000b2\u0006\u0010*\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010,\u001a\u00020+H\u0002J0\u00106\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00107\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00108\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J0\u00109\u001a\u00020\u000b2\u0006\u0010/\u001a\u00020.2\u0006\u00101\u001a\u0002002\u0006\u00103\u001a\u0002022\u0006\u00105\u001a\u0002042\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010:\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J \u0010;\u001a\u00020\r2\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J0\u0010=\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010<\u001a\u00020\rH\u0002J4\u0010@\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\u001f0>J.\u0010A\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010B\u001a\u00020\u000b2\u0006\u00101\u001a\u000200J.\u0010G\u001a\u00020\u001f2\u0006\u0010D\u001a\u00020C2\u0006\u0010F\u001a\u00020E2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00103\u001a\u0002022\u0006\u0010\u001e\u001a\u00020\u001dJ\u0016\u0010J\u001a\u0004\u0018\u00010I*\u00020\u001b2\b\u0010H\u001a\u0004\u0018\u00010\u0011J\u000e\u0010N\u001a\u00020M2\u0006\u0010L\u001a\u00020KJ&\u0010O\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006J<\u0010U\u001a\u00020\u00062\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010P\u001a\u00020\u00062\u0006\u0010R\u001a\u00020Q2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u00060SJ&\u0010V\u001a\u00020\u000b2\u0006\u00101\u001a\u0002002\u0006\u0010/\u001a\u00020.2\u0006\u00103\u001a\u0002022\u0006\u0010\u0007\u001a\u00020\u0006¨\u0006Y"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils;", "", "Lcom/onyx/android/sdk/neopdf/NeoPdf;", "neoPdf", "", "pageIndex", "", CouchFieldKey.KEY_TOC_PAGE_ID, "Landroid/graphics/RectF;", "rectF", "color", "", "t", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "pageBoxInfo", "dstPageRect", "pageOriginRect", "Landroid/graphics/Matrix;", "p", "pageSizeWithMargin", "contentInfo", "exportRect", "contentOriginRectF", C4921e.f26528e, "Landroid/graphics/Rect;", "pageRect", "c", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeArgs;", "args", "", "u", "", "pendingShapeMap", C6999h.f39688c, "shapeLinkShapeMap", C6998g.f39679a, "embedShapeArgs", "e", "linkShapeMap", "d", "pdfNative", "Landroid/graphics/Bitmap;", "bitmap", "q", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/neopdf/export/PdfExport;", "pdfExport", "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;", "exportArgs", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPage;", "virtualPage", "j", GoogleApiAvailabilityLight.f29016b, C4921e.f26537n, "l", C6997f.f39671c, "i", "box", "m", "Lkotlin/Function0;", "abortCallback", "writeDraftPage", "writeNotePageShapes", "saveFile", "Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;", "noteDocument", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "writePageShapes", "renderMatrix", "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;", "toPdfHighlight", "Lcom/onyx/android/sdk/replicator/note/data/page/PageInfo;", "pageInfo", "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;", "createPdfPageLayerInfo", "renderContentTemplate", "srcPath", "", "contentIndexList", "", "pageIdList", "renderPdfTemplate", "renderAppendPage", Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nNoteEmbedUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 5 Rect.kt\nandroidx/core/graphics/RectKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 8 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,816:1\n288#2,2:817\n1603#2,9:819\n1855#2:828\n1856#2:830\n1612#2:831\n1855#2:833\n1856#2:845\n1864#2,3:874\n1855#2,2:880\n1#3:829\n1#3:832\n18#4,4:834\n50#4,7:838\n344#5,3:846\n344#5,3:860\n344#5,3:863\n344#5,3:866\n344#5,3:869\n344#5,3:877\n215#6,2:849\n215#6,2:858\n526#7:851\n511#7,6:852\n37#8,2:872\n*S KotlinDebug\n*F\n+ 1 NoteEmbedUtils.kt\ncom/onyx/android/sdk/universal/pdf/utils/NoteEmbedUtils\n*L\n106#1:817,2\n154#1:819,9\n154#1:828\n154#1:830\n154#1:831\n156#1:833\n156#1:845\n730#1:874,3\n804#1:880,2\n154#1:829\n180#1:834,4\n180#1:838,7\n248#1:846,3\n523#1:860,3\n563#1:863,3\n589#1:866,3\n595#1:869,3\n766#1:877,3\n378#1:849,2\n429#1:858,2\n426#1:851\n426#1:852,6\n679#1:872,2\n*E\n"})
/* loaded from: classes8.dex */
public final class NoteEmbedUtils {

    @NotNull
    public static final NoteEmbedUtils INSTANCE = new NoteEmbedUtils();

    /* renamed from: r */
    public static final boolean m41564r(Shape it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return false;
    }

    /* renamed from: s */
    public static final boolean m41565s(Shape it2) {
        Intrinsics.checkNotNullParameter(it2, "it");
        return false;
    }

    /* renamed from: c */
    public final void m41566c(NeoPdf neoPdf, String pageId, Rect pageRect) {
        neoPdf.appendPage(pageId, pageRect.width(), pageRect.height());
    }

    @NotNull
    public final PdfPageLayerInfo createPdfPageLayerInfo(@NotNull PageInfo pageInfo) {
        Intrinsics.checkNotNullParameter(pageInfo, "pageInfo");
        PdfPageLayerInfo pdfPageLayerInfo = new PdfPageLayerInfo();
        pdfPageLayerInfo.currentLayerId = NotePageInfoUtils.INSTANCE.toPdfLayerId(pageInfo.getCurrentLayerId());
        int size = pageInfo.getLayerList().size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            LayerInfo layerInfo = pageInfo.getLayerList().get(i);
            PdfPageLayerInfo.Layer layer = new PdfPageLayerInfo.Layer();
            layer.id = NotePageInfoUtils.INSTANCE.toPdfLayerId(layerInfo.getId());
            layer.visible = layerInfo.getShow();
            arrayList.add(layer);
        }
        pdfPageLayerInfo.layers = (PdfPageLayerInfo.Layer[]) arrayList.toArray(new PdfPageLayerInfo.Layer[0]);
        return pdfPageLayerInfo;
    }

    /* renamed from: d */
    public final boolean m41567d(Map<Shape, EmbedShapeArgs> linkShapeMap, Shape shape, EmbedShapeArgs embedShapeArgs) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        Shape targetShape = shapeTypes.getTargetShape(shape);
        if (!shapeTypes.isLinkShape(targetShape)) {
            return false;
        }
        if (shapeTypes.isReferenceShape(shape)) {
            targetShape = ShapeCopyUtils.INSTANCE.cloneNewShape(targetShape, targetShape.getType());
            Matrix matrix = new Matrix();
            ShapeReferenceBean shapeReferenceBean = shape.getShapeReferenceBean();
            matrix.postConcat(MatrixKt.getMatrixByValues(shapeReferenceBean != null ? shapeReferenceBean.getMatrixValues() : null));
            targetShape.postConcat(matrix);
        }
        LinkModel createLinkModel = PdfShapeConvertUtils.INSTANCE.createLinkModel(targetShape);
        String type = createLinkModel != null ? createLinkModel.getType() : null;
        if (!(Intrinsics.areEqual(type, ShapeLinkType.LINK_PAGE_NUMBER) ? true : Intrinsics.areEqual(type, "NOTE")) || createLinkModel.getTargetPageIndex() <= embedShapeArgs.getPageIndex()) {
            return false;
        }
        linkShapeMap.put(targetShape, embedShapeArgs);
        return true;
    }

    /* renamed from: e */
    public final boolean m41568e(Map<Shape, EmbedShapeArgs> pendingShapeMap, Shape shape, EmbedShapeArgs embedShapeArgs) {
        return m41567d(pendingShapeMap, shape, embedShapeArgs);
    }

    /* renamed from: f */
    public final void m41569f(PdfExport pdfExport, int pageIndex) {
        pdfExport.getPdfNative().endPageBackgroundRender();
        pdfExport.save(pdfExport.getPdfNative().getFilePath());
        if (pageIndex >= 0) {
            pdfExport.getPdfNative().beginPageBackgroundRender(pageIndex);
        }
    }

    /* renamed from: g */
    public final void m41570g(NeoPdf neoPdf, Map<Shape, EmbedShapeArgs> shapeLinkShapeMap) {
        int pageCount = neoPdf.pageCount() - 1;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<Shape, EmbedShapeArgs> entry : shapeLinkShapeMap.entrySet()) {
            LinkModel createLinkModel = PdfShapeConvertUtils.INSTANCE.createLinkModel(entry.getKey());
            Intrinsics.checkNotNull(createLinkModel);
            if (createLinkModel.getTargetPageIndex() <= pageCount) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            INSTANCE.m41582u(neoPdf, ((EmbedShapeArgs) entry2.getValue()).getPageIndex(), (Shape) entry2.getKey(), (EmbedShapeArgs) entry2.getValue());
            shapeLinkShapeMap.remove(entry2.getKey());
        }
    }

    /* renamed from: h */
    public final void m41571h(NeoPdf neoPdf, Map<Shape, EmbedShapeArgs> pendingShapeMap) {
        m41570g(neoPdf, pendingShapeMap);
    }

    /* renamed from: i */
    public final BoxInfo m41572i(EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId) {
        VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        Intrinsics.checkNotNull(virtualPage);
        BoxInfo copy = virtualPage.getBox().copy();
        copy.setScale(1.0f);
        RectF copy2 = RectFKt.copy(copy.getBox());
        RectFKt.scaleRect(copy2, 1 / exportArgs.getBenchmarkScale());
        RectFKt.offsetToOrigin(copy2);
        BoxInfo.scaleToViewport$default(copy, copy2, false, 2, null);
        return copy;
    }

    /* renamed from: j */
    public final void m41573j(EditorBundle editorBundle, PdfExport pdfExport, NoteExportArgs exportArgs, VirtualPage virtualPage, BoxInfo pageBoxInfo) {
        Properties properties;
        String str = null;
        GeoLayout geoLayout = !Intrinsics.areEqual(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType(), ContentConstants.TYPE_GEO_LAYOUT) ? null : (GeoLayout) JSONUtils.INSTANCE.parseObject(FileUtils.INSTANCE.readContentOfFile(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath()), GeoLayout.class);
        if (geoLayout != null && (properties = geoLayout.getProperties()) != null) {
            str = properties.getLayoutType();
        }
        if (Intrinsics.areEqual(str, GeoConstant.LayoutImage)) {
            m41574k(editorBundle, pdfExport, exportArgs, virtualPage, pageBoxInfo);
        } else {
            m41577n(editorBundle, pdfExport, exportArgs, virtualPage, pageBoxInfo);
        }
    }

    /* renamed from: k */
    public final void m41574k(EditorBundle editorBundle, PdfExport pdfExport, NoteExportArgs exportArgs, VirtualPage virtualPage, BoxInfo pageBoxInfo) {
        NeoPdf pdfNative = pdfExport.getPdfNative();
        RectF copy = RectFKt.copy(pageBoxInfo.getBox());
        RectFKt.offsetToOrigin(copy);
        BoxInfo contentInfo = pageBoxInfo.getContentInfo();
        if ((contentInfo != null ? contentInfo.copy() : null) == null) {
            String id = pageBoxInfo.getId();
            Rect rect = new Rect();
            copy.roundOut(rect);
            m41566c(pdfNative, id, rect);
            return;
        }
        BoxInfo copy2 = pageBoxInfo.copy();
        BoxInfo.INSTANCE.rotate(copy2, -pageBoxInfo.getRotation());
        BoxInfo contentInfo2 = copy2.getContentInfo();
        Intrinsics.checkNotNull(contentInfo2);
        RectF copy3 = RectFKt.copy(contentInfo2.getBox());
        int pageCount = pdfNative.pageCount();
        m41575l(editorBundle, pdfExport, exportArgs, virtualPage, copy2);
        pdfNative.resizePageWithContent(pageCount, copy.width(), copy.height(), m41579p(pageBoxInfo, copy, copy3));
    }

    /* renamed from: l */
    public final void m41575l(EditorBundle editorBundle, PdfExport pdfExport, NoteExportArgs exportArgs, VirtualPage virtualPage, BoxInfo pageBoxInfo) {
        boolean z;
        NeoPdf neoPdf;
        boolean exportTemplate = exportArgs.getExportTemplate();
        NeoPdf pdfNative = pdfExport.getPdfNative();
        RectF copy = RectFKt.copy(pageBoxInfo.getBox());
        RectFKt.offsetToOrigin(copy);
        BoxInfo contentInfo = pageBoxInfo.getContentInfo();
        BoxInfo copy2 = contentInfo != null ? contentInfo.copy() : null;
        if (copy2 == null) {
            String id = pageBoxInfo.getId();
            Rect rect = new Rect();
            copy.roundOut(rect);
            m41566c(pdfNative, id, rect);
            return;
        }
        float actualScale = copy2.getActualScale();
        RectF copy3 = RectFKt.copy(copy2.getBox());
        int pageCount = pdfNative.pageCount();
        String id2 = pageBoxInfo.getId();
        Rect rect2 = new Rect();
        copy3.roundOut(rect2);
        m41566c(pdfNative, id2, rect2);
        BoxInfo copy4 = pageBoxInfo.copy();
        copy4.setScale(1.0f);
        BoxInfo contentInfo2 = copy4.getContentInfo();
        Intrinsics.checkNotNull(contentInfo2);
        contentInfo2.offsetToOrigin();
        RectF rectF = contentInfo2.width() < ((float) exportArgs.getTemplateLimitSize().getWidth()) ? new RectF(0.0f, 0.0f, contentInfo2.width(), Math.min((r7.getHeight() * contentInfo2.width()) / r7.getWidth(), contentInfo2.height())) : new RectF(0.0f, 0.0f, r7.getWidth(), Math.min(r7.getHeight(), contentInfo2.height()));
        pdfNative.beginPageBackgroundRender(pageCount);
        float left = contentInfo2.left();
        float pVar = contentInfo2.top();
        int i = 0;
        while (pVar < contentInfo2.bottom()) {
            BoxInfo copy5 = pageBoxInfo.copy();
            copy5.setBox(RectFKt.copy(rectF));
            CreateVirtualPageBitmapRequest createVirtualPageBitmapRequest = new CreateVirtualPageBitmapRequest(editorBundle.getWorkBundle(), copy5, exportTemplate);
            createVirtualPageBitmapRequest.execute2();
            if (exportTemplate) {
                RectF copy6 = RectFKt.copy(contentInfo2.getBox());
                copy6.offset(-left, -pVar);
                new RenderReaderPageThumbnailRequest(EditorBundleKt.readerBundle(editorBundle), new ReaderThumbnailRenderArgs(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath(), contentInfo2.getActualScale(), copy6, contentInfo2.getId(), RectFKt.copy(contentInfo2.getOriginRectF()), createVirtualPageBitmapRequest.getBitmap(), null, contentInfo2.getRotation(), 64, null)).execute2();
            }
            RectF copy7 = RectFKt.copy(rectF);
            copy7.offset(left, pVar);
            copy7.bottom = Math.min(copy7.bottom, contentInfo2.bottom());
            PdfShapeInfo createImageShape = PdfShapeInfo.INSTANCE.createImageShape();
            createImageShape.setId(UUIDUtils.INSTANCE.shortUUID());
            createImageShape.setPageId(pageBoxInfo.getId());
            createImageShape.setMatrix(MatrixKt.getMatrixValue(new Matrix()));
            createImageShape.setLayerId("0");
            createImageShape.setExtraAttr("");
            createImageShape.setBitmap(createVirtualPageBitmapRequest.getBitmap());
            RectF copy8 = RectFKt.copy(copy7);
            RectFKt.scaleRect(copy8, actualScale);
            createImageShape.setRect(copy8);
            pdfNative.drawPageBackgroundShape(createImageShape);
            left += rectF.width();
            if (left >= contentInfo2.right()) {
                left = contentInfo2.left();
                pVar += rectF.height();
            }
            i++;
            if (i % 10 == 0) {
                m41569f(pdfExport, pageCount);
                Debug debug = Debug.INSTANCE;
                StringBuilder sb = new StringBuilder();
                sb.append(pageBoxInfo.getId());
                sb.append(" pdf renderBg(");
                sb.append(i);
                sb.append(") save by native size:");
                z = exportTemplate;
                neoPdf = pdfNative;
                sb.append(FileUtils.INSTANCE.getFileSize(MemoryUtils.INSTANCE.getNativeHeapAllocatedSize()));
                debug.m32035d(NoteEmbedUtils.class, sb.toString(), new Object[0]);
            } else {
                z = exportTemplate;
                neoPdf = pdfNative;
            }
            pdfNative = neoPdf;
            exportTemplate = z;
        }
        m41569f(pdfExport, -1);
    }

    /* renamed from: m */
    public final void m41576m(PdfExport pdfExport, EditorBundle editorBundle, NoteExportArgs exportArgs, String pageId, BoxInfo box) {
        Integer num;
        BoxInfo boxInfo;
        Matrix matrix;
        if (box.getMarginPixel().hasMargin() && (num = exportArgs.getPageIndexMap().get(pageId)) != null) {
            int intValue = num.intValue();
            RectF copy = RectFKt.copy(box.getBox());
            RectFKt.offsetToOrigin(copy);
            pdfExport.getPdfNative().beginPageBackgroundRender(intValue);
            GeoLayoutMargin loadFromFileOrDefault = PdfGeoLayoutMargin.INSTANCE.loadFromFileOrDefault(TemplateResourceConstant.INSTANCE.getPageMarginTemplateFile(EditorBundleKt.docId(editorBundle), box.getMarginStyle().getTemplateResourceId()), pageId, pdfExport.getPdfNative());
            Matrix matrix2 = new Matrix();
            float f = 1;
            matrix2.postScale(f / exportArgs.getBenchmarkScale(), f / exportArgs.getBenchmarkScale());
            if (box.getRotation() == 0.0f) {
                boxInfo = box;
                matrix = matrix2;
            } else {
                boxInfo = box.copy();
                BoxInfo.Companion companion = BoxInfo.INSTANCE;
                RectF copy2 = RectFKt.copy(copy);
                RectFKt.scale(copy2, Float.valueOf(exportArgs.getBenchmarkScale()));
                Unit unit = Unit.INSTANCE;
                companion.updateVirtualPageSize(boxInfo, copy2);
                companion.rotate(boxInfo, -box.getRotation());
                Matrix rotate = companion.rotate(boxInfo.copy(), box.getRotation());
                rotate.postConcat(matrix2);
                matrix = rotate;
            }
            RectF copy3 = RectFKt.copy(copy);
            com.onyx.android.sdk.base.lite.extension.RectFKt.rotateSize$default(copy3, -box.getRotation(), 0.0f, 0.0f, 6, null);
            RectFKt.scale(copy3, Float.valueOf(exportArgs.getBenchmarkScale()));
            loadFromFileOrDefault.setMargin(boxInfo.getMarginPercent(), boxInfo.getMarginStyle());
            loadFromFileOrDefault.setViewport(copy3);
            BoxInfo contentInfo = box.getContentInfo();
            Intrinsics.checkNotNull(contentInfo);
            Iterator<T> it2 = RectFKt.getNonIntersectRectFs(copy, contentInfo.getBox()).iterator();
            while (it2.hasNext()) {
                INSTANCE.m41581t(pdfExport.getPdfNative(), intValue, pageId, (RectF) it2.next(), box.getMarginStyle().getColor());
            }
            loadFromFileOrDefault.drawMarginTemplate(new Canvas(), false, matrix);
            pdfExport.getPdfNative().endPageBackgroundRender();
        }
    }

    /* renamed from: n */
    public final void m41577n(EditorBundle editorBundle, PdfExport pdfExport, NoteExportArgs exportArgs, VirtualPage virtualPage, BoxInfo pageBoxInfo) {
        int pageCount = pdfExport.getPdfNative().pageCount();
        NeoPdf pdfNative = pdfExport.getPdfNative();
        RectF copy = RectFKt.copy(pageBoxInfo.getBox());
        RectFKt.offsetToOrigin(copy);
        String id = pageBoxInfo.getId();
        Rect rect = new Rect();
        copy.roundOut(rect);
        m41566c(pdfNative, id, rect);
        boolean exportTemplate = exportArgs.getExportTemplate();
        BoxInfo copy2 = virtualPage.getBox().copy();
        BoxInfo.scaleToViewport$default(copy2, copy2.getOriginRectFWithMargin(), false, 2, null);
        copy2.setScale(1.0f);
        if (!exportArgs.getTemplateLimitSize().isEmpty()) {
            BoxInfo.scaleToViewport$default(copy2, RectKt.toSizeF(copy2.getOriginRectFWithMargin()).ratioPageSize(exportArgs.getTemplateLimitSize()), false, 2, null);
        }
        BoxInfo contentInfo = copy2.getContentInfo();
        if (contentInfo == null) {
            return;
        }
        CreateVirtualPageBitmapRequest createVirtualPageBitmapRequest = new CreateVirtualPageBitmapRequest(editorBundle.getWorkBundle(), copy2, exportTemplate);
        createVirtualPageBitmapRequest.execute2();
        if (exportTemplate) {
            new RenderReaderPageThumbnailRequest(EditorBundleKt.readerBundle(editorBundle), new ReaderThumbnailRenderArgs(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentPath(), contentInfo.getActualScale(), RectFKt.copy(contentInfo.getBox()), contentInfo.getId(), RectFKt.copy(contentInfo.getOriginRectF()), createVirtualPageBitmapRequest.getBitmap(), null, contentInfo.getRotation(), 64, null)).execute2();
        }
        m41580q(pdfExport.getPdfNative(), pageCount, pageBoxInfo.getId(), createVirtualPageBitmapRequest.getBitmap());
    }

    /* renamed from: o */
    public final Matrix m41578o(RectF pageSizeWithMargin, BoxInfo contentInfo, RectF exportRect, RectF contentOriginRectF) {
        Pair m61535to;
        RectF copy = RectFKt.copy(contentInfo.getBox());
        RectF copy2 = RectFKt.copy(pageSizeWithMargin);
        RectF copy3 = RectFKt.copy(copy);
        RectFKt.offsetToOrigin(copy2);
        copy3.offset(copy2.left, copy2.top);
        RectFKt.scaleRect(copy3, exportRect.width() / copy2.width(), exportRect.height() / copy2.height());
        com.onyx.android.sdk.base.lite.extension.RectFKt.rotate$default(contentOriginRectF, contentInfo.getRotation(), 0.0f, 0.0f, 6, null);
        RectFKt.offsetToOrigin(contentOriginRectF);
        float rotation = contentInfo.getRotation() % 360.0f;
        if (rotation == 90.0f) {
            m61535to = TuplesKt.m61535to(Float.valueOf(0.0f), Float.valueOf(contentOriginRectF.height()));
        } else {
            if (rotation == 180.0f) {
                m61535to = TuplesKt.m61535to(Float.valueOf(contentOriginRectF.width()), Float.valueOf(contentOriginRectF.height()));
            } else {
                m61535to = rotation == 270.0f ? TuplesKt.m61535to(Float.valueOf(contentOriginRectF.width()), Float.valueOf(0.0f)) : TuplesKt.m61535to(Float.valueOf(0.0f), Float.valueOf(0.0f));
            }
        }
        float floatValue = ((Number) m61535to.component1()).floatValue();
        float floatValue2 = ((Number) m61535to.component2()).floatValue();
        Matrix matrix = new Matrix();
        matrix.postRotate(contentInfo.getRotation());
        matrix.postTranslate(floatValue, floatValue2);
        matrix.postScale(copy3.width() / contentOriginRectF.width(), copy3.height() / contentOriginRectF.height());
        matrix.postTranslate(copy3.left, (exportRect.height() - copy3.height()) - copy3.top);
        return matrix;
    }

    /* renamed from: p */
    public final Matrix m41579p(BoxInfo pageBoxInfo, RectF dstPageRect, RectF pageOriginRect) {
        BoxInfo copy = pageBoxInfo.copy();
        BoxInfo.scaleToViewport$default(copy, dstPageRect, false, 2, null);
        BoxInfo contentInfo = copy.getContentInfo();
        if (contentInfo == null) {
            return new Matrix();
        }
        RectF copy2 = RectFKt.copy(copy.getBox());
        if (pageOriginRect == null) {
            BoxInfo contentInfo2 = copy.getContentInfo();
            Intrinsics.checkNotNull(contentInfo2);
            pageOriginRect = RectFKt.copy(contentInfo2.getOriginRectF());
        }
        return m41578o(copy2, contentInfo, dstPageRect, pageOriginRect);
    }

    /* renamed from: q */
    public final void m41580q(NeoPdf pdfNative, int pageIndex, String pageId, Bitmap bitmap) {
        pdfNative.setBackground(pageIndex, "", pageId, bitmap, "{}");
    }

    public final void renderAppendPage(@NotNull PdfExport pdfExport, @NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        BoxInfo m41572i = m41572i(editorBundle, exportArgs, pageId);
        RectF copy = RectFKt.copy(m41572i.getBox());
        RectFKt.offsetToOrigin(copy);
        NeoPdf pdfNative = pdfExport.getPdfNative();
        Rect rect = new Rect();
        copy.roundOut(rect);
        m41566c(pdfNative, pageId, rect);
        m41576m(pdfExport, editorBundle, exportArgs, pageId, m41572i);
        pdfExport.save(pdfExport.getPdfNative().getFilePath());
    }

    public final void renderContentTemplate(@NotNull PdfExport pdfExport, @NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId) {
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        Intrinsics.checkNotNull(virtualPage);
        BoxInfo m41572i = m41572i(editorBundle, exportArgs, pageId);
        m41573j(editorBundle, pdfExport, exportArgs, virtualPage, m41572i);
        m41576m(pdfExport, editorBundle, exportArgs, pageId, m41572i);
        pdfExport.save(pdfExport.getPdfNative().getFilePath());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0145 A[Catch: all -> 0x0174, TryCatch #0 {all -> 0x0174, blocks: (B:16:0x00ad, B:17:0x00b8, B:19:0x00be, B:21:0x00c6, B:22:0x00c9, B:24:0x00fe, B:28:0x010e, B:31:0x011e, B:32:0x013f, B:34:0x0145, B:35:0x014c), top: B:15:0x00ad }] */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String renderPdfTemplate(@org.jetbrains.annotations.NotNull final com.onyx.android.sdk.neopdf.export.PdfExport r22, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.EditorBundle r23, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.universal.editor.data.NoteExportArgs r24, @org.jetbrains.annotations.NotNull java.lang.String r25, @org.jetbrains.annotations.NotNull int[] r26, @org.jetbrains.annotations.NotNull java.util.List<java.lang.String> r27) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.pdf.utils.NoteEmbedUtils.renderPdfTemplate(com.onyx.android.sdk.neopdf.export.PdfExport, com.onyx.android.sdk.universal.editor.EditorBundle, com.onyx.android.sdk.universal.editor.data.NoteExportArgs, java.lang.String, int[], java.util.List):java.lang.String");
    }

    public final void saveFile(@NotNull PdfExport pdfExport) {
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        pdfExport.save(pdfExport.getPdfNative().getFilePath());
    }

    /* renamed from: t */
    public final void m41581t(NeoPdf neoPdf, int pageIndex, String pageId, RectF rectF, int color) {
        PdfShapeInfo pdfShapeInfo = new PdfShapeInfo();
        pdfShapeInfo.setId(UUIDUtils.INSTANCE.shortUUID());
        pdfShapeInfo.setType(4);
        pdfShapeInfo.setVertices(new float[]{rectF.left, rectF.top, rectF.right, rectF.bottom});
        pdfShapeInfo.setRect(RectFKt.copy(rectF));
        pdfShapeInfo.setFillColor(color);
        pdfShapeInfo.setPageId(pageId);
        pdfShapeInfo.setMatrix(MatrixKt.getMatrixValue(new Matrix()));
        pdfShapeInfo.setLayerId("0");
        pdfShapeInfo.setExtraAttr("");
        neoPdf.drawPageBackgroundShape(pdfShapeInfo);
    }

    @Nullable
    public final PdfHighlightInfo toPdfHighlight(@NotNull Shape shape, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(shape, "<this>");
        return shape.toPdfHighlight(EmbedShapeBean.INSTANCE.fromShape(shape, matrix));
    }

    /* renamed from: u */
    public final boolean m41582u(NeoPdf neoPdf, int pageIndex, Shape shape, EmbedShapeArgs args) {
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        if (shapeTypes.isAnnotationShape(shape)) {
            PdfHighlightInfo pdfHighlight = toPdfHighlight(shape, args.getRenderMatrix());
            if (pdfHighlight == null) {
                return false;
            }
            pdfHighlight.setAuthor(neoPdf.getSaveOptions().getAuthor());
            return neoPdf.writeHighlight(pageIndex, pdfHighlight);
        }
        if (ShapeKt.isTapeShape(shapeTypes.getTargetShape(shape))) {
            return AppConfig.INSTANCE.getRenderTapeInImage();
        }
        if (!shapeTypes.isReferenceShape(shape)) {
            return neoPdf.writeShape(pageIndex, PdfShapeUtils.INSTANCE.createPdfShape(shape, args));
        }
        Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(shapeTypes.getTargetShape(shape), shapeTypes.getTargetType(shape));
        Matrix matrix = new Matrix();
        ShapeReferenceBean shapeReferenceBean = shape.getShapeReferenceBean();
        matrix.postConcat(MatrixKt.getMatrixByValues(shapeReferenceBean != null ? shapeReferenceBean.getMatrixValues() : null));
        cloneNewShape.postConcat(matrix);
        return neoPdf.writeShape(pageIndex, PdfShapeUtils.INSTANCE.createPdfShape(cloneNewShape, args));
    }

    @NotNull
    public final String writeDraftPage(@NotNull final PdfExport pdfExport, @NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId, @NotNull final Function0<Boolean> abortCallback) {
        Object obj;
        Object last;
        final PdfGeoLayoutDrawer pdfGeoLayoutDrawer;
        List listOf;
        Iterator it2;
        RectF rectF;
        Properties properties;
        PageMargins pageMargins;
        RectF layoutRect;
        Properties properties2;
        PageMargins pageMargins2;
        Properties properties3;
        PageMargins pageMargins3;
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        Intrinsics.checkNotNullParameter(abortCallback, "abortCallback");
        ExportDraftPageArgs exportDraftPageArgs = exportArgs.getExportDraftPageArgs();
        if (exportDraftPageArgs == null) {
            return pdfExport.getPdfNative().getFilePath();
        }
        Iterator<T> it3 = exportDraftPageArgs.getBoxInfoList().iterator();
        while (true) {
            if (!it3.hasNext()) {
                obj = null;
                break;
            }
            obj = it3.next();
            if (Intrinsics.areEqual(((BoxInfo) obj).getId(), pageId)) {
                break;
            }
        }
        BoxInfo boxInfo = (BoxInfo) obj;
        if (boxInfo == null) {
            return pdfExport.getPdfNative().getFilePath();
        }
        VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        VirtualDocPolicy virtualPolicy = editorBundle.getWorkBundle().getVirtualPolicy();
        Intrinsics.checkNotNull(virtualPage);
        NotePage ensureNotePage = virtualPolicy.ensureNotePage(virtualPage);
        RectF cellOriginRectFCopy = boxInfo.getCellOriginRectFCopy();
        Matrix matrix = new Matrix();
        matrix.postTranslate(cellOriginRectFCopy.left, cellOriginRectFCopy.top);
        matrix.postTranslate(-exportDraftPageArgs.getOriginBoundingRect().left, -exportDraftPageArgs.getOriginBoundingRect().top);
        matrix.postConcat(BoxInfoUtils.INSTANCE.renderMatrix(boxInfo));
        if (pdfExport.pageCount() == 0) {
            pdfExport.getPdfNative().appendPage(pageId, exportDraftPageArgs.getPageRectF().width(), exportDraftPageArgs.getPageRectF().height());
            if (exportArgs.getExportTemplate()) {
                TemplateJsonBean pageConfigToTemplateJson = Templates.INSTANCE.pageConfigToTemplateJson(virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String());
                String geoContent = pageConfigToTemplateJson != null ? pageConfigToTemplateJson.getGeoContent() : null;
                if (geoContent != null) {
                    pdfExport.getPdfNative().beginPageBackgroundRender(0);
                    float scaleX = MatrixKt.getScaleX(matrix);
                    float scaleY = MatrixKt.getScaleY(matrix);
                    RectF originBoundingRect = exportDraftPageArgs.getOriginBoundingRect();
                    RectF offsetToOrigin = RectFKt.offsetToOrigin(RectFKt.copy(originBoundingRect));
                    GeoLayout geoLayout = (GeoLayout) JSONUtils.INSTANCE.parseObject(geoContent, GeoLayout.class);
                    if (geoLayout != null) {
                        pdfGeoLayoutDrawer = new PdfGeoLayoutDrawer(geoLayout);
                        pdfGeoLayoutDrawer.setPdfNative(pdfExport.getPdfNative());
                        pdfGeoLayoutDrawer.setPageId(pageId);
                        PdfGeoLayoutDrawer.setPDFExportCallback$default(pdfGeoLayoutDrawer, new PdfGeoLayoutDrawer.PDFExportCallback() { // from class: com.onyx.android.sdk.universal.pdf.utils.NoteEmbedUtils$writeDraftPage$1$1$1
                            @Override // com.onyx.android.sdk.universal.pdf.utils.PdfGeoLayoutDrawer.PDFExportCallback
                            public void onThresholdReached() {
                                Debug.INSTANCE.m32052i(NoteEmbedUtils$writeDraftPage$1$1$1.class, "pdfShape save thresholdCountCallback:" + PdfGeoLayoutDrawer.this.getSavedPdfShapeCount(), new Object[0]);
                                NoteEmbedUtils.INSTANCE.m41569f(pdfExport, 0);
                            }

                            @Override // com.onyx.android.sdk.universal.pdf.utils.PdfGeoLayoutDrawer.PDFExportCallback
                            public boolean shouldAbortExport() {
                                return abortCallback.invoke().booleanValue();
                            }
                        }, 0, 2, null);
                        geoLayout.setGeoLayoutDrawer(pdfGeoLayoutDrawer);
                    } else {
                        pdfGeoLayoutDrawer = null;
                    }
                    if (geoLayout != null && (properties3 = geoLayout.getProperties()) != null && (pageMargins3 = properties3.getPageMargins()) != null) {
                        pageMargins3.setLayoutRect(RectFKt.copy(offsetToOrigin));
                    }
                    listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new RectF[]{new RectF(-3.4028235E38f, -3.4028235E38f, 0.0f, 0.0f), new RectF(-3.4028235E38f, 0.0f, 0.0f, Float.MAX_VALUE), new RectF(0.0f, 0.0f, Float.MAX_VALUE, Float.MAX_VALUE), new RectF(0.0f, -3.4028235E38f, Float.MAX_VALUE, 0.0f)});
                    ArrayList arrayList = new ArrayList();
                    Iterator it4 = listOf.iterator();
                    while (it4.hasNext()) {
                        RectF intersectRectF = RectKt.intersectRectF(originBoundingRect, (RectF) it4.next());
                        if (intersectRectF != null) {
                            arrayList.add(intersectRectF);
                        }
                    }
                    if (!(!CollectionKt.isNullOrEmpty(arrayList))) {
                        arrayList = null;
                    }
                    if (arrayList != null) {
                        Iterator it5 = arrayList.iterator();
                        while (it5.hasNext()) {
                            RectF rectF2 = (RectF) it5.next();
                            rectF2.union(RectUtils.INSTANCE.getSMALLEST_RECT());
                            if (geoLayout == null || (properties2 = geoLayout.getProperties()) == null || (pageMargins2 = properties2.getPageMargins()) == null) {
                                it2 = it5;
                            } else {
                                RectF copy = RectFKt.copy(rectF2);
                                RectFKt.offsetToOrigin(copy);
                                it2 = it5;
                                copy.offsetTo(rectF2.left - originBoundingRect.left, rectF2.top - originBoundingRect.top);
                                pageMargins2.setLayoutRect(copy);
                            }
                            MathUtils mathUtils = MathUtils.INSTANCE;
                            int signOneFactor = mathUtils.signOneFactor(Float.valueOf(rectF2.left));
                            int signOneFactor2 = mathUtils.signOneFactor(Float.valueOf(rectF2.top));
                            Matrix matrix2 = new Matrix();
                            float f = signOneFactor;
                            float f2 = signOneFactor2;
                            matrix2.postScale(scaleX * f, scaleY * f2);
                            matrix2.postTranslate(rectF2.left * scaleX * f, rectF2.top * scaleY * f2);
                            if (geoLayout == null || (properties = geoLayout.getProperties()) == null || (pageMargins = properties.getPageMargins()) == null || (layoutRect = pageMargins.getLayoutRect()) == null || (rectF = RectFKt.copy(layoutRect)) == null) {
                                rectF = new RectF();
                            }
                            StringBuilder sb = new StringBuilder();
                            sb.append("originRect=");
                            sb.append(rectF2);
                            sb.append(", pdfGeoLayoutRect=");
                            sb.append(rectF);
                            sb.append(" , finalRect=");
                            RectF copy2 = RectFKt.copy(rectF);
                            matrix2.mapRect(copy2);
                            sb.append(copy2);
                            sb.append(" , matrix=");
                            sb.append(matrix2);
                            String sb2 = sb.toString();
                            Debug debug = Debug.INSTANCE;
                            debug.m32053i("draw pdf bg begin: " + sb2);
                            long m74114markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m74114markNowz9LOYto();
                            DrawContext drawContext = new DrawContext(new Canvas(), matrix2, new ArrayList(), false, false, false, 0.0f, 120, null);
                            if (geoLayout != null) {
                                geoLayout.draw(drawContext);
                            }
                            debug.m32053i("draw pdf bg end: " + sb2 + " --> " + ((Object) Duration.m74024toStringimpl(TimeSource.Monotonic.ValueTimeMark.m74119elapsedNowUwyO8pc(m74114markNowz9LOYto))));
                            it5 = it2;
                        }
                    }
                    if (pdfGeoLayoutDrawer != null) {
                        PdfGeoLayoutDrawer.setPDFExportCallback$default(pdfGeoLayoutDrawer, null, 0, 2, null);
                    }
                    INSTANCE.m41569f(pdfExport, -1);
                }
            }
        }
        Debug.INSTANCE.m32035d(NoteEmbedUtils.class, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType() + " renderMatrix:" + matrix, new Object[0]);
        EmbedShapeArgs embedShapeArgs = new EmbedShapeArgs();
        embedShapeArgs.setShapeFilter(new Predicate() { // from class: com.sunia.HTREnginev2.hvj
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object obj2) {
                boolean m41564r;
                m41564r = NoteEmbedUtils.m41564r((Shape) obj2);
                return m41564r;
            }
        });
        embedShapeArgs.setWriteOnlyVisible(true);
        embedShapeArgs.setRenderMatrix(matrix);
        embedShapeArgs.setPageIndex(0);
        embedShapeArgs.setRenderOutOfPageShape(false);
        writePageShapes(EditorBundleKt.noteBundle(editorBundle).getNoteDoc(), ensureNotePage, pdfExport.getPdfNative(), exportArgs, embedShapeArgs);
        if (exportArgs.getExportFlattenPage()) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) exportArgs.getExportPageIdList());
            if (Intrinsics.areEqual(pageId, last)) {
                pdfExport.getPdfNative().flattenPage(0);
            }
        }
        pdfExport.save(pdfExport.getPdfNative().getFilePath());
        return pdfExport.getPdfNative().getFilePath();
    }

    @NotNull
    public final String writeNotePageShapes(@NotNull PdfExport pdfExport, @NotNull EditorBundle editorBundle, @NotNull NoteExportArgs exportArgs, @NotNull String pageId, int pageIndex) {
        Intrinsics.checkNotNullParameter(pdfExport, "pdfExport");
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(pageId, "pageId");
        VirtualPage virtualPage = editorBundle.getWorkBundle().getVirtualPolicy().getVirtualPage(pageId);
        VirtualDocPolicy virtualPolicy = editorBundle.getWorkBundle().getVirtualPolicy();
        Intrinsics.checkNotNull(virtualPage);
        NotePage ensureNotePage = virtualPolicy.ensureNotePage(virtualPage);
        BoxInfo copy = virtualPage.getBox().copy();
        copy.setScale(1.0f);
        RectF copy2 = RectFKt.copy(copy.getBox());
        RectFKt.scaleRect(copy2, 1 / exportArgs.getBenchmarkScale());
        RectFKt.offsetToOrigin(copy2);
        BoxInfo.scaleToViewport$default(copy, copy2, false, 2, null);
        RectF copy3 = RectFKt.copy(copy.getBox());
        RectFKt.offsetToOrigin(copy3);
        MarginPixel marginPixel = copy.getMarginPixel();
        Matrix renderMatrix = BoxInfoUtils.INSTANCE.renderMatrix(copy);
        Debug.INSTANCE.m32035d(NoteEmbedUtils.class, virtualPage.getOrg.xmlresolver.logging.AbstractLogger.CONFIG java.lang.String().getContentType() + " export pdf page rect:" + copy3 + " marginPixel:" + marginPixel + " renderMatrix:" + renderMatrix, new Object[0]);
        EmbedShapeArgs embedShapeArgs = new EmbedShapeArgs();
        embedShapeArgs.setShapeFilter(new Predicate() { // from class: com.sunia.HTREnginev2.ivj
            @Override // io.reactivex.rxjava3.functions.Predicate
            public final boolean test(Object obj) {
                boolean m41565s;
                m41565s = NoteEmbedUtils.m41565s((Shape) obj);
                return m41565s;
            }
        });
        embedShapeArgs.setWriteOnlyVisible(true);
        embedShapeArgs.setRenderMatrix(renderMatrix);
        Rect rect = new Rect();
        copy3.roundOut(rect);
        embedShapeArgs.setEmbedRect(rect);
        embedShapeArgs.setPageIndex(pageIndex);
        if (writePageShapes(EditorBundleKt.noteBundle(editorBundle).getNoteDoc(), ensureNotePage, pdfExport.getPdfNative(), exportArgs, embedShapeArgs)) {
            if (exportArgs.getExportFlattenPage()) {
                pdfExport.getPdfNative().flattenPage(pageIndex);
            }
            pdfExport.save(pdfExport.getPdfNative().getFilePath());
        }
        return pdfExport.getPdfNative().getFilePath();
    }

    public final boolean writePageShapes(@NotNull NoteDocument noteDocument, @NotNull NotePage notePage, @NotNull NeoPdf neoPdf, @NotNull NoteExportArgs exportArgs, @NotNull EmbedShapeArgs args) {
        Intrinsics.checkNotNullParameter(noteDocument, "noteDocument");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(neoPdf, "neoPdf");
        Intrinsics.checkNotNullParameter(exportArgs, "exportArgs");
        Intrinsics.checkNotNullParameter(args, "args");
        NotePageLoad.INSTANCE.ensurePageLoaded(notePage);
        int pageIndex = args.getPageIndex() >= 0 ? args.getPageIndex() : neoPdf.pageCount();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        NoteDocumentKt.ensureInitReferenceShape(noteDocument, notePage.getShapeList(), new NoteEmbedUtils$writePageShapes$1(linkedHashMap, noteDocument));
        List<Shape> shapesSortByLayer = NotePageShape.INSTANCE.getShapesSortByLayer(notePage, args.getWriteOnlyVisible());
        if (!args.getRenderOutOfPageShape()) {
            shapesSortByLayer = NoteDocumentKt.filterInPageRectShapeList(noteDocument, notePage, shapesSortByLayer);
        }
        if (shapesSortByLayer.isEmpty()) {
            m41571h(neoPdf, exportArgs.getPendingShapeMap());
            return false;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Iterator<Shape> it2 = shapesSortByLayer.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Shape next = it2.next();
            if (args.testShapeFilter(next) && !m41568e(linkedHashMap2, next, args)) {
                String shapeUniqueId = ShapeTypes.INSTANCE.getTargetShape(next).getShapeUniqueId();
                Set<String> exportedDraftShapeIds = exportArgs.getExportedDraftShapeIds();
                if (!(exportedDraftShapeIds != null && exportedDraftShapeIds.contains(shapeUniqueId))) {
                    m41582u(neoPdf, pageIndex, next, args);
                    Set<String> exportedDraftShapeIds2 = exportArgs.getExportedDraftShapeIds();
                    if (exportedDraftShapeIds2 != null) {
                        exportedDraftShapeIds2.add(shapeUniqueId);
                    }
                }
            }
        }
        exportArgs.getPendingShapeMap().putAll(linkedHashMap2);
        m41571h(neoPdf, exportArgs.getPendingShapeMap());
        neoPdf.updatePageLayer(pageIndex, createPdfPageLayerInfo(notePage.getPageInfo()));
        NotePageSave.INSTANCE.saveAndUnloadPage(notePage);
        Iterator it3 = linkedHashMap.entrySet().iterator();
        while (it3.hasNext()) {
            NotePage notePage2 = (NotePage) ((Map.Entry) it3.next()).getValue();
            if (notePage2 != null) {
                NotePageSave.INSTANCE.saveAndUnloadPage(notePage2);
            }
        }
        return true;
    }
}
