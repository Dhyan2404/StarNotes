package com.onyx.android.sdk.hwr.data.bean;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.commonv2.global.HWREngineConstant;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\u0007\n\u0002\bB\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bV\u0010WR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR$\u0010\r\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010\u0004\u001a\u0004\b\u000b\u0010\u0006\"\u0004\b\f\u0010\bR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u0004\u001a\u0004\b\u000f\u0010\u0006\"\u0004\b\u0010\u0010\bR$\u0010\u0015\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010!\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0018\u001a\u0004\b\u001f\u0010\u001a\"\u0004\b \u0010\u001cR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010\u0018\u001a\u0004\b#\u0010\u001a\"\u0004\b$\u0010\u001cR\"\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b&\u0010\u0018\u001a\u0004\b'\u0010\u001a\"\u0004\b(\u0010\u001cR$\u0010-\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR$\u00101\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010\u0004\u001a\u0004\b/\u0010\u0006\"\u0004\b0\u0010\bR\"\u00105\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b2\u0010\u0018\u001a\u0004\b3\u0010\u001a\"\u0004\b4\u0010\u001cR\"\u00109\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u0010\u0018\u001a\u0004\b7\u0010\u001a\"\u0004\b8\u0010\u001cR\"\u0010=\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b:\u0010\u0018\u001a\u0004\b;\u0010\u001a\"\u0004\b<\u0010\u001cR\"\u0010A\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b>\u0010\u0018\u001a\u0004\b?\u0010\u001a\"\u0004\b@\u0010\u001cR\"\u0010E\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bB\u0010\u0018\u001a\u0004\bC\u0010\u001a\"\u0004\bD\u0010\u001cR\"\u0010I\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bF\u0010\u0018\u001a\u0004\bG\u0010\u001a\"\u0004\bH\u0010\u001cR\"\u0010M\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bJ\u0010\u0018\u001a\u0004\bK\u0010\u001a\"\u0004\bL\u0010\u001cR$\u0010Q\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bN\u0010\u0004\u001a\u0004\bO\u0010\u0006\"\u0004\bP\u0010\bR$\u0010U\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bR\u0010\u0004\u001a\u0004\bS\u0010\u0006\"\u0004\bT\u0010\b¨\u0006X"}, m61528d2 = {"Lcom/onyx/android/sdk/hwr/data/bean/HWREdge;", "", "", "a", Constants.STRING_SIG, "getId", "()Ljava/lang/String;", "setId", "(Ljava/lang/String;)V", "id", "b", "getType", "setType", "type", "c", "getKind", "setKind", HWREngineConstant.Constant.KIND, "d", "getRange", "setRange", SessionDescription.f26441q, "", "e", "F", "getX1", "()F", "setX1", "(F)V", "x1", C6997f.f39671c, "getY1", "setY1", "y1", C6998g.f39679a, "getX2", "setX2", "x2", C6999h.f39688c, "getY2", "setY2", "y2", "i", "getP1Decoration", "setP1Decoration", "p1Decoration", "j", "getP2Decoration", "setP2Decoration", "p2Decoration", C4921e.f26537n, "getCx", "setCx", "cx", "l", "getCy", "setCy", "cy", "m", "getRx", "setRx", "rx", GoogleApiAvailabilityLight.f29016b, "getRy", "setRy", "ry", C4921e.f26528e, "getPhi", "setPhi", "phi", "p", "getStartAngle", "setStartAngle", "startAngle", "q", "getSweepAngle", "setSweepAngle", "sweepAngle", "r", "getStartDecoration", "setStartDecoration", "startDecoration", "s", "getEndDecoration", "setEndDecoration", "endDecoration", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-hwr_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class HWREdge {

    /* renamed from: a, reason: from kotlin metadata */
    @Nullable
    public String id;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String type;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String kind;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public String range;

    /* renamed from: e, reason: from kotlin metadata */
    public float x1;

    /* renamed from: f, reason: from kotlin metadata */
    public float y1;

    /* renamed from: g, reason: from kotlin metadata */
    public float x2;

    /* renamed from: h, reason: from kotlin metadata */
    public float y2;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public String p1Decoration;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public String p2Decoration;

    /* renamed from: k, reason: from kotlin metadata */
    public float cx;

    /* renamed from: l, reason: from kotlin metadata */
    public float cy;

    /* renamed from: m, reason: from kotlin metadata */
    public float rx;

    /* renamed from: n, reason: from kotlin metadata */
    public float ry;

    /* renamed from: o, reason: from kotlin metadata */
    public float phi;

    /* renamed from: p, reason: from kotlin metadata */
    public float startAngle;

    /* renamed from: q, reason: from kotlin metadata */
    public float sweepAngle;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public String startDecoration;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public String endDecoration;

    public final float getCx() {
        return this.cx;
    }

    public final float getCy() {
        return this.cy;
    }

    @Nullable
    public final String getEndDecoration() {
        return this.endDecoration;
    }

    @Nullable
    public final String getId() {
        return this.id;
    }

    @Nullable
    public final String getKind() {
        return this.kind;
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
    public final String getRange() {
        return this.range;
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

    public final float getX1() {
        return this.x1;
    }

    public final float getX2() {
        return this.x2;
    }

    public final float getY1() {
        return this.y1;
    }

    public final float getY2() {
        return this.y2;
    }

    public final void setCx(float f) {
        this.cx = f;
    }

    public final void setCy(float f) {
        this.cy = f;
    }

    public final void setEndDecoration(@Nullable String str) {
        this.endDecoration = str;
    }

    public final void setId(@Nullable String str) {
        this.id = str;
    }

    public final void setKind(@Nullable String str) {
        this.kind = str;
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

    public final void setRange(@Nullable String str) {
        this.range = str;
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

    public final void setType(@Nullable String str) {
        this.type = str;
    }

    public final void setX1(float f) {
        this.x1 = f;
    }

    public final void setX2(float f) {
        this.x2 = f;
    }

    public final void setY1(float f) {
        this.y1 = f;
    }

    public final void setY2(float f) {
        this.y2 = f;
    }
}
