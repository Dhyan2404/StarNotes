package com.onyx.android.sdk.note.common.utils;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import com.miui.penengine.p015e.C6997f;
import com.onyx.android.sdk.base.data.MatrixValues;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeRenderUtils;
import com.onyx.android.sdk.replicator.note.data.audio.AudioInfoBean;
import com.onyx.android.sdk.replicator.note.data.line.LineStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraAttr;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkBean;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType;
import com.onyx.android.sdk.replicator.note.data.shape.TransformRectF;
import com.onyx.android.sdk.replicator.note.p035db.model.LinkModel;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0010\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bF\u0010GJ\u0016\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J \u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tJ\u0010\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u0004J\u001c\u0010\u0013\u001a\u00020\u00122\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0019J\u0016\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\rJ\u000e\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u0019J\u0016\u0010 \u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010!\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010\"\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010#\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010$\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010%\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0018\u0010(\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010&J\u0018\u0010)\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010'\u001a\u0004\u0018\u00010&J\u0010\u0010,\u001a\u0004\u0018\u00010&2\u0006\u0010+\u001a\u00020*J\u0016\u0010-\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u0016\u0010.\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004J\u000e\u0010/\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&J\u0016\u00101\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*2\u0006\u00100\u001a\u00020\u0004J\u000e\u00102\u001a\u00020\t2\u0006\u0010+\u001a\u00020*J\u0010\u00103\u001a\u00020\u00192\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u00107\u001a\u0002062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u00105\u001a\u000204H\u0002R\u0014\u0010:\u001a\u0002088\u0002X\u0082T¢\u0006\u0006\n\u0004\b7\u00109R\u0014\u0010<\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010;R\u0014\u0010>\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b=\u0010;R\u0014\u0010A\u001a\u0002068\u0002X\u0082T¢\u0006\u0006\n\u0004\b?\u0010@R\u0014\u0010C\u001a\u0002068\u0002X\u0082T¢\u0006\u0006\n\u0004\bB\u0010@R\u0014\u0010E\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\bD\u0010;¨\u0006H"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/utils/PdfShapeConvertUtils;", "", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", "pdfShape", "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "shapeBean", "initPdfShape", "Lcom/onyx/android/sdk/replicator/note/data/line/ShapeLineStyle;", "shapeLineStyle", "", "scale", "", "setDashLineStyle", "Landroid/graphics/RectF;", "getShapeRect", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "renderPointList", "", "normalizeRenderPointList", "getPolyLineVertices", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "Lcom/onyx/android/sdk/base/data/MatrixValues;", "matrixValues", "Lcom/onyx/android/sdk/replicator/note/data/shape/TransformRectF;", "setTransformMatrix", "transformRectF", "originRect", "getTransformRectF", "Landroid/graphics/Matrix;", "getTransformMatrix", "setGraphicalFillBitmap", "setFillBitmap", "getTriangleVertices", "setImageBitmap", "setFileAttachment", "setAudioData", "Lcom/onyx/android/sdk/replicator/note/db/model/LinkModel;", "linkModel", "setLinkData", "setAudioLinkData", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "createLinkModel", "setTimestampBitmap", "setTextBitmap", "createPdfShape", "embedShapeBean", "createImagePdfShape", "getImagePdfShapeBitmapScale", "b", "Lcom/onyx/android/sdk/base/data/Size;", "bitmapSize", "", "a", "", "J", "AUDIO_WAV_DECODE_BYTES_LIMIT", "F", "TEXT_SHAPE_BITMAP_EXTRA_SCALE_DEFAULT", "c", "TEXT_SHAPE_BITMAP_EXTRA_SCALE_MAX", "d", "I", "DEFAULT_QUALITY", "e", "MIN_QUALITY", C6997f.f39671c, "IMAGE_PDF_SHAPE_BITMAP_SCALE", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class PdfShapeConvertUtils {

    @NotNull
    public static final PdfShapeConvertUtils INSTANCE = new PdfShapeConvertUtils();

    /* renamed from: a, reason: from kotlin metadata */
    public static final long AUDIO_WAV_DECODE_BYTES_LIMIT = 68157440;

    /* renamed from: b, reason: from kotlin metadata */
    public static final float TEXT_SHAPE_BITMAP_EXTRA_SCALE_DEFAULT = 3.0f;

    /* renamed from: c, reason: from kotlin metadata */
    public static final float TEXT_SHAPE_BITMAP_EXTRA_SCALE_MAX = 16.0f;

    /* renamed from: d, reason: from kotlin metadata */
    public static final int DEFAULT_QUALITY = 100;

    /* renamed from: e, reason: from kotlin metadata */
    public static final int MIN_QUALITY = 75;

    /* renamed from: f, reason: from kotlin metadata */
    public static final float IMAGE_PDF_SHAPE_BITMAP_SCALE = 3.0f;

    /* renamed from: a */
    public final int m34030a(PdfShapeInfo pdfShape, Size bitmapSize) {
        int max;
        RectF rect = pdfShape.getRect();
        if (rect == null || (max = (int) (Math.max(rect.width() / bitmapSize.getWidth(), rect.height() / bitmapSize.getHeight()) * 100)) > 100) {
            return 100;
        }
        if (max < 75) {
            return 75;
        }
        return max;
    }

    /* renamed from: b */
    public final TransformRectF m34031b(EmbedShapeBean shapeBean) {
        TouchPointList pointList = shapeBean.getPointList();
        TouchPoint touchPoint = pointList.get(0);
        TouchPoint touchPoint2 = pointList.get(1);
        RectF rectF = new RectF(touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY());
        RectKt.expand(rectF, shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String() / 2.0f);
        return getTransformRectF(shapeBean, rectF);
    }

    @NotNull
    public final PdfShapeInfo createImagePdfShape(@NotNull Shape shape, @NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeInfo initPdfShape = initPdfShape(PdfShapeInfo.INSTANCE.createImageShape(), embedShapeBean);
        RectF rectF = new RectF(shape.getOriginRect());
        Float bitmapRectExpand = embedShapeBean.getBitmapRectExpand();
        float floatValue = bitmapRectExpand != null ? bitmapRectExpand.floatValue() : shape.getStrokeWidth();
        boolean underContent = shape.underContent();
        RectKt.expand(rectF, floatValue);
        try {
            Float bitmapScale = embedShapeBean.getBitmapScale();
            if (bitmapScale != null) {
                float floatValue2 = bitmapScale.floatValue();
                Matrix shapeMatrix = shape.getShapeMatrix();
                if (shapeMatrix != null) {
                    shapeMatrix.postScale(floatValue2, floatValue2);
                }
                shape.updateShapeRect();
            }
            if (underContent) {
                ShapePersistOptionsKt.setUnderContent(shape, false);
            }
            initPdfShape.setBitmap(ShapeRenderUtils.renderShapeBitmap$default(ShapeRenderUtils.INSTANCE, shape, rectF, null, 4, null));
            setTransformMatrix(initPdfShape, getTransformRectF(embedShapeBean, rectF));
            initPdfShape.resetDefaultColor();
            return initPdfShape;
        } finally {
            Float bitmapScale2 = embedShapeBean.getBitmapScale();
            if (bitmapScale2 != null) {
                float floatValue3 = bitmapScale2.floatValue();
                Matrix shapeMatrix2 = shape.getShapeMatrix();
                if (shapeMatrix2 != null) {
                    float f = 1 / floatValue3;
                    shapeMatrix2.postScale(f, f);
                }
                shape.updateShapeRect();
            }
            if (underContent) {
                ShapePersistOptionsKt.setUnderContent(shape, true);
            }
        }
    }

    @Nullable
    public final LinkModel createLinkModel(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeLinkBean shapeLinkBean = (ShapeLinkBean) JSONUtils.INSTANCE.parseObject(shape.getText(), ShapeLinkBean.class);
        if (shapeLinkBean == null) {
            return null;
        }
        LinkModel create = LinkModel.INSTANCE.create(shapeLinkBean.getDocBean());
        create.setDocumentId(shape.getDocumentUniqueId());
        create.setRemark(shapeLinkBean.getRemark());
        create.setDisplayStyle(shapeLinkBean.getDisplayStyle());
        create.setUniqueId(shape.getShapeUniqueId());
        String key = shapeLinkBean.getKey();
        if (key == null) {
            key = ShapeLinkType.LINK_DOCUMENT;
        }
        create.setType(key);
        create.setLinkRect(RectFKt.copy(shape.getOriginRect()));
        String key2 = shapeLinkBean.getKey();
        if (key2 != null) {
            int hashCode = key2.hashCode();
            if (hashCode != -668646663) {
                if (hashCode != 84303) {
                    create.setContent(shapeLinkBean.getValue());
                } else {
                    create.setContent(shapeLinkBean.getValue());
                }
            } else if (key2.equals(ShapeLinkType.LINK_PAGE_NUMBER)) {
                create.setTargetPageId(shapeLinkBean.getValue());
            }
        }
        return create;
    }

    @NotNull
    public final PdfShapeInfo createPdfShape(@NotNull LinkModel linkModel) {
        Intrinsics.checkNotNullParameter(linkModel, "linkModel");
        PdfShapeInfo createLinkShape = PdfShapeInfo.INSTANCE.createLinkShape();
        createLinkShape.setId(linkModel.getUniqueId());
        createLinkShape.setRect(linkModel.getLinkRect());
        createLinkShape.setPageId(linkModel.getPageUniqueId());
        createLinkShape.setColor(-16777216);
        createLinkShape.setStrokeWidth(1.0f);
        createLinkShape.setExtraAttr(JSONUtils.INSTANCE.toJson(new ShapeExtraAttr().setType(100)));
        createLinkShape.setMatrix(MatrixKt.getMatrixValue(new Matrix()));
        setLinkData(createLinkShape, linkModel);
        return createLinkShape;
    }

    public final float getImagePdfShapeBitmapScale(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        return ((Number) MathUtils.INSTANCE.atMost(Float.valueOf(RectFKt.scaleToPage(RectFKt.copy(shape.getBoundingRect()), ResManager.INSTANCE.getScreenRectF())), Float.valueOf(3.0f))).floatValue();
    }

    @NotNull
    public final float[] getPolyLineVertices(@NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        return getPolyLineVertices(shapeBean.getPointList(), shapeBean.getMatrixValues());
    }

    @Nullable
    public final RectF getShapeRect(@NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        if (shapeBean.getRenderMatrixValues() == null && shapeBean.getBounds() != null) {
            RectF bounds = shapeBean.getBounds();
            Intrinsics.checkNotNull(bounds);
            if (bounds.width() > 3.0f) {
                RectF bounds2 = shapeBean.getBounds();
                Intrinsics.checkNotNull(bounds2);
                if (bounds2.height() > 3.0f) {
                    return shapeBean.getBounds();
                }
            }
        }
        if (ShapeTypes.INSTANCE.isUniversalShape(shapeBean.getShapeType())) {
            RectF bounds3 = shapeBean.getBounds();
            if (bounds3 == null) {
                return null;
            }
            MatrixKt.getMatrixByValues(shapeBean.getRenderMatrixValues()).mapRect(bounds3);
            return bounds3;
        }
        Shape create = ShapeFactory.INSTANCE.create(shapeBean.getShapeType());
        create.setStrokeWidth(shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String());
        create.setShapeMatrix(MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()));
        create.addPoints(shapeBean.getPointList());
        RectF boundingRect = create.getBoundingRect();
        RectKt.expand(boundingRect, create.getStrokeWidth() / 2);
        return boundingRect;
    }

    @NotNull
    public final Matrix getTransformMatrix(@NotNull TransformRectF transformRectF) {
        Intrinsics.checkNotNullParameter(transformRectF, "transformRectF");
        Matrix matrix = new Matrix();
        if (!(transformRectF.getAngle() == 0.0f)) {
            matrix.postRotate(transformRectF.getAngle(), transformRectF.getOriginCenterX(), transformRectF.getOriginCenterY());
        }
        return matrix;
    }

    @NotNull
    public final TransformRectF getTransformRectF(@NotNull EmbedShapeBean shapeBean, @NotNull RectF originRect) {
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        Intrinsics.checkNotNullParameter(originRect, "originRect");
        return ShapeMatrixUtils.INSTANCE.getTransformRect(new RectF(originRect), shapeBean.getMatrix());
    }

    @NotNull
    public final float[] getTriangleVertices(@NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        TouchPointList pointList = shapeBean.getPointList();
        float[] fArr = {pointList.get(0).getX(), pointList.get(0).getY(), pointList.get(1).getX(), pointList.get(1).getY(), Math.abs((2 * fArr[0]) - fArr[2]), fArr[3]};
        MatrixKt.getMatrixByValues(shapeBean.getMatrixValues()).mapPoints(fArr);
        return fArr;
    }

    @NotNull
    public final PdfShapeInfo initPdfShape(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        pdfShape.setId(shapeBean.getShapeUniqueId());
        pdfShape.setLayerId(shapeBean.getLayerId());
        pdfShape.setRect(INSTANCE.getShapeRect(shapeBean));
        pdfShape.setColor(shapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_COLOR java.lang.String());
        pdfShape.setStrokeWidth(shapeBean.getRenderStrokeWidth());
        pdfShape.setPageId(shapeBean.getPageUniqueId());
        pdfShape.setFillColor(shapeBean.getFillColor());
        pdfShape.setText(shapeBean.getRenderText());
        pdfShape.setMatrix(MatrixKt.getMatrixValue(shapeBean.getMatrixValues()));
        pdfShape.setResourceId(shapeBean.getResourceId());
        pdfShape.setExtraAttr(shapeBean.getExtraAttr());
        setDashLineStyle(pdfShape, shapeBean.getShapeLineStyle(), MatrixKt.getMatrixMinScale(shapeBean.getMatrixValues().getValues()));
        return pdfShape;
    }

    @NotNull
    public final float[] normalizeRenderPointList(@NotNull List<TouchPoint> renderPointList, float scale) {
        Intrinsics.checkNotNullParameter(renderPointList, "renderPointList");
        float[] fArr = new float[renderPointList.size() * 3];
        int size = renderPointList.size();
        for (int i = 0; i < size; i++) {
            int i2 = i * 3;
            TouchPoint touchPoint = renderPointList.get(i);
            fArr[i2] = touchPoint.getX() / scale;
            fArr[i2 + 1] = touchPoint.getY() / scale;
            fArr[i2 + 2] = touchPoint.getSize() / scale;
        }
        return fArr;
    }

    public final void setAudioData(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        String resourceLocalPath = shapeBean.getResourceLocalPath();
        if ((resourceLocalPath == null || resourceLocalPath.length() == 0) || FileUtils.INSTANCE.isEmpty(resourceLocalPath)) {
            return;
        }
        TransformRectF transformMatrix = setTransformMatrix(pdfShape, shapeBean);
        pdfShape.setBitmap(ShapeAudioUtils.INSTANCE.createAudioBitmap(shapeBean.getResource(), (int) transformMatrix.getOriginRectF().width(), (int) transformMatrix.getOriginRectF().height()));
        pdfShape.setWavData(NoteAudioUtils.INSTANCE.decodeAudioToWav(resourceLocalPath, AUDIO_WAV_DECODE_BYTES_LIMIT));
        pdfShape.setCustomAttr(JSONUtils.INSTANCE.toJson(shapeBean.getResource()));
    }

    public final void setAudioLinkData(@NotNull PdfShapeInfo pdfShape, @Nullable LinkModel linkModel) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        if (linkModel == null || RectUtils.INSTANCE.isNullOrEmpty(linkModel.getLinkRect()) || !StringUtils.equals(linkModel.getType(), "AUDIO")) {
            return;
        }
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        AudioInfoBean audioInfoBean = (AudioInfoBean) jSONUtils.parseObject(linkModel.getContent(), AudioInfoBean.class);
        if (audioInfoBean == null) {
            return;
        }
        String audioPath = audioInfoBean.getAudioPath();
        if (FileUtils.INSTANCE.fileExist(audioPath)) {
            RectF linkRect = linkModel.getLinkRect();
            Intrinsics.checkNotNull(linkRect);
            float width = linkRect.width();
            RectF linkRect2 = linkModel.getLinkRect();
            Intrinsics.checkNotNull(linkRect2);
            pdfShape.setBitmap(ShapeLinkUtils.createLinkBitmap$default(ShapeLinkUtils.INSTANCE, linkModel, width, linkRect2.height(), 0.0f, 8, null));
            NoteAudioUtils noteAudioUtils = NoteAudioUtils.INSTANCE;
            Intrinsics.checkNotNull(audioPath);
            pdfShape.setWavData(noteAudioUtils.decodeAudioToWav(audioPath, AUDIO_WAV_DECODE_BYTES_LIMIT));
            pdfShape.setCustomAttr(jSONUtils.toJson(ShapeResource.INSTANCE.fromAudioInfoBean(audioInfoBean)));
        }
    }

    public final void setDashLineStyle(@NotNull PdfShapeInfo pdfShape, @Nullable ShapeLineStyle shapeLineStyle, float scale) {
        LineStyle lineStyle;
        float[] dashLineIntervals;
        int roundToInt;
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        if (shapeLineStyle == null || (dashLineIntervals = (lineStyle = shapeLineStyle.getLineStyle()).getDashLineIntervals()) == null) {
            return;
        }
        pdfShape.setStrokeDashPhase(Math.round(lineStyle.getPhase() * scale));
        int length = dashLineIntervals.length;
        int[] iArr = new int[dashLineIntervals.length];
        for (int i = 0; i < length; i++) {
            roundToInt = MathKt__MathJVMKt.roundToInt(dashLineIntervals[i] * scale);
            iArr[i] = roundToInt;
        }
        pdfShape.setStrokeDashArray(iArr);
    }

    public final void setFileAttachment(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        String resourceLocalPath = shapeBean.getResourceLocalPath();
        if (resourceLocalPath == null || resourceLocalPath.length() == 0) {
            return;
        }
        pdfShape.setBitmap(ShapeAttachmentUtils.INSTANCE.createAttachmentBitmap(resourceLocalPath));
        pdfShape.setFileAttachmentPath(resourceLocalPath);
    }

    public final void setFillBitmap(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        pdfShape.setBitmap(ShapeRenderUtils.renderShapeBitmap$default(ShapeRenderUtils.INSTANCE, EmbedShapeBean.INSTANCE.toShape(shapeBean), null, null, 6, null));
    }

    public final void setGraphicalFillBitmap(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        if (ShapeUtils.INSTANCE.isIgnoreFill(shapeBean.getFillColor())) {
            return;
        }
        setFillBitmap(pdfShape, shapeBean);
    }

    public final void setImageBitmap(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        String resourceLocalPath = shapeBean.getResourceLocalPath();
        if (resourceLocalPath == null || resourceLocalPath.length() == 0) {
            return;
        }
        try {
            setTransformMatrix(pdfShape, shapeBean);
            Size size = new Size(0, 0, 3, null);
            if (BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(resourceLocalPath, size)) {
                Debug.INSTANCE.m32052i(PdfShapeConvertUtils.class, "embedded pdfShape image origin size:" + size, new Object[0]);
                ImageManager imageManager = ImageManager.INSTANCE;
                Bitmap decodeImageAsBitmap$default = ImageManager.decodeImageAsBitmap$default(imageManager, resourceLocalPath, size.getWidth(), size.getHeight(), false, 8, null);
                if (imageManager.isJpegImage(resourceLocalPath) || !BitmapKt.hasTransparentPixelFast$default(decodeImageAsBitmap$default, 0, 1, null)) {
                    pdfShape.setResourceBuf(BitmapKt.toBytes(decodeImageAsBitmap$default, Bitmap.CompressFormat.JPEG, m34030a(pdfShape, size)));
                } else {
                    pdfShape.setBitmap(decodeImageAsBitmap$default);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x007d, code lost:
    
        if (r8.equals("NOTE") == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x009c, code lost:
    
        r9.setLinkDest(java.lang.String.valueOf(r10.getTargetPageIndex()));
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
    
        if (r8.equals(com.onyx.android.sdk.replicator.note.data.shape.ShapeLinkType.LINK_PAGE_NUMBER) == false) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setLinkData(@org.jetbrains.annotations.NotNull com.onyx.android.sdk.neopdf.PdfShapeInfo r9, @org.jetbrains.annotations.Nullable com.onyx.android.sdk.replicator.note.p035db.model.LinkModel r10) {
        /*
            r8 = this;
            java.lang.String r8 = "pdfShape"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r8)
            if (r10 == 0) goto Lb4
            com.onyx.android.sdk.base.utils.RectUtils r8 = com.onyx.android.sdk.base.utils.RectUtils.INSTANCE
            android.graphics.RectF r0 = r10.getLinkRect()
            boolean r8 = r8.isNullOrEmpty(r0)
            if (r8 == 0) goto L15
            goto Lb4
        L15:
            java.lang.String r8 = r10.getType()
            java.lang.String r0 = "DOCUMENT"
            boolean r8 = org.apache.commons.lang3.StringUtils.equals(r8, r0)
            if (r8 == 0) goto L22
            return
        L22:
            java.lang.String r8 = r10.getType()
            java.lang.String r0 = "NOTE"
            boolean r8 = org.apache.commons.lang3.StringUtils.equals(r8, r0)
            if (r8 == 0) goto L3d
            java.lang.String r8 = r10.getTargetDocId()
            java.lang.String r1 = r10.getDocumentId()
            boolean r8 = org.apache.commons.lang3.StringUtils.equals(r8, r1)
            if (r8 != 0) goto L3d
            return
        L3d:
            android.graphics.RectF r8 = r10.getLinkRect()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            float r3 = r8.width()
            android.graphics.RectF r8 = r10.getLinkRect()
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8)
            float r4 = r8.height()
            com.onyx.android.sdk.note.common.utils.ShapeLinkUtils r1 = com.onyx.android.sdk.note.common.utils.ShapeLinkUtils.INSTANCE
            r5 = 0
            r6 = 8
            r7 = 0
            r2 = r10
            android.graphics.Bitmap r8 = com.onyx.android.sdk.note.common.utils.ShapeLinkUtils.createLinkBitmap$default(r1, r2, r3, r4, r5, r6, r7)
            r9.setBitmap(r8)
            java.lang.String r8 = r10.getType()
            int r1 = r8.hashCode()
            r2 = -668646663(0xffffffffd82542f9, float:-7.2682826E14)
            if (r1 == r2) goto L92
            r2 = 84303(0x1494f, float:1.18134E-40)
            if (r1 == r2) goto L80
            r2 = 2402290(0x24a7f2, float:3.366325E-39)
            if (r1 == r2) goto L79
            goto L9a
        L79:
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L9c
            goto L9a
        L80:
            java.lang.String r0 = "URL"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L89
            goto L9a
        L89:
            java.lang.String r8 = r10.getContent()
            r9.setLinkDest(r8)
            r8 = 2
            goto La8
        L92:
            java.lang.String r0 = "PAGE_NUMBER"
            boolean r8 = r8.equals(r0)
            if (r8 != 0) goto L9c
        L9a:
            r8 = 0
            goto La8
        L9c:
            int r8 = r10.getTargetPageIndex()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            r9.setLinkDest(r8)
            r8 = 1
        La8:
            r9.setLinkType(r8)
            com.onyx.android.sdk.data.utils.JSONUtils r8 = com.onyx.android.sdk.data.utils.JSONUtils.INSTANCE
            java.lang.String r8 = r8.toJson(r10)
            r9.setCustomAttr(r8)
        Lb4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils.setLinkData(com.onyx.android.sdk.neopdf.PdfShapeInfo, com.onyx.android.sdk.replicator.note.db.model.LinkModel):void");
    }

    public final void setTextBitmap(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        float coerceAtMost;
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        Shape shape = EmbedShapeBean.INSTANCE.toShape(shapeBean);
        shape.updateShapeRect();
        setTransformMatrix(pdfShape, getTransformRectF(shapeBean, shape.getOriginRect()));
        ShapeRenderUtils.RenderOptions renderOptions = new ShapeRenderUtils.RenderOptions(false, 0.0f, 3, null);
        coerceAtMost = RangesKt___RangesKt.coerceAtMost((float) Math.sqrt(268435455 / (r9.getOriginRectF().width() * r9.getOriginRectF().height())), 16.0f);
        renderOptions.setExtraScale(coerceAtMost);
        pdfShape.setBitmap(ShapeRenderUtils.renderShapeBitmap$default(ShapeRenderUtils.INSTANCE, shape, null, renderOptions, 2, null));
    }

    public final void setTimestampBitmap(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        TransformRectF transformMatrix = setTransformMatrix(pdfShape, shapeBean);
        int width = (int) transformMatrix.getOriginRectF().width();
        int height = (int) transformMatrix.getOriginRectF().height();
        Bitmap createTimestampBitmap = ShapeTimestampUtils.INSTANCE.createTimestampBitmap(EmbedShapeBean.INSTANCE.toShape(shapeBean), width, height);
        if (createTimestampBitmap == null) {
            return;
        }
        pdfShape.setBitmap(createTimestampBitmap);
    }

    @NotNull
    public final TransformRectF setTransformMatrix(@NotNull PdfShapeInfo pdfShape, @NotNull EmbedShapeBean shapeBean) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(shapeBean, "shapeBean");
        return setTransformMatrix(pdfShape, m34031b(shapeBean));
    }

    @NotNull
    public final float[] getPolyLineVertices(@NotNull TouchPointList pointList, @Nullable MatrixValues matrixValues) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        float[] fArr = new float[pointList.size() * 2];
        int size = pointList.size();
        for (int i = 0; i < size; i++) {
            TouchPoint touchPoint = new TouchPoint(pointList.get(i));
            if (matrixValues != null) {
                touchPoint.mapMatrix(MatrixKt.getMatrixByValues(matrixValues));
            }
            int i2 = i * 2;
            fArr[i2] = touchPoint.getX();
            fArr[i2 + 1] = touchPoint.getY();
        }
        return fArr;
    }

    @NotNull
    public final TransformRectF setTransformMatrix(@NotNull PdfShapeInfo pdfShape, @NotNull TransformRectF transformRectF) {
        Intrinsics.checkNotNullParameter(pdfShape, "pdfShape");
        Intrinsics.checkNotNullParameter(transformRectF, "transformRectF");
        float angle = transformRectF.getAngle();
        Matrix matrix = new Matrix();
        if (Float.compare(Math.abs(angle), 0.0f) != 0) {
            matrix.postRotate(angle, transformRectF.getOriginCenterX(), transformRectF.getOriginCenterY());
        }
        pdfShape.setMatrix(MatrixKt.getMatrixValue(matrix));
        pdfShape.setRect(transformRectF.getOriginRectF());
        return transformRectF;
    }
}
