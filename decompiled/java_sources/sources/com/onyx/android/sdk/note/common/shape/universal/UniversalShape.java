package com.onyx.android.sdk.note.common.shape.universal;

import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.database.VersionTable;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ArraysKt;
import com.onyx.android.sdk.data.common.data.LineStyleTypes;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.DirectionLine;
import com.onyx.android.sdk.genericshape.Feature;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.genericshape.FillAttr;
import com.onyx.android.sdk.genericshape.GeoConstant;
import com.onyx.android.sdk.genericshape.GeoFactory;
import com.onyx.android.sdk.genericshape.GeoRenderContext;
import com.onyx.android.sdk.genericshape.IGeometry;
import com.onyx.android.sdk.genericshape.LineString;
import com.onyx.android.sdk.genericshape.LineStyle;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.SelectionPointType;
import com.onyx.android.sdk.genericshape.StrokeAttr;
import com.onyx.android.sdk.genericshape.SurfaceFeature;
import com.onyx.android.sdk.geometry.extension.PathKt;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.neopdf.PdfShapeInfo;
import com.onyx.android.sdk.note.common.data.erase.EraseBean;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.shape.SplitShapeResult;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.pdf.EmbedShapeBean;
import com.onyx.android.sdk.note.common.shape.BaseShape;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeOptions;
import com.onyx.android.sdk.note.common.shape.extension.ShapePersistOptionsKt;
import com.onyx.android.sdk.note.common.shape.graphical.CircleShape;
import com.onyx.android.sdk.note.common.shape.graphical.LineShape;
import com.onyx.android.sdk.note.common.shape.graphical.RectangleShape;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.HitTestUtils;
import com.onyx.android.sdk.note.common.utils.PdfShapeConvertUtils;
import com.onyx.android.sdk.note.common.utils.ShapeCopyUtils;
import com.onyx.android.sdk.note.common.utils.ShapeUtils;
import com.onyx.android.sdk.replicator.note.data.line.DashLineStyle;
import com.onyx.android.sdk.replicator.note.data.line.ShapeLineStyle;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ª\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\b*\u0018\u0000 \u0094\u00012\u00020\u0001:\u0002\u0094\u0001B\t¢\u0006\u0006\b\u0092\u0001\u0010\u0093\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0007H\u0002J5\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0010\b\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0018\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\nH\u0002J\u0010\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J%\u0010\u0016\u001a\u00020\u00042\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0018\u001a\u00020\u0007H\u0002J\b\u0010\u001b\u001a\u00020\u0007H\u0002J\b\u0010\u001c\u001a\u00020\u0004H\u0002J\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b \u0010!J\u001a\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\u001a\u0010'\u001a\b\u0012\u0004\u0012\u00020%0$2\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\"H\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002J\u0012\u0010,\u001a\u0004\u0018\u00010*2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u0010-\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u0010.\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u0010/\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u00100\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0002J\u0010\u00103\u001a\u00020\u00072\u0006\u00102\u001a\u000201H\u0002J\u0010\u00107\u001a\u0002062\u0006\u00105\u001a\u000204H\u0002J\b\u00108\u001a\u00020\u001dH\u0002J\b\u00109\u001a\u00020\u0007H\u0016J\f\u0010:\u001a\b\u0012\u0004\u0012\u00020%0$J\u0014\u0010<\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010;\u001a\u00020\u0002J\u0006\u0010=\u001a\u000206J\u0016\u0010@\u001a\u00020\u00042\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u001dJ\u001e\u0010C\u001a\u00020\u00042\f\u0010A\u001a\b\u0012\u0004\u0012\u00020%0$2\b\b\u0002\u0010B\u001a\u00020\u0007J\u000e\u0010E\u001a\u00020\u00042\u0006\u0010D\u001a\u00020\u001dJ\u000e\u0010G\u001a\u00020\u00042\u0006\u0010F\u001a\u00020\u0007J\u0006\u0010H\u001a\u00020\u0007J\u0010\u0010J\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u0007H\u0016J\b\u0010K\u001a\u00020\u0007H\u0016J\b\u0010L\u001a\u00020\u0002H\u0016J\u0010\u0010N\u001a\u00020\u00042\u0006\u0010M\u001a\u00020\u0002H\u0016J\u0006\u0010O\u001a\u00020\u0004J\u000e\u0010O\u001a\u00020\u00042\u0006\u0010Q\u001a\u00020PJ\u0010\u0010R\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010S\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\b\u0010T\u001a\u00020\u0004H\u0016J\b\u0010U\u001a\u000206H\u0016J\u0018\u0010Y\u001a\u00020\u00072\u0006\u0010W\u001a\u00020V2\u0006\u0010X\u001a\u00020\u001dH\u0016J \u0010Z\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u001d2\u0006\u0010\u0013\u001a\u00020\u001d2\u0006\u0010X\u001a\u00020\u001dH\u0016J(\u0010Z\u001a\u00020\u00072\u0006\u0010[\u001a\u00020\u001d2\u0006\u0010\\\u001a\u00020\u001d2\u0006\u0010]\u001a\u00020\u001d2\u0006\u0010^\u001a\u00020\u001dH\u0016J$\u0010a\u001a\u00020\u00072\f\u0010_\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010`\u001a\u00020\u001d2\u0006\u0010\u0018\u001a\u00020\u0007J\u0010\u0010e\u001a\u00020d2\u0006\u0010c\u001a\u00020bH\u0016J\u0006\u0010f\u001a\u00020\u0004J\u0010\u0010g\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0016J\b\u0010h\u001a\u00020VH\u0016J\u0006\u0010i\u001a\u00020\u0007J\u0006\u0010j\u001a\u00020\u0007R&\u0010n\u001a\u0014\u0012\u0004\u0012\u00020\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020%0$0k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\"\u0010M\u001a\u00020\u00028\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010r\"\u0004\bs\u0010tR\"\u0010{\u001a\u00020V8V@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bu\u0010v\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR.\u0010\u0083\u0001\u001a\u00020\u001d2\u0006\u0010|\u001a\u00020\u001d8V@VX\u0096\u000e¢\u0006\u0015\n\u0004\b}\u0010~\u001a\u0005\b\u007f\u0010\u0080\u0001\"\u0006\b\u0081\u0001\u0010\u0082\u0001R.\u0010\u0087\u0001\u001a\u00020\u00022\u0006\u0010|\u001a\u00020\u00028V@VX\u0096\u000e¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010p\u001a\u0005\b\u0085\u0001\u0010r\"\u0005\b\u0086\u0001\u0010tR.\u0010\u008b\u0001\u001a\u00020\u00022\u0006\u0010|\u001a\u00020\u00028\u0016@VX\u0096\u000e¢\u0006\u0015\n\u0005\b\u0088\u0001\u0010p\u001a\u0005\b\u0089\u0001\u0010r\"\u0005\b\u008a\u0001\u0010tR*\u00102\u001a\u0004\u0018\u0001018F@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001¨\u0006\u0095\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "Lcom/onyx/android/sdk/note/common/shape/BaseShape;", "", "color", "", "b", "c", "", "x", "", "Lcom/onyx/android/sdk/genericshape/Feature;", GeoConstant.KEY_Features, "", "nodes", "l", "([Lcom/onyx/android/sdk/genericshape/Feature;Ljava/util/List;)Ljava/util/List;", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", VersionTable.f23321b, "y", "Lcom/onyx/android/sdk/genericshape/GeoRenderContext;", "u", "z", "([Lcom/onyx/android/sdk/genericshape/Feature;Lcom/onyx/android/sdk/note/common/data/render/RenderContext;)V", "fillPath", "Landroid/graphics/Path;", "v", "w", "B", "", GoogleApiAvailabilityLight.f29016b, "()Ljava/lang/Float;", "t", "()Ljava/lang/Integer;", "Landroid/graphics/Matrix;", "matrix", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "q", C4921e.f26528e, "Lcom/onyx/android/sdk/note/common/pdf/EmbedShapeBean;", "embedShapeBean", "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;", C6999h.f39688c, C4921e.f26537n, C6998g.f39679a, "j", C6997f.f39671c, "i", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "featureCollection", "A", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "eraseShape", "Landroid/graphics/RectF;", "d", "e", "underContent", "getSelectionPoints", "vertexCount", "getVertexPoints", "boundRect", "scaleX", "scaleY", "scaleSelectionPoints", "list", "forceUpdate", "updateBySelectionPoints", "width", "applyStrokeWidth", "supported", "setFillColorSupported", "isFillColorSupported", "enable", "enableFillColor", "isFillColorEnabled", "getLineStyle", "type", "setLineStyle", "updateFeature", "", "featureStr", "render", "lowLatencyRender", "updateShapeRect", "getPointsBoundingRect", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "pointList", "radius", "hitTestPoints", "hitTest", "x1", "y1", "x2", "y2", "pointsInPage", "hitTestRadiusInPage", "hitTestPathRegion", "Lcom/onyx/android/sdk/note/common/data/erase/EraseBean;", "eraseBean", "Lcom/onyx/android/sdk/note/common/data/shape/SplitShapeResult;", "split", "updateUniversalShapeType", "toPdfShape", "getRenderPoints", "supportPathFill", "isLineStyleEditable", "", "J", "Ljava/util/Map;", "renderPointMap", "K", "I", "getType", "()I", "setType", "(I)V", "L", "Lcom/onyx/android/sdk/base/data/TouchPointList;", "getPoints", "()Lcom/onyx/android/sdk/base/data/TouchPointList;", "setPoints", "(Lcom/onyx/android/sdk/base/data/TouchPointList;)V", PointConstant.POINT_FILE_END, "value", "M", "F", "getStrokeWidth", "()F", "setStrokeWidth", "(F)V", ApiBroadCastReceiver.ARGS_STROKE_WIDTH, "N", "getStrokeColor", "setStrokeColor", ApiBroadCastReceiver.ARGS_STROKE_COLOR, BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "getFillColor", "setFillColor", CouchFieldKey.KEY_FILL_COLOR, "P", "Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "getFeatureCollection", "()Lcom/onyx/android/sdk/genericshape/FeatureCollection;", "setFeatureCollection", "(Lcom/onyx/android/sdk/genericshape/FeatureCollection;)V", Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUniversalShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShape.kt\ncom/onyx/android/sdk/note/common/shape/universal/UniversalShape\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,641:1\n1#2:642\n13309#3,2:643\n13309#3,2:645\n13309#3,2:654\n13309#3,2:656\n1282#3,2:658\n13309#3,2:660\n11065#3:677\n11400#3,3:678\n13424#3,3:689\n12271#3,2:693\n26#4:647\n26#4:651\n766#5:648\n857#5,2:649\n1855#5,2:652\n1855#5,2:662\n800#5,11:664\n1855#5,2:675\n1549#5:681\n1620#5,3:682\n1549#5:685\n1620#5,3:686\n637#6:692\n*S KotlinDebug\n*F\n+ 1 UniversalShape.kt\ncom/onyx/android/sdk/note/common/shape/universal/UniversalShape\n*L\n123#1:643,2\n134#1:645,2\n218#1:654,2\n255#1:656,2\n284#1:658,2\n300#1:660,2\n426#1:677\n426#1:678,3\n508#1:689,3\n587#1:693,2\n175#1:647\n193#1:651\n180#1:648\n180#1:649,2\n195#1:652,2\n384#1:662,2\n397#1:664,11\n397#1:675,2\n427#1:681\n427#1:682,3\n433#1:685\n433#1:686,3\n560#1:692\n*E\n"})
/* loaded from: classes8.dex */
public final class UniversalShape extends BaseShape {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: Q */
    @NotNull
    public static final Set<String> f43772Q;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public final Map<Matrix, List<TouchPoint>> renderPointMap = new LinkedHashMap();

    /* renamed from: K, reason: from kotlin metadata */
    public int type = 40;

    /* renamed from: L, reason: from kotlin metadata */
    @NotNull
    public TouchPointList points = new TouchPointList();

    /* renamed from: M, reason: from kotlin metadata */
    public float strokeWidth = 1.0f;

    /* renamed from: N, reason: from kotlin metadata */
    public int strokeColor = -16777216;

    /* renamed from: O, reason: from kotlin metadata */
    public int fillColor;

    /* renamed from: P, reason: from kotlin metadata */
    @Nullable
    public FeatureCollection featureCollection;

    @Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u001d\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u001d\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape$Companion;", "", "", "Lcom/onyx/android/sdk/genericshape/Feature;", GeoConstant.KEY_Features, "", "a", "([Lcom/onyx/android/sdk/genericshape/Feature;)Ljava/lang/String;", "", "stereoUniversalShapeTypes", "Ljava/util/Set;", "getStereoUniversalShapeTypes", "()Ljava/util/Set;", Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final String m33990a(Feature[] features) {
            Object first;
            if (features.length != 1) {
                return "";
            }
            first = ArraysKt___ArraysKt.first(features);
            Feature feature = (Feature) first;
            LineStyle lineStyle = feature.getProperties().getLineStyle();
            if (feature.getGeometry() instanceof LineString) {
                if ((lineStyle != null ? lineStyle.getDashLineIntervals() : null) == null) {
                    if (lineStyle != null && lineStyle.getEditable()) {
                        return "line";
                    }
                }
            }
            if (feature.getGeometry() instanceof LineString) {
                if ((lineStyle != null ? lineStyle.getDashLineIntervals() : null) != null && !lineStyle.getEditable()) {
                    return UniversalShapeTypeConst.DASH_LINE;
                }
            }
            return feature.getGeometry() instanceof DirectionLine ? UniversalShapeTypeConst.DIRECTION_LINE : "";
        }

        @NotNull
        public final Set<String> getStereoUniversalShapeTypes() {
            return UniversalShape.f43772Q;
        }

        public Companion() {
        }
    }

    static {
        Set<String> of;
        of = SetsKt__SetsKt.setOf((Object[]) new String[]{UniversalShapeTypeConst.CONE, UniversalShapeTypeConst.TRIANGULAR_PYRAMID, UniversalShapeTypeConst.TRIANGULAR_PRISM, UniversalShapeTypeConst.CUBE, UniversalShapeTypeConst.SQUARE_PYRAMID, UniversalShapeTypeConst.CYLINDER, UniversalShapeTypeConst.SPHERE, UniversalShapeTypeConst.REGULAR_SPHERE, UniversalShapeTypeConst.HEMISPHEROID});
        f43772Q = of;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: m */
    public static /* synthetic */ List m33963m(UniversalShape universalShape, Feature[] featureArr, List list, int i, Object obj) {
        if ((i & 2) != 0) {
            list = null;
        }
        return universalShape.m33979l(featureArr, list);
    }

    /* renamed from: p */
    public static /* synthetic */ List m33964p(UniversalShape universalShape, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = null;
        }
        return universalShape.m33981o(matrix);
    }

    /* renamed from: r */
    public static /* synthetic */ List m33965r(UniversalShape universalShape, Matrix matrix, int i, Object obj) {
        if ((i & 1) != 0) {
            matrix = null;
        }
        return universalShape.m33982q(matrix);
    }

    /* renamed from: s */
    public static final Stream m33966s(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Stream) tmp0.invoke(obj);
    }

    public static /* synthetic */ void updateBySelectionPoints$default(UniversalShape universalShape, List list, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        universalShape.updateBySelectionPoints(list, z);
    }

    /* renamed from: A */
    public final boolean m33967A(FeatureCollection featureCollection) {
        return featureCollection.getVersion() < 4 && f43772Q.contains(featureCollection.getUniversalShapeType());
    }

    /* renamed from: B */
    public final void m33968B() {
        if (getOriginRect().isEmpty()) {
            updateShapeRect();
        }
    }

    public final void applyStrokeWidth(float width) {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            featureCollection.applyStrokeWidth(width);
        }
    }

    /* renamed from: b */
    public final void m33969b(int color) {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            featureCollection.applyFillColor(color);
        }
    }

    @NotNull
    public final RectF boundRect() {
        return GeometryUtils.INSTANCE.boundRect(getSelectionPoints());
    }

    /* renamed from: c */
    public final void m33970c(int color) {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            featureCollection.applyStrokeColor(color);
        }
    }

    /* renamed from: d */
    public final RectF m33971d(Shape eraseShape) {
        float m33972e = m33972e();
        RectF copy = RectFKt.copy(eraseShape.getBoundingRect());
        copy.left -= m33972e;
        copy.right += m33972e;
        copy.top -= m33972e;
        copy.bottom += m33972e;
        return copy;
    }

    /* renamed from: e */
    public final float m33972e() {
        Matrix shapeMatrix = getShapeMatrix();
        float strokeWidth = getStrokeWidth();
        return shapeMatrix != null ? shapeMatrix.mapRadius(strokeWidth / 2) : strokeWidth / 2;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void enableFillColor(boolean enable) {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            featureCollection.enableFillColor(enable);
        }
        updateFeature();
    }

    /* renamed from: f */
    public final PdfShapeInfo m33973f(EmbedShapeBean embedShapeBean) {
        m33968B();
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        embedShapeBean.setBitmapScale(pdfShapeConvertUtils.getImagePdfShapeBitmapScale(this));
        return pdfShapeConvertUtils.createImagePdfShape(this, embedShapeBean);
    }

    /* renamed from: g */
    public final PdfShapeInfo m33974g(EmbedShapeBean embedShapeBean) {
        Feature[] features;
        Object firstOrNull;
        Properties properties;
        LineStyle lineStyle;
        float[] fArr;
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null && (features = featureCollection.getFeatures()) != null) {
            firstOrNull = ArraysKt___ArraysKt.firstOrNull(features);
            Feature feature = (Feature) firstOrNull;
            if (feature != null && (properties = feature.getProperties()) != null && (lineStyle = properties.getLineStyle()) != null) {
                ShapeLineStyle shapeLineStyle = new ShapeLineStyle();
                DashLineStyle dashLineStyle = new DashLineStyle();
                dashLineStyle.setType(lineStyle.getType());
                float[] dashLineIntervals = lineStyle.getDashLineIntervals();
                if (dashLineIntervals != null) {
                    fArr = Arrays.copyOf(dashLineIntervals, dashLineIntervals.length);
                    Intrinsics.checkNotNullExpressionValue(fArr, "copyOf(this, size)");
                } else {
                    fArr = null;
                }
                dashLineStyle.setDashLineIntervals(fArr);
                float[] dashLineIntervals2 = dashLineStyle.getDashLineIntervals();
                if (dashLineIntervals2 != null) {
                    int length = dashLineIntervals2.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        dashLineIntervals2[i2] = dashLineIntervals2[i] + (embedShapeBean.getCom.onyx.android.sdk.universal.editor.receiver.ApiBroadCastReceiver.ARGS_STROKE_WIDTH java.lang.String() * 2);
                        i++;
                        i2++;
                    }
                }
                dashLineStyle.setPhase(lineStyle.getPhase());
                shapeLineStyle.setLineStyle(dashLineStyle);
                embedShapeBean.setShapeLineStyle(shapeLineStyle);
            }
        }
        return LineShape.INSTANCE.createPdfShape(embedShapeBean);
    }

    @Nullable
    public final FeatureCollection getFeatureCollection() {
        String featureCollection;
        if (this.featureCollection == null) {
            ShapeExtraBean extraBean = getExtraBean();
            this.featureCollection = (extraBean == null || (featureCollection = extraBean.getFeatureCollection()) == null) ? null : GeoFactory.INSTANCE.parseFeatureCollection(featureCollection);
        }
        return this.featureCollection;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getFillColor() {
        return this.fillColor;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getLineStyle() {
        Feature[] featureArr;
        Object first;
        Object firstOrNull;
        Properties properties;
        LineStyle lineStyle;
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection == null || (featureArr = featureCollection.getFeatures()) == null) {
            featureArr = new Feature[0];
        }
        List m33963m = m33963m(this, featureArr, null, 2, null);
        if (m33963m.isEmpty()) {
            return 0;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : m33963m) {
            LineStyle lineStyle2 = ((Feature) obj).getProperties().getLineStyle();
            if (true ^ ((lineStyle2 == null || lineStyle2.getEditable()) ? false : true)) {
                arrayList.add(obj);
            }
        }
        if (!(!arrayList.isEmpty())) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) m33963m);
            LineStyle lineStyle3 = ((Feature) first).getProperties().getLineStyle();
            if (lineStyle3 != null) {
                return lineStyle3.getType();
            }
            return 0;
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList);
        Feature feature = (Feature) firstOrNull;
        if (feature == null || (properties = feature.getProperties()) == null || (lineStyle = properties.getLineStyle()) == null) {
            return 0;
        }
        return lineStyle.getType();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPointList getPoints() {
        return new TouchPointList(getSelectionPoints());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape
    @NotNull
    public RectF getPointsBoundingRect() {
        RectF boundingRect;
        FeatureCollection featureCollection = getFeatureCollection();
        return (featureCollection == null || (boundingRect = featureCollection.getBoundingRect()) == null) ? new RectF() : boundingRect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public TouchPointList getRenderPoints() {
        return new TouchPointList((List<TouchPoint>) m33964p(this, null, 1, null));
    }

    @NotNull
    public final List<TouchPoint> getSelectionPoints() {
        FeatureCollection featureCollection = getFeatureCollection();
        return featureCollection == null ? new ArrayList() : featureCollection.loadSelectionPoints();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public int getStrokeColor() {
        Integer m33983t = m33983t();
        return m33983t != null ? m33983t.intValue() : this.strokeColor;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public float getStrokeWidth() {
        Float m33980n = m33980n();
        return m33980n != null ? m33980n.floatValue() : this.strokeWidth;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public int getType() {
        return this.type;
    }

    @NotNull
    public final List<TouchPoint> getVertexPoints(int vertexCount) {
        List<TouchPoint> take;
        take = CollectionsKt___CollectionsKt.take(getSelectionPoints(), vertexCount);
        return take;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0069, code lost:
    
        if (r0.equals(com.onyx.android.sdk.genericshape.GeoConstant.Oval) == false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        if (r0.equals("Circle") == false) goto L33;
     */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.onyx.android.sdk.neopdf.PdfShapeInfo m33975h(com.onyx.android.sdk.note.common.pdf.EmbedShapeBean r4) {
        /*
            r3 = this;
            com.onyx.android.sdk.genericshape.FeatureCollection r0 = r3.getFeatureCollection()
            r1 = 0
            if (r0 == 0) goto Le
            com.onyx.android.sdk.genericshape.FeatureCollection$Companion r2 = com.onyx.android.sdk.genericshape.FeatureCollection.INSTANCE
            java.lang.String r0 = r2.getFeatureType(r0)
            goto Lf
        Le:
            r0 = r1
        Lf:
            if (r0 == 0) goto L7f
            int r2 = r0.hashCode()
            switch(r2) {
                case -1169699505: goto L71;
                case 2470002: goto L63;
                case 65474767: goto L46;
                case 668071597: goto L31;
                case 1806700869: goto L23;
                case 2018617584: goto L1a;
                default: goto L18;
            }
        L18:
            goto L7f
        L1a:
            java.lang.String r1 = "Circle"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6c
            goto L7f
        L23:
            java.lang.String r1 = "LineString"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L2c
            goto L7f
        L2c:
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.m33974g(r4)
            goto L83
        L31:
            java.lang.String r1 = "WaveLine"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L3a
            goto L7f
        L3a:
            float r0 = r3.getStrokeWidth()
            r4.setBitmapRectExpand(r0)
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.m33973f(r4)
            goto L83
        L46:
            java.lang.String r2 = "Curve"
            boolean r0 = r0.equals(r2)
            if (r0 != 0) goto L4f
            goto L7f
        L4f:
            com.onyx.android.sdk.base.data.TouchPointList r0 = new com.onyx.android.sdk.base.data.TouchPointList
            r2 = 1
            java.util.List r3 = m33965r(r3, r1, r2, r1)
            r0.<init>(r3)
            r4.setPointList(r0)
            com.onyx.android.sdk.note.common.shape.graphical.PolyLineShape$Companion r3 = com.onyx.android.sdk.note.common.shape.graphical.PolyLineShape.INSTANCE
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.createPdfShape(r4)
            goto L83
        L63:
            java.lang.String r1 = "Oval"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L6c
            goto L7f
        L6c:
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.m33976i(r4)
            goto L83
        L71:
            java.lang.String r1 = "Rectangle"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L7a
            goto L7f
        L7a:
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.m33977j(r4)
            goto L83
        L7f:
            com.onyx.android.sdk.neopdf.PdfShapeInfo r3 = r3.m33973f(r4)
        L83:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.note.common.shape.universal.UniversalShape.m33975h(com.onyx.android.sdk.note.common.pdf.EmbedShapeBean):com.onyx.android.sdk.neopdf.PdfShapeInfo");
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x, float y, float radius) {
        List<TouchPoint> listOf;
        listOf = CollectionsKt__CollectionsJVMKt.listOf(new TouchPoint(x, y));
        return hitTestPathRegion(listOf, radius, m33987x());
    }

    public final boolean hitTestPathRegion(@NotNull List<TouchPoint> pointsInPage, float hitTestRadiusInPage, boolean fillPath) {
        Intrinsics.checkNotNullParameter(pointsInPage, "pointsInPage");
        return PathKt.hitTestPath(PathKt.concatTransform(m33985v(fillPath), getShapeMatrix()), pointsInPage, Float.valueOf(hitTestRadiusInPage), Float.valueOf(m33972e() * 2), fillPath);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTestPoints(@NotNull TouchPointList pointList, float radius) {
        Intrinsics.checkNotNullParameter(pointList, "pointList");
        boolean hitTestPathRegion = hitTestPathRegion(pointList.getPoints(), radius, m33987x());
        this.renderPointMap.clear();
        return hitTestPathRegion;
    }

    /* renamed from: i */
    public final PdfShapeInfo m33976i(EmbedShapeBean embedShapeBean) {
        if (!ShapeUtils.INSTANCE.isIgnoreFill(embedShapeBean.getFillColor())) {
            return m33973f(embedShapeBean);
        }
        PdfShapeInfo createPdfShape = CircleShape.INSTANCE.createPdfShape(embedShapeBean);
        RectF boundRect = GeometryUtils.INSTANCE.boundRect(getSelectionPoints());
        PdfShapeConvertUtils pdfShapeConvertUtils = PdfShapeConvertUtils.INSTANCE;
        pdfShapeConvertUtils.setTransformMatrix(createPdfShape, pdfShapeConvertUtils.getTransformRectF(embedShapeBean, boundRect));
        RectF rect = createPdfShape.getRect();
        if (rect != null) {
            RectKt.expand(rect, embedShapeBean.getRenderStrokeWidth() / 2);
        }
        return createPdfShape;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public boolean isFillColorEnabled() {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            return featureCollection.isEnableFillColor();
        }
        return false;
    }

    public final boolean isFillColorSupported() {
        FeatureCollection featureCollection = getFeatureCollection();
        return featureCollection != null && featureCollection.isFillColorSupported();
    }

    public final boolean isLineStyleEditable() {
        List listOf;
        FeatureCollection featureCollection = getFeatureCollection();
        boolean z = false;
        if (featureCollection == null || m33967A(featureCollection)) {
            return false;
        }
        String universalShapeType = featureCollection.getUniversalShapeType();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(UniversalShapeTypeConst.DASH_LINE);
        if (listOf.contains(universalShapeType)) {
            return false;
        }
        Feature[] features = featureCollection.getFeatures();
        int length = features.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            }
            LineStyle lineStyle = features[i].getProperties().getLineStyle();
            if (!((lineStyle == null || lineStyle.getEditable()) ? false : true)) {
                break;
            }
            i++;
        }
        return !z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: j */
    public final PdfShapeInfo m33977j(EmbedShapeBean embedShapeBean) {
        Object firstOrNull;
        Object orNull;
        List listOfNotNull;
        if (!ShapeUtils.INSTANCE.isIgnoreFill(embedShapeBean.getFillColor())) {
            return m33973f(embedShapeBean);
        }
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) getPoints().getPoints());
        orNull = CollectionsKt___CollectionsKt.getOrNull(getPoints().getPoints(), 2);
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new TouchPoint[]{firstOrNull, orNull});
        TouchPointList touchPointList = new TouchPointList((List<TouchPoint>) listOfNotNull);
        if (touchPointList.size() < 2) {
            touchPointList = getPoints();
        }
        embedShapeBean.setPointList(touchPointList);
        return RectangleShape.INSTANCE.createPdfShape(embedShapeBean);
    }

    /* renamed from: k */
    public final PdfShapeInfo m33978k(EmbedShapeBean embedShapeBean) {
        if (ShapePersistOptionsKt.getSubShapeType$default(this, 0, 1, null) == 46) {
            return m33973f(embedShapeBean);
        }
        return null;
    }

    /* renamed from: l */
    public final List<Feature> m33979l(Feature[] features, List<Feature> nodes) {
        if (nodes == null) {
            nodes = new ArrayList<>();
        }
        for (Feature feature : features) {
            if (feature instanceof SurfaceFeature) {
                m33979l(((SurfaceFeature) feature).getFeatureCollection().getFeatures(), nodes);
            } else {
                nodes.add(feature);
            }
        }
        return nodes;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean lowLatencyRender(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        return render(renderContext);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.collections.IntIterator, java.util.Iterator] */
    /* renamed from: n */
    public final Float m33980n() {
        int lastIndex;
        FeatureCollection featureCollection = getFeatureCollection();
        Feature[] features = featureCollection != null ? featureCollection.getFeatures() : null;
        if (!ArraysKt.isNotEmpty(features)) {
            features = null;
        }
        if (features == null) {
            return null;
        }
        if (features.length == 0) {
            throw new NoSuchElementException();
        }
        StrokeAttr strokeAttr = features[0].getProperties().getStrokeAttr();
        float width = strokeAttr != null ? strokeAttr.getWidth() : 2.0f;
        lastIndex = ArraysKt___ArraysKt.getLastIndex(features);
        ?? it2 = new IntRange(1, lastIndex).iterator();
        while (it2.hasNext()) {
            StrokeAttr strokeAttr2 = features[it2.nextInt()].getProperties().getStrokeAttr();
            width = Math.max(width, strokeAttr2 != null ? strokeAttr2.getWidth() : 2.0f);
        }
        return Float.valueOf(width);
    }

    /* renamed from: o */
    public final List<TouchPoint> m33981o(Matrix matrix) {
        List<TouchPoint> list = this.renderPointMap.get(MatrixKt.copy(matrix));
        if (list != null) {
            return list;
        }
        this.renderPointMap.clear();
        List<TouchPoint> m33982q = m33982q(matrix);
        this.renderPointMap.put(MatrixKt.copy(matrix), m33982q);
        return m33982q;
    }

    /* renamed from: q */
    public final List<TouchPoint> m33982q(Matrix matrix) {
        List<TouchPoint> emptyList;
        Feature[] features;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection == null || (features = featureCollection.getFeatures()) == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        ArrayList<Path> arrayList = new ArrayList(features.length);
        for (Feature feature : features) {
            arrayList.add(feature.loadRenderPath());
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (Path path : arrayList) {
            if (matrix != null) {
                path.transform(matrix);
            }
            arrayList2.add(path);
        }
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10);
        ArrayList arrayList3 = new ArrayList(collectionSizeOrDefault2);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            arrayList3.add(TouchPoint.Companion.parseTouchPointsFromPath$default(TouchPoint.INSTANCE, (Path) it2.next(), 0, 2, null));
        }
        Stream stream = arrayList3.stream();
        final UniversalShape$getFeaturesRenderPathPoints$4 universalShape$getFeaturesRenderPathPoints$4 = new Function1<List<? extends TouchPoint>, Stream<? extends TouchPoint>>() { // from class: com.onyx.android.sdk.note.common.shape.universal.UniversalShape$getFeaturesRenderPathPoints$4
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Stream<? extends TouchPoint> invoke(List<? extends TouchPoint> list) {
                return invoke2((List<TouchPoint>) list);
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Stream<? extends TouchPoint> invoke2(List<TouchPoint> list) {
                return list.stream();
            }
        };
        Object collect = stream.flatMap(new Function() { // from class: com.sunia.HTREnginev2.atn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m33966s;
                m33966s = UniversalShape.m33966s(Function1.this, obj);
                return m33966s;
            }
        }).collect(Collectors.toList());
        Intrinsics.checkNotNullExpressionValue(collect, "collect(...)");
        return (List) collect;
    }

    @Override // com.onyx.android.sdk.note.common.shape.ShapeRender
    public boolean render(@NotNull RenderContext renderContext) {
        Feature[] features;
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection == null || (features = featureCollection.getFeatures()) == null) {
            return false;
        }
        m33968B();
        if (!isIntersectClipRect(renderContext)) {
            return false;
        }
        m33989z(features, renderContext);
        for (Feature feature : features) {
            m33988y(renderContext, feature);
        }
        return true;
    }

    public final void scaleSelectionPoints(float scaleX, float scaleY) {
        Feature[] features;
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection == null || (features = featureCollection.getFeatures()) == null) {
            return;
        }
        for (Feature feature : features) {
            feature.scaleSelectionPoints(scaleX, scaleY);
        }
    }

    public final void setFeatureCollection(@Nullable FeatureCollection featureCollection) {
        this.featureCollection = featureCollection;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setFillColor(int i) {
        this.fillColor = i;
        if (m33987x()) {
            m33969b(i);
            updateFeature();
        }
    }

    public final void setFillColorSupported(boolean supported) {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            featureCollection.setFillColorSupported(supported);
        }
        updateFeature();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setLineStyle(int type) {
        Feature[] featureArr;
        if (isLineStyleEditable()) {
            FeatureCollection featureCollection = getFeatureCollection();
            if (featureCollection == null || (featureArr = featureCollection.getFeatures()) == null) {
                featureArr = new Feature[0];
            }
            for (Feature feature : m33963m(this, featureArr, null, 2, null)) {
                LineStyle lineStyle = feature.getProperties().getLineStyle();
                if (lineStyle == null) {
                    lineStyle = new LineStyle();
                }
                if (!lineStyle.getEditable()) {
                    LineStyle lineStyle2 = feature.getProperties().getLineStyle();
                    int type2 = lineStyle2 != null ? lineStyle2.getType() : 0;
                    LineStyle lineStyle3 = feature.getProperties().getLineStyle();
                    if (lineStyle3 != null) {
                        lineStyle3.setDashLineIntervals(LineStyleTypes.INSTANCE.getDashIntervalsArray(type2, getStrokeWidth(), getStrokeWidth()));
                    }
                } else if (type == 0) {
                    feature.getProperties().setLineStyle(null);
                } else {
                    lineStyle.setType(type);
                    lineStyle.setDashLineIntervals(LineStyleTypes.INSTANCE.getDashIntervalsArray(type, getStrokeWidth(), getStrokeWidth()));
                    feature.getProperties().setLineStyle(lineStyle);
                }
            }
            updateFeature();
        }
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public void setPoints(@NotNull TouchPointList touchPointList) {
        Intrinsics.checkNotNullParameter(touchPointList, "<set-?>");
        this.points = touchPointList;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeColor(int i) {
        this.strokeColor = i;
        m33970c(i);
        updateFeature();
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeStyle
    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        applyStrokeWidth(f);
        updateFeature();
        setLineStyle(getLineStyle());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void setType(int i) {
        this.type = i;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    @NotNull
    public SplitShapeResult split(@NotNull EraseBean eraseBean) {
        Feature[] features;
        Object first;
        List<IGeometry> splitShapes;
        List<TouchPoint> mutableList;
        Intrinsics.checkNotNullParameter(eraseBean, "eraseBean");
        SplitShapeResult splitShapeResult = new SplitShapeResult();
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null && (features = featureCollection.getFeatures()) != null) {
            first = ArraysKt___ArraysKt.first(features);
            if (((Feature) first) != null) {
                com.onyx.android.sdk.genericshape.erase.EraseBean eraseBean2 = new com.onyx.android.sdk.genericshape.erase.EraseBean();
                List<TouchPoint> erasePoints = eraseBean.getErasePoints();
                eraseBean2.setErasePoints(erasePoints != null ? CollectionsKt___CollectionsKt.toMutableList((Collection) erasePoints) : null);
                eraseBean2.setEraseRadius(eraseBean.getEraseRadius() + m33972e());
                eraseBean2.setTargetShapeMatrix(getShapeMatrix());
                Shape eraseShape = eraseBean.getEraseShape();
                if (eraseShape != null) {
                    eraseBean2.setAreaErase(true);
                    mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) eraseShape.getPoints().getPoints());
                    eraseBean2.setErasePoints(mutableList);
                }
                FeatureCollection featureCollection2 = getFeatureCollection();
                com.onyx.android.sdk.genericshape.erase.SplitShapeResult split = featureCollection2 != null ? featureCollection2.split(eraseBean2) : null;
                ArrayList arrayList = new ArrayList();
                if (split != null && (splitShapes = split.getSplitShapes()) != null) {
                    for (IGeometry iGeometry : splitShapes) {
                        Shape clone = ShapeCopyUtils.INSTANCE.clone(this);
                        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.universal.UniversalShape");
                        UniversalShape universalShape = (UniversalShape) clone;
                        Intrinsics.checkNotNull(iGeometry, "null cannot be cast to non-null type com.onyx.android.sdk.genericshape.FeatureCollection");
                        universalShape.featureCollection = (FeatureCollection) iGeometry;
                        universalShape.setStrokeWidth(getStrokeWidth());
                        universalShape.setStrokeColor(getStrokeColor());
                        universalShape.setFillColorSupported(false);
                        universalShape.resetConnection();
                        universalShape.updateFeature();
                        universalShape.postConcat(new Matrix());
                        CollectionKt.safeAdd(arrayList, universalShape);
                    }
                }
                splitShapeResult.setSplitShapes(arrayList);
                splitShapeResult.setShapeErased(arrayList.isEmpty());
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (obj instanceof UniversalShape) {
                        arrayList2.add(obj);
                    }
                }
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((UniversalShape) it2.next()).updateUniversalShapeType();
                }
            }
        }
        return splitShapeResult;
    }

    public final boolean supportPathFill() {
        List listOf;
        FeatureCollection featureCollection = getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"line", UniversalShapeTypeConst.WAVE_LINE, UniversalShapeTypeConst.CURVE, UniversalShapeTypeConst.DASH_LINE, UniversalShapeTypeConst.DIRECTION_LINE, UniversalShapeTypeConst.BIDIRECTIONAL_LINE, UniversalShapeTypeConst.CURVY_ARROW, UniversalShapeTypeConst.BIDIRECTIONAL_CURVY_ARROW, "angle", UniversalShapeTypeConst.AXIS, UniversalShapeTypeConst.THREE_DIMENSIONAL_COORDINATE, UniversalShapeTypeConst.BRACKET});
        return !listOf.contains(universalShapeType);
    }

    /* renamed from: t */
    public final Integer m33983t() {
        Object firstOrNull;
        Properties properties;
        StrokeAttr strokeAttr;
        FeatureCollection featureCollection = getFeatureCollection();
        Feature[] features = featureCollection != null ? featureCollection.getFeatures() : null;
        if (!ArraysKt.isNotEmpty(features)) {
            features = null;
        }
        if (features == null) {
            return null;
        }
        firstOrNull = ArraysKt___ArraysKt.firstOrNull(features);
        Feature feature = (Feature) firstOrNull;
        if (feature == null || (properties = feature.getProperties()) == null || (strokeAttr = properties.getStrokeAttr()) == null) {
            return null;
        }
        return Integer.valueOf(strokeAttr.getColor());
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeConvert
    @NotNull
    public PdfShapeInfo toPdfShape(@NotNull EmbedShapeBean embedShapeBean) {
        Intrinsics.checkNotNullParameter(embedShapeBean, "embedShapeBean");
        PdfShapeInfo m33978k = m33978k(embedShapeBean);
        if (m33978k == null) {
            m33978k = m33975h(embedShapeBean);
        }
        m33978k.applyMultiplyBlendMode(m33986w());
        m33978k.applyLineCapJoinStyle(ShapePersistOptionsKt.isRoundCorner(this));
        return m33978k;
    }

    /* renamed from: u */
    public final GeoRenderContext m33984u(RenderContext renderContext) {
        GeoRenderContext geoRenderContext = new GeoRenderContext(renderContext.getCanvas());
        Matrix renderMatrix = getRenderMatrix(renderContext);
        geoRenderContext.setRenderMatrix(renderContext.getMatrix());
        renderMatrix.postConcat(MatrixKt.invertMatrix(renderContext.getMatrix()));
        geoRenderContext.setShapeMatrix(renderMatrix);
        return geoRenderContext;
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public boolean underContent() {
        return ShapePersistOptionsKt.isUnderContent$default(this, false, 1, null);
    }

    public final void updateBySelectionPoints(@NotNull List<TouchPoint> list, boolean forceUpdate) {
        SelectionPointType selectionPointType;
        FeatureCollection featureCollection;
        Feature[] features;
        Properties properties;
        Intrinsics.checkNotNullParameter(list, "list");
        FeatureCollection featureCollection2 = getFeatureCollection();
        if (featureCollection2 == null || (properties = featureCollection2.getProperties()) == null || (selectionPointType = properties.getSelectionPointType()) == null) {
            selectionPointType = SelectionPointType.SCALE;
        }
        if ((!forceUpdate && selectionPointType == SelectionPointType.SCALE) || (featureCollection = getFeatureCollection()) == null || (features = featureCollection.getFeatures()) == null) {
            return;
        }
        for (Feature feature : features) {
            feature.updateBySelectionPoints(list);
        }
    }

    public final void updateFeature() {
        ShapeExtraBean extraBean;
        if (getExtraBean() == null) {
            setExtraBean(new ShapeExtraBean());
        }
        if (getFeatureCollection() == null || (extraBean = getExtraBean()) == null) {
            return;
        }
        extraBean.setFeatureCollection(JSONUtils.INSTANCE.toJson(getFeatureCollection()));
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapeAttributes
    public void updateShapeRect() {
        super.updateShapeRect();
        this.renderPointMap.clear();
    }

    public final void updateUniversalShapeType() {
        FeatureCollection featureCollection;
        Feature[] features;
        FeatureCollection featureCollection2 = getFeatureCollection();
        String universalShapeType = featureCollection2 != null ? featureCollection2.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        if ((universalShapeType.length() > 0) || (featureCollection = getFeatureCollection()) == null || (features = featureCollection.getFeatures()) == null) {
            return;
        }
        String m33990a = INSTANCE.m33990a(features);
        FeatureCollection featureCollection3 = getFeatureCollection();
        if (featureCollection3 == null) {
            return;
        }
        featureCollection3.setUniversalShapeType(m33990a);
    }

    /* renamed from: v */
    public final Path m33985v(boolean fillPath) {
        Feature[] features;
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection == null || (features = featureCollection.getFeatures()) == null) {
            return new Path();
        }
        Path path = new Path();
        for (Feature feature : features) {
            if (!supportPathFill()) {
                path.addPath(feature.loadRenderPath());
            } else if (fillPath) {
                path.op(feature.getFillPath(), Path.Op.UNION);
            } else {
                path.addPath(feature.loadRenderPath());
            }
        }
        return path;
    }

    /* renamed from: w */
    public final boolean m33986w() {
        return underContent() && ShapePersistOptionsKt.isBottom(this);
    }

    /* renamed from: x */
    public final boolean m33987x() {
        FeatureCollection featureCollection = getFeatureCollection();
        if (featureCollection != null) {
            return featureCollection.isEnableFillColor();
        }
        return false;
    }

    /* renamed from: y */
    public final void m33988y(RenderContext renderContext, Feature feature) {
        StrokeAttr strokeAttr = feature.getProperties().getStrokeAttr();
        if (strokeAttr != null) {
            strokeAttr.setRoundCorner(ShapePersistOptionsKt.isRoundCorner(this));
        }
        feature.getProperties().setUnderContent(m33986w());
        feature.setFromShapeType(ShapePersistOptionsKt.getSubShapeType(this, -1));
        GeoRenderContext m33984u = m33984u(renderContext);
        if (ShapeOptions.INSTANCE.isTransparent(this)) {
            feature.erase(m33984u);
        } else {
            feature.draw(m33984u);
        }
    }

    /* renamed from: z */
    public final void m33989z(Feature[] features, RenderContext renderContext) {
        Feature feature;
        int length = features.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                feature = null;
                break;
            }
            feature = features[i];
            if (feature.isEnableFill()) {
                break;
            } else {
                i++;
            }
        }
        if (feature == null) {
            return;
        }
        feature.getProperties().setUnderContent(m33986w());
        Path m33985v = m33985v(true);
        GeoRenderContext m33984u = m33984u(renderContext);
        Paint loadStrokePaint = feature.loadStrokePaint(m33984u.getMatrix());
        FillAttr fillAttr = feature.getProperties().getFillAttr();
        if (fillAttr != null) {
            loadStrokePaint.setColor(feature.transformColor(fillAttr.getColor()));
        }
        loadStrokePaint.setStyle(Paint.Style.FILL);
        m33985v.transform(m33984u.getMatrix());
        renderContext.getCanvas().drawPath(m33985v, loadStrokePaint);
    }

    @Override // com.onyx.android.sdk.note.common.shape.BaseShape, com.onyx.android.sdk.note.common.shape.ShapePoints
    public boolean hitTest(float x1, float y1, float x2, float y2) {
        List<TouchPoint> m33981o = m33981o(getShapeMatrix());
        int size = m33981o.size() - 1;
        int i = 0;
        while (i < size) {
            TouchPoint touchPoint = m33981o.get(i);
            i++;
            TouchPoint touchPoint2 = m33981o.get(i);
            if (HitTestUtils.INSTANCE.hitTestLine(x1, y1, x2, y2, touchPoint.getX(), touchPoint.getY(), touchPoint2.getX(), touchPoint2.getY())) {
                return true;
            }
        }
        return super.hitTest(x1, y1, x2, y2);
    }

    public final void updateFeature(@NotNull String featureStr) {
        Intrinsics.checkNotNullParameter(featureStr, "featureStr");
        if (getExtraBean() == null) {
            setExtraBean(new ShapeExtraBean());
        }
        ShapeExtraBean extraBean = getExtraBean();
        if (extraBean != null) {
            extraBean.setFeatureCollection(featureStr);
        }
        this.featureCollection = null;
        setStrokeColor(getStrokeColor());
        updateShapeRect();
    }
}
