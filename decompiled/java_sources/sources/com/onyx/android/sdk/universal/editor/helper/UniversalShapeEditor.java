package com.onyx.android.sdk.universal.editor.helper;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.data.TouchPointList;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.utils.ColorUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.genericshape.CreateAttr;
import com.onyx.android.sdk.genericshape.Feature;
import com.onyx.android.sdk.genericshape.FeatureCollection;
import com.onyx.android.sdk.genericshape.GeoJsonKt;
import com.onyx.android.sdk.genericshape.Geometry;
import com.onyx.android.sdk.genericshape.Polygon;
import com.onyx.android.sdk.genericshape.Properties;
import com.onyx.android.sdk.genericshape.SelectionPointType;
import com.onyx.android.sdk.genericshape.WaveAttr;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.geometry.data.GuideLineKt;
import com.onyx.android.sdk.geometry.data.Guideline;
import com.onyx.android.sdk.geometry.data.ShapeGuideLineConsumeResult;
import com.onyx.android.sdk.geometry.data.TouchData;
import com.onyx.android.sdk.geometry.data.TouchPointPair;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.BoxInfoUtils;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.note.common.data.render.RenderContext;
import com.onyx.android.sdk.note.common.data.selection.SelectionRect;
import com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean;
import com.onyx.android.sdk.note.common.data.shape.ShapeRatioCalculator;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeAttr;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.correct.ShapeCorrectionArgs;
import com.onyx.android.sdk.note.common.shape.correct.ShapeCorrectorFactory;
import com.onyx.android.sdk.note.common.shape.extras.ShapeExtrasRenderFactory;
import com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractorFactory;
import com.onyx.android.sdk.note.common.shape.outline.GuideLineExtractorKt;
import com.onyx.android.sdk.note.common.shape.universal.UniversalShape;
import com.onyx.android.sdk.note.common.utils.ShapeRectUtils;
import com.onyx.android.sdk.note.common.utils.UniversalShapeUtils;
import com.onyx.android.sdk.note.extension.PhysiceExtKt;
import com.onyx.android.sdk.replicator.note.data.pen.PenArgs;
import com.onyx.android.sdk.replicator.note.data.shape.ShapeExtraBean;
import com.onyx.android.sdk.rxgesture.VelocityTrackerWrapper;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.display.RotationHandleHelper;
import com.onyx.android.sdk.universal.editor.display.RotationHandleRender;
import com.onyx.android.sdk.universal.editor.display.RotationHandleRenderKt;
import com.onyx.android.sdk.universal.editor.display.ShapeGuideLineRender;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.handler.drag.ShapeDragHandlerProvider;
import com.onyx.android.sdk.universal.theme.UniversalThemeUtils;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0080\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001:\u0002Ê\u0001B\u0011\u0012\u0006\u0010l\u001a\u00020j¢\u0006\u0006\bÈ\u0001\u0010É\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\f\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u0002H\u0002J\"\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\"\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00122\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\u001a\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010 \u001a\u00020\u001f2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\u0002H\u0002J\b\u0010\"\u001a\u00020\u0007H\u0002J\b\u0010#\u001a\u00020\u0007H\u0002J\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$H\u0002J\b\u0010'\u001a\u00020\u0002H\u0002J \u0010.\u001a\u00020\u00072\u0006\u0010)\u001a\u00020(2\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0002J\u0018\u0010/\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,H\u0002J\b\u00100\u001a\u00020\u0014H\u0002J\b\u00101\u001a\u00020\u0007H\u0002J\b\u00102\u001a\u00020\u0007H\u0002J\b\u00103\u001a\u00020\u0010H\u0002J\b\u00104\u001a\u00020\u0007H\u0002J\b\u00105\u001a\u00020\u0002H\u0002J\u0010\u00106\u001a\u00020,2\u0006\u0010\u0006\u001a\u00020\u0004H\u0002J\u0010\u00109\u001a\u00020\u00122\u0006\u00108\u001a\u000207H\u0002J\b\u0010;\u001a\u0004\u0018\u00010:J\u0006\u0010<\u001a\u00020,J\u001e\u0010@\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010>\u001a\u00020=2\u0006\u0010?\u001a\u00020\u0014J\u000e\u0010C\u001a\u00020\u00072\u0006\u0010B\u001a\u00020AJ\u0010\u0010F\u001a\u00020\u00072\b\u0010E\u001a\u0004\u0018\u00010DJ\u000e\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020GJ\u000e\u0010K\u001a\u00020\u00142\u0006\u0010J\u001a\u00020\u0002J\u000e\u0010L\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010M\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010N\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0002J\u0006\u0010O\u001a\u00020\u0007J\u0006\u0010P\u001a\u00020\u0007J\u0006\u0010Q\u001a\u00020\u0014J\u0006\u0010R\u001a\u00020\u0014J\u0006\u0010S\u001a\u00020\u0014J\u0006\u0010T\u001a\u00020\u0014J\u0006\u0010U\u001a\u00020\u0014J\u0006\u0010V\u001a\u00020\u0014J\u0006\u0010W\u001a\u00020\u0014J\u0006\u0010X\u001a\u00020\u0007J\u0016\u0010Y\u001a\u00020\u00142\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014J\u001a\u0010Z\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010,J\u0018\u0010[\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\b\b\u0002\u0010-\u001a\u00020,J\u000e\u0010\\\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*J\u000e\u0010]\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*J\u0016\u0010^\u001a\u00020\u00072\u0006\u0010+\u001a\u00020*2\u0006\u0010-\u001a\u00020,J\u000e\u0010a\u001a\u00020\u00072\u0006\u0010`\u001a\u00020_J\b\u0010c\u001a\u0004\u0018\u00010bJ\u0006\u0010d\u001a\u00020bJ\u0006\u0010e\u001a\u00020bJ\u0006\u0010f\u001a\u00020\u0007J\u000e\u0010g\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020\u0002R\u0014\u0010l\u001a\u00020j8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010kR$\u0010r\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010m\u001a\u0004\bn\u0010o\"\u0004\bp\u0010qR(\u0010x\u001a\b\u0012\u0004\u0012\u00020%0$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010s\u001a\u0004\bt\u0010u\"\u0004\bv\u0010wR\u0014\u0010{\u001a\u00020y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010zR\u0014\u0010~\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u0010}R\u0017\u0010\u0080\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u0010\u007fR'\u0010\u0085\u0001\u001a\u00020,8\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0004\b'\u0010\u007f\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R*\u0010\u008b\u0001\u001a\u0004\u0018\u00010D8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b9\u0010\u0086\u0001\u001a\u0006\b\u0087\u0001\u0010\u0088\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R\u0018\u0010\u008d\u0001\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0011\u0010\u008c\u0001R\u0019\u0010\u0090\u0001\u001a\u00030\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010\u008f\u0001R\u0017\u0010\u0091\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010#R\u001d\u0010\u0092\u0001\u001a\b\u0012\u0004\u0012\u00020\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010sR\u001a\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\f\u0010\u0093\u0001R\u0018\u0010\u0095\u0001\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b&\u0010\u008c\u0001R\u0019\u0010\u0098\u0001\u001a\u00030\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u000f\u0010\u0097\u0001R\u0017\u0010\u0099\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u00102R\u0018\u0010\u009b\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u00102R\u0018\u0010\u009c\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0016\u0010\u0093\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0093\u0001R(\u0010¤\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0017\u0010\u009f\u0001\u001a\u0006\b \u0001\u0010¡\u0001\"\u0006\b¢\u0001\u0010£\u0001R\u001a\u0010¨\u0001\u001a\u00030¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0018\u0010ª\u0001\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b0\u0010©\u0001R\u0019\u0010\u00ad\u0001\u001a\u00030«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\b\u0010¬\u0001R\u0019\u0010®\u0001\u001a\u00030«\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\n\u0010¬\u0001R\u0017\u0010¯\u0001\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u00102R\u001a\u0010±\u0001\u001a\u0004\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001d\u0010°\u0001R\u0017\u0010²\u0001\u001a\u00020,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u007fR,\u0010¶\u0001\u001a\t\u0012\u0005\u0012\u00030³\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001a\u0010s\u001a\u0005\b´\u0001\u0010u\"\u0005\bµ\u0001\u0010wR\u0017\u0010`\u001a\u00020_8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001c\u0010·\u0001R\u0017\u0010º\u0001\u001a\u00030¸\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b1\u0010¹\u0001R\u0017\u0010½\u0001\u001a\u00030»\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\r\u0010¼\u0001R\u0017\u0010À\u0001\u001a\u00030¾\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b2\u0010¿\u0001R\u0017\u0010Ã\u0001\u001a\u00030Á\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\"\u0010Â\u0001R\u0018\u0010Ä\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b4\u0010\u0093\u0001R\u0018\u0010Å\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010\u0093\u0001R\u0019\u0010Ç\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u0093\u0001¨\u0006Ë\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor;", "", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "touchPointInPage", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "b", "universalShape", "", "w", "touchPoint", "x", "l", "m", "E", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", C4921e.f26528e, "", "i", "", "hotRadius", "", "isTryMode", "r", "t", "p", "A", "B", "c", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "z", "lastPointInPage", "Lcom/onyx/android/sdk/geometry/data/ShapeGuideLineConsumeResult;", "a", "y", "G", "I", "", "Lcom/onyx/android/sdk/geometry/data/Guideline;", GoogleApiAvailabilityLight.f29016b, C6998g.f39679a, "Lcom/onyx/android/sdk/genericshape/Polygon;", "polygon", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Matrix;", "renderMatrix", "d", "e", "v", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "F", C6997f.f39671c, "H", C4921e.f26537n, "j", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "penArgs", C6999h.f39688c, "", "getFeatureCollectionStr", "getFeatureMatrix", "Lcom/onyx/android/sdk/geometry/data/TouchData;", "upTouchData", "editImmediately", "onShapeEdit", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;", "attr", "updateShapeAttr", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "virtualBoxInfo", "updateVirtualBoxInfo", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "point", "onInterceptTouchDown", "onShapeDown", "onShapeMove", "onShapeUp", "correctShapeByGuideLine", "clearGuideLine", "isAddMode", "isEditMode", "isUndefinedMode", "isUndefinedTransformAction", "isWaitingEdit", "isDragAction", "isScaleAction", Constants.CLEAR_ATTRIBUTES, "hitTestByPriority", "drawSelectionPoints", "drawAngles", "drawRotationHandle", "drawGuidelines", "drawExtraShapeContent", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "renderContext", "updateRenderContext", "Landroid/graphics/RectF;", "getShapeRectFWithWidth", "getShapeRectInPage", "getShapeRectInRender", "onThemeUpdated", "convertTouchPointFromPageToRender", "touchPointInRender", "convertTouchPointFromRenderToPage", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "getShape", "()Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;", "setShape", "(Lcom/onyx/android/sdk/note/common/shape/universal/UniversalShape;)V", "shape", "Ljava/util/List;", "getGuidelines", "()Ljava/util/List;", "setGuidelines", "(Ljava/util/List;)V", "guidelines", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "touchVelocityTracker", "Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;", "Lcom/onyx/android/sdk/universal/editor/helper/TouchDebouncer;", "touchDebouncer", "Landroid/graphics/Matrix;", "transformMatrix", "getBoxMatrix", "()Landroid/graphics/Matrix;", "setBoxMatrix", "(Landroid/graphics/Matrix;)V", "boxMatrix", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "boxInfo", "Landroid/graphics/RectF;", "limitRect", "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;", "Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;", "editMode", "selectionPointIndex", "selectionPoints", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "hitTestSelectionPoint", "shapeRectF", "Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "Lcom/onyx/android/sdk/genericshape/SelectionPointType;", "selectionPointType", "selectionPointRadius", "q", "hitTestRadius", "lastPoint", "s", "donePoint", "Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "getTransformAction", "()Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;", "setTransformAction", "(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformAction;)V", "transformAction", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "u", "Lcom/onyx/android/sdk/note/common/data/shape/UniversalShapeAttr;", "universalShapeAttr", "Lcom/onyx/android/sdk/replicator/note/data/pen/PenArgs;", "universalShapeArgs", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "selectionPointFillPaint", "selectionPointStrokePaint", "strokeWidthInPage", Constants.STRING_SIG, "featureCollectionStr", "featureMatrix", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "getReferenceShapes", "setReferenceShapes", "referenceShapes", "Lcom/onyx/android/sdk/note/common/data/render/RenderContext;", "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;", "Lcom/onyx/android/sdk/universal/editor/display/RotationHandleRender;", "rotationHandleRender", "Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;", "Lcom/onyx/android/sdk/universal/editor/helper/PolygonAnglePainter;", "polygonAnglePainter", "Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;", "Lcom/onyx/android/sdk/universal/editor/helper/SingleAnglePainter;", "singleAnglePainter", "Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;", "Lcom/onyx/android/sdk/universal/editor/display/ShapeGuideLineRender;", "guideLineRender", "rotationStart", "rotationCenter", "J", "creationStart", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "Mode", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUniversalShapeEditor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,896:1\n1864#2,3:897\n2310#2,14:900\n1855#2,2:914\n350#2,7:918\n13309#3,2:916\n1#4:925\n*S KotlinDebug\n*F\n+ 1 UniversalShapeEditor.kt\ncom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor\n*L\n283#1:897,3\n490#1:900,14\n651#1:914,2\n798#1:918,7\n676#1:916,2\n*E\n"})
/* loaded from: classes8.dex */
public final class UniversalShapeEditor {

    /* renamed from: A, reason: from kotlin metadata */
    @NotNull
    public Matrix featureMatrix;

    /* renamed from: B, reason: from kotlin metadata */
    @NotNull
    public List<? extends Shape> referenceShapes;

    /* renamed from: C, reason: from kotlin metadata */
    @NotNull
    public RenderContext renderContext;

    /* renamed from: D, reason: from kotlin metadata */
    @NotNull
    public final RotationHandleRender rotationHandleRender;

    /* renamed from: E, reason: from kotlin metadata */
    @NotNull
    public final PolygonAnglePainter polygonAnglePainter;

    /* renamed from: F, reason: from kotlin metadata */
    @NotNull
    public final SingleAnglePainter singleAnglePainter;

    /* renamed from: G, reason: from kotlin metadata */
    @NotNull
    public final ShapeGuideLineRender guideLineRender;

    /* renamed from: H, reason: from kotlin metadata */
    @NotNull
    public TouchPoint rotationStart;

    /* renamed from: I, reason: from kotlin metadata */
    @NotNull
    public TouchPoint rotationCenter;

    /* renamed from: J, reason: from kotlin metadata */
    @NotNull
    public TouchPoint creationStart;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final EditorBundle editorBundle;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public UniversalShape shape;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<Guideline> guidelines;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final VelocityTrackerWrapper touchVelocityTracker;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final TouchDebouncer touchDebouncer;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public Matrix transformMatrix;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public Matrix boxMatrix;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public BoxInfo boxInfo;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public RectF limitRect;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public Mode editMode;

    /* renamed from: k, reason: from kotlin metadata */
    public int selectionPointIndex;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public List<TouchPoint> selectionPoints;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public TouchPoint hitTestSelectionPoint;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public RectF shapeRectF;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public SelectionPointType selectionPointType;

    /* renamed from: p, reason: from kotlin metadata */
    public float selectionPointRadius;

    /* renamed from: q, reason: from kotlin metadata */
    public float hitTestRadius;

    /* renamed from: r, reason: from kotlin metadata */
    @NotNull
    public TouchPoint lastPoint;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public TouchPoint donePoint;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public ShapeTransformAction transformAction;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public UniversalShapeAttr universalShapeAttr;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public PenArgs universalShapeArgs;

    /* renamed from: w, reason: from kotlin metadata */
    @NotNull
    public Paint selectionPointFillPaint;

    /* renamed from: x, reason: from kotlin metadata */
    @NotNull
    public Paint selectionPointStrokePaint;

    /* renamed from: y, reason: from kotlin metadata */
    public float strokeWidthInPage;

    /* renamed from: z, reason: from kotlin metadata */
    @Nullable
    public String featureCollectionStr;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/helper/UniversalShapeEditor$Mode;", "", "(Ljava/lang/String;I)V", "UNDEFINED", "ADD", "EDIT", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Mode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode UNDEFINED = new Mode("UNDEFINED", 0);
        public static final Mode ADD = new Mode("ADD", 1);
        public static final Mode EDIT = new Mode("EDIT", 2);

        private static final /* synthetic */ Mode[] $values() {
            return new Mode[]{UNDEFINED, ADD, EDIT};
        }

        static {
            Mode[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private Mode(String str, int i) {
        }

        @NotNull
        public static EnumEntries<Mode> getEntries() {
            return $ENTRIES;
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[SelectionPointType.values().length];
            try {
                iArr[SelectionPointType.SCALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionPointType.DRAG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Mode.values().length];
            try {
                iArr2[Mode.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[Mode.EDIT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[ShapeTransformAction.values().length];
            try {
                iArr3[ShapeTransformAction.ScaleXY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr3[ShapeTransformAction.Drag.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr3[ShapeTransformAction.Translate.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[ShapeTransformAction.Rotation.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    public UniversalShapeEditor(@NotNull EditorBundle editorBundle) {
        List<Guideline> emptyList;
        List<? extends Shape> emptyList2;
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        this.editorBundle = editorBundle;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.guidelines = emptyList;
        this.touchVelocityTracker = new VelocityTrackerWrapper();
        this.touchDebouncer = new TouchDebouncer();
        this.transformMatrix = new Matrix();
        this.boxMatrix = new Matrix();
        this.limitRect = new RectF();
        this.editMode = Mode.UNDEFINED;
        this.selectionPointIndex = -1;
        this.selectionPoints = new ArrayList();
        this.shapeRectF = new RectF();
        this.selectionPointType = SelectionPointType.SCALE;
        float dp2PxFloat = DimenUtils.INSTANCE.dp2PxFloat(5.0f);
        this.selectionPointRadius = dp2PxFloat;
        this.hitTestRadius = dp2PxFloat * 4;
        this.lastPoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.donePoint = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.transformAction = ShapeTransformAction.Undefined;
        this.universalShapeAttr = new UniversalShapeAttr();
        this.universalShapeArgs = new PenArgs(null, 0, 0.0f, 0, null, 31, null);
        Paint paint = new Paint();
        paint.setColor(-1);
        paint.setStyle(Paint.Style.FILL);
        this.selectionPointFillPaint = paint;
        Paint paint2 = new Paint();
        paint2.setStrokeWidth(2.0f);
        paint2.setColor(UniversalThemeUtils.INSTANCE.getThemePrimaryColor());
        paint2.setStyle(Paint.Style.STROKE);
        this.selectionPointStrokePaint = paint2;
        this.featureMatrix = new Matrix();
        emptyList2 = CollectionsKt__CollectionsKt.emptyList();
        this.referenceShapes = emptyList2;
        this.renderContext = new RenderContext();
        this.rotationHandleRender = new RotationHandleRender();
        this.polygonAnglePainter = new PolygonAnglePainter(0.0f, null, null, 7, null);
        this.singleAnglePainter = new SingleAnglePainter(0.0f, null, null, 7, null);
        this.guideLineRender = new ShapeGuideLineRender();
        this.rotationStart = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.rotationCenter = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
        this.creationStart = new TouchPoint(0.0f, 0.0f, 0.0f, 0.0f, 0, 0, 0L, 127, null);
    }

    public static /* synthetic */ void drawAngles$default(UniversalShapeEditor universalShapeEditor, Canvas canvas, Matrix matrix, int i, Object obj) {
        if ((i & 2) != 0) {
            matrix = new Matrix();
        }
        universalShapeEditor.drawAngles(canvas, matrix);
    }

    public static /* synthetic */ void drawSelectionPoints$default(UniversalShapeEditor universalShapeEditor, Canvas canvas, Matrix matrix, int i, Object obj) {
        if ((i & 2) != 0) {
            matrix = null;
        }
        universalShapeEditor.drawSelectionPoints(canvas, matrix);
    }

    /* renamed from: q */
    public static /* synthetic */ boolean m41325q(UniversalShapeEditor universalShapeEditor, TouchPoint touchPoint, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return universalShapeEditor.m41352p(touchPoint, z);
    }

    /* renamed from: s */
    public static /* synthetic */ boolean m41326s(UniversalShapeEditor universalShapeEditor, TouchPoint touchPoint, float f, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return universalShapeEditor.m41353r(touchPoint, f, z);
    }

    /* renamed from: u */
    public static /* synthetic */ boolean m41327u(UniversalShapeEditor universalShapeEditor, TouchPoint touchPoint, float f, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return universalShapeEditor.m41354t(touchPoint, f, z);
    }

    /* renamed from: A */
    public final void m41328A(TouchPoint touchPointInPage) {
        FeatureCollection featureCollection;
        Properties properties;
        TouchPoint touchPoint = this.hitTestSelectionPoint;
        if (touchPoint != null && m41358y(touchPointInPage)) {
            UniversalShape universalShape = this.shape;
            boolean useFixedRatio = (universalShape == null || (featureCollection = universalShape.getFeatureCollection()) == null || (properties = featureCollection.getProperties()) == null) ? false : properties.getUseFixedRatio();
            if (useFixedRatio && this.editMode == Mode.ADD) {
                m41329B(touchPointInPage);
                return;
            }
            ShapeGuideLineConsumeResult m41337a = m41337a(touchPointInPage, this.lastPoint);
            TouchPoint touchPoint2 = new TouchPoint(touchPoint);
            touchPoint2.applyMatrix(this.transformMatrix);
            touchPoint2.translate(m41337a.getDx(), m41337a.getDy());
            touchPoint2.applyMatrix(MatrixKt.invertMatrix(this.transformMatrix));
            this.transformMatrix.preConcat(GeometryUtils.INSTANCE.computeRectAdjustMatrix(this.selectionPoints, touchPoint, touchPoint2, this.editMode == Mode.ADD ? GeometryUtils.INSTANCE.leftTop(this.selectionPoints) : useFixedRatio ? GeometryUtils.INSTANCE.gravityCenter(this.selectionPoints) : this.selectionPoints.get((this.selectionPoints.indexOf(touchPoint) + 2) % 4), useFixedRatio));
            m41334G();
        }
    }

    /* renamed from: B */
    public final void m41329B(TouchPoint touchPointInPage) {
        float x = (touchPointInPage.getX() - this.creationStart.getX()) / this.shapeRectF.width();
        float y = (touchPointInPage.getY() - this.creationStart.getY()) / this.shapeRectF.height();
        float shorterSize = 0.1f / RectKt.shorterSize(this.shapeRectF);
        float min = Math.min(Math.abs(x), Math.abs(y));
        if (min < shorterSize) {
            return;
        }
        float signum = Math.signum(x) * min;
        float signum2 = min * Math.signum(y);
        Matrix matrix = new Matrix();
        RectF rectF = this.shapeRectF;
        matrix.postScale(signum, signum2, rectF.left, rectF.top);
        matrix.postTranslate(this.creationStart.getX(), this.creationStart.getY());
        this.transformMatrix = matrix;
        m41334G();
    }

    /* renamed from: C */
    public final void m41330C(TouchPoint touchPointInPage) {
        ShapeGuideLineConsumeResult m41337a = m41337a(touchPointInPage, this.lastPoint);
        SelectionRect selectionRect = new SelectionRect(this.shapeRectF, MatrixKt.copy(this.transformMatrix));
        selectionRect.setLimitRect(this.limitRect);
        TouchPoint onTranslate = selectionRect.onTranslate(m41337a.getDx(), m41337a.getDy());
        this.transformMatrix.postTranslate(onTranslate.getX(), onTranslate.getY());
        m41334G();
    }

    /* renamed from: D */
    public final void m41331D() {
        ResManager resManager = ResManager.INSTANCE;
        float dimension = resManager.getDimension(C8045R.dimen.angle_radius);
        Paint paint = new Paint();
        paint.setColor(-16776961);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(resManager.getDimension(C8045R.dimen.angle_stroke_width));
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        paint2.setColor(-16776961);
        paint2.setStyle(Paint.Style.FILL);
        paint2.setTextSize(resManager.getDimension(C8045R.dimen.angle_text_size));
        paint2.setAntiAlias(true);
        this.polygonAnglePainter.setRadius(dimension);
        this.polygonAnglePainter.setArcPaint(paint);
        this.polygonAnglePainter.setTextPaint(paint2);
        this.singleAnglePainter.setRadius(dimension);
        this.singleAnglePainter.setArcPaint(paint);
        this.singleAnglePainter.setTextPaint(paint2);
    }

    /* renamed from: E */
    public final void m41332E(UniversalShape universalShape) {
        SelectionPointType selectionPointType;
        Properties properties;
        CreateAttr createAttr;
        Properties properties2;
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        if (featureCollection == null || (properties2 = featureCollection.getProperties()) == null || (selectionPointType = properties2.getSelectionPointType()) == null) {
            selectionPointType = SelectionPointType.SCALE;
        }
        this.selectionPointType = selectionPointType;
        FeatureCollection featureCollection2 = universalShape.getFeatureCollection();
        if (featureCollection2 != null && (properties = featureCollection2.getProperties()) != null && (createAttr = properties.getCreateAttr()) != null && this.editMode == Mode.ADD) {
            this.selectionPointType = createAttr.getSelectionPointType();
        }
        this.selectionPoints = universalShape.getSelectionPoints();
        m41335H();
        if (this.selectionPoints.isEmpty() || this.selectionPointType == SelectionPointType.SCALE) {
            this.selectionPoints = TouchPoint.INSTANCE.getRectPoints(this.shapeRectF);
        }
    }

    /* renamed from: F */
    public final void m41333F() {
        int m41342f;
        List<TouchPoint> arrayList;
        if (this.shape != null && (m41342f = m41342f()) >= 0) {
            UniversalShape universalShape = this.shape;
            if (universalShape != null) {
                UniversalShape.updateBySelectionPoints$default(universalShape, this.selectionPoints, false, 2, null);
            }
            UniversalShape universalShape2 = this.shape;
            if (universalShape2 == null || (arrayList = universalShape2.getSelectionPoints()) == null) {
                arrayList = new ArrayList<>();
            }
            this.selectionPoints = arrayList;
            this.hitTestSelectionPoint = arrayList.get(m41342f);
            m41335H();
        }
    }

    /* renamed from: G */
    public final void m41334G() {
        UniversalShape universalShape = this.shape;
        if (universalShape != null) {
            universalShape.setShapeMatrix(new Matrix(this.transformMatrix));
        }
        m41336I();
    }

    /* renamed from: H */
    public final void m41335H() {
        UniversalShape universalShape = this.shape;
        RectF pointsBoundingRect = universalShape != null ? universalShape.getPointsBoundingRect() : null;
        if (RectKt.isNullOrEmpty(pointsBoundingRect)) {
            pointsBoundingRect = new TouchPointList(this.selectionPoints).getBoundingRect();
        }
        this.shapeRectF = pointsBoundingRect;
    }

    /* renamed from: I */
    public final void m41336I() {
        UniversalShape universalShape;
        float averageScale = this.strokeWidthInPage / MatrixKt.getAverageScale(this.transformMatrix);
        UniversalShape universalShape2 = this.shape;
        if (Intrinsics.areEqual(universalShape2 != null ? Float.valueOf(universalShape2.getStrokeWidth()) : null, averageScale) || (universalShape = this.shape) == null) {
            return;
        }
        universalShape.setStrokeWidth(averageScale);
    }

    /* renamed from: a */
    public final ShapeGuideLineConsumeResult m41337a(TouchPoint touchPointInPage, TouchPoint lastPointInPage) {
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return new ShapeGuideLineConsumeResult();
        }
        Matrix matrix = this.renderContext.getMatrix();
        ShapeGuideLineConsumeResult consumeStickyDistance = this.guideLineRender.consumeStickyDistance(touchPointInPage.transform(matrix), lastPointInPage.transform(matrix), RectFKt.concatTransform(universalShape.boundRect(), universalShape.getShapeMatrix(), matrix), this.transformAction, this.touchVelocityTracker.getRealtimeVelocity());
        if (Math.abs(consumeStickyDistance.getDx()) <= 0.1f) {
            consumeStickyDistance.setDx(0.0f);
        }
        if (Math.abs(consumeStickyDistance.getDy()) <= 0.1f) {
            consumeStickyDistance.setDy(0.0f);
        }
        consumeStickyDistance.setDx(consumeStickyDistance.getDx() / MatrixKt.getAverageScale(matrix));
        consumeStickyDistance.setDy(consumeStickyDistance.getDy() / MatrixKt.getAverageScale(matrix));
        return consumeStickyDistance;
    }

    /* renamed from: b */
    public final UniversalShape m41338b(TouchPoint touchPointInPage) {
        UniversalShape universalShape = this.shape;
        if (universalShape != null) {
            Intrinsics.checkNotNull(universalShape, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.shape.universal.UniversalShape");
            return universalShape;
        }
        this.editMode = Mode.ADD;
        this.creationStart = touchPointInPage;
        MMKVNote mMKVNote = MMKVNote.INSTANCE;
        this.universalShapeAttr = mMKVNote.getGraphShapeOption().get();
        this.universalShapeArgs = mMKVNote.getPenArgsOption(40).get();
        this.transformMatrix = new Matrix();
        UniversalShape universalShape2 = new UniversalShape();
        universalShape2.ensureShapeUniqueId();
        String loadJson = UniversalShapeUtils.INSTANCE.loadJson(this.universalShapeAttr.getType());
        if (loadJson == null) {
            return universalShape2;
        }
        ShapeExtraBean shapeExtraBean = new ShapeExtraBean();
        shapeExtraBean.setFeatureCollection(loadJson);
        universalShape2.setExtraBean(shapeExtraBean);
        this.shape = universalShape2;
        m41356w(universalShape2);
        m41357x(universalShape2, touchPointInPage);
        universalShape2.updateShapeRect();
        m41348l(universalShape2);
        m41349m(universalShape2);
        universalShape2.setLineStyle(this.universalShapeAttr.getLineStyleType());
        Debug.INSTANCE.m32035d(UniversalShapeEditor.class, "createUniversalShape", new Object[0]);
        return universalShape2;
    }

    /* renamed from: c */
    public final void m41339c(TouchPoint touchPointInPage) {
        TouchPoint touchPoint;
        UniversalShape universalShape = this.shape;
        if (universalShape == null || (touchPoint = this.hitTestSelectionPoint) == null || !m41358y(touchPointInPage)) {
            return;
        }
        ShapeGuideLineConsumeResult m41337a = m41337a(touchPointInPage, this.lastPoint);
        TouchPoint touchPoint2 = new TouchPoint(touchPoint.transform(this.transformMatrix));
        touchPoint2.translate(m41337a.getDx(), m41337a.getDy());
        touchPoint2.applyMatrix(MatrixKt.invertMatrix(this.transformMatrix));
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        ShapeDragHandlerProvider.INSTANCE.provide(universalShapeType).onDrag(this.selectionPoints, this.selectionPoints.get(this.selectionPointIndex), touchPoint2);
        m41333F();
    }

    public final void clear() {
        List<? extends Shape> emptyList;
        this.shape = null;
        this.selectionPoints = new ArrayList();
        this.shapeRectF = new RectF();
        this.hitTestSelectionPoint = null;
        this.boxInfo = null;
        this.editMode = Mode.UNDEFINED;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.referenceShapes = emptyList;
        this.transformAction = ShapeTransformAction.Undefined;
        clearGuideLine();
    }

    public final void clearGuideLine() {
        List<Guideline> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.guidelines = emptyList;
        this.guideLineRender.clear();
    }

    @NotNull
    public final TouchPoint convertTouchPointFromPageToRender(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        return touchPointInPage.transform(this.renderContext.getMatrix());
    }

    @NotNull
    public final TouchPoint convertTouchPointFromRenderToPage(@NotNull TouchPoint touchPointInRender) {
        Intrinsics.checkNotNullParameter(touchPointInRender, "touchPointInRender");
        return touchPointInRender.transform(MatrixKt.invertMatrix(this.renderContext.getMatrix()));
    }

    public final void correctShapeByGuideLine() {
        List listOf;
        List listOf2;
        TouchPoint empty;
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return;
        }
        m41334G();
        ShapeCorrectionArgs shapeCorrectionArgs = new ShapeCorrectionArgs();
        shapeCorrectionArgs.setShape(universalShape);
        shapeCorrectionArgs.setTransformAction(this.transformAction);
        ShapeTransformAction shapeTransformAction = this.transformAction;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeTransformAction[]{ShapeTransformAction.Translate, ShapeTransformAction.Drag, ShapeTransformAction.Undefined});
        if (listOf.contains(shapeTransformAction)) {
            empty = this.lastPoint;
        } else {
            listOf2 = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeTransformAction[]{ShapeTransformAction.Rotation, ShapeTransformAction.ScaleXY});
            empty = listOf2.contains(shapeTransformAction) ? this.rotationCenter : TouchPoint.INSTANCE.getEmpty();
        }
        shapeCorrectionArgs.setTransformPoint(empty);
        shapeCorrectionArgs.setRenderMatrix(this.renderContext.getMatrix());
        this.guideLineRender.configureShapeCorrectionArgs(shapeCorrectionArgs);
        ShapeCorrectorFactory.INSTANCE.create(shapeCorrectionArgs).correct(shapeCorrectionArgs);
        this.transformMatrix = MatrixKt.copy(universalShape.getShapeMatrix());
        m41336I();
    }

    /* renamed from: d */
    public final void m41340d(Polygon polygon, Canvas canvas, Matrix renderMatrix) {
        float[][][] coordinates;
        m41331D();
        UniversalShape universalShape = this.shape;
        if (universalShape == null || (coordinates = polygon.getCoordinates()) == null) {
            return;
        }
        this.polygonAnglePainter.draw(canvas, universalShape, GeometryUtils.INSTANCE.concatTransform(GeoJsonKt.toTouchPoints(coordinates), this.transformMatrix, renderMatrix), universalShape.getStrokeWidth() * MatrixKt.getAverageScale(universalShape.getShapeMatrix()) * MatrixKt.getAverageScale(renderMatrix), m41355v());
    }

    public final void drawAngles(@NotNull Canvas canvas, @NotNull Matrix renderMatrix) {
        Feature[] features;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        UniversalShape universalShape = this.shape;
        if (universalShape != null && isEditMode() && UniversalShapeAbilityFilterKt.shouldDrawAngle(universalShape)) {
            FeatureCollection featureCollection = universalShape.getFeatureCollection();
            String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
            if (universalShapeType == null) {
                universalShapeType = "";
            }
            if (Intrinsics.areEqual(universalShapeType, "angle")) {
                m41341e(canvas, renderMatrix);
                return;
            }
            FeatureCollection featureCollection2 = universalShape.getFeatureCollection();
            if (featureCollection2 == null || (features = featureCollection2.getFeatures()) == null) {
                return;
            }
            for (Feature feature : features) {
                Geometry geometry = feature.getGeometry();
                if (geometry instanceof Polygon) {
                    m41340d((Polygon) geometry, canvas, renderMatrix);
                }
            }
        }
    }

    public final void drawExtraShapeContent(@NotNull Canvas canvas, @NotNull Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(renderMatrix, "renderMatrix");
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return;
        }
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        ShapeExtrasRenderFactory.INSTANCE.create(universalShapeType).draw(canvas, universalShape, renderMatrix);
    }

    public final void drawGuidelines(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        UniversalShape universalShape = this.shape;
        if (universalShape == null || this.editMode == Mode.UNDEFINED || this.transformAction == ShapeTransformAction.Undefined) {
            return;
        }
        Matrix matrix = this.renderContext.getMatrix();
        this.guideLineRender.drawGuideLines(canvas, universalShape, GuideLineKt.transform(m41350n(), matrix), CollectionKt.copy(this.guidelines), universalShape.getStrokeWidth() * MatrixKt.getAverageScale(universalShape.getShapeMatrix()) * MatrixKt.getAverageScale(matrix), this.editMode, this.transformAction);
    }

    public final void drawRotationHandle(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.shape != null && isWaitingEdit()) {
            this.rotationHandleRender.drawRotationHandle(canvas, m41343g());
        }
    }

    public final void drawSelectionPoints(@NotNull Canvas canvas, @Nullable Matrix renderMatrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (isEditMode()) {
            Iterator<T> it2 = this.selectionPoints.iterator();
            while (it2.hasNext()) {
                TouchPoint copy = ((TouchPoint) it2.next()).copy();
                copy.applyMatrix(this.transformMatrix);
                copy.applyMatrix(renderMatrix);
                canvas.drawCircle(copy.getX(), copy.getY(), this.selectionPointRadius, this.selectionPointFillPaint);
                canvas.drawCircle(copy.getX(), copy.getY(), this.selectionPointRadius, this.selectionPointStrokePaint);
                this.selectionPointFillPaint.setTextSize(50.0f);
            }
        }
    }

    /* renamed from: e */
    public final void m41341e(Canvas canvas, Matrix renderMatrix) {
        m41331D();
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return;
        }
        this.singleAnglePainter.draw(canvas, universalShape, GeometryUtils.INSTANCE.concatTransform(universalShape.getSelectionPoints(), this.transformMatrix, renderMatrix), universalShape.getStrokeWidth() * MatrixKt.getAverageScale(universalShape.getShapeMatrix()) * MatrixKt.getAverageScale(renderMatrix), m41355v());
    }

    /* renamed from: f */
    public final int m41342f() {
        Iterator<TouchPoint> it2 = this.selectionPoints.iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                i = -1;
                break;
            }
            if (this.hitTestSelectionPoint == it2.next()) {
                break;
            }
            i++;
        }
        Integer valueOf = Integer.valueOf(i);
        if (!(valueOf.intValue() >= 0)) {
            valueOf = null;
        }
        return ((Number) AnyKt.getOrElse(valueOf, new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.helper.UniversalShapeEditor$findHitTestSelectionIndex$3
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Integer invoke() {
                List list;
                TouchPoint touchPoint;
                int indexOf;
                list = UniversalShapeEditor.this.selectionPoints;
                touchPoint = UniversalShapeEditor.this.hitTestSelectionPoint;
                indexOf = CollectionsKt___CollectionsKt.indexOf((List<? extends TouchPoint>) ((List<? extends Object>) list), touchPoint);
                return Integer.valueOf(indexOf);
            }
        })).intValue();
    }

    /* renamed from: g */
    public final TouchPoint m41343g() {
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return new TouchPoint(0.0f, 0.0f);
        }
        return RotationHandleHelper.findRotationPoint$default(RotationHandleHelper.INSTANCE, universalShape, EditorBundleKt.viewportRect(this.editorBundle), MatrixKt.invertMatrix(this.boxMatrix), null, 8, null);
    }

    @Nullable
    public final BoxInfo getBoxInfo() {
        return this.boxInfo;
    }

    @NotNull
    public final Matrix getBoxMatrix() {
        return this.boxMatrix;
    }

    @Nullable
    public final String getFeatureCollectionStr() {
        return this.featureCollectionStr;
    }

    @NotNull
    public final Matrix getFeatureMatrix() {
        return this.featureMatrix;
    }

    @NotNull
    public final List<Guideline> getGuidelines() {
        return this.guidelines;
    }

    @NotNull
    public final List<Shape> getReferenceShapes() {
        return this.referenceShapes;
    }

    @Nullable
    public final UniversalShape getShape() {
        return this.shape;
    }

    @Nullable
    public final RectF getShapeRectFWithWidth() {
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return null;
        }
        RectF copy = RectFKt.copy(this.shapeRectF);
        ShapeRectUtils.expandShapeRectWithWidth$default(ShapeRectUtils.INSTANCE, universalShape, copy, null, 0.0f, 12, null);
        this.transformMatrix.mapRect(copy);
        return copy;
    }

    @NotNull
    public final RectF getShapeRectInPage() {
        return RectFKt.copyAndTransform(this.shapeRectF, this.transformMatrix);
    }

    @NotNull
    public final RectF getShapeRectInRender() {
        UniversalShape universalShape = this.shape;
        return universalShape == null ? new RectF() : RectFKt.concatTransform(this.shapeRectF, universalShape.getShapeMatrix(), this.renderContext.getMatrix());
    }

    @NotNull
    public final ShapeTransformAction getTransformAction() {
        return this.transformAction;
    }

    /* renamed from: h */
    public final float m41344h(PenArgs penArgs) {
        float screenStrokeWidth = PhysiceExtKt.toScreenStrokeWidth(penArgs.getWidth());
        BoxInfo boxInfo = this.boxInfo;
        return boxInfo == null ? screenStrokeWidth : EditorBundleKt.handlerManager(this.editorBundle).getEditorDataProxy().getAdaptiveStrokeWidth(boxInfo, screenStrokeWidth);
    }

    public final boolean hitTestByPriority(@NotNull TouchPoint touchPointInPage, boolean isTryMode) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return false;
        }
        Matrix concat = MatrixKt.concat(universalShape.getShapeMatrix(), this.renderContext.getMatrix());
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        boolean z = RectKt.shorterSize(geometryUtils.boundRect(geometryUtils.transform(this.selectionPoints, concat))) < ResManager.INSTANCE.getDimension(C8045R.dimen.small_shape_rect_size);
        if (m41354t(touchPointInPage, this.selectionPointRadius, isTryMode) || m41353r(touchPointInPage, RotationHandleRenderKt.getRotationPointSize() / 2, isTryMode)) {
            return true;
        }
        if ((!isTryMode && z && m41352p(touchPointInPage, false)) || m41354t(touchPointInPage, this.hitTestRadius, isTryMode) || m41353r(touchPointInPage, this.hitTestRadius, isTryMode) || m41352p(touchPointInPage, isTryMode)) {
            return true;
        }
        if (!isTryMode) {
            this.editMode = Mode.UNDEFINED;
            this.transformAction = ShapeTransformAction.Undefined;
        }
        return false;
    }

    /* renamed from: i */
    public final int m41345i(TouchPoint touchPoint) {
        int i = 0;
        float f = -1.0f;
        int i2 = 0;
        for (Object obj : this.selectionPoints) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            TouchPoint touchPoint2 = (TouchPoint) obj;
            float pointDistance = TouchPoint.INSTANCE.getPointDistance(touchPoint2.getX(), touchPoint2.getY(), touchPoint.getX(), touchPoint.getY());
            if (f < 0.0f || pointDistance < f) {
                i = i2;
                f = pointDistance;
            }
            i2 = i3;
        }
        return i;
    }

    public final boolean isAddMode() {
        return this.editMode == Mode.ADD;
    }

    public final boolean isDragAction() {
        return this.transformAction == ShapeTransformAction.Drag;
    }

    public final boolean isEditMode() {
        return this.editMode == Mode.EDIT;
    }

    public final boolean isScaleAction() {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new ShapeTransformAction[]{ShapeTransformAction.ScaleXY, ShapeTransformAction.ScaleX, ShapeTransformAction.ScaleY});
        return listOf.contains(this.transformAction);
    }

    public final boolean isUndefinedMode() {
        return this.editMode == Mode.UNDEFINED;
    }

    public final boolean isUndefinedTransformAction() {
        return this.transformAction.isUndefined();
    }

    public final boolean isWaitingEdit() {
        return this.editMode == Mode.EDIT && this.transformAction == ShapeTransformAction.Undefined;
    }

    /* renamed from: j */
    public final Matrix m41346j(UniversalShape universalShape) {
        Object first;
        Object last;
        List<TouchPoint> listOf;
        Matrix matrix = new Matrix();
        TouchPoint touchPoint = this.hitTestSelectionPoint;
        if (touchPoint == null) {
            return matrix;
        }
        matrix.postTranslate(-touchPoint.getX(), -touchPoint.getY());
        this.universalShapeAttr.getType();
        if (!UniversalShapeAbilityFilterKt.isCurveSerialShape(this.universalShapeAttr) && this.shapeRectF.width() > 0.0f && this.shapeRectF.height() > 0.0f) {
            float averageScale = 0.1f / MatrixKt.getAverageScale(this.renderContext.getMatrix());
            ShapeRatioCalculator shapeRatioCalculator = ShapeRatioCalculator.INSTANCE;
            UniversalShapeAttr universalShapeAttr = this.universalShapeAttr;
            float shapeAspectRatio = (shapeRatioCalculator.getShapeAspectRatio(universalShapeAttr != null ? universalShapeAttr.getType() : null) * averageScale) / this.shapeRectF.width();
            float height = averageScale / this.shapeRectF.height();
            if (UniversalShapeAbilityFilterKt.isLineSerialShape(this.universalShapeAttr)) {
                List<TouchPoint> selectionPoints = universalShape.getSelectionPoints();
                if (selectionPoints.size() < 2) {
                    return matrix;
                }
                first = CollectionsKt___CollectionsKt.first((List<? extends Object>) selectionPoints);
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) selectionPoints);
                TouchPoint touchPoint2 = (TouchPoint) last;
                listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new TouchPoint[]{new TouchPointPair((TouchPoint) first, touchPoint2).findPointOnVector(-averageScale, touchPoint2), touchPoint2});
                universalShape.updateBySelectionPoints(listOf, true);
                return matrix;
            }
            RectF rectF = this.shapeRectF;
            matrix.postScale(shapeAspectRatio, height, rectF.left, rectF.top);
        }
        return matrix;
    }

    /* renamed from: k */
    public final TouchPoint m41347k() {
        FeatureCollection featureCollection;
        Properties properties;
        CreateAttr createAttr;
        if (this.selectionPointType == SelectionPointType.SCALE) {
            this.selectionPointIndex = 2;
            return this.selectionPoints.get(2);
        }
        UniversalShape universalShape = this.shape;
        if (universalShape != null && (featureCollection = universalShape.getFeatureCollection()) != null && (properties = featureCollection.getProperties()) != null && (createAttr = properties.getCreateAttr()) != null) {
            this.selectionPointIndex = createAttr.getSelectionPointIndex();
            return this.selectionPoints.get(createAttr.getSelectionPointIndex());
        }
        RectF rectF = this.shapeRectF;
        int m41345i = m41345i(new TouchPoint(rectF.right, rectF.bottom));
        this.selectionPointIndex = m41345i;
        return this.selectionPoints.get(m41345i);
    }

    /* renamed from: l */
    public final void m41348l(UniversalShape universalShape) {
        String json = JSONUtils.INSTANCE.toJson(universalShape.getFeatureCollection());
        if (json == null) {
            ShapeExtraBean extraBean = universalShape.getExtraBean();
            json = extraBean != null ? extraBean.getFeatureCollection() : null;
        }
        this.featureCollectionStr = json;
    }

    /* renamed from: m */
    public final void m41349m(UniversalShape universalShape) {
        this.featureMatrix = MatrixKt.copy(universalShape.getShapeMatrix());
    }

    /* renamed from: n */
    public final List<Guideline> m41350n() {
        List<Guideline> emptyList;
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        FeatureCollection featureCollection = universalShape.getFeatureCollection();
        String universalShapeType = featureCollection != null ? featureCollection.getUniversalShapeType() : null;
        if (universalShapeType == null) {
            universalShapeType = "";
        }
        List<Guideline> extract = GuideLineExtractorFactory.INSTANCE.create(universalShapeType).extract(universalShape);
        GuideLineExtractorKt.allocId(extract);
        return extract;
    }

    /* renamed from: o */
    public final ShapeTransformAction m41351o() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.selectionPointType.ordinal()];
        if (i != 1 && i == 2) {
            return ShapeTransformAction.Drag;
        }
        return ShapeTransformAction.ScaleXY;
    }

    public final boolean onInterceptTouchDown(@NotNull TouchPoint point) {
        Intrinsics.checkNotNullParameter(point, "point");
        if (this.shape == null) {
            return false;
        }
        if (this.editMode == Mode.UNDEFINED) {
            return true;
        }
        return hitTestByPriority(point.transform(MatrixKt.invertMatrix(this.renderContext.getMatrix())), true);
    }

    public final void onShapeDown(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        this.guideLineRender.saveFirstPoint(convertTouchPointFromPageToRender(touchPointInPage));
        this.touchDebouncer.start();
        this.lastPoint = touchPointInPage.copy();
        int i = WhenMappings.$EnumSwitchMapping$1[this.editMode.ordinal()];
        if (i == 1) {
            m41338b(touchPointInPage);
        } else {
            if (i != 2) {
                return;
            }
            hitTestByPriority(touchPointInPage, false);
        }
    }

    public final void onShapeEdit(@NotNull UniversalShape universalShape, @NotNull TouchData upTouchData, boolean editImmediately) {
        Intrinsics.checkNotNullParameter(universalShape, "universalShape");
        Intrinsics.checkNotNullParameter(upTouchData, "upTouchData");
        universalShape.updateUniversalShapeType();
        this.guideLineRender.saveFirstPoint(convertTouchPointFromPageToRender(upTouchData.getTouchPoint()));
        this.touchDebouncer.start();
        this.editMode = Mode.EDIT;
        this.transformMatrix = new Matrix(universalShape.getShapeMatrix());
        this.shape = universalShape;
        m41332E(universalShape);
        TouchPoint touchPoint = new TouchPoint(upTouchData.getTouchPoint());
        touchPoint.applyMatrix(MatrixKt.invertMatrix(this.transformMatrix));
        int m41345i = m41345i(touchPoint);
        this.selectionPointIndex = m41345i;
        this.hitTestSelectionPoint = this.selectionPoints.get(m41345i);
        this.transformAction = !editImmediately ? ShapeTransformAction.Undefined : m41351o();
        this.lastPoint = new TouchPoint(upTouchData.getTouchPoint());
        this.strokeWidthInPage = universalShape.getStrokeWidth() * MatrixKt.getAverageScale(this.transformMatrix);
        m41348l(universalShape);
        m41349m(universalShape);
    }

    public final void onShapeMove(@NotNull TouchPoint touchPointInPage) {
        Intrinsics.checkNotNullParameter(touchPointInPage, "touchPointInPage");
        if (this.shape == null) {
            return;
        }
        Matrix matrix = this.renderContext.getMatrix();
        if (this.touchDebouncer.detect(touchPointInPage.transform(matrix))) {
            return;
        }
        int i = WhenMappings.$EnumSwitchMapping$2[this.transformAction.ordinal()];
        if (i == 1) {
            m41328A(touchPointInPage);
        } else if (i == 2) {
            m41339c(touchPointInPage);
        } else if (i == 3) {
            m41330C(touchPointInPage);
        } else if (i != 4) {
            return;
        } else {
            m41359z(touchPointInPage);
        }
        TouchPoint touchPoint = new TouchPoint(touchPointInPage);
        this.lastPoint = touchPoint;
        this.touchDebouncer.add(touchPoint.transform(matrix));
        this.guideLineRender.updateTouchPoint(this.lastPoint.transform(matrix));
    }

    public final void onShapeUp(@NotNull TouchPoint touchPoint) {
        Intrinsics.checkNotNullParameter(touchPoint, "touchPoint");
        this.touchDebouncer.stop();
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return;
        }
        correctShapeByGuideLine();
        this.selectionPointIndex = -1;
        this.transformAction = ShapeTransformAction.Undefined;
        if (this.editMode == Mode.ADD) {
            this.editMode = Mode.EDIT;
        }
        m41332E(universalShape);
    }

    public final void onThemeUpdated() {
        this.selectionPointFillPaint.setColor(UniversalThemeUtils.INSTANCE.getThemePrimaryColor());
    }

    public final void onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int action = event.getAction();
        if (action == 0) {
            this.touchVelocityTracker.onDown(event);
        } else if (action == 1) {
            this.touchVelocityTracker.onRelease();
        } else {
            if (action != 2) {
                return;
            }
            this.touchVelocityTracker.onMove(event);
        }
    }

    /* renamed from: p */
    public final boolean m41352p(TouchPoint touchPointInPage, boolean isTryMode) {
        List<TouchPoint> listOf;
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return false;
        }
        float dimension = ResManager.INSTANCE.getDimension(C8045R.dimen.shape_region_hit_test_radius) / MatrixKt.getAverageScale(this.renderContext.getMatrix());
        listOf = CollectionsKt__CollectionsJVMKt.listOf(touchPointInPage);
        boolean hitTestPathRegion = universalShape.hitTestPathRegion(listOf, dimension, true);
        if (hitTestPathRegion && !isTryMode) {
            this.transformAction = ShapeTransformAction.Translate;
        }
        return hitTestPathRegion;
    }

    /* renamed from: r */
    public final boolean m41353r(TouchPoint touchPointInPage, float hotRadius, boolean isTryMode) {
        boolean z = TouchPoint.INSTANCE.distance(touchPointInPage.copy().transform(this.renderContext.getMatrix()), m41343g()) < ((double) hotRadius);
        if (z && !isTryMode) {
            this.rotationStart = new TouchPoint(touchPointInPage);
            this.rotationCenter = GeometryUtils.INSTANCE.center(this.shapeRectF).concatTransform(this.transformMatrix);
            this.transformAction = ShapeTransformAction.Rotation;
        }
        return z;
    }

    public final void setBoxInfo(@Nullable BoxInfo boxInfo) {
        this.boxInfo = boxInfo;
    }

    public final void setBoxMatrix(@NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "<set-?>");
        this.boxMatrix = matrix;
    }

    public final void setGuidelines(@NotNull List<Guideline> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.guidelines = list;
    }

    public final void setReferenceShapes(@NotNull List<? extends Shape> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.referenceShapes = list;
    }

    public final void setShape(@Nullable UniversalShape universalShape) {
        this.shape = universalShape;
    }

    public final void setTransformAction(@NotNull ShapeTransformAction shapeTransformAction) {
        Intrinsics.checkNotNullParameter(shapeTransformAction, "<set-?>");
        this.transformAction = shapeTransformAction;
    }

    /* renamed from: t */
    public final boolean m41354t(TouchPoint touchPointInPage, float hotRadius, boolean isTryMode) {
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return false;
        }
        Matrix concat = MatrixKt.concat(universalShape.getShapeMatrix(), this.renderContext.getMatrix());
        TouchPoint transform = touchPointInPage.transform(this.renderContext.getMatrix());
        List<TouchPoint> transform2 = GeometryUtils.INSTANCE.transform(this.selectionPoints, concat);
        Iterator<T> it2 = transform2.iterator();
        if (!it2.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next = it2.next();
        if (it2.hasNext()) {
            double distance = TouchPoint.INSTANCE.distance((TouchPoint) next, transform);
            do {
                Object next2 = it2.next();
                double distance2 = TouchPoint.INSTANCE.distance((TouchPoint) next2, transform);
                if (Double.compare(distance, distance2) > 0) {
                    next = next2;
                    distance = distance2;
                }
            } while (it2.hasNext());
        }
        TouchPoint touchPoint = (TouchPoint) next;
        boolean z = TouchPoint.INSTANCE.distance(touchPoint, transform) < ((double) hotRadius);
        if (z && !isTryMode) {
            int indexOf = transform2.indexOf(touchPoint);
            this.selectionPointIndex = indexOf;
            this.hitTestSelectionPoint = this.selectionPoints.get(indexOf);
            this.transformAction = m41351o();
        }
        return z;
    }

    public final void updateRenderContext(@NotNull RenderContext renderContext) {
        Intrinsics.checkNotNullParameter(renderContext, "renderContext");
        this.renderContext = renderContext;
    }

    public final void updateShapeAttr(@NotNull ShapeAttributesBean attr) {
        Intrinsics.checkNotNullParameter(attr, "attr");
        UniversalShape universalShape = this.shape;
        if (universalShape == null) {
            return;
        }
        if (attr.getIsWidthChanged()) {
            universalShape.setStrokeWidth(PhysiceExtKt.toScreenStrokeWidth(attr.getShapeWidth()));
            this.strokeWidthInPage = universalShape.getStrokeWidth() * MatrixKt.getAverageScale(this.transformMatrix);
        }
        if (attr.getIsLineStyleTypeChanged()) {
            universalShape.setLineStyle(attr.getLineStyleType());
        }
        if (attr.getIsColorChanged()) {
            universalShape.setStrokeColor(attr.getColor());
        }
        if (attr.getIsFillColorEnabledChanged()) {
            universalShape.enableFillColor(attr.getIsFillColorEnabled());
        }
        if (attr.getIsFillColorChanged()) {
            universalShape.setFillColor(attr.getCom.onyx.android.sdk.data.couchbase.bean.CouchFieldKey.KEY_FILL_COLOR java.lang.String());
        }
    }

    public final void updateVirtualBoxInfo(@Nullable BoxInfo virtualBoxInfo) {
        this.boxMatrix = MatrixKt.copy(virtualBoxInfo != null ? BoxInfoUtils.INSTANCE.noteNormalizeMatrix(virtualBoxInfo) : null);
        this.boxInfo = virtualBoxInfo != null ? virtualBoxInfo.copy() : null;
    }

    /* renamed from: v */
    public final boolean m41355v() {
        return isWaitingEdit() || !isDragAction();
    }

    /* renamed from: w */
    public final void m41356w(final UniversalShape universalShape) {
        float m41344h = m41344h(this.universalShapeArgs);
        universalShape.enableFillColor(this.universalShapeAttr.getFillColorEnable());
        universalShape.setStrokeColor(this.universalShapeArgs.getColor());
        universalShape.setStrokeWidth(m41344h);
        this.strokeWidthInPage = m41344h;
        if (this.universalShapeAttr.getFillColorEnable()) {
            this.universalShapeAttr.updateFillColorIfNotValid(new Function0<Integer>() { // from class: com.onyx.android.sdk.universal.editor.helper.UniversalShapeEditor$initAttr$1
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
            universalShape.setFillColor(this.universalShapeAttr.getFillColor());
        }
    }

    /* renamed from: x */
    public final void m41357x(UniversalShape universalShape, TouchPoint touchPoint) {
        Feature[] features;
        Feature feature;
        Properties properties;
        WaveAttr waveAttr;
        m41332E(universalShape);
        this.hitTestSelectionPoint = m41347k();
        Matrix m41346j = m41346j(universalShape);
        this.transformMatrix = m41346j;
        m41346j.postTranslate(touchPoint.getX(), touchPoint.getY());
        m41334G();
        String type = this.universalShapeAttr.getType();
        if (type == null) {
            type = "";
        }
        if (Intrinsics.areEqual(type, UniversalShapeTypeConst.WAVE_LINE)) {
            FeatureCollection featureCollection = universalShape.getFeatureCollection();
            if (featureCollection == null || (features = featureCollection.getFeatures()) == null || (feature = features[0]) == null || (properties = feature.getProperties()) == null || (waveAttr = properties.getWaveAttr()) == null) {
                return;
            }
            waveAttr.setWavyLength(waveAttr.getWavyLength() + (universalShape.getStrokeWidth() * 3));
            waveAttr.setWavyPeak(waveAttr.getWavyPeak() + (universalShape.getStrokeWidth() / 2));
        }
        universalShape.setLineStyle(this.universalShapeAttr.getLineStyleType());
        this.transformAction = m41351o();
    }

    /* renamed from: y */
    public final boolean m41358y(TouchPoint touchPoint) {
        if (RectKt.isNullOrEmpty(this.limitRect)) {
            return true;
        }
        return this.limitRect.contains(touchPoint.getX(), touchPoint.getY());
    }

    /* renamed from: z */
    public final void m41359z(TouchPoint touchPointInPage) {
        if (m41337a(touchPointInPage, this.lastPoint).getIsStickyState()) {
            this.rotationStart = this.lastPoint.copy();
            return;
        }
        float direction = new TouchPointPair(this.rotationCenter, this.rotationStart).direction();
        this.transformMatrix.postRotate(GeometryUtils.INSTANCE.radToDegree(new TouchPointPair(this.rotationCenter, touchPointInPage).direction() - direction), this.rotationCenter.getX(), this.rotationCenter.getY());
        this.rotationStart = touchPointInPage;
        m41334G();
    }
}
