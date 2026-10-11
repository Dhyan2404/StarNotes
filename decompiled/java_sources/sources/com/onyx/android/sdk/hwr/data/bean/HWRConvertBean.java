package com.onyx.android.sdk.hwr.data.bean;

import androidx.core.app.C0619b;
import com.alibaba.fastjson2.annotation.JSONField;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.global.HWREngineConstant;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0014\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u0007\n\u0002\bO\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b´\u0001\u0010µ\u0001J\u0006\u0010\u0003\u001a\u00020\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u0006\u0010\u0006\u001a\u00020\u0002J\b\u0010\b\u001a\u00020\u0007H\u0016R\"\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u0013\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\n\u001a\u0004\b\u0011\u0010\f\"\u0004\b\u0012\u0010\u000eR(\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001c0\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001d\u0010\u0016\u001a\u0004\b\u001e\u0010\u0018\"\u0004\b\u001f\u0010\u001aR\"\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\n\u001a\u0004\b\"\u0010\f\"\u0004\b#\u0010\u000eR(\u0010)\u001a\b\u0012\u0004\u0012\u00020%0\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0016\u001a\u0004\b'\u0010\u0018\"\u0004\b(\u0010\u001aR$\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b+\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R(\u00106\u001a\b\u0012\u0004\u0012\u0002020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010\u0016\u001a\u0004\b4\u0010\u0018\"\u0004\b5\u0010\u001aR(\u0010;\u001a\b\u0012\u0004\u0012\u0002070\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u0010\u0016\u001a\u0004\b9\u0010\u0018\"\u0004\b:\u0010\u001aR(\u0010@\u001a\b\u0012\u0004\u0012\u00020<0\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b=\u0010\u0016\u001a\u0004\b>\u0010\u0018\"\u0004\b?\u0010\u001aR(\u0010E\u001a\b\u0012\u0004\u0012\u00020A0\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0016\u001a\u0004\bC\u0010\u0018\"\u0004\bD\u0010\u001aR\"\u0010M\u001a\u00020F8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u0010H\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR(\u0010S\u001a\b\u0012\u0004\u0012\u00020O0N8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010\u0016\u001a\u0004\bQ\u0010\u0018\"\u0004\bR\u0010\u001aR$\u0010W\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010\n\u001a\u0004\bU\u0010\f\"\u0004\bV\u0010\u000eR$\u0010[\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u0010\n\u001a\u0004\bY\u0010\f\"\u0004\bZ\u0010\u000eR\"\u0010c\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b]\u0010^\u001a\u0004\b_\u0010`\"\u0004\ba\u0010bR\"\u0010g\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010^\u001a\u0004\be\u0010`\"\u0004\bf\u0010bR\"\u0010k\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u0010^\u001a\u0004\bi\u0010`\"\u0004\bj\u0010bR\"\u0010o\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010^\u001a\u0004\bm\u0010`\"\u0004\bn\u0010bR\"\u0010s\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010^\u001a\u0004\bq\u0010`\"\u0004\br\u0010bR\"\u0010w\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010^\u001a\u0004\bu\u0010`\"\u0004\bv\u0010bR\"\u0010h\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010^\u001a\u0004\by\u0010`\"\u0004\bz\u0010bR\"\u0010~\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b{\u0010^\u001a\u0004\b|\u0010`\"\u0004\b}\u0010bR%\u0010\u0082\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u007f\u0010^\u001a\u0005\b\u0080\u0001\u0010`\"\u0005\b\u0081\u0001\u0010bR&\u0010\u0086\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0083\u0001\u0010^\u001a\u0005\b\u0084\u0001\u0010`\"\u0005\b\u0085\u0001\u0010bR&\u0010\u008a\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0087\u0001\u0010^\u001a\u0005\b\u0088\u0001\u0010`\"\u0005\b\u0089\u0001\u0010bR&\u0010\u008e\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008b\u0001\u0010^\u001a\u0005\b\u008c\u0001\u0010`\"\u0005\b\u008d\u0001\u0010bR%\u0010\u007f\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008f\u0001\u0010^\u001a\u0005\b\u0090\u0001\u0010`\"\u0005\b\u0091\u0001\u0010bR&\u0010\u0083\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0092\u0001\u0010^\u001a\u0005\b\u0093\u0001\u0010`\"\u0005\b\u0094\u0001\u0010bR&\u0010\u0098\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0095\u0001\u0010^\u001a\u0005\b\u0096\u0001\u0010`\"\u0005\b\u0097\u0001\u0010bR&\u0010\u009c\u0001\u001a\u00020\\8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0099\u0001\u0010^\u001a\u0005\b\u009a\u0001\u0010`\"\u0005\b\u009b\u0001\u0010bR'\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b^\u0010\n\u001a\u0005\b\u009d\u0001\u0010\f\"\u0005\b\u009e\u0001\u0010\u000eR(\u0010£\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b \u0001\u0010\n\u001a\u0005\b¡\u0001\u0010\f\"\u0005\b¢\u0001\u0010\u000eR(\u0010§\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¤\u0001\u0010\n\u001a\u0005\b¥\u0001\u0010\f\"\u0005\b¦\u0001\u0010\u000eR(\u0010«\u0001\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b¨\u0001\u0010\n\u001a\u0005\b©\u0001\u0010\f\"\u0005\bª\u0001\u0010\u000eR,\u0010³\u0001\u001a\u0005\u0018\u00010¬\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u00ad\u0001\u0010®\u0001\u001a\u0006\b¯\u0001\u0010°\u0001\"\u0006\b±\u0001\u0010²\u0001¨\u0006¶\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRConvertBean;", "", "", "isEmpty", "Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;", "getHWRElement", "isMLGesture", "", "toString", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "type", "b", "getKind", "setKind", HWREngineConstant.Constant.KIND, "", "c", "Ljava/util/List;", "getElements", "()Ljava/util/List;", "setElements", "(Ljava/util/List;)V", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_ELEMENTS, "Lcom/onyx/android/sdk/hwr/data/bean/HWRExpression;", "d", "getExpressions", "setExpressions", "expressions", "e", "getLabel", "setLabel", C0619b.f5199k, "Lcom/onyx/android/sdk/hwr/data/bean/HWRCandidate;", C6997f.f39671c, "getCandidates", "setCandidates", "candidates", "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", C6998g.f39679a, "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;", C6999h.f39688c, "getWords", "setWords", "words", "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "i", "getChars", "setChars", "chars", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "j", "getItems", "setItems", FirebaseAnalytics.Param.ITEMS, "Lcom/onyx/android/sdk/hwr/data/bean/HWRGestureWithoutContext;", C4921e.f26537n, "getGestures", "setGestures", "gestures", "", "l", "[F", "getPoints", "()[F", "setPoints", "([F)V", PointConstant.POINT_FILE_END, "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPointerEvent;", "m", "getHwrResultPoints", "setHwrResultPoints", "hwrResultPoints", GoogleApiAvailabilityLight.f29016b, "getVersion", "setVersion", "version", C4921e.f26528e, "getId", "setId", "id", "", "p", "F", "getX1", "()F", "setX1", "(F)V", "x1", "q", "getY1", "setY1", "y1", "r", "getX2", "setX2", "x2", "s", "getY2", "setY2", "y2", "t", "getCx", "setCx", "cx", "u", "getCy", "setCy", "cy", "v", "getR", "setR", "w", "getRx", "setRx", "rx", "x", "getRy", "setRy", "ry", "y", "getPhi", "setPhi", "phi", "z", "getStartAngle", "setStartAngle", "startAngle", "A", "getSweepAngle", "setSweepAngle", "sweepAngle", "B", "getX", "setX", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getY", "setY", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getWidth", "setWidth", "width", "E", "getHeight", "setHeight", "height", "getStartDecoration", "setStartDecoration", "startDecoration", "G", "getEndDecoration", "setEndDecoration", "endDecoration", "H", "getP1Decoration", "setP1Decoration", "p1Decoration", "I", "getP2Decoration", "setP2Decoration", "p2Decoration", "Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;", "J", "Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;", "getResolverContext", "()Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;", "setResolverContext", "(Lcom/onyx/android/sdk/hwr/data/bean/ResolverContext;)V", "resolverContext", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRConvertBean {

    /* renamed from: A, reason: from kotlin metadata */
    public float sweepAngle;

    /* renamed from: B, reason: from kotlin metadata */
    public float x;

    /* renamed from: C, reason: from kotlin metadata */
    public float y;

    /* renamed from: D, reason: from kotlin metadata */
    public float width;

    /* renamed from: E, reason: from kotlin metadata */
    public float height;

    /* renamed from: F, reason: from kotlin metadata */
    @Nullable
    public String startDecoration;

    /* renamed from: G, reason: from kotlin metadata */
    @Nullable
    public String endDecoration;

    /* renamed from: H, reason: from kotlin metadata */
    @Nullable
    public String p1Decoration;

    /* renamed from: I, reason: from kotlin metadata */
    @Nullable
    public String p2Decoration;

    /* renamed from: J, reason: from kotlin metadata */
    @Nullable
    public ResolverContext resolverContext;

    /* renamed from: g, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    /* renamed from: m, reason: from kotlin metadata */
    @NotNull
    public List<HWRPointerEvent> hwrResultPoints;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public String version;

    /* renamed from: o, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: p, reason: from kotlin metadata */
    public float x1;

    /* renamed from: q, reason: from kotlin metadata */
    public float y1;

    /* renamed from: r, reason: from kotlin metadata */
    public float x2;

    /* renamed from: s, reason: from kotlin metadata */
    public float y2;

    /* renamed from: t, reason: from kotlin metadata */
    public float cx;

    /* renamed from: u, reason: from kotlin metadata */
    public float cy;

    /* renamed from: v, reason: from kotlin metadata */
    public float r;

    /* renamed from: w, reason: from kotlin metadata */
    public float rx;

    /* renamed from: x, reason: from kotlin metadata */
    public float ry;

    /* renamed from: y, reason: from kotlin metadata */
    public float phi;

    /* renamed from: z, reason: from kotlin metadata */
    public float startAngle;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public String type = "";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String kind = "";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public List<HWRElement> elements = new ArrayList();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public List<HWRExpression> expressions = new ArrayList();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public String label = "";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public List<HWRCandidate> candidates = new ArrayList();

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public List<HWRWord> words = new ArrayList();

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public List<HWRChar> chars = new ArrayList();

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public List<HWRItem> items = new ArrayList();

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public List<HWRGestureWithoutContext> gestures = new ArrayList();

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public float[] points = new float[0];

    public HWRConvertBean() {
        List<HWRPointerEvent> emptyList;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.hwrResultPoints = emptyList;
    }

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @NotNull
    public final List<HWRCandidate> getCandidates() {
        return this.candidates;
    }

    @NotNull
    public final List<HWRChar> getChars() {
        return this.chars;
    }

    public final float getCx() {
        return this.cx;
    }

    public final float getCy() {
        return this.cy;
    }

    @NotNull
    public final List<HWRElement> getElements() {
        return this.elements;
    }

    @Nullable
    public final String getEndDecoration() {
        return this.endDecoration;
    }

    @NotNull
    public final List<HWRExpression> getExpressions() {
        return this.expressions;
    }

    @NotNull
    public final List<HWRGestureWithoutContext> getGestures() {
        return this.gestures;
    }

    @JSONField(serialize = false)
    @NotNull
    public final HWRElement getHWRElement() {
        HWRElement hWRElement = new HWRElement();
        hWRElement.setId(this.id);
        hWRElement.setType(this.type);
        hWRElement.setKind(this.kind);
        hWRElement.setWords(this.words);
        hWRElement.setChars(this.chars);
        hWRElement.setItems(this.items);
        hWRElement.setLabel(this.label);
        hWRElement.setBoundBox(this.boundBox);
        hWRElement.setPoints(this.points);
        hWRElement.setLine(this.x1, this.y1, this.x2, this.y2);
        hWRElement.setCircle(this.cx, this.cy, this.r, this.rx, this.ry);
        hWRElement.setRectangle(this.x, this.y, this.width, this.height);
        hWRElement.setShapeAngle(this.phi, this.startAngle, this.sweepAngle);
        hWRElement.setDecorationDesc(this.startDecoration, this.endDecoration, this.p1Decoration, this.p2Decoration);
        return hWRElement;
    }

    public final float getHeight() {
        return this.height;
    }

    @NotNull
    public final List<HWRPointerEvent> getHwrResultPoints() {
        return this.hwrResultPoints;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @NotNull
    public final List<HWRItem> getItems() {
        return this.items;
    }

    @NotNull
    public final String getKind() {
        return this.kind;
    }

    @NotNull
    public final String getLabel() {
        return this.label;
    }

    @Nullable
    public final String getP1Decoration() {
        return this.p1Decoration;
    }

    @Nullable
    public final String getP2Decoration() {
        return this.p2Decoration;
    }

    public final float getPhi() {
        return this.phi;
    }

    @NotNull
    public final float[] getPoints() {
        return this.points;
    }

    public final float getR() {
        return this.r;
    }

    @Nullable
    public final ResolverContext getResolverContext() {
        return this.resolverContext;
    }

    public final float getRx() {
        return this.rx;
    }

    public final float getRy() {
        return this.ry;
    }

    public final float getStartAngle() {
        return this.startAngle;
    }

    @Nullable
    public final String getStartDecoration() {
        return this.startDecoration;
    }

    public final float getSweepAngle() {
        return this.sweepAngle;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }

    @Nullable
    public final String getVersion() {
        return this.version;
    }

    public final float getWidth() {
        return this.width;
    }

    @NotNull
    public final List<HWRWord> getWords() {
        return this.words;
    }

    public final float getX() {
        return this.x;
    }

    public final float getX1() {
        return this.x1;
    }

    public final float getX2() {
        return this.x2;
    }

    public final float getY() {
        return this.y;
    }

    public final float getY1() {
        return this.y1;
    }

    public final float getY2() {
        return this.y2;
    }

    public final boolean isEmpty() {
        if (this.words == null) {
            return true;
        }
        String str = this.label;
        return str == null || str.length() == 0;
    }

    public final boolean isMLGesture() {
        String str = this.label;
        if (str == null) {
            return false;
        }
        MLGesture mLGesture = MLGesture.INSTANCE;
        Intrinsics.checkNotNull(str);
        return mLGesture.isMLGesture(str);
    }

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setCandidates(@NotNull List<HWRCandidate> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.candidates = list;
    }

    public final void setChars(@NotNull List<HWRChar> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.chars = list;
    }

    public final void setCx(float f) {
        this.cx = f;
    }

    public final void setCy(float f) {
        this.cy = f;
    }

    public final void setElements(@NotNull List<HWRElement> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.elements = list;
    }

    public final void setEndDecoration(@Nullable String str) {
        this.endDecoration = str;
    }

    public final void setExpressions(@NotNull List<HWRExpression> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.expressions = list;
    }

    public final void setGestures(@NotNull List<HWRGestureWithoutContext> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.gestures = list;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setHwrResultPoints(@NotNull List<HWRPointerEvent> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.hwrResultPoints = list;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setItems(@NotNull List<HWRItem> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.items = list;
    }

    public final void setKind(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.kind = str;
    }

    public final void setLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.label = str;
    }

    public final void setP1Decoration(@Nullable String str) {
        this.p1Decoration = str;
    }

    public final void setP2Decoration(@Nullable String str) {
        this.p2Decoration = str;
    }

    public final void setPhi(float f) {
        this.phi = f;
    }

    public final void setPoints(@NotNull float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<set-?>");
        this.points = fArr;
    }

    public final void setR(float f) {
        this.r = f;
    }

    public final void setResolverContext(@Nullable ResolverContext resolverContext) {
        this.resolverContext = resolverContext;
    }

    public final void setRx(float f) {
        this.rx = f;
    }

    public final void setRy(float f) {
        this.ry = f;
    }

    public final void setStartAngle(float f) {
        this.startAngle = f;
    }

    public final void setStartDecoration(@Nullable String str) {
        this.startDecoration = str;
    }

    public final void setSweepAngle(float f) {
        this.sweepAngle = f;
    }

    public final void setType(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.type = str;
    }

    public final void setVersion(@Nullable String str) {
        this.version = str;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    public final void setWords(@NotNull List<HWRWord> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.words = list;
    }

    public final void setX(float f) {
        this.x = f;
    }

    public final void setX1(float f) {
        this.x1 = f;
    }

    public final void setX2(float f) {
        this.x2 = f;
    }

    public final void setY(float f) {
        this.y = f;
    }

    public final void setY1(float f) {
        this.y1 = f;
    }

    public final void setY2(float f) {
        this.y2 = f;
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.toPrettyJson(this);
    }
}
