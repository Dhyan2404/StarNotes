package com.onyx.android.sdk.note.common.shape.object;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.onyx.android.sdk.base.data.FontPathRect;
import com.onyx.android.sdk.base.data.FontPathRectList;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neohwr.fontmgr.FontConfig;
import com.onyx.android.sdk.neohwr.layout.FontPathLoadResult;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.neopdf.PdfTextRun;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapeKt;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeTextStyle;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b3\u00104J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016J\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0013\u001a\u00020\u0011J\u0010\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0018\u001a\u00020\u0002J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u001aJ\u0016\u0010 \u001a\u00020\u001f2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001cJ\u0006\u0010!\u001a\u00020\u001fJ\b\u0010\"\u001a\u00020\u001fH\u0002J(\u0010&\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00022\u0006\u0010%\u001a\u00020\nH\u0002R\"\u0010.\u001a\u00020'8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00110/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b0\u00101¨\u00065"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "Lcom/onyx/android/sdk/note/common/shape/object/HWRShape;", "", "toString", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "", "radius", "", "hitTestPoints", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "render", "Lcom/onyx/android/sdk/base/data/FontPathRectList;", "loadCachedPath", "loadRenderPath", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "toPdfShape", "font", "clone", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "args", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "down", "up", "", "updateShapeRect", "updateShapeLayoutVersion", "a", "source", "shape", "textSize", "b", "", "L", "I", "getType", "()I", "setType", "(I)V", "type", "Lkotlin/Pair;", "M", "Lkotlin/Pair;", "pathCache", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRTextShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRTextShape.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShape\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Canvas.kt\nandroidx/core/graphics/CanvasKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,258:1\n1549#2:259\n1620#2,3:260\n1747#2,3:263\n1549#2:266\n1620#2,3:267\n1747#2,3:270\n1855#2,2:277\n121#3,4:273\n126#3,3:279\n1#4:282\n37#5,2:283\n37#5,2:285\n*S KotlinDebug\n*F\n+ 1 HWRTextShape.kt\ncom/onyx/android/sdk/note/common/shape/object/HWRTextShape\n*L\n61#1:259\n61#1:260,3\n63#1:263,3\n75#1:266\n75#1:267,3\n77#1:270,3\n90#1:277,2\n89#1:273,4\n89#1:279,3\n184#1:283,2\n187#1:285,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRTextShape extends HWRShape {

    /* renamed from: L, reason: from kotlin metadata */
    public int type;

    /* renamed from: M, reason: from kotlin metadata */
    @NotNull
    public Pair<String, FontPathRectList> pathCache;

    public HWRTextShape() {
        super(1);
        this.type = 48;
        this.pathCache = new Pair<>("", new FontPathRectList());
    }

    public static /* synthetic */ HWRTextShape clone$default(HWRTextShape hWRTextShape, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return hWRTextShape.clone(str);
    }

    /* renamed from: a */
    public final void m33854a() {
        this.pathCache = new Pair<>("", new FontPathRectList());
    }

    /* renamed from: b */
    public final void m33855b(HWRTextShape source, HWRTextShape shape, String font, float textSize) {
        ShapeTextStyle textStyle = shape.getTextStyle();
        if (textStyle != null) {
            textStyle.setFontFace(font);
        }
        ShapeTextStyle textStyle2 = shape.getTextStyle();
        if (textStyle2 != null) {
            textStyle2.setTextSize(textSize);
        }
        RectF unionFontRect = shape.loadRenderPath().getUnionFontRect();
        RectF pointsBoundingRect = source.getPointsBoundingRect();
        PointF mapPoint = MatrixKt.mapPoint(MatrixKt.nonNull(shape.getShapeMatrix()), pointsBoundingRect.left, pointsBoundingRect.top);
        float f = mapPoint.x;
        float width = unionFontRect.width() + f;
        float f2 = mapPoint.y;
        float height = unionFontRect.height() + f2;
        TouchPoint touchPoint = new TouchPoint(f, f2);
        TouchPoint touchPoint2 = new TouchPoint(width, height);
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix != null) {
            shapeMatrix.setRotate(-MatrixKt.getMatrixRotateAngel(shape.getShapeMatrix()), mapPoint.x, mapPoint.y);
        }
        shape.updateShapeRect(touchPoint, touchPoint2);
    }

    @NotNull
    public final HWRTextShape clone(@NotNull String font) {
        Intrinsics.checkNotNullParameter(font, "font");
        Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(this, 48);
        Intrinsics.checkNotNull(cloneNewShape, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
        HWRTextShape hWRTextShape = (HWRTextShape) cloneNewShape;
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        Matrix transformingMatrix = shapeOptions.getTransformingMatrix(this);
        shapeOptions.resetTransformMatrix(hWRTextShape);
        hWRTextShape.setShapeMatrix(MatrixKt.concat(getShapeMatrix(), transformingMatrix));
        hWRTextShape.setSourceShapeGroup(getSourceShapeGroup());
        if (StringKt.isNotBlank(font)) {
            m33855b(this, hWRTextShape, font, ShapeKt.getRealTextSize(hWRTextShape));
        }
        updateShapeLayoutVersion();
        hWRTextShape.updateShapeTime();
        return hWRTextShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTestPoints(@NotNull TouchPointList pointList, float radius) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        FontPathRectList loadCachedPath = loadCachedPath();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadCachedPath, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<FontPathRect> it2 = loadCachedPath.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getPath());
        }
        Path createHitTestPath$default = PathKt.createHitTestPath$default(pointList.getPoints(), Float.valueOf(radius), false, 2, null);
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            if (PathKt.hitTestPath(PathKt.concatTransform((Path) it3.next(), getShapeMatrix()), createHitTestPath$default)) {
                return true;
            }
        }
        return false;
    }

    @NotNull
    public final FontPathRectList loadCachedPath() {
        String text = getText();
        if (text == null) {
            text = "";
        }
        ShapeTextStyle textStyle = getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        float textSize = textStyle.getTextSize();
        String fontFace = textStyle.getFontFace();
        String str = text + '/' + textSize + '/' + (fontFace != null ? fontFace : "");
        if (!Intrinsics.areEqual(str, this.pathCache.getFirst())) {
            this.pathCache = new Pair<>(str, loadRenderPath());
        }
        return this.pathCache.getSecond();
    }

    @NotNull
    public final FontPathRectList loadRenderPath() {
        Path path = new Path();
        String text = getText();
        if (text == null) {
            text = "";
        }
        ShapeTextStyle textStyle = getTextStyle();
        if (textStyle == null) {
            textStyle = new ShapeTextStyle();
        }
        String fontFace = textStyle.getFontFace();
        String str = fontFace != null ? fontFace : "";
        if (!FileUtils.INSTANCE.fileExist(str)) {
            str = FontConfig.INSTANCE.ensureDefaultFontPath();
        }
        RectF pointsBoundingRect = getPointsBoundingRect();
        float f = pointsBoundingRect.left;
        float f2 = pointsBoundingRect.top;
        FontPathRectList fontPathRectList = new FontPathRectList();
        int length = text.length();
        for (int i = 0; i < length; i++) {
            FontPathLoadResult loadCharFontPath = TextLayout.INSTANCE.loadCharFontPath(str, text.codePointAt(i), textStyle.getTextSize());
            RectF glyphRect = loadCharFontPath.getGlyphRect();
            Matrix matrix = new Matrix();
            matrix.postTranslate(glyphRect.left + f, f2);
            Path concatTransform = PathKt.concatTransform(loadCharFontPath.getPath(), matrix);
            path.addPath(concatTransform);
            fontPathRectList.add(new FontPathRect(concatTransform, com.onyx.android.sdk.base.extension.PathKt.computeBounds$default(concatTransform, false, 1, null), glyphRect));
            f += glyphRect.right + textStyle.getPaddingStart();
        }
        return fontPathRectList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(getFillColor());
        Canvas canvas = renderContext.getCanvas();
        Matrix renderMatrix = getRenderMatrix(renderContext);
        FontPathRectList loadCachedPath = loadCachedPath();
        int save = canvas.save();
        canvas.concat(renderMatrix);
        try {
            Iterator<FontPathRect> it2 = loadCachedPath.iterator();
            while (it2.hasNext()) {
                canvas.drawPath(it2.next().getPath(), paint);
            }
            return true;
        } finally {
            canvas.restoreToCount(save);
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        int collectionSizeOrDefault;
        List<? extends Shape> listOf;
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        FontPathRectList loadCachedPath = loadCachedPath();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(loadCachedPath, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<FontPathRect> it2 = loadCachedPath.iterator();
        while (it2.hasNext()) {
            arrayList.add(it2.next().getPath());
        }
        Path erasePath = eraseBean.getErasePath();
        boolean z = false;
        if (!arrayList.isEmpty()) {
            Iterator it3 = arrayList.iterator();
            while (true) {
                if (!it3.hasNext()) {
                    break;
                }
                if (PathKt.hitTestPath(PathKt.concatTransform((Path) it3.next(), getShapeMatrix()), erasePath)) {
                    z = true;
                    break;
                }
            }
        }
        if (!z) {
            return splitShapeResult;
        }
        splitShapeResult.setShapeErased(true);
        HWRTextShape clone$default = clone$default(this, null, 1, null);
        clone$default.ensureShapeUniqueId();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(clone$default);
        splitShapeResult.setRemoveShapes(listOf);
        return splitShapeResult;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        ShapeTextStyle shapeTextStyle;
        Object orNull;
        List listOf;
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeInfo initPdfShape = PdfShapeConvertUtils.INSTANCE.initPdfShape(PdfShapeInfo.INSTANCE.createFreeTextShape(), embedShapeBean);
        Shape shape = EmbedShapeBean.INSTANCE.toShape(embedShapeBean);
        HWRTextShape hWRTextShape = shape instanceof HWRTextShape ? (HWRTextShape) shape : null;
        if (hWRTextShape == null) {
            return initPdfShape;
        }
        hWRTextShape.updateShapeRect();
        ShapeTextStyle textStyle = hWRTextShape.getTextStyle();
        if (textStyle == null || (shapeTextStyle = textStyle.m72374clone()) == null) {
            shapeTextStyle = new ShapeTextStyle();
        }
        shapeTextStyle.setFontFace(FileUtils.INSTANCE.fileExist(shapeTextStyle.getFontFace()) ? shapeTextStyle.getFontFace() : FontConfig.INSTANCE.ensureDefaultFontPath());
        float textSize = shapeTextStyle.getTextSize() * MatrixKt.getAverageScale(hWRTextShape.getShapeMatrix());
        RectF originRectF = ShapeMatrixUtils.INSTANCE.getTransformRect(RectFKt.copy(hWRTextShape.getOriginRect()), MatrixKt.copy(hWRTextShape.getShapeMatrix())).getOriginRectF();
        initPdfShape.setColor(-1);
        initPdfShape.setFillColor(0);
        initPdfShape.setFontcolor(embedShapeBean.getFillColor());
        initPdfShape.setFontSize(textSize);
        initPdfShape.setRect(originRectF);
        shapeTextStyle.setTextSize(textSize);
        shapeTextStyle.setTextHeight(originRectF.height());
        initPdfShape.setCustomAttr(embedShapeBean.getExtraAttr());
        initPdfShape.setExtraAttr(JSONUtils.INSTANCE.toJson(shapeTextStyle));
        String text = getText();
        if (text == null) {
            text = "";
        }
        if (!StringKt.isNotBlank(text)) {
            text = null;
        }
        if (text == null) {
            return initPdfShape;
        }
        ArrayList arrayList = new ArrayList();
        RectF pointsBoundingRect = getPointsBoundingRect();
        FontPathRectList loadCachedPath = loadCachedPath();
        int length = text.length();
        for (int i = 0; i < length; i++) {
            char charAt$default = StringKt.charAt$default(text, i, (char) 0, 2, null);
            orNull = CollectionsKt___CollectionsKt.getOrNull(loadCachedPath, i);
            FontPathRect fontPathRect = (FontPathRect) orNull;
            if (fontPathRect != null) {
                RectF pathRect = fontPathRect.getPathRect();
                RectF glyphRect = fontPathRect.getGlyphRect();
                PdfTextRun.RunChar create = PdfTextRun.RunChar.INSTANCE.create(charAt$default, originRectF.left + ((((pathRect.left - glyphRect.left) - pointsBoundingRect.left) / pointsBoundingRect.width()) * originRectF.width()), originRectF.top + ((glyphRect.top / pointsBoundingRect.height()) * originRectF.height()), 0);
                PdfTextRun pdfTextRun = new PdfTextRun();
                pdfTextRun.setFontSize(textSize);
                pdfTextRun.setFontColor(initPdfShape.getFontcolor());
                pdfTextRun.setFontPath(shapeTextStyle.getFontFace());
                listOf = CollectionsKt__CollectionsJVMKt.listOf(create);
                pdfTextRun.setCharList((PdfTextRun.RunChar[]) listOf.toArray(new PdfTextRun.RunChar[0]));
                arrayList.add(pdfTextRun);
            }
        }
        initPdfShape.setTextRuns((PdfTextRun[]) arrayList.toArray(new PdfTextRun[0]));
        initPdfShape.setRect(RectKt.expand(originRectF, textSize));
        return initPdfShape;
    }

    @NotNull
    public String toString() {
        return getText() + ' ' + getUpdatedAt();
    }

    public final void updateShapeLayoutVersion() {
        ShapePersistOptionsKt.setHWRTextShapeLayoutVersion(this, 3);
    }

    public final void updateShapeRect(@NotNull TouchPoint down, @NotNull TouchPoint up) {
        Intrinsics.checkNotNullParameter(down, "down");
        Intrinsics.checkNotNullParameter(up, "up");
        getPoints().clear();
        m33854a();
        onDown(down, down);
        onUp(up, up);
        updatePoints();
        updateShapeRect();
    }

    @NotNull
    public final HWRTextShape clone(@NotNull ShapeTypesetArgs args) {
        float floatValue;
        Intrinsics.checkNotNullParameter(args, "args");
        Shape cloneNewShape = ShapeCopyUtils.INSTANCE.cloneNewShape(this, 48);
        Intrinsics.checkNotNull(cloneNewShape, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.object.HWRTextShape");
        HWRTextShape hWRTextShape = (HWRTextShape) cloneNewShape;
        ShapeOptions shapeOptions = ShapeOptions.INSTANCE;
        Matrix transformingMatrix = shapeOptions.getTransformingMatrix(this);
        shapeOptions.resetTransformMatrix(hWRTextShape);
        hWRTextShape.setShapeMatrix(MatrixKt.concat(getShapeMatrix(), transformingMatrix));
        hWRTextShape.setSourceShapeGroup(getSourceShapeGroup());
        String typeface = args.getTypeface();
        if (typeface == null) {
            ShapeTextStyle textStyle = getTextStyle();
            typeface = textStyle != null ? textStyle.getFontFace() : null;
            Intrinsics.checkNotNull(typeface);
        }
        Float fontSize = args.getFontSize();
        if (fontSize != null) {
            floatValue = fontSize.floatValue();
        } else {
            ShapeTextStyle textStyle2 = getTextStyle();
            Float valueOf = textStyle2 != null ? Float.valueOf(textStyle2.getTextSize()) : null;
            Intrinsics.checkNotNull(valueOf);
            floatValue = valueOf.floatValue();
        }
        m33855b(this, hWRTextShape, typeface, floatValue);
        updateShapeLayoutVersion();
        return hWRTextShape;
    }
}
