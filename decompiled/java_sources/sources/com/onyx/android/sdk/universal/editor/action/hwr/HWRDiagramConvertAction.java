package com.onyx.android.sdk.universal.editor.action.hwr;

import android.graphics.Matrix;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.genericshape.CreateAttr;
import com.onyx.android.sdk.genericshape.Feature;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.SelectionPointType;
import com.onyx.android.sdk.genericshape.WaveAttr;
import com.onyx.android.sdk.geometry.algorithm.MinimumBoundingRectAlgorithm;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.GeometryArgs;
import com.onyx.android.sdk.geometry.data.GeometryConfigurations;
import com.onyx.android.sdk.geometry.data.GeometryType;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.onyx.android.sdk.geometry.extractor.AngleArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.ArrowArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.LineArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.PolygonArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.PolylineArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.RectangleArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.TriangleArgsExtractor;
import com.onyx.android.sdk.geometry.extractor.WaveLineArgsExtractor;
import com.onyx.android.sdk.geometry.utils.BezierUtils;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.geometry.utils.WaveLineFeatureValidator;
import com.onyx.android.sdk.hwr.data.bean.HWRCandidate;
import com.onyx.android.sdk.hwr.data.bean.HWRInput;
import com.onyx.android.sdk.hwr.data.bean.HWRPointerEvent;
import com.onyx.android.sdk.hwr.data.bundle.HWRBundle;
import com.onyx.android.sdk.hwr.data.constant.HWRConfigurations;
import com.onyx.android.sdk.hwr.service.predictor.impl.FeatureVerification;
import com.onyx.android.sdk.hwr.utils.HWRDataUtils;
import com.onyx.android.sdk.hwr.utils.HWRLogUtils;
import com.onyx.android.sdk.hwr.utils.MLUtils;
import com.onyx.android.sdk.note.common.data.NoteDrawingArgs;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.UniversalShapeUtils;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.extension.CommonEditorActionsKt;
import com.onyx.android.sdk.universal.editor.bean.HWRConvertContext;
import com.onyx.android.sdk.universal.editor.bean.HWRRecognizeState;
import com.onyx.android.sdk.universal.editor.events.note.UniversalShapeEditEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.handler.shape.SelectionPointsUpdater;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.helper.EditorDataProxy;
import com.onyx.android.sdk.universal.editor.helper.UniversalShapeAbilityFilterKt;
import com.sun.org.apache.bcel.internal.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u008c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010U\u001a\u00020T\u0012\u0006\u0010<\u001a\u000209\u0012\u0006\u0010@\u001a\u00020=¢\u0006\u0004\bV\u0010WJ\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0014\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0016\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0017\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0018\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0019\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001a\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001b\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001c\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u001f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010 \u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010!\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010#\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010$\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010%\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010&\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010'\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010(\u001a\u00020\bH\u0002J\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020+0*2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020+0*H\u0002J\b\u0010.\u001a\u00020\u0006H\u0002J\u0010\u00102\u001a\u0002012\u0006\u00100\u001a\u00020/H\u0002J\u0010\u00103\u001a\u0002012\u0006\u00100\u001a\u00020/H\u0002J\u000e\u00105\u001a\b\u0012\u0004\u0012\u00020\u000004H\u0014J\u000e\u00108\u001a\u00020\b2\u0006\u00107\u001a\u000206R\u0014\u0010<\u001a\u0002098\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u001a\u0010H\u001a\b\u0012\u0004\u0012\u0002060E8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010J\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010IR\u0016\u0010M\u001a\u00020K8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0005\u0010LR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010OR\u0016\u0010S\u001a\u00020Q8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b \u0010R¨\u0006X"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", "S", "candidate", "m", "", "l", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "v", "Lcom/onyx/android/sdk/geometry/data/GeometryArgs;", "shapeArgs", "x", "I", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "P", "z", "N", "B", "K", "G", "w", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "J", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "F", "L", "y", "A", "M", "H", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "p", "u", "q", "E", "r", "t", "s", "universalShape", "T", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", PointConstant.POINT_FILE_END, "U", "V", "Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;", "noteDrawingArgs", "", "Q", "R", "Lio/reactivex/rxjava3/core/Observable;", BaiduYunConstant.CREATE, "", GeoConstant.KEY_Universal_Shape_Type, "createUniversalShape", "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", C6999h.f39688c, "Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;", "convertContext", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "i", "Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;", "hwrInput", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "j", "Lcom/onyx/android/sdk/hwr/data/bundle/HWRBundle;", "hwrBundle", "", C4921e.f26537n, "[Ljava/lang/String;", "supportTypes", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "shape", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;", "Lcom/onyx/android/sdk/universal/editor/handler/shape/SelectionPointsUpdater;", "selectionPointsUpdater", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/bean/HWRConvertContext;Lcom/onyx/android/sdk/hwr/data/bean/HWRInput;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHWRDiagramConvertAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,521:1\n1#2:522\n1940#3,14:523\n2310#3,14:537\n1855#3,2:551\n*S KotlinDebug\n*F\n+ 1 HWRDiagramConvertAction.kt\ncom/onyx/android/sdk/universal/editor/action/hwr/HWRDiagramConvertAction\n*L\n236#1:523,14\n237#1:537,14\n278#1:551,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HWRDiagramConvertAction extends RxBaseAppAction<HWRDiagramConvertAction> {

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final HWRConvertContext convertContext;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final HWRInput hwrInput;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final HWRBundle hwrBundle;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final String[] supportTypes;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public UniversalShape shape;

    /* renamed from: m, reason: from kotlin metadata */
    public BoxInfo virtualPageBoxInfo;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final SelectionPointsUpdater selectionPointsUpdater;

    /* renamed from: o, reason: from kotlin metadata */
    public RenderContext renderContext;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$a */
    /* loaded from: classes8.dex */
    public static final class C9422a<T> implements Consumer {
        public C9422a() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRDiagramConvertAction.this.virtualPageBoxInfo = it2;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$b */
    /* loaded from: classes8.dex */
    public static final class C9423b<T, R> implements Function {
        public C9423b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRCandidate apply(@NotNull BoxInfo it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRDiagramConvertAction.this.m38951S();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$c */
    /* loaded from: classes8.dex */
    public static final class C9424c<T, R> implements Function {
        public C9424c() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRCandidate apply(@NotNull HWRCandidate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRDiagramConvertAction.this.m38956m(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$d */
    /* loaded from: classes8.dex */
    public static final class C9425d<T> implements Consumer {
        public C9425d() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull HWRCandidate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            HWRDiagramConvertAction.this.m38955l();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$e */
    /* loaded from: classes8.dex */
    public static final class C9426e<T, R> implements Function {
        public C9426e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final HWRDiagramConvertAction apply(@NotNull HWRCandidate it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return HWRDiagramConvertAction.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HWRDiagramConvertAction(@NotNull EditorBundle editorBundle, @NotNull HWRConvertContext convertContext, @NotNull HWRInput hwrInput) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(convertContext, "convertContext");
        Intrinsics.checkNotNullParameter(hwrInput, "hwrInput");
        this.convertContext = convertContext;
        this.hwrInput = hwrInput;
        this.hwrBundle = editorBundle.getAiBundle().getHwrBundle();
        this.supportTypes = new String[]{GeometryType.LINE, "Triangle", GeometryType.TRIANGLE_RIGHT, GeometryType.TRIANGLE_ISOSCELES, GeometryType.TRIANGLE_REGULAR, GeometryType.PENTAGON, GeometryType.HEXAGON, GeometryType.OCTAGON, "Curve", GeometryType.WAVE_LINE, GeometryType.SQUARE, "Rectangle", "Rhombus", "Parallelogram", "Trapezoid", GeometryType.TRAPEZOID_ISOSCELES, GeometryType.TRAPEZOID_RIGHT, GeometryType.ELLIPSE, "Circle", GeometryType.ARROW, GeometryType.ARROW_CURVY, GeometryType.BI_ARROW, GeometryType.BI_ARROW_CURVY, GeometryType.ANGLE, GeometryType.PENTAGRAM, GeometryType.BRACKET_CURLY};
        this.selectionPointsUpdater = new SelectionPointsUpdater();
    }

    /* renamed from: A */
    public final UniversalShape m38933A(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.ISOSCELES_TRAPEZOID);
        this.selectionPointsUpdater.update(createUniversalShape, shapeArgs);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: B */
    public final UniversalShape m38934B(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.ISOSCELES_TRIANGLE);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: C */
    public final UniversalShape m38935C(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("line");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: D */
    public final UniversalShape m38936D(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.OCTAGON);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: E */
    public final UniversalShape m38937E(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.OVAL);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: F */
    public final UniversalShape m38938F(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("parallelogram");
        this.selectionPointsUpdater.update(createUniversalShape, shapeArgs);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: G */
    public final UniversalShape m38939G(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.PENTAGON);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: H */
    public final UniversalShape m38940H(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.STAR);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: I */
    public final UniversalShape m38941I(GeometryArgs shapeArgs) {
        Object first;
        Properties properties;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.POLYLINE);
        List<TouchPoint> m38953U = m38953U(shapeArgs.getPoints());
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) m38953U);
        TouchPoint copy = ((TouchPoint) first).copy();
        Matrix matrix = new Matrix();
        matrix.postTranslate(copy.getX(), copy.getY());
        createUniversalShape.setShapeMatrix(matrix);
        for (TouchPoint touchPoint : m38953U) {
            touchPoint.setX(touchPoint.getX() - copy.getX());
            touchPoint.setY(touchPoint.getY() - copy.getY());
        }
        FeatureCollection featureCollection = createUniversalShape.getFeatureCollection();
        CreateAttr createAttr = (featureCollection == null || (properties = featureCollection.getProperties()) == null) ? null : properties.getCreateAttr();
        if (createAttr != null) {
            createAttr.setSelectionPointType(SelectionPointType.DRAG);
        }
        UniversalShape.updateBySelectionPoints$default(createUniversalShape, m38953U, false, 2, null);
        return createUniversalShape;
    }

    /* renamed from: J */
    public final UniversalShape m38942J(GeometryArgs shapeArgs) {
        List<TouchPoint> listOf;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.RECTANGLE);
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPoint(shapeArgs.getLeft(), shapeArgs.getTop()), new TouchPoint(shapeArgs.getRight(), shapeArgs.getBottom())});
        shapeArgs.setPoints(listOf);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: K */
    public final UniversalShape m38943K(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.REGULAR_TRIANGLE);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: L */
    public final UniversalShape m38944L(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("rhombus");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: M */
    public final UniversalShape m38945M(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.RIGHT_TRAPEZOID);
        this.selectionPointsUpdater.update(createUniversalShape, shapeArgs);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: N */
    public final UniversalShape m38946N(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.RIGHT_TRIANGLE);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: O */
    public final UniversalShape m38947O(GeometryArgs shapeArgs) {
        List<TouchPoint> listOf;
        UniversalShape createUniversalShape = createUniversalShape("square");
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPoint(shapeArgs.getLeft(), shapeArgs.getTop()), new TouchPoint(shapeArgs.getRight(), shapeArgs.getBottom())});
        shapeArgs.setPoints(listOf);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: P */
    public final UniversalShape m38948P(GeometryArgs shapeArgs) {
        Feature[] features;
        Feature feature;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.WAVE_LINE);
        Properties properties = null;
        UniversalShape.updateBySelectionPoints$default(createUniversalShape, shapeArgs.getPoints(), false, 2, null);
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(boxInfoUtils.noteNormalizeMatrix(boxInfo));
        FeatureCollection featureCollection = createUniversalShape.getFeatureCollection();
        if (featureCollection != null && (features = featureCollection.getFeatures()) != null && (feature = features[0]) != null) {
            properties = feature.getProperties();
        }
        if (properties != null) {
            WaveAttr waveAttr = new WaveAttr();
            waveAttr.setWavyLength(shapeArgs.getCycle());
            waveAttr.setWavyPeak(shapeArgs.getPeak());
            properties.setWaveAttr(waveAttr);
        }
        return createUniversalShape;
    }

    /* renamed from: Q */
    public final float m38949Q(NoteDrawingArgs noteDrawingArgs) {
        EditorDataProxy editorDataProxy = EditorBundleKt.handlerManager(getEditorBundle()).getEditorDataProxy();
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        return editorDataProxy.getAdaptiveStrokeWidth(boxInfo, PhysiceExtKt.toScreenStrokeWidth(noteDrawingArgs.getStrokeWidth()));
    }

    /* renamed from: R */
    public final float m38950R(NoteDrawingArgs noteDrawingArgs) {
        float coerceIn;
        if (!MMKVNote.INSTANCE.getGraphConvertWithPressure().get()) {
            return 1.0f;
        }
        coerceIn = RangesKt___RangesKt.coerceIn(ShapeTypes.INSTANCE.isPressurePenType(noteDrawingArgs.getCurrentShapeType()) ? this.convertContext.getTouchPoints().getAveragePressure() : 1.0f, 0.001f, 1.0f);
        return coerceIn;
    }

    /* renamed from: S */
    public final HWRCandidate m38951S() {
        Object obj;
        boolean contains;
        Iterator<T> it2 = this.convertContext.getCandidates().iterator();
        while (true) {
            if (!it2.hasNext()) {
                obj = null;
                break;
            }
            obj = it2.next();
            contains = ArraysKt___ArraysKt.contains(this.supportTypes, ((HWRCandidate) obj).getShapeType());
            if (contains) {
                break;
            }
        }
        return (HWRCandidate) AnyKt.getOrElse(obj, (Function0<? extends Object>) new Function0<HWRCandidate>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$getSupportType$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final HWRCandidate invoke() {
                return new HWRCandidate();
            }
        });
    }

    /* renamed from: T */
    public final void m38952T(final UniversalShape universalShape) {
        PenArgs penArgs;
        UniversalShapeAttr universalShapeAttr = MMKVNote.INSTANCE.getGraphShapeOption().get();
        NoteDrawingArgs uiDrawingArgs = EditorBundleKt.uiDrawingArgs(getEditorBundle());
        universalShape.setStrokeWidth(m38949Q(uiDrawingArgs) * m38950R(uiDrawingArgs));
        universalShape.setStrokeColor(uiDrawingArgs.getStrokeColor());
        universalShape.enableFillColor(universalShapeAttr.getFillColorEnable());
        universalShapeAttr.updateFillColorIfNotValid(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.action.hwr.HWRDiagramConvertAction$initAttr$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                return Integer.valueOf(ColorUtils.getColorWithAlpha$default(ColorUtils.INSTANCE, UniversalShape.this.getStrokeColor(), 0.5f, false, 4, null));
            }
        });
        universalShape.setFillColor(universalShapeAttr.getFillColor());
        universalShape.setLineStyle(universalShapeAttr.getLineStyleType());
        int currentShapeType = uiDrawingArgs.getCurrentShapeType();
        if (currentShapeType == 15) {
            ShapePersistOptionsKt.setRoundCorner(universalShape, (!UniversalShapeAbilityFilterKt.supportStraightCorner(universalShape) || (penArgs = uiDrawingArgs.getPenArgs()) == null) ? true : penArgs.getRoundCorner());
            ShapePersistOptionsKt.setBottom(universalShape, true);
            EditorBundle editorBundle = getEditorBundle();
            BoxInfo boxInfo = this.virtualPageBoxInfo;
            if (boxInfo == null) {
                Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
                boxInfo = null;
            }
            ShapePersistOptionsKt.setUnderContent(universalShape, !EditorBundleKt.isCurDarkTheme(editorBundle, boxInfo.getId()));
            ShapePersistOptionsKt.setSubShapeType(universalShape, 15);
        } else if (currentShapeType == 22 || currentShapeType == 46) {
            ShapePersistOptionsKt.setSubShapeType(universalShape, 46);
        }
        if (universalShapeAttr.getFillColorEnable()) {
            universalShape.setFillColor(universalShapeAttr.getFillColor());
        }
    }

    /* renamed from: U */
    public final List<TouchPoint> m38953U(List<TouchPoint> points) {
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        BoxInfoUtils boxInfoUtils = BoxInfoUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        return geometryUtils.transform(points, boxInfoUtils.noteNormalizeMatrix(boxInfo));
    }

    /* renamed from: V */
    public final void m38954V() {
        Object firstOrNull;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        TouchPoint touchPoint = (TouchPoint) firstOrNull;
        if (touchPoint == null) {
            return;
        }
        getEditorBundle().getAiBundle().removeConvertContext(touchPoint.getTimestamp());
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<HWRDiagramConvertAction> create() {
        Object first;
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        Observable<HWRDiagramConvertAction> map = CommonEditorActionsKt.hitTestVisibleBoxObservable(this, (TouchPoint) first).doOnNext(new C9422a()).observeOn(this.hwrBundle.getHwrObserveOn()).map(new C9423b()).map(new C9424c()).observeOn(getMainUIScheduler()).doOnNext(new C9425d()).map(new C9426e());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final UniversalShape createUniversalShape(@NotNull String universalShapeType) {
        Intrinsics.checkNotNullParameter(universalShapeType, "universalShapeType");
        UniversalShape universalShape = new UniversalShape();
        String loadJson = UniversalShapeUtils.INSTANCE.loadJson(universalShapeType);
        if (loadJson == null) {
            return universalShape;
        }
        ShapeExtraBean shapeExtraBean = new ShapeExtraBean();
        shapeExtraBean.setFeatureCollection(loadJson);
        universalShape.setExtraBean(shapeExtraBean);
        m38952T(universalShape);
        return universalShape;
    }

    /* renamed from: l */
    public final void m38955l() {
        Object first;
        Object last;
        HWRRecognizeState recognizeState = this.convertContext.getRecognizeState();
        HWRRecognizeState hWRRecognizeState = HWRRecognizeState.IGNORED;
        if (recognizeState == hWRRecognizeState) {
            HWRLogUtils.INSTANCE.m33400d(HWRDiagramConvertAction.class, "ignored, abort after covert");
            m38954V();
            return;
        }
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            this.convertContext.setRecognizeState(hWRRecognizeState);
            m38954V();
            return;
        }
        this.convertContext.setRecognizeState(HWRRecognizeState.SUCCESS);
        EditorBundleKt.handlerManager(getEditorBundle()).getShapeHandlerManager().activeShapeProvider(ShapeHandlerManager.UNIVERSAL_SHAPE_PROVIDER);
        EditorBundle editorBundle = getEditorBundle();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        TouchData downTouchData$default = TouchPointKt.toDownTouchData$default((TouchPoint) first, null, null, 3, null);
        last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.convertContext.getTouchPoints().getPoints());
        EditorBundleKt.postEvent(editorBundle, new UniversalShapeEditEvent(universalShape, downTouchData$default, TouchPointKt.toUpTouchData$default((TouchPoint) last, null, null, 3, null), false, null, true, 24, null));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: m */
    public final HWRCandidate m38956m(HWRCandidate candidate) {
        UniversalShape m38965v;
        if (candidate.getShapeType().length() == 0) {
            return candidate;
        }
        GeometryArgs shapeArgs = candidate.getShapeArgs();
        String shapeType = candidate.getShapeType();
        switch (shapeType.hashCode()) {
            case -1813852672:
                if (shapeType.equals(GeometryType.HEXAGON)) {
                    m38965v = m38966w(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -1810807491:
                if (shapeType.equals(GeometryType.SQUARE)) {
                    m38965v = m38947O(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -1534430409:
                if (shapeType.equals(GeometryType.TRAPEZOID_RIGHT)) {
                    m38965v = m38945M(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -1450821812:
                if (shapeType.equals("Rhombus")) {
                    m38965v = m38944L(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -1193408056:
                if (shapeType.equals("Trapezoid")) {
                    m38965v = m38968y(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -1169699505:
                if (shapeType.equals("Rectangle")) {
                    m38965v = m38942J(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -888178941:
                if (shapeType.equals(GeometryType.BI_ARROW)) {
                    m38965v = m38959p(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -794114488:
                if (shapeType.equals(GeometryType.WAVE_LINE)) {
                    m38965v = m38948P(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -686476673:
                if (shapeType.equals(GeometryType.ARROW_CURVY)) {
                    m38965v = m38964u(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -677350275:
                if (shapeType.equals(GeometryType.PENTAGRAM)) {
                    m38965v = m38940H(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case -526804263:
                if (shapeType.equals(GeometryType.TRIANGLE_RIGHT)) {
                    m38965v = m38946N(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 2368532:
                if (shapeType.equals(GeometryType.LINE)) {
                    m38965v = m38935C(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 8172478:
                if (shapeType.equals(GeometryType.ELLIPSE)) {
                    m38965v = m38937E(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 42753413:
                if (shapeType.equals(GeometryType.OCTAGON)) {
                    m38965v = m38936D(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 63408307:
                if (shapeType.equals(GeometryType.ANGLE)) {
                    m38965v = m38957n(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 63538153:
                if (shapeType.equals(GeometryType.ARROW)) {
                    m38965v = m38958o(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 65474767:
                if (shapeType.equals("Curve")) {
                    m38965v = m38963t(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 260094475:
                if (shapeType.equals(GeometryType.TRIANGLE_ISOSCELES)) {
                    m38965v = m38934B(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 262486632:
                if (shapeType.equals(GeometryType.BRACKET_CURLY)) {
                    m38965v = m38962s(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 393791904:
                if (shapeType.equals(GeometryType.PENTAGON)) {
                    m38965v = m38939G(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 1077602841:
                if (shapeType.equals(GeometryType.BI_ARROW_CURVY)) {
                    m38965v = m38960q(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 1312319871:
                if (shapeType.equals("Parallelogram")) {
                    m38965v = m38938F(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 1384593989:
                if (shapeType.equals(GeometryType.TRAPEZOID_ISOSCELES)) {
                    m38965v = m38933A(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 1562406440:
                if (shapeType.equals("Triangle")) {
                    m38965v = m38969z(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 1977476441:
                if (shapeType.equals(GeometryType.TRIANGLE_REGULAR)) {
                    m38965v = m38943K(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            case 2018617584:
                if (shapeType.equals("Circle")) {
                    m38965v = m38961r(shapeArgs);
                    break;
                }
                m38965v = m38965v();
                break;
            default:
                m38965v = m38965v();
                break;
        }
        m38965v.setStrokeWidth(m38965v.getStrokeWidth() / MatrixKt.getAverageScale(m38965v.getShapeMatrix()));
        this.shape = m38965v;
        return candidate;
    }

    /* renamed from: n */
    public final UniversalShape m38957n(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("angle");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: o */
    public final UniversalShape m38958o(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.DIRECTION_LINE);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: p */
    public final UniversalShape m38959p(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.BIDIRECTIONAL_LINE);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: q */
    public final UniversalShape m38960q(GeometryArgs shapeArgs) {
        List<TouchPoint> listOf;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.BIDIRECTIONAL_CURVY_ARROW);
        List<TouchPoint> points = shapeArgs.getPoints();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{points.get(0), BezierUtils.INSTANCE.getHalfPoint(points.get(0), points.get(1), points.get(2)), points.get(2)});
        shapeArgs.setPoints(listOf);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: r */
    public final UniversalShape m38961r(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("circle");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByRect(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: s */
    public final UniversalShape m38962s(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.BRACKET);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: t */
    public final UniversalShape m38963t(GeometryArgs shapeArgs) {
        List<TouchPoint> listOf;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.CURVE);
        List<TouchPoint> points = shapeArgs.getPoints();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{points.get(0), BezierUtils.INSTANCE.getHalfPoint(points.get(0), points.get(1), points.get(2)), points.get(2)});
        shapeArgs.setPoints(listOf);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: u */
    public final UniversalShape m38964u(GeometryArgs shapeArgs) {
        List<TouchPoint> listOf;
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.CURVY_ARROW);
        List<TouchPoint> points = shapeArgs.getPoints();
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{points.get(0), BezierUtils.INSTANCE.getHalfPoint(points.get(0), points.get(1), points.get(2)), points.get(2)});
        shapeArgs.setPoints(listOf);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: v */
    public final UniversalShape m38965v() {
        List listOf;
        List listOf2;
        List<TouchPoint> listOf3;
        List<TouchPoint> listOf4;
        Debug debug = Debug.INSTANCE;
        String name = HWRDiagramConvertAction.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        debug.m32062w(name, "no fitted shape found, use fallback shape instead", new Object[0]);
        List<HWRPointerEvent> preHandleInputPoints = MLUtils.INSTANCE.preHandleInputPoints(this.hwrInput.getPointerEvents());
        FeatureVerification featureVerification = new FeatureVerification();
        featureVerification.input(preHandleInputPoints);
        List<TouchPoint> touchPointList = HWRDataUtils.INSTANCE.toTouchPointList(preHandleInputPoints);
        if (featureVerification.isClosurePath()) {
            if (PathKt.area(touchPointList) / PathKt.area(MinimumBoundingRectAlgorithm.INSTANCE.findMinimumBoundingRect(touchPointList).getRealPoints()) > GeometryConfigurations.INSTANCE.getRectanglePolygonSimilarThreshold()) {
                return m38942J(RectangleArgsExtractor.INSTANCE.extractArgs(touchPointList));
            }
            GeometryArgs extractArgs = PolygonArgsExtractor.INSTANCE.extractArgs(touchPointList);
            return extractArgs.hasThreePoints() ? m38969z(TriangleArgsExtractor.INSTANCE.extractArgs(extractArgs.getPoints())) : m38967x(extractArgs);
        }
        GeometryArgs extractArgs2 = PolylineArgsExtractor.INSTANCE.extractArgs(touchPointList);
        List<TouchPoint> filterBySpacing = GeometryUtils.INSTANCE.filterBySpacing(extractArgs2.getPoints(), Float.valueOf(HWRConfigurations.INSTANCE.getPolylinePointSpacing()));
        extractArgs2.setPoints(filterBySpacing);
        if (extractArgs2.hasTwoPoints()) {
            return m38935C(LineArgsExtractor.INSTANCE.extractArgs(filterBySpacing));
        }
        if (!extractArgs2.hasThreePoints()) {
            return (extractArgs2.getPoints().size() < GeometryConfigurations.INSTANCE.getPolylineToWaveLineThreshold() || !WaveLineFeatureValidator.INSTANCE.checkWaveLineFeature(extractArgs2.getPoints())) ? m38941I(extractArgs2) : m38948P(WaveLineArgsExtractor.INSTANCE.extractArgs(filterBySpacing));
        }
        TouchPointPair touchPointPair = new TouchPointPair(extractArgs2.getPoints().get(0), extractArgs2.getPoints().get(1));
        TouchPointPair touchPointPair2 = new TouchPointPair(extractArgs2.getPoints().get(1), extractArgs2.getPoints().get(2));
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPointPair[]{touchPointPair, touchPointPair2});
        Iterator it2 = listOf.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            float length = ((TouchPointPair) next).length();
            do {
                Object next2 = it2.next();
                float length2 = ((TouchPointPair) next2).length();
                if (Float.compare(length, length2) < 0) {
                    next = next2;
                    length = length2;
                }
            } while (it2.hasNext());
        }
        TouchPointPair touchPointPair3 = (TouchPointPair) next;
        listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPointPair[]{touchPointPair, touchPointPair2});
        Iterator it3 = listOf2.iterator();
        if (!it3.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next3 = it3.next();
        if (it3.hasNext()) {
            float length3 = ((TouchPointPair) next3).length();
            do {
                Object next4 = it3.next();
                float length4 = ((TouchPointPair) next4).length();
                if (Float.compare(length3, length4) > 0) {
                    next3 = next4;
                    length3 = length4;
                }
            } while (it3.hasNext());
        }
        TouchPointPair touchPointPair4 = (TouchPointPair) next3;
        float length5 = touchPointPair4.length();
        float length6 = touchPointPair3.length() / length5;
        HWRConfigurations hWRConfigurations = HWRConfigurations.INSTANCE;
        if (length6 < hWRConfigurations.getAngleFallbackSideRatio()) {
            return m38957n(AngleArgsExtractor.INSTANCE.extractArgs(filterBySpacing));
        }
        if (length5 <= hWRConfigurations.getArrowFallbackMinimumLength()) {
            listOf4 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPointPair3.getP1(), touchPointPair3.getP2()});
            return m38935C(LineArgsExtractor.INSTANCE.extractArgs(listOf4));
        }
        boolean z = extractArgs2.getPoints().get(0) == touchPointPair4.getP1();
        TouchPoint touchPoint = extractArgs2.getPoints().get(1);
        List<TouchPoint> points = extractArgs2.getPoints();
        listOf3 = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{touchPoint, z ? points.get(0) : points.get(2)});
        return m38958o(ArrowArgsExtractor.INSTANCE.extractArgs(listOf3));
    }

    /* renamed from: w */
    public final UniversalShape m38966w(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.HEXAGON);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: x */
    public final UniversalShape m38967x(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("polygon");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: y */
    public final UniversalShape m38968y(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape(UniversalShapeTypeConst.TRAPEZOID);
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }

    /* renamed from: z */
    public final UniversalShape m38969z(GeometryArgs shapeArgs) {
        UniversalShape createUniversalShape = createUniversalShape("triangle");
        UniversalShapeUtils universalShapeUtils = UniversalShapeUtils.INSTANCE;
        BoxInfo boxInfo = this.virtualPageBoxInfo;
        if (boxInfo == null) {
            Intrinsics.throwUninitializedPropertyAccessException("virtualPageBoxInfo");
            boxInfo = null;
        }
        createUniversalShape.setShapeMatrix(universalShapeUtils.createTransformMatrixByPoints(shapeArgs, createUniversalShape, boxInfo));
        return createUniversalShape;
    }
}
