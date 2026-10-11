package com.onyx.android.sdk.universal.editor.action.ink;

import android.graphics.RectF;
import android.util.Log;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.extension.MatrixKt;
import com.onyx.android.sdk.base.extension.RangeKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.MathUtils;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.data.common.data.ShapeTypesetArgs;
import com.onyx.android.sdk.data.couchbase.CBQueryArgs;
import com.onyx.android.sdk.data.couchbase.utils.CouchUtils;
import com.onyx.android.sdk.geometry.extension.RectFKt;
import com.onyx.android.sdk.geometry.utils.GeometryUtils;
import com.onyx.android.sdk.neohwr.layout.FontPathLoadResult;
import com.onyx.android.sdk.neohwr.layout.SourcePointGroup;
import com.onyx.android.sdk.neohwr.layout.TextLayout;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShape;
import com.onyx.android.sdk.note.common.shape.object.HWRTextShapeLayout;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.action.RxBaseAppAction;
import com.onyx.android.sdk.universal.editor.action.shape.LoadPageShapesAction;
import com.onyx.android.sdk.universal.editor.action.shape.TransformShapesToSamePageAction;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.gon;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Function;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt__RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\f\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B;\u0012\u0006\u0010k\u001a\u00020j\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010G\u001a\u00020D\u0012\u0006\u0010K\u001a\u00020H\u0012\f\u0010O\u001a\b\u0012\u0004\u0012\u00020H0L¢\u0006\u0004\bl\u0010mJ\f\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0002J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\t\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J#\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u001b\u0010\u0010\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u0014\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0004H\u0002J\u0016\u0010\u0014\u001a\u00020\f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0016\u0010\u0015\u001a\u00020\f2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J(\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\fH\u0002J\"\u0010\u001f\u001a\u00020\f2\u0006\u0010\u001c\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u00052\b\u0010\u001e\u001a\u0004\u0018\u00010\u0005H\u0002J\u0018\u0010!\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u00052\u0006\u0010 \u001a\u00020\u0005H\u0002J\"\u0010&\u001a\u00020\f2\u0006\u0010\"\u001a\u00020\f2\u0006\u0010#\u001a\u00020\f2\b\b\u0002\u0010%\u001a\u00020$H\u0002J\u001c\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u001c\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J$\u0010+\u001a\u00020$2\f\u0010)\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J.\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0.2\u0006\u0010,\u001a\u00020\f2\u0006\u0010-\u001a\u00020\f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u00101\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u00100\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0002J\u0012\u00102\u001a\u00020\u00162\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0010\u00103\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u00104\u001a\u00020$2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0018\u00107\u001a\u00020$2\u0006\u00105\u001a\u00020\f2\u0006\u00106\u001a\u00020\fH\u0002J#\u00109\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u00108\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b9\u0010:J\u0010\u0010;\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010<\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010?\u001a\u00020$2\u0006\u0010>\u001a\u00020=H\u0002J\u000e\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u001a\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u0010BR\u0014\u0010G\u001a\u00020D8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bE\u0010FR\u0014\u0010K\u001a\u00020H8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020H0L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR\u001d\u0010S\u001a\b\u0012\u0004\u0012\u00020\u00050P8\u0006¢\u0006\f\n\u0004\b!\u0010B\u001a\u0004\bQ\u0010RR\u001d\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00050P8\u0006¢\u0006\f\n\u0004\b+\u0010B\u001a\u0004\bT\u0010RR\u001a\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010BR\u001a\u0010V\u001a\b\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010BR\u001a\u0010W\u001a\b\u0012\u0004\u0012\u00020\u00050P8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u0010BR\u0016\u0010X\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010\u0010R\u0016\u0010Y\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010\u0010R\u0016\u0010Z\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0010R\u0016\u0010[\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u0010\u0010R\u0014\u0010\\\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b&\u0010\u0010R\u0014\u0010^\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b]\u0010\u0010R\u0014\u0010_\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b<\u0010\u0010R\u0014\u0010`\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0013\u0010\u0010R\u0014\u0010a\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b4\u0010\u0010R\u0014\u0010b\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b7\u0010\u0010R\u0014\u0010c\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u000e\u0010\u0010R\u0014\u0010d\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b2\u0010\u0010R\u0014\u0010e\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b?\u0010\u0010R\u0014\u0010g\u001a\u00020\f8\u0002X\u0082D¢\u0006\u0006\n\u0004\bf\u0010\u0010R\u0014\u0010i\u001a\u00020H8\u0002X\u0082D¢\u0006\u0006\n\u0004\bh\u0010J¨\u0006n"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction;", "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;", "Lio/reactivex/rxjava3/core/Observable;", "s", "", "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;", "N", "lineShapes", "", "H", "A", "shape", "", gon.f71257J, "J", "(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)F", "F", "(Ljava/lang/Float;)F", "L", "x", "I", "E", "Landroid/graphics/RectF;", "previousRect", "currentRect", "firstLineShape", "textSizeForSpacing", GoogleApiAvailabilityLight.f29016b, "currentLineRight", "currentShape", "previousShape", C4921e.f26528e, "comparedShape", "l", "previousCharRight", "fontInnerSpacing", "", "dynamicSpacing", "u", "q", "r", "currentLineShapes", "lastLineShapes", "m", "baseLine", "startX", "Lkotlin/Pair;", "t", "shapes", "p", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "P", "y", "preTextSize", "nextTextSize", "z", "overriddenFontSize", "B", "(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;Ljava/lang/Float;)Landroid/graphics/RectF;", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "w", "", "char", "Q", BaiduYunConstant.CREATE, C6999h.f39688c, "Ljava/util/List;", "hwrShapes", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "i", "Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;", "typesetArgs", "", "j", Constants.STRING_SIG, "currentPageId", "", C4921e.f26537n, "Ljava/util/Collection;", "relatedPageIds", "", "getRelayoutShapes", "()Ljava/util/List;", "relayoutShapes", "getLastLineShapes", "relatedShapes", "relayoutingShapes", "lastFormattedLineShapes", "charSpacing", "lineSpacing", "lineHeight", "whitespaceWidth", "charAlignRange", "v", "lineAlignRange", "sameLineRange", "newLineRange", "neighbouringLineRange", "whitespaceMinRange", "whitespaceMaxRange", "whitespaceMinRangeForCJK", "maxTextSizeDiffRate", Constants.HASIDCALL_INDEX_SIG, "abnormalShapeSizeRange", "k0", "TAG", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/common/data/ShapeTypesetArgs;Ljava/lang/String;Ljava/util/Collection;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,529:1\n1855#2,2:530\n1864#2,3:532\n1549#2:536\n1620#2,3:537\n1549#2:555\n1620#2,3:556\n1549#2:559\n1620#2,3:560\n766#2:563\n857#2,2:564\n2333#2,14:566\n1940#2,14:580\n1940#2,14:594\n1940#2,14:608\n1549#2:622\n1620#2,3:623\n766#2:626\n857#2,2:627\n1045#2:629\n766#2:630\n857#2,2:631\n1549#2:633\n1620#2,3:634\n766#2:637\n857#2,2:638\n1549#2:640\n1620#2,3:641\n1549#2:644\n1620#2,3:645\n766#2:648\n857#2,2:649\n1045#2:651\n766#2:652\n857#2,2:653\n1#3:535\n41#4,5:540\n41#4,5:545\n41#4,5:550\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction\n*L\n83#1:530,2\n112#1:532,3\n148#1:536\n148#1:537,3\n222#1:555\n222#1:556,3\n224#1:559\n224#1:560,3\n243#1:563\n243#1:564,2\n244#1:566,14\n262#1:580,14\n275#1:594,14\n284#1:608,14\n375#1:622\n375#1:623,3\n382#1:626\n382#1:627,2\n383#1:629\n388#1:630\n388#1:631,2\n415#1:633\n415#1:634,3\n419#1:637\n419#1:638,2\n442#1:640\n442#1:641,3\n445#1:644\n445#1:645,3\n466#1:648\n466#1:649,2\n472#1:651\n481#1:652\n481#1:653,2\n166#1:540,5\n180#1:545,5\n188#1:550,5\n*E\n"})
/* loaded from: classes8.dex */
public final class RelayoutRealtimeBeautifyShapesAction extends RxBaseAppAction<RelayoutRealtimeBeautifyShapesAction> {

    /* renamed from: J, reason: from kotlin metadata */
    public final float whitespaceMaxRange;

    /* renamed from: O, reason: from kotlin metadata */
    public final float whitespaceMinRangeForCJK;

    /* renamed from: Q, reason: from kotlin metadata */
    public final float maxTextSizeDiffRate;

    /* renamed from: Z, reason: from kotlin metadata */
    public final float abnormalShapeSizeRange;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> hwrShapes;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final ShapeTypesetArgs typesetArgs;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final String currentPageId;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final Collection<String> relatedPageIds;

    /* renamed from: k0, reason: from kotlin metadata */
    @NotNull
    public final String TAG;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> relayoutShapes;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> lastLineShapes;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> relatedShapes;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> relayoutingShapes;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public final List<HWRTextShape> lastFormattedLineShapes;

    /* renamed from: q, reason: from kotlin metadata */
    public float charSpacing;

    /* renamed from: r, reason: from kotlin metadata */
    public float lineSpacing;

    /* renamed from: s, reason: from kotlin metadata */
    public float lineHeight;

    /* renamed from: t, reason: from kotlin metadata */
    public float whitespaceWidth;

    /* renamed from: u, reason: from kotlin metadata */
    public final float charAlignRange;

    /* renamed from: v, reason: from kotlin metadata */
    public final float lineAlignRange;

    /* renamed from: w, reason: from kotlin metadata */
    public final float sameLineRange;

    /* renamed from: x, reason: from kotlin metadata */
    public final float newLineRange;

    /* renamed from: y, reason: from kotlin metadata */
    public final float neighbouringLineRange;

    /* renamed from: z, reason: from kotlin metadata */
    public final float whitespaceMinRange;

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$a */
    /* loaded from: classes8.dex */
    public static final class C9571a<T, R> implements Function {
        public C9571a() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends Object> apply(@NotNull Unit it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RelayoutRealtimeBeautifyShapesAction.this.m39298s();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$b */
    /* loaded from: classes8.dex */
    public static final class C9572b<T, R> implements Function {
        public C9572b() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HWRTextShape> apply(@NotNull Object it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RelayoutRealtimeBeautifyShapesAction.this.m39287N();
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$c */
    /* loaded from: classes8.dex */
    public static final class C9573c<T> implements Consumer {
        public C9573c() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<HWRTextShape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RelayoutRealtimeBeautifyShapesAction.this.getRelayoutShapes().addAll(it2);
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$d */
    /* loaded from: classes8.dex */
    public static final class C9574d<T, R> implements Function {
        public C9574d() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final RelayoutRealtimeBeautifyShapesAction apply(@NotNull List<HWRTextShape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return RelayoutRealtimeBeautifyShapesAction.this;
        }
    }

    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$e */
    /* loaded from: classes8.dex */
    public static final class C9575e<T, R> implements Function {
        public C9575e() {
        }

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final ObservableSource<? extends List<Shape>> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            return new TransformShapesToSamePageAction(RelayoutRealtimeBeautifyShapesAction.this.getEditorBundle(), it2, RelayoutRealtimeBeautifyShapesAction.this.currentPageId).build();
        }
    }

    @SourceDebugExtension({"SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n800#2,11:530\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$2\n*L\n100#1:530,11\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$f */
    /* loaded from: classes8.dex */
    public static final class C9576f<T, R> implements Function {

        /* renamed from: e */
        public static final C9576f<T, R> f49987e = new C9576f<>();

        @Override // io.reactivex.rxjava3.functions.Function
        @NotNull
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final List<HWRTextShape> apply(@NotNull List<? extends Shape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            ArrayList arrayList = new ArrayList();
            for (T t : it2) {
                if (t instanceof HWRTextShape) {
                    arrayList.add(t);
                }
            }
            return arrayList;
        }
    }

    @SourceDebugExtension({"SMAP\nRelayoutRealtimeBeautifyShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,529:1\n766#2:530\n857#2,2:531\n*S KotlinDebug\n*F\n+ 1 RelayoutRealtimeBeautifyShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/ink/RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$3\n*L\n102#1:530\n102#1:531,2\n*E\n"})
    /* renamed from: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$g */
    /* loaded from: classes8.dex */
    public static final class C9580g<T> implements Consumer {
        public C9580g() {
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final void accept(@NotNull List<HWRTextShape> it2) {
            Intrinsics.checkNotNullParameter(it2, "it");
            RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction = RelayoutRealtimeBeautifyShapesAction.this;
            ArrayList arrayList = new ArrayList();
            for (T t : it2) {
                if (relayoutRealtimeBeautifyShapesAction.m39303y((HWRTextShape) t)) {
                    arrayList.add(t);
                }
            }
            RelayoutRealtimeBeautifyShapesAction.this.relatedShapes.addAll(arrayList);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RelayoutRealtimeBeautifyShapesAction(@NotNull EditorBundle editorBundle, @NotNull List<HWRTextShape> hwrShapes, @NotNull ShapeTypesetArgs typesetArgs, @NotNull String currentPageId, @NotNull Collection<String> relatedPageIds) {
        super(editorBundle);
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        Intrinsics.checkNotNullParameter(hwrShapes, "hwrShapes");
        Intrinsics.checkNotNullParameter(typesetArgs, "typesetArgs");
        Intrinsics.checkNotNullParameter(currentPageId, "currentPageId");
        Intrinsics.checkNotNullParameter(relatedPageIds, "relatedPageIds");
        this.hwrShapes = hwrShapes;
        this.typesetArgs = typesetArgs;
        this.currentPageId = currentPageId;
        this.relatedPageIds = relatedPageIds;
        this.relayoutShapes = new ArrayList();
        this.lastLineShapes = new ArrayList();
        this.relatedShapes = new ArrayList();
        this.relayoutingShapes = new ArrayList();
        this.lastFormattedLineShapes = new ArrayList();
        this.charAlignRange = 0.5f;
        this.lineAlignRange = 0.2f;
        this.sameLineRange = 5.0f;
        this.newLineRange = 0.5f;
        this.neighbouringLineRange = 1.0f;
        this.whitespaceMinRange = 0.75f;
        this.whitespaceMaxRange = 3.5f;
        this.whitespaceMinRangeForCJK = 1.2f;
        this.maxTextSizeDiffRate = 1.0f;
        this.abnormalShapeSizeRange = 1.4f;
        this.TAG = "RelayoutRealtimeBeautifyShapesAction";
    }

    /* renamed from: C */
    public static /* synthetic */ RectF m39273C(RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction, HWRTextShape hWRTextShape, Float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = null;
        }
        return relayoutRealtimeBeautifyShapesAction.m39279B(hWRTextShape, f);
    }

    /* renamed from: G */
    public static /* synthetic */ float m39274G(RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction, Float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = null;
        }
        return relayoutRealtimeBeautifyShapesAction.m39282F(f);
    }

    /* renamed from: K */
    public static /* synthetic */ float m39275K(RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction, HWRTextShape hWRTextShape, Float f, int i, Object obj) {
        if ((i & 2) != 0) {
            f = null;
        }
        return relayoutRealtimeBeautifyShapesAction.m39285J(hWRTextShape, f);
    }

    /* renamed from: M */
    public static /* synthetic */ float m39276M(RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction, Float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = null;
        }
        return relayoutRealtimeBeautifyShapesAction.m39286L(f);
    }

    /* renamed from: v */
    public static /* synthetic */ float m39277v(RelayoutRealtimeBeautifyShapesAction relayoutRealtimeBeautifyShapesAction, float f, float f2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        return relayoutRealtimeBeautifyShapesAction.m39300u(f, f2, z);
    }

    /* renamed from: A */
    public final List<HWRTextShape> m39278A(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        int collectionSizeOrDefault;
        m39283H(lineShapes);
        float m39281E = m39281E(lineShapes);
        float m39284I = m39284I(lineShapes);
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
        Pair<Float, Float> m39299t = m39299t(m39281E, m39284I, (HWRTextShape) firstOrNull);
        float floatValue = m39299t.component1().floatValue();
        float floatValue2 = m39299t.component2().floatValue();
        List<HWRTextShape> list = lineShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        HWRTextShape hWRTextShape = null;
        for (HWRTextShape hWRTextShape2 : list) {
            hWRTextShape = HWRTextShapeLayout.INSTANCE.layoutShape(hWRTextShape2, m39294o(floatValue2, hWRTextShape2, hWRTextShape), floatValue, this.typesetArgs);
            floatValue2 = hWRTextShape.getBoundingRect().right;
            this.relatedShapes.add(hWRTextShape);
            arrayList.add(hWRTextShape);
        }
        return arrayList;
    }

    /* renamed from: B */
    public final RectF m39279B(HWRTextShape shape, Float overriddenFontSize) {
        float floatValue = overriddenFontSize != null ? overriddenFontSize.floatValue() : shape.getTextSize();
        String text = shape.getText();
        if (text == null) {
            text = "";
        }
        ShapeTypesetArgs copy = this.typesetArgs.copy();
        copy.setFontSize(Float.valueOf(floatValue));
        return TextLayout.INSTANCE.loadGlyphRect(copy, text);
    }

    /* renamed from: D */
    public final RectF m39280D(HWRTextShape shape) {
        SourcePointGroup sourceShapeGroup = shape.getSourceShapeGroup();
        List<TouchPoint> points = sourceShapeGroup != null ? sourceShapeGroup.getPoints() : null;
        return (points == null || points.isEmpty()) ^ true ? m39288O(shape) : shape.loadRenderPath().getUnionPathRect();
    }

    /* renamed from: E */
    public final float m39281E(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        Object first;
        float f;
        float f2;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            return 0.0f;
        }
        List<HWRTextShape> m39296q = m39296q(lineShapes);
        if (!m39296q.isEmpty()) {
            Iterator<T> it2 = m39296q.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next = it2.next();
            if (it2.hasNext()) {
                float f3 = ((HWRTextShape) next).getBoundingRect().right;
                do {
                    Object next2 = it2.next();
                    float f4 = ((HWRTextShape) next2).getBoundingRect().right;
                    if (Float.compare(f3, f4) < 0) {
                        next = next2;
                        f3 = f4;
                    }
                } while (it2.hasNext());
            }
            HWRTextShape hWRTextShape2 = (HWRTextShape) next;
            m39291l(hWRTextShape, hWRTextShape2);
            return hWRTextShape2.getBoundingRect().top + m39273C(this, hWRTextShape2, null, 2, null).top;
        }
        List<HWRTextShape> m39297r = m39292m(lineShapes, this.lastFormattedLineShapes) ? this.lastFormattedLineShapes : m39297r(lineShapes);
        boolean z = !m39297r.isEmpty();
        if (z) {
            Iterator<T> it3 = m39297r.iterator();
            if (!it3.hasNext()) {
                throw new NoSuchElementException();
            }
            Object next3 = it3.next();
            if (it3.hasNext()) {
                float f5 = ((HWRTextShape) next3).getBoundingRect().bottom;
                do {
                    Object next4 = it3.next();
                    float f6 = ((HWRTextShape) next4).getBoundingRect().bottom;
                    if (Float.compare(f5, f6) < 0) {
                        next3 = next4;
                        f5 = f6;
                    }
                } while (it3.hasNext());
            }
            m39291l(hWRTextShape, (HWRTextShape) next3);
        }
        if (!this.typesetArgs.getEnableUnifiedParams()) {
            return m39275K(this, hWRTextShape, null, 2, null);
        }
        if (!z) {
            first = CollectionsKt___CollectionsKt.first((List<? extends Object>) lineShapes);
            return m39275K(this, (HWRTextShape) first, null, 2, null);
        }
        Iterator<T> it4 = m39297r.iterator();
        if (!it4.hasNext()) {
            throw new NoSuchElementException();
        }
        Object next5 = it4.next();
        if (it4.hasNext()) {
            float f7 = ((HWRTextShape) next5).getBoundingRect().bottom;
            do {
                Object next6 = it4.next();
                float f8 = ((HWRTextShape) next6).getBoundingRect().bottom;
                if (Float.compare(f7, f8) < 0) {
                    next5 = next6;
                    f7 = f8;
                }
            } while (it4.hasNext());
        }
        HWRTextShape hWRTextShape3 = (HWRTextShape) next5;
        if (m39304z(hWRTextShape.getTextSize(), hWRTextShape3.getTextSize())) {
            m39283H(CollectionKt.asList(hWRTextShape3));
        }
        if (hWRTextShape3.getTextSize() > hWRTextShape.getTextSize()) {
            f = hWRTextShape3.getBoundingRect().bottom;
            f2 = this.lineSpacing;
        } else {
            f = hWRTextShape3.getBoundingRect().top + m39273C(this, hWRTextShape3, null, 2, null).top;
            f2 = this.lineSpacing;
        }
        return f + f2;
    }

    /* renamed from: F */
    public final float m39282F(Float fontSize) {
        ShapeTypesetArgs copy = this.typesetArgs.copy();
        if (fontSize != null) {
            copy.setFontSize(fontSize);
        }
        return TextLayout.INSTANCE.measureLineHeight(copy);
    }

    /* renamed from: H */
    public final void m39283H(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        if (!this.typesetArgs.getEnableUnifiedParams()) {
            firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
            HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
            Float valueOf = hWRTextShape != null ? Float.valueOf(hWRTextShape.getTextSize()) : null;
            if (valueOf != null) {
                this.typesetArgs.setFontSize(Float.valueOf(valueOf.floatValue()));
            }
        }
        this.lineHeight = m39274G(this, null, 1, null);
        this.whitespaceWidth = m39276M(this, null, 1, null);
        this.charSpacing = this.typesetArgs.getCharSpacingInPx();
        this.lineSpacing = this.typesetArgs.getLineSpacingInPx();
    }

    /* renamed from: I */
    public final float m39284I(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        ClosedFloatingPointRange rangeTo;
        Object obj;
        Object last;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            return 0.0f;
        }
        List<HWRTextShape> m39296q = m39296q(lineShapes);
        List<HWRTextShape> list = m39296q;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((HWRTextShape) it2.next()).getBoundingRect());
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList);
        List<HWRTextShape> list2 = lineShapes;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(m39288O((HWRTextShape) it3.next()));
        }
        RectF boundingRectF2 = RectFKt.boundingRectF(arrayList2);
        if (!m39296q.isEmpty()) {
            last = CollectionsKt___CollectionsKt.last((List<? extends Object>) m39296q);
            return m39293n(boundingRectF2, boundingRectF, hWRTextShape, Math.min(((HWRTextShape) last).getTextSize(), hWRTextShape.getTextSize()));
        }
        List<HWRTextShape> m39297r = m39292m(lineShapes, this.lastFormattedLineShapes) ? this.lastFormattedLineShapes : m39297r(lineShapes);
        if (!m39297r.isEmpty()) {
            RectF m39288O = m39288O(hWRTextShape);
            float f = boundingRectF2.left;
            float f2 = this.lineHeight;
            float f3 = this.charAlignRange;
            rangeTo = RangesKt__RangesKt.rangeTo(f - (f2 * f3), f + (f2 * f3));
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : m39297r) {
                if (RangeKt.intersected(RectKt.toClosedRangeX(m39280D((HWRTextShape) obj2)), rangeTo)) {
                    arrayList3.add(obj2);
                }
            }
            Iterator it4 = arrayList3.iterator();
            if (it4.hasNext()) {
                Object next = it4.next();
                if (it4.hasNext()) {
                    float abs = Math.abs(m39288O.centerX() - m39289P((HWRTextShape) next).centerX());
                    do {
                        Object next2 = it4.next();
                        float abs2 = Math.abs(m39288O.centerX() - m39289P((HWRTextShape) next2).centerX());
                        if (Float.compare(abs, abs2) > 0) {
                            next = next2;
                            abs = abs2;
                        }
                    } while (it4.hasNext());
                }
                obj = next;
            } else {
                obj = null;
            }
            HWRTextShape hWRTextShape2 = (HWRTextShape) obj;
            if (hWRTextShape2 != null) {
                return HWRTextShapeLayout.INSTANCE.measureShapeGlyphLeft(hWRTextShape2);
            }
        }
        return boundingRectF2.left;
    }

    /* renamed from: J */
    public final float m39285J(HWRTextShape shape, Float fontSize) {
        List<TouchPoint> points;
        RectF boundRect;
        ShapeTypesetArgs copy = this.typesetArgs.copy();
        if (fontSize != null) {
            copy.setFontSize(fontSize);
        }
        String text = shape.getText();
        if (text == null) {
            text = "";
        }
        FontPathLoadResult loadFontPath = TextLayout.INSTANCE.loadFontPath(copy, text);
        SourcePointGroup sourceShapeGroup = shape.getSourceShapeGroup();
        return ((sourceShapeGroup == null || (points = sourceShapeGroup.getPoints()) == null || (boundRect = GeometryUtils.INSTANCE.boundRect(points)) == null) ? 0.0f : boundRect.top) + loadFontPath.getGlyphRect().top;
    }

    /* renamed from: L */
    public final float m39286L(Float fontSize) {
        ShapeTypesetArgs copy = this.typesetArgs.copy();
        if (fontSize != null) {
            copy.setFontSize(fontSize);
        }
        return TextLayout.INSTANCE.measureWhitespaceWidth(copy);
    }

    /* renamed from: N */
    public final List<HWRTextShape> m39287N() {
        this.lastFormattedLineShapes.clear();
        try {
            List<List<HWRTextShape>> m39302x = m39302x();
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : m39302x) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                List<HWRTextShape> m39278A = m39278A((List) obj);
                this.relayoutingShapes.addAll(m39278A);
                arrayList.addAll(m39278A);
                CollectionKt.reset(this.lastFormattedLineShapes, m39278A);
                if (i == m39302x.size() - 1) {
                    this.lastLineShapes.addAll(m39278A);
                }
                i = i2;
            }
            return arrayList;
        } catch (Throwable th) {
            Log.e(this.TAG, "relayout error", th);
            return CollectionKt.copy(this.hwrShapes);
        }
    }

    /* renamed from: O */
    public final RectF m39288O(HWRTextShape shape) {
        SourcePointGroup sourceShapeGroup;
        List<TouchPoint> points;
        return (shape == null || (sourceShapeGroup = shape.getSourceShapeGroup()) == null || (points = sourceShapeGroup.getPoints()) == null) ? new RectF() : GeometryUtils.INSTANCE.boundRect(points);
    }

    /* renamed from: P */
    public final RectF m39289P(HWRTextShape shape) {
        return this.relayoutingShapes.contains(shape) ? m39288O(shape) : shape.getBoundingRect();
    }

    /* renamed from: Q */
    public final boolean m39290Q(char r4) {
        List listOf;
        if (StringKt.isCJK(r4)) {
            return true;
        }
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Character[]{'{', '}'});
        return listOf.contains(Character.valueOf(r4));
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseAction
    @NotNull
    public Observable<RelayoutRealtimeBeautifyShapesAction> create() {
        if (this.hwrShapes.isEmpty()) {
            Observable<RelayoutRealtimeBeautifyShapesAction> just = Observable.just(this);
            Intrinsics.checkNotNullExpressionValue(just, "just(...)");
            return just;
        }
        Iterator<T> it2 = this.hwrShapes.iterator();
        while (it2.hasNext()) {
            ((HWRTextShape) it2.next()).setShapeMatrix(null);
        }
        Observable<RelayoutRealtimeBeautifyShapesAction> map = Observable.just(Unit.INSTANCE).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).flatMap(new C9571a()).observeOn(EditorBundleKt.noteScheduler(getEditorBundle())).map(new C9572b()).doOnNext(new C9573c()).map(new C9574d());
        Intrinsics.checkNotNullExpressionValue(map, "map(...)");
        return map;
    }

    @NotNull
    public final List<HWRTextShape> getLastLineShapes() {
        return this.lastLineShapes;
    }

    @NotNull
    public final List<HWRTextShape> getRelayoutShapes() {
        return this.relayoutShapes;
    }

    /* renamed from: l */
    public final void m39291l(HWRTextShape firstLineShape, HWRTextShape comparedShape) {
        Boolean valueOf = Boolean.valueOf(m39304z(firstLineShape.getTextSize(), comparedShape.getTextSize()));
        if (!valueOf.booleanValue()) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.booleanValue();
            m39283H(CollectionKt.asList(comparedShape));
        }
    }

    /* renamed from: m */
    public final boolean m39292m(List<HWRTextShape> currentLineShapes, List<HWRTextShape> lastLineShapes) {
        int collectionSizeOrDefault;
        int collectionSizeOrDefault2;
        List<HWRTextShape> list = currentLineShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(m39288O((HWRTextShape) it2.next()));
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList);
        List<HWRTextShape> list2 = lastLineShapes;
        collectionSizeOrDefault2 = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault2);
        Iterator<T> it3 = list2.iterator();
        while (it3.hasNext()) {
            arrayList2.add(m39288O((HWRTextShape) it3.next()));
        }
        float f = boundingRectF.top - RectFKt.boundingRectF(arrayList2).bottom;
        return 0.0f <= f && f <= this.lineHeight * this.neighbouringLineRange;
    }

    /* renamed from: n */
    public final float m39293n(RectF previousRect, RectF currentRect, HWRTextShape firstLineShape, float textSizeForSpacing) {
        float f = currentRect.right;
        float f2 = previousRect.left;
        float f3 = f2 - f;
        float m39301w = m39301w(firstLineShape);
        float m39286L = m39286L(Float.valueOf(textSizeForSpacing));
        float m39277v = m39277v(this, f, m39279B(firstLineShape, this.typesetArgs.getFontSize()).left, false, 4, null);
        return f3 > this.whitespaceMaxRange * m39286L ? ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(f2), Float.valueOf(m39277v))).floatValue() : f3 >= m39286L * m39301w ? f + this.whitespaceWidth + this.charSpacing : m39277v;
    }

    /* renamed from: o */
    public final float m39294o(float currentLineRight, HWRTextShape currentShape, HWRTextShape previousShape) {
        if (previousShape == null) {
            return currentLineRight;
        }
        GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
        SourcePointGroup sourceShapeGroup = previousShape.getSourceShapeGroup();
        float f = geometryUtils.boundRect(sourceShapeGroup != null ? sourceShapeGroup.getPoints() : null).right;
        SourcePointGroup sourceShapeGroup2 = currentShape.getSourceShapeGroup();
        float f2 = geometryUtils.boundRect(sourceShapeGroup2 != null ? sourceShapeGroup2.getPoints() : null).left;
        float f3 = f2 - f;
        float m39286L = m39286L(Float.valueOf(currentShape.getTextSize()));
        float m39301w = m39301w(currentShape);
        float m39277v = m39277v(this, currentLineRight, m39279B(currentShape, this.typesetArgs.getFontSize()).left, false, 4, null);
        return f3 > this.whitespaceMaxRange * m39286L ? ((Number) MathUtils.INSTANCE.atLeast(Float.valueOf(f2), Float.valueOf(m39277v))).floatValue() : f3 >= m39286L * m39301w ? currentLineRight + this.whitespaceWidth + this.charSpacing : m39277v;
    }

    /* renamed from: p */
    public final List<HWRTextShape> m39295p(List<HWRTextShape> shapes) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : shapes) {
            HWRTextShape hWRTextShape = (HWRTextShape) obj;
            float height = hWRTextShape.loadRenderPath().getUnionPathRect().height();
            GeometryUtils geometryUtils = GeometryUtils.INSTANCE;
            SourcePointGroup sourceShapeGroup = hWRTextShape.getSourceShapeGroup();
            if (MathUtils.INSTANCE.differRateToShorter(Float.valueOf(height), Float.valueOf(geometryUtils.boundRect(sourceShapeGroup != null ? sourceShapeGroup.getPoints() : null).height())) < this.abnormalShapeSizeRange) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: q */
    public final List<HWRTextShape> m39296q(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        int collectionSizeOrDefault;
        ClosedFloatingPointRange rangeTo;
        List sortedWith;
        Object lastOrNull;
        ClosedFloatingPointRange rangeTo2;
        boolean isSameLine;
        List<HWRTextShape> emptyList;
        List<HWRTextShape> emptyList2;
        List<HWRTextShape> emptyList3;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            emptyList3 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList3;
        }
        RectF m39288O = m39288O(hWRTextShape);
        List<HWRTextShape> list = lineShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(m39288O((HWRTextShape) it2.next()));
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList);
        rangeTo = RangesKt__RangesKt.rangeTo(boundingRectF.top + (this.lineHeight * this.lineAlignRange), boundingRectF.bottom);
        if (rangeTo.isEmpty()) {
            emptyList2 = CollectionsKt__CollectionsKt.emptyList();
            return emptyList2;
        }
        List<HWRTextShape> list2 = this.relatedShapes;
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it3 = list2.iterator();
        while (true) {
            if (!it3.hasNext()) {
                break;
            }
            Object next = it3.next();
            if (m39289P((HWRTextShape) next).right < boundingRectF.left) {
                arrayList2.add(next);
            }
        }
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList2, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$filterSameLineShapes$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((HWRTextShape) t).getBoundingRect().right), Float.valueOf(((HWRTextShape) t2).getBoundingRect().right));
                return compareValues;
            }
        });
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) sortedWith);
        HWRTextShape hWRTextShape2 = (HWRTextShape) lastOrNull;
        if (hWRTextShape2 == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        float m39286L = m39286L(Float.valueOf(Math.min(hWRTextShape2.getTextSize(), hWRTextShape.getTextSize())));
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : sortedWith) {
            HWRTextShape hWRTextShape3 = (HWRTextShape) obj;
            ClosedFloatingPointRange rangeTo3 = this.relayoutingShapes.contains(hWRTextShape3) ? RangesKt__RangesKt.rangeTo(boundingRectF.left - (this.sameLineRange * m39286L), Float.MAX_VALUE) : RangesKt__RangesKt.rangeTo(boundingRectF.left - (this.sameLineRange * m39286L), boundingRectF.right);
            RectF m39289P = m39289P(hWRTextShape3);
            rangeTo2 = RangesKt__RangesKt.rangeTo(m39289P.left, m39289P.right);
            if (RangeKt.intersected(rangeTo2, rangeTo3)) {
                HWRTextShapeLayout hWRTextShapeLayout = HWRTextShapeLayout.INSTANCE;
                String text = hWRTextShape.getText();
                if (text == null) {
                    text = "";
                }
                String text2 = hWRTextShape3.getText();
                String str = text2 == null ? "" : text2;
                String typeface = this.typesetArgs.getTypeface();
                isSameLine = hWRTextShapeLayout.isSameLine(m39288O, text, m39289P, str, typeface == null ? "" : typeface);
            } else {
                isSameLine = false;
            }
            if (isSameLine) {
                arrayList3.add(obj);
            }
        }
        return arrayList3;
    }

    /* renamed from: r */
    public final List<HWRTextShape> m39297r(List<HWRTextShape> lineShapes) {
        Object firstOrNull;
        int collectionSizeOrDefault;
        ClosedFloatingPointRange rangeTo;
        ClosedFloatingPointRange rangeTo2;
        boolean isUpperLine;
        List<HWRTextShape> emptyList;
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) lineShapes);
        HWRTextShape hWRTextShape = (HWRTextShape) firstOrNull;
        if (hWRTextShape == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        RectF m39288O = m39288O(hWRTextShape);
        List<HWRTextShape> list = lineShapes;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(m39288O((HWRTextShape) it2.next()));
        }
        RectF boundingRectF = RectFKt.boundingRectF(arrayList);
        float f = boundingRectF.left;
        float f2 = this.lineHeight;
        rangeTo = RangesKt__RangesKt.rangeTo(f - f2, boundingRectF.right + f2);
        List<HWRTextShape> list2 = this.relatedShapes;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list2) {
            HWRTextShape hWRTextShape2 = (HWRTextShape) obj;
            RectF m39289P = m39289P(hWRTextShape2);
            rangeTo2 = RangesKt__RangesKt.rangeTo(m39289P.left, m39289P.right);
            if (RangeKt.intersected(rangeTo2, rangeTo)) {
                HWRTextShapeLayout hWRTextShapeLayout = HWRTextShapeLayout.INSTANCE;
                String text = hWRTextShape.getText();
                if (text == null) {
                    text = "";
                }
                String text2 = hWRTextShape2.getText();
                String str = text2 == null ? "" : text2;
                String typeface = this.typesetArgs.getTypeface();
                isUpperLine = hWRTextShapeLayout.isUpperLine(m39288O, text, m39289P, str, typeface == null ? "" : typeface);
            } else {
                isUpperLine = false;
            }
            if (isUpperLine) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    /* renamed from: s */
    public final Observable<?> m39298s() {
        Observable<?> doOnNext = new LoadPageShapesAction(getEditorBundle(), this.relatedPageIds, new Function1<Shape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$findRelatedHwrShapes$predicate$1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final Boolean invoke(@NotNull Shape it2) {
                Intrinsics.checkNotNullParameter(it2, "it");
                return Boolean.valueOf(ShapeTypes.INSTANCE.isHwrTextShape(it2));
            }
        }, new CBQueryArgs().andWith(CouchUtils.INSTANCE.equalExpression("shapeType", 48))).build().flatMap(new C9575e()).map(C9576f.f49987e).doOnNext(new C9580g());
        Intrinsics.checkNotNullExpressionValue(doOnNext, "doOnNext(...)");
        return doOnNext;
    }

    /* renamed from: t */
    public final Pair<Float, Float> m39299t(float baseLine, float startX, HWRTextShape firstLineShape) {
        List sortedWith;
        Object lastOrNull;
        Object value;
        List<HWRTextShape> list = this.relayoutingShapes;
        if (!(!list.isEmpty())) {
            list = null;
        }
        if (list != null && firstLineShape != null) {
            Map map = CollectionKt.toMap(this.relayoutingShapes, new Function1<HWRTextShape, HWRTextShape>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final HWRTextShape invoke(@NotNull HWRTextShape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return it2;
                }
            }, new Function1<HWRTextShape, Float>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$measuredBaselines$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Float invoke(@NotNull HWRTextShape it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Float.valueOf(HWRTextShapeLayout.INSTANCE.measureShapeBaseline(it2));
                }
            });
            float m39282F = m39282F(this.typesetArgs.getFontSize());
            Float lineSpacing = this.typesetArgs.getLineSpacing();
            float floatValue = lineSpacing != null ? lineSpacing.floatValue() : 1.1f;
            Iterator it2 = map.entrySet().iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            float floatValue2 = ((Number) ((Map.Entry) it2.next()).getValue()).floatValue();
            while (it2.hasNext()) {
                floatValue2 = Math.max(floatValue2, ((Number) ((Map.Entry) it2.next()).getValue()).floatValue());
            }
            float f = floatValue2 + (floatValue * m39282F);
            List<HWRTextShape> list2 = this.relayoutingShapes;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list2) {
                value = MapsKt__MapsKt.getValue(map, (HWRTextShape) obj);
                if (Math.abs(baseLine - ((Number) value).floatValue()) < this.newLineRange * m39282F) {
                    arrayList.add(obj);
                }
            }
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$fixCrossLineShapes$$inlined$sortedBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Float.valueOf(((HWRTextShape) t).getBoundingRect().right), Float.valueOf(((HWRTextShape) t2).getBoundingRect().right));
                    return compareValues;
                }
            });
            lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) sortedWith);
            HWRTextShape hWRTextShape = (HWRTextShape) lastOrNull;
            if (hWRTextShape == null) {
                return new Pair<>(MathUtils.INSTANCE.atLeast(Float.valueOf(baseLine), Float.valueOf(f)), Float.valueOf(startX));
            }
            return new Pair<>(Float.valueOf(HWRTextShapeLayout.INSTANCE.measureShapeBaseline(hWRTextShape)), MathUtils.INSTANCE.atLeast(Float.valueOf(startX), Float.valueOf(m39277v(this, hWRTextShape.getBoundingRect().right, m39279B(firstLineShape, Float.valueOf(firstLineShape.getTextSize())).left, false, 4, null))));
        }
        return new Pair<>(Float.valueOf(baseLine), Float.valueOf(startX));
    }

    /* renamed from: u */
    public final float m39300u(float previousCharRight, float fontInnerSpacing, boolean dynamicSpacing) {
        return dynamicSpacing ? previousCharRight + this.charSpacing + fontInnerSpacing : previousCharRight + this.charSpacing;
    }

    /* renamed from: w */
    public final float m39301w(HWRTextShape shape) {
        String text = shape.getText();
        if (text == null) {
            text = "";
        }
        return m39290Q(StringKt.charAt(text, 0, ' ')) ? this.whitespaceMinRangeForCJK : this.whitespaceMinRange;
    }

    /* renamed from: x */
    public final List<List<HWRTextShape>> m39302x() {
        Object first;
        List<List<HWRTextShape>> emptyList;
        List<HWRTextShape> list = this.hwrShapes;
        if (!(!list.isEmpty())) {
            list = null;
        }
        if (list == null) {
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            return emptyList;
        }
        final Ref.FloatRef floatRef = new Ref.FloatRef();
        first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.hwrShapes);
        floatRef.element = ((HWRTextShape) first).getTextSize();
        return CollectionKt.group(this.hwrShapes, new Function2<HWRTextShape, HWRTextShape, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.action.ink.RelayoutRealtimeBeautifyShapesAction$groupLineShapes$grouped$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Boolean invoke(@NotNull HWRTextShape prev, @NotNull HWRTextShape next) {
                boolean m39304z;
                float m39285J;
                float m39285J2;
                float m39282F;
                float f;
                Intrinsics.checkNotNullParameter(prev, "prev");
                Intrinsics.checkNotNullParameter(next, "next");
                m39304z = RelayoutRealtimeBeautifyShapesAction.this.m39304z(floatRef.element, next.getTextSize());
                if (!m39304z) {
                    floatRef.element = next.getTextSize();
                    return Boolean.FALSE;
                }
                m39285J = RelayoutRealtimeBeautifyShapesAction.this.m39285J(next, Float.valueOf(next.getTextSize()));
                m39285J2 = RelayoutRealtimeBeautifyShapesAction.this.m39285J(prev, Float.valueOf(prev.getTextSize()));
                float f2 = m39285J - m39285J2;
                m39282F = RelayoutRealtimeBeautifyShapesAction.this.m39282F(Float.valueOf(Math.min(next.getTextSize(), prev.getTextSize())));
                f = RelayoutRealtimeBeautifyShapesAction.this.newLineRange;
                if (f2 >= m39282F * f) {
                    floatRef.element = next.getTextSize();
                    return Boolean.FALSE;
                }
                return Boolean.TRUE;
            }
        });
    }

    /* renamed from: y */
    public final boolean m39303y(HWRTextShape shape) {
        if (MatrixKt.getScaleX(shape.getShapeMatrix()) == 1.0f) {
            if (MatrixKt.getScaleY(shape.getShapeMatrix()) == 1.0f) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: z */
    public final boolean m39304z(float preTextSize, float nextTextSize) {
        return MathUtils.INSTANCE.differRateToShorter(Float.valueOf(preTextSize), Float.valueOf(nextTextSize)) < this.maxTextSizeDiffRate;
    }
}
