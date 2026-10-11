package com.onyx.android.sdk.note.request;

import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.C7485R;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.command.CompositeCommand;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.CreateImageShapeBean;
import com.onyx.android.sdk.note.common.document.page.NotePage;
import com.onyx.android.sdk.note.common.document.page.NotePageShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeFactory;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.utils.ShapeMatrixUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.note.extension.ResourceModelKt;
import com.onyx.android.sdk.replicator.note.data.resource.ShapeResource;
import com.onyx.android.sdk.replicator.utils.ResourceModels;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 L2\u00020\u0001:\u0001LB-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020 \u0012\u0006\u0010\r\u001a\u00020\f\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0006¢\u0006\u0004\bJ\u0010KJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0013H\u0002J(\u0010\u0016\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0018\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\u0018\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\tH\u0002J\u000e\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0006H\u0002R\u0014\u0010\"\u001a\u00020 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010!R\u0014\u0010\r\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010#R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010$R\u0014\u0010(\u001a\u00020&8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0016\u0010'R\u0014\u0010)\u001a\u00020&8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0015\u0010'R$\u0010-\u001a\u0012\u0012\u0004\u0012\u00020\u00070*j\b\u0012\u0004\u0012\u00020\u0007`+8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010,R0\u00102\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00130.j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0013`/8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u00101R$\u00109\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\"\u0010I\u001a\u00020B8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bC\u0010D\u001a\u0004\bE\u0010F\"\u0004\bG\u0010H¨\u0006M"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/CreateImageShapeRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getShapeList", "", "imageFilePath", C6998g.f39679a, "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "notePage", "Lcom/onyx/android/sdk/note/common/data/shape/CreateImageShapeBean;", "bean", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "downPoint", C6997f.f39671c, "Lcom/onyx/android/sdk/base/data/Size;", "imageSize", C4921e.f26537n, "j", "shape", "newShape", "Landroid/graphics/Matrix;", C6999h.f39688c, CouchFieldKey.KEY_LOCAL_PATH, "documentId", "Lcom/onyx/android/sdk/replicator/note/data/resource/ShapeResource;", "l", "i", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/note/common/document/page/NotePage;", "Ljava/util/List;", "beanList", "", "F", "MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW", "MAX_TOTAL_IMAGE_SIZE_PERCENT", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "Ljava/util/ArrayList;", "shapeList", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "m", "Ljava/util/HashMap;", "imageSizeMap", GoogleApiAvailabilityLight.f29016b, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getInsertPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setInsertPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "insertPoint", "", C4921e.f26528e, Constants.HASIDCALL_INDEX_SIG, "getAddToCmdStack", Constants.BOOLEAN_VALUE_SIG, "setAddToCmdStack", "(Z)V", "addToCmdStack", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "p", "Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "getCompositeCommand", "()Lcom/onyx/android/sdk/note/common/command/CompositeCommand;", "setCompositeCommand", "(Lcom/onyx/android/sdk/note/common/command/CompositeCommand;)V", "compositeCommand", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/List;)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCreateImageShapeRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,233:1\n1045#2:234\n1864#2,3:236\n1#3:235\n*S KotlinDebug\n*F\n+ 1 CreateImageShapeRequest.kt\ncom/onyx/android/sdk/note/request/CreateImageShapeRequest\n*L\n70#1:234\n212#1:236,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CreateImageShapeRequest extends BaseRxNoteRequest {

    /* renamed from: q */
    public static final int f43859q = 4;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RenderContext renderContext;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final NotePage notePage;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<CreateImageShapeBean> beanList;

    /* renamed from: j, reason: from kotlin metadata */
    public final float MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW;

    /* renamed from: k, reason: from kotlin metadata */
    public final float MAX_TOTAL_IMAGE_SIZE_PERCENT;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<Shape> shapeList;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final HashMap<String, Size> imageSizeMap;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public TouchPoint insertPoint;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean addToCmdStack;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public CompositeCommand compositeCommand;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateImageShapeRequest(@NotNull NoteBundle noteBundle, @NotNull RenderContext renderContext, @NotNull NotePage notePage, @NotNull List<CreateImageShapeBean> beanList) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        Intrinsics.checkNotNullParameter(notePage, "notePage");
        Intrinsics.checkNotNullParameter(beanList, "beanList");
        this.renderContext = renderContext;
        this.notePage = notePage;
        this.beanList = beanList;
        this.MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW = 0.5f;
        this.MAX_TOTAL_IMAGE_SIZE_PERCENT = 0.75f;
        this.shapeList = new ArrayList<>();
        this.imageSizeMap = new HashMap<>();
        this.addToCmdStack = true;
        this.compositeCommand = new CompositeCommand(null, 1, null);
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        List<CreateImageShapeBean> sortedWith;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        if (this.beanList.isEmpty()) {
            return;
        }
        int size = CollectionKt.getSize(this.beanList);
        Iterator<CreateImageShapeBean> it2 = this.beanList.iterator();
        while (it2.hasNext()) {
            m34102g(it2.next().getFilePath());
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(this.beanList, new Comparator() { // from class: com.onyx.android.sdk.note.request.CreateImageShapeRequest$execute$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                HashMap hashMap;
                HashMap hashMap2;
                int compareValues;
                hashMap = CreateImageShapeRequest.this.imageSizeMap;
                Object obj = hashMap.get(((CreateImageShapeBean) t).getFilePath());
                Intrinsics.checkNotNull(obj);
                Integer valueOf = Integer.valueOf(((Size) obj).getWidth());
                hashMap2 = CreateImageShapeRequest.this.imageSizeMap;
                Object obj2 = hashMap2.get(((CreateImageShapeBean) t2).getFilePath());
                Intrinsics.checkNotNull(obj2);
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(valueOf, Integer.valueOf(((Size) obj2).getWidth()));
                return compareValues;
            }
        });
        this.beanList = sortedWith;
        List<TouchPoint> m34104i = m34104i();
        for (int i = 0; i < size; i++) {
            this.shapeList.add(m34101f(this.notePage, this.beanList.get(i), m34104i.get(i)));
        }
        noteBundle.postAddShapeEvent(this.shapeList);
        if (this.addToCmdStack) {
            this.compositeCommand.addShapesUndoRedoCommand(this.shapeList);
            noteBundle.getCommandManager().addCommand(this.compositeCommand);
        }
    }

    /* renamed from: f */
    public final Shape m34101f(NotePage notePage, CreateImageShapeBean bean, TouchPoint downPoint) {
        Size size = this.imageSizeMap.get(bean.getFilePath());
        Intrinsics.checkNotNull(size);
        Shape m34105j = m34105j(notePage, downPoint, size, bean);
        NotePageShape.INSTANCE.saveShape(notePage, m34105j);
        return m34105j;
    }

    /* renamed from: g */
    public final void m34102g(String imageFilePath) {
        Size size = new Size(0, 0, 3, null);
        SvgUtil svgUtil = SvgUtil.INSTANCE;
        if (svgUtil.isSvgImage(imageFilePath)) {
            svgUtil.decodeSize(imageFilePath, size);
        } else {
            BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(imageFilePath, size);
        }
        m34106k(size);
        this.imageSizeMap.put(imageFilePath, size);
        Debug.INSTANCE.m32035d(CreateImageShapeRequest.class, "decode image file:" + imageFilePath + ",size:" + size, new Object[0]);
    }

    public final boolean getAddToCmdStack() {
        return this.addToCmdStack;
    }

    @NotNull
    public final CompositeCommand getCompositeCommand() {
        return this.compositeCommand;
    }

    @Nullable
    public final TouchPoint getInsertPoint() {
        return this.insertPoint;
    }

    @NotNull
    public final List<Shape> getShapeList() {
        return this.shapeList;
    }

    /* renamed from: h */
    public final Matrix m34103h(Shape shape, Shape newShape) {
        PointF pointF;
        PointF pointF2;
        Matrix matrix = new Matrix();
        Matrix shapeMatrix = shape.getShapeMatrix();
        if (shapeMatrix != null) {
            matrix.postConcat(shapeMatrix);
        }
        matrix.postConcat(ShapeOptions.INSTANCE.getTransformingMatrix(shape));
        RectF copy = RectFKt.copy(shape.getOriginRect());
        matrix.mapRect(copy);
        float matrixRotateAngel = MatrixKt.getMatrixRotateAngel(matrix, copy);
        Matrix matrix2 = new Matrix();
        matrix2.postRotate(matrixRotateAngel, newShape.getBoundingRect().centerX(), newShape.getBoundingRect().centerY());
        Matrix matrix3 = new Matrix();
        TouchPoint first = shape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first();
        if (first != null && (pointF = TouchPointKt.toPointF(first)) != null) {
            MatrixKt.mapSelfPoint(matrix, pointF);
            TouchPoint first2 = newShape.getCom.onyx.android.sdk.replicator.note.data.point.PointConstant.POINT_FILE_END java.lang.String().first();
            if (first2 != null && (pointF2 = TouchPointKt.toPointF(first2)) != null) {
                MatrixKt.mapSelfPoint(matrix2, pointF2);
                matrix3.postConcat(matrix2);
                matrix3.postTranslate(pointF.x - pointF2.x, pointF.y - pointF2.y);
            }
        }
        return matrix3;
    }

    /* renamed from: i */
    public final List<TouchPoint> m34104i() {
        int size = this.beanList.size();
        Iterator<T> it2 = this.imageSizeMap.entrySet().iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        int width = ((Size) ((Map.Entry) it2.next()).getValue()).getWidth();
        while (it2.hasNext()) {
            int width2 = ((Size) ((Map.Entry) it2.next()).getValue()).getWidth();
            if (width < width2) {
                width = width2;
            }
        }
        Iterator<T> it3 = this.imageSizeMap.entrySet().iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        int height = ((Size) ((Map.Entry) it3.next()).getValue()).getHeight();
        while (it3.hasNext()) {
            int height2 = ((Size) ((Map.Entry) it3.next()).getValue()).getHeight();
            if (height < height2) {
                height = height2;
            }
        }
        Rect pageRenderRect = this.renderContext.getRenderMeasure().getPageRenderRect();
        float width3 = pageRenderRect.width() * this.MAX_TOTAL_IMAGE_SIZE_PERCENT;
        float height3 = pageRenderRect.height() * this.MAX_TOTAL_IMAGE_SIZE_PERCENT;
        float dimens = ResManager.INSTANCE.getDimens(C7485R.dimen.insert_image_shape_margin);
        float f = width;
        float f2 = size - 1;
        float f3 = dimens * f2;
        float f4 = f + f3;
        float f5 = height;
        float f6 = f3 + f5;
        float f7 = f4 > width3 ? (width3 - f) / f2 : dimens;
        if (f6 > height3) {
            dimens = (height3 - f5) / f2;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        for (Object obj : this.beanList) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            Size size2 = this.imageSizeMap.get(((CreateImageShapeBean) obj).getFilePath());
            if (size2 == null) {
                size2 = new Size(0, 0, 3, null);
            }
            Intrinsics.checkNotNull(size2);
            float f8 = i;
            TouchPoint touchPoint = new TouchPoint(f7 * f8, f8 * dimens);
            TouchPoint touchPoint2 = new TouchPoint(touchPoint.getX() + size2.getWidth(), touchPoint.getY() + size2.getHeight());
            arrayList.add(touchPoint);
            arrayList2.add(touchPoint2);
            i = i2;
        }
        Iterator it4 = arrayList2.iterator();
        if (!it4.hasNext()) {
            throw new NoSuchElementException();
        }
        float x = ((TouchPoint) it4.next()).getX();
        while (it4.hasNext()) {
            x = Math.max(x, ((TouchPoint) it4.next()).getX());
        }
        Iterator it5 = arrayList2.iterator();
        if (!it5.hasNext()) {
            throw new NoSuchElementException();
        }
        float y = ((TouchPoint) it5.next()).getY();
        while (it5.hasNext()) {
            y = Math.max(y, ((TouchPoint) it5.next()).getY());
        }
        RectF rectF = new RectF(0.0f, 0.0f, x, y);
        float centerX = pageRenderRect.centerX() - rectF.centerX();
        float centerY = pageRenderRect.centerY() - rectF.centerY();
        Matrix matrix = new Matrix();
        matrix.postTranslate(centerX, centerY);
        return GeometryUtils.INSTANCE.transform(arrayList, matrix);
    }

    /* renamed from: j */
    public final Shape m34105j(NotePage notePage, TouchPoint downPoint, Size imageSize, CreateImageShapeBean bean) {
        Matrix matrix = new Matrix();
        this.renderContext.getMatrix().invert(matrix);
        ShapeMatrixUtils shapeMatrixUtils = ShapeMatrixUtils.INSTANCE;
        TouchPoint matrixTouchPoint = shapeMatrixUtils.matrixTouchPoint(downPoint, matrix);
        Shape create = ShapeFactory.INSTANCE.create(SvgUtil.INSTANCE.isSvgImage(bean.getFilePath()) ? 35 : 19);
        create.onDown(matrixTouchPoint, matrixTouchPoint);
        TouchPoint touchPoint = new TouchPoint(downPoint);
        touchPoint.setX(downPoint.getX() + imageSize.getWidth());
        touchPoint.setY(downPoint.getY() + imageSize.getHeight());
        TouchPoint matrixTouchPoint2 = shapeMatrixUtils.matrixTouchPoint(touchPoint, matrix);
        create.onUp(matrixTouchPoint2, matrixTouchPoint2);
        create.ensureShapeUniqueId();
        create.updateShapeRect();
        create.updateShapeTime();
        ShapePersistOptionsKt.setBottom(create, true);
        ShapeUtils.INSTANCE.setShapeZOrder(create, notePage);
        Shape sourceShape = bean.getSourceShape();
        if (sourceShape != null) {
            create.setShapeMatrix(m34103h(sourceShape, create));
        }
        ShapeOptions.INSTANCE.setResource(create, m34107l(bean.getFilePath(), notePage.getDocumentUniqueId()));
        create.updateShapeRect();
        return create;
    }

    /* renamed from: k */
    public final void m34106k(Size imageSize) {
        RectF pageRenderRectF = this.renderContext.getRenderMeasure().getPageRenderRectF();
        int width = (int) (pageRenderRectF.width() * this.MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW);
        int height = (int) (pageRenderRectF.height() * this.MAX_IMAGE_SIZE_PERCENTAGE_FOR_SCRIBBLE_VIEW);
        if (imageSize.getWidth() > width) {
            imageSize.m72171setHeight((int) ((imageSize.getHeight() / imageSize.getWidth()) * width));
            imageSize.m72172setWidth(width);
        }
        if (imageSize.getHeight() > height) {
            imageSize.m72172setWidth((int) ((imageSize.getWidth() / imageSize.getHeight()) * height));
            imageSize.m72171setHeight(height);
        }
    }

    /* renamed from: l */
    public final ShapeResource m34107l(String localPath, String documentId) {
        return ResourceModels.INSTANCE.toShapeResource(ResourceModelKt.loadAndSaveResource(getNoteBundle().getNoteDoc(), localPath, documentId));
    }

    public final void setAddToCmdStack(boolean z) {
        this.addToCmdStack = z;
    }

    public final void setCompositeCommand(@NotNull CompositeCommand compositeCommand) {
        Intrinsics.checkNotNullParameter(compositeCommand, "<set-?>");
        this.compositeCommand = compositeCommand;
    }

    public final void setInsertPoint(@Nullable TouchPoint touchPoint) {
        this.insertPoint = touchPoint;
    }
}
