package com.onyx.android.sdk.hwr.data.bean;

import android.graphics.RectF;
import androidx.core.app.C0619b;
import com.alibaba.fastjson2.annotation.JSONField;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.utils.JSONUtils;
import com.onyx.android.sdk.replicator.note.data.point.PointConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.commonv2.global.HWREngineConstant;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0010\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0014\n\u0002\bE\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b¡\u0001\u0010¢\u0001J&\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0002J.\u0010\u000e\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u0002J&\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002J\u001e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002J.\u0010\u001d\u001a\u00020\u00072\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u00182\b\u0010\u001c\u001a\u0004\u0018\u00010\u0018J\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u001eJ\u0006\u0010\"\u001a\u00020!J\b\u0010#\u001a\u00020\u0018H\u0016R$\u0010*\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010)R$\u0010.\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010%\u001a\u0004\b,\u0010'\"\u0004\b-\u0010)R$\u00102\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010%\u001a\u0004\b0\u0010'\"\u0004\b1\u0010)R\"\u00106\u001a\u00020\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u0010%\u001a\u0004\b4\u0010'\"\u0004\b5\u0010)R*\u0010=\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R$\u0010E\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR*\u0010J\u001a\n\u0012\u0004\u0012\u00020F\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bG\u00108\u001a\u0004\bH\u0010:\"\u0004\bI\u0010<R*\u0010O\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u00108\u001a\u0004\bM\u0010:\"\u0004\bN\u0010<R*\u0010T\u001a\n\u0012\u0004\u0012\u00020P\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u00108\u001a\u0004\bR\u0010:\"\u0004\bS\u0010<R*\u0010Y\u001a\n\u0012\u0004\u0012\u00020U\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bV\u00108\u001a\u0004\bW\u0010:\"\u0004\bX\u0010<R*\u0010]\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u00108\u001a\u0004\b[\u0010:\"\u0004\b\\\u0010<R$\u0010e\u001a\u0004\u0018\u00010^8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b_\u0010`\u001a\u0004\ba\u0010b\"\u0004\bc\u0010dR\"\u0010\u0011\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010g\u001a\u0004\bh\u0010i\"\u0004\bj\u0010kR\"\u0010\u0012\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bl\u0010g\u001a\u0004\bm\u0010i\"\u0004\bn\u0010kR\"\u0010\u000f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010g\u001a\u0004\bp\u0010i\"\u0004\bq\u0010kR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010g\u001a\u0004\bs\u0010i\"\u0004\bt\u0010kR\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bu\u0010g\u001a\u0004\bv\u0010i\"\u0004\bw\u0010kR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000b\u0010g\u001a\u0004\bx\u0010i\"\u0004\by\u0010kR\"\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010g\u001a\u0004\b{\u0010i\"\u0004\b|\u0010kR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b}\u0010g\u001a\u0004\b~\u0010i\"\u0004\b\u007f\u0010kR%\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010g\u001a\u0005\b\u0081\u0001\u0010i\"\u0005\b\u0082\u0001\u0010kR%\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0083\u0001\u0010g\u001a\u0005\b\u0084\u0001\u0010i\"\u0005\b\u0085\u0001\u0010kR%\u0010\u0004\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0086\u0001\u0010g\u001a\u0005\b\u0087\u0001\u0010i\"\u0005\b\u0088\u0001\u0010kR$\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u000f\u0010g\u001a\u0005\b\u0089\u0001\u0010i\"\u0005\b\u008a\u0001\u0010kR$\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u0010\u0010g\u001a\u0005\b\u008b\u0001\u0010i\"\u0005\b\u008c\u0001\u0010kR'\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008d\u0001\u0010%\u001a\u0005\b\u008e\u0001\u0010'\"\u0005\b\u008f\u0001\u0010)R'\u0010\u001c\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0090\u0001\u0010%\u001a\u0005\b\u0091\u0001\u0010'\"\u0005\b\u0092\u0001\u0010)R%\u0010\u0014\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0093\u0001\u0010g\u001a\u0005\b\u0094\u0001\u0010i\"\u0005\b\u0095\u0001\u0010kR%\u0010\u0015\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0096\u0001\u0010g\u001a\u0005\b\u0097\u0001\u0010i\"\u0005\b\u0098\u0001\u0010kR%\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0099\u0001\u0010g\u001a\u0005\b\u009a\u0001\u0010i\"\u0005\b\u009b\u0001\u0010kR'\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u009c\u0001\u0010%\u001a\u0005\b\u009d\u0001\u0010'\"\u0005\b\u009e\u0001\u0010)R&\u0010\u001a\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bg\u0010%\u001a\u0005\b\u009f\u0001\u0010'\"\u0005\b \u0001\u0010)¨\u0006£\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWRElement;", "", "", "x1", "y1", "x2", "y2", "", "setLine", "cx", "cy", "r", "rx", "ry", "setCircle", "x", "y", "width", "height", "setRectangle", "phi", "startAngle", "sweepAngle", "setShapeAngle", "", "startDecoration", "endDecoration", "p1Decoration", "p2Decoration", "setDecorationDesc", "", "Lcom/onyx/android/sdk/hwr/data/bean/HWRPoint;", "getHWRPoints", "Landroid/graphics/RectF;", "toBoundRect", "toString", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "setType", "(Ljava/lang/String;)V", "type", "b", "getKind", "setKind", HWREngineConstant.Constant.KIND, "c", "getId", "setId", "id", "d", "getLabel", "setLabel", C0619b.f5199k, "e", "Ljava/util/List;", Constants.GET_CHILDREN, "()Ljava/util/List;", "setChildren", "(Ljava/util/List;)V", com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_CHILDREN_STRING, "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", C6997f.f39671c, "Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "getBoundBox", "()Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;", "setBoundBox", "(Lcom/onyx/android/sdk/hwr/data/bean/HWRBoundBox;)V", "boundBox", "Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;", C6998g.f39679a, "getEdges", "setEdges", "edges", "Lcom/onyx/android/sdk/hwr/data/bean/HWRWord;", C6999h.f39688c, "getWords", "setWords", "words", "Lcom/onyx/android/sdk/hwr/data/bean/HWRChar;", "i", "getChars", "setChars", "chars", "Lcom/onyx/android/sdk/hwr/data/bean/HWRItem;", "j", "getItems", "setItems", FirebaseAnalytics.Param.ITEMS, C4921e.f26537n, "getCandidates", "setCandidates", "candidates", "", "l", "[F", "getPoints", "()[F", "setPoints", "([F)V", PointConstant.POINT_FILE_END, "m", "F", "getWidth", "()F", "setWidth", "(F)V", GoogleApiAvailabilityLight.f29016b, "getHeight", "setHeight", C4921e.f26528e, "getX", "setX", "p", "getY", "setY", "q", "getCx", "setCx", "getCy", "setCy", "s", "getRx", "setRx", "t", "getRy", "setRy", "u", "getR", "setR", "v", "getX1", "setX1", "w", "getY1", "setY1", "getX2", "setX2", "getY2", "setY2", "z", "getP1Decoration", "setP1Decoration", "A", "getP2Decoration", "setP2Decoration", "B", "getPhi", "setPhi", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getStartAngle", "setStartAngle", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getSweepAngle", "setSweepAngle", "E", "getStartDecoration", "setStartDecoration", "getEndDecoration", "setEndDecoration", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWRElement {

    /* renamed from: A, reason: from kotlin metadata */
    @Nullable
    public String p2Decoration;

    /* renamed from: B, reason: from kotlin metadata */
    public float phi;

    /* renamed from: C, reason: from kotlin metadata */
    public float startAngle;

    /* renamed from: D, reason: from kotlin metadata */
    public float sweepAngle;

    /* renamed from: E, reason: from kotlin metadata */
    @Nullable
    public String startDecoration;

    /* renamed from: F, reason: from kotlin metadata */
    @Nullable
    public String endDecoration;

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String type;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String kind;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public String label = "";

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public List<String> children;

    /* renamed from: f, reason: from kotlin metadata */
    @JSONField(name = IStyleSheet.CLASS_BOUNDING_BOX)
    @Nullable
    public HWRBoundBox boundBox;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public List<HWREdge> edges;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public List<HWRWord> words;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public List<HWRChar> chars;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public List<HWRItem> items;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public List<String> candidates;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public float[] points;

    /* renamed from: m, reason: from kotlin metadata */
    public float width;

    /* renamed from: n, reason: from kotlin metadata */
    public float height;

    /* renamed from: o, reason: from kotlin metadata */
    public float x;

    /* renamed from: p, reason: from kotlin metadata */
    public float y;

    /* renamed from: q, reason: from kotlin metadata */
    public float cx;

    /* renamed from: r, reason: from kotlin metadata */
    public float cy;

    /* renamed from: s, reason: from kotlin metadata */
    public float rx;

    /* renamed from: t, reason: from kotlin metadata */
    public float ry;

    /* renamed from: u, reason: from kotlin metadata */
    public float r;

    /* renamed from: v, reason: from kotlin metadata */
    public float x1;

    /* renamed from: w, reason: from kotlin metadata */
    public float y1;

    /* renamed from: x, reason: from kotlin metadata */
    public float x2;

    /* renamed from: y, reason: from kotlin metadata */
    public float y2;

    /* renamed from: z, reason: from kotlin metadata */
    @Nullable
    public String p1Decoration;

    @Nullable
    public final HWRBoundBox getBoundBox() {
        return this.boundBox;
    }

    @Nullable
    public final List<String> getCandidates() {
        return this.candidates;
    }

    @Nullable
    public final List<HWRChar> getChars() {
        return this.chars;
    }

    @Nullable
    public final List<String> getChildren() {
        return this.children;
    }

    public final float getCx() {
        return this.cx;
    }

    public final float getCy() {
        return this.cy;
    }

    @Nullable
    public final List<HWREdge> getEdges() {
        return this.edges;
    }

    @Nullable
    public final String getEndDecoration() {
        return this.endDecoration;
    }

    @NotNull
    public final List<HWRPoint> getHWRPoints() {
        ArrayList arrayList = new ArrayList();
        float[] fArr = this.points;
        if (fArr != null) {
            Intrinsics.checkNotNull(fArr);
            if (fArr.length > 0) {
                float[] fArr2 = this.points;
                Intrinsics.checkNotNull(fArr2);
                if (fArr2.length % 2 == 0) {
                    int i = 0;
                    while (true) {
                        float[] fArr3 = this.points;
                        Intrinsics.checkNotNull(fArr3);
                        if (i >= fArr3.length) {
                            break;
                        }
                        float[] fArr4 = this.points;
                        Intrinsics.checkNotNull(fArr4);
                        float f = fArr4[i];
                        float[] fArr5 = this.points;
                        Intrinsics.checkNotNull(fArr5);
                        arrayList.add(new HWRPoint(f, fArr5[i + 1]));
                        i += 2;
                    }
                } else {
                    Debug.INSTANCE.m32046e("myscript points do not appear in pairs");
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public final float getHeight() {
        return this.height;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final List<HWRItem> getItems() {
        return this.items;
    }

    @Nullable
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

    @Nullable
    public final float[] getPoints() {
        return this.points;
    }

    public final float getR() {
        return this.r;
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

    @Nullable
    public final String getType() {
        return this.type;
    }

    public final float getWidth() {
        return this.width;
    }

    @Nullable
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

    public final void setBoundBox(@Nullable HWRBoundBox hWRBoundBox) {
        this.boundBox = hWRBoundBox;
    }

    public final void setCandidates(@Nullable List<String> list) {
        this.candidates = list;
    }

    public final void setChars(@Nullable List<HWRChar> list) {
        this.chars = list;
    }

    public final void setChildren(@Nullable List<String> list) {
        this.children = list;
    }

    public final void setCircle(float cx, float cy, float r, float rx, float ry) {
        this.cx = cx;
        this.cy = cy;
        this.r = r;
        this.rx = rx;
        this.ry = ry;
    }

    public final void setCx(float f) {
        this.cx = f;
    }

    public final void setCy(float f) {
        this.cy = f;
    }

    public final void setDecorationDesc(@Nullable String startDecoration, @Nullable String endDecoration, @Nullable String p1Decoration, @Nullable String p2Decoration) {
        this.startDecoration = startDecoration;
        this.endDecoration = endDecoration;
        this.p1Decoration = p1Decoration;
        this.p2Decoration = p2Decoration;
    }

    public final void setEdges(@Nullable List<HWREdge> list) {
        this.edges = list;
    }

    public final void setEndDecoration(@Nullable String str) {
        this.endDecoration = str;
    }

    public final void setHeight(float f) {
        this.height = f;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setItems(@Nullable List<HWRItem> list) {
        this.items = list;
    }

    public final void setKind(@Nullable String str) {
        this.kind = str;
    }

    public final void setLabel(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.label = str;
    }

    public final void setLine(float x1, float y1, float x2, float y2) {
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
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

    public final void setPoints(@Nullable float[] fArr) {
        this.points = fArr;
    }

    public final void setR(float f) {
        this.r = f;
    }

    public final void setRectangle(float x, float y, float width, float height) {
        this.x = x;
        this.y = y;
        this.width = width;
        this.height = height;
    }

    public final void setRx(float f) {
        this.rx = f;
    }

    public final void setRy(float f) {
        this.ry = f;
    }

    public final void setShapeAngle(float phi, float startAngle, float sweepAngle) {
        this.phi = phi;
        this.startAngle = startAngle;
        this.sweepAngle = sweepAngle;
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

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void setWidth(float f) {
        this.width = f;
    }

    public final void setWords(@Nullable List<HWRWord> list) {
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
    public final RectF toBoundRect() {
        HWRBoundBox hWRBoundBox = this.boundBox;
        if (hWRBoundBox == null) {
            return new RectF();
        }
        Intrinsics.checkNotNull(hWRBoundBox);
        return hWRBoundBox.toRectF();
    }

    @NotNull
    public String toString() {
        return JSONUtils.INSTANCE.toPrettyJson(this);
    }
}
