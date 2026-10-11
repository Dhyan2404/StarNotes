package com.onyx.android.sdk.rxgesture;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Metadata;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b-\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b/\n\u0002\u0010\u0007\n\u0002\b\u001d\u0018\u00002\u00020\u0001B\t¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001R\"\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010\u0004\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\"\u0010\r\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\u0004\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\"\u0010\u0010\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0004\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\"\u0010\u0013\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\u0004\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\"\u0010\u0016\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0004\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\"\u0010\u0019\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0004\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\"\u0010\u001c\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0004\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\"\u0010\u001f\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u0004\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010\"\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b!\u0010\u0004\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\"\u0010%\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010\u0004\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\bR\"\u0010(\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010\u0004\u001a\u0004\b(\u0010\u0006\"\u0004\b)\u0010\bR\"\u0010+\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010\u0004\u001a\u0004\b+\u0010\u0006\"\u0004\b,\u0010\bR\"\u0010.\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010\u0004\u001a\u0004\b.\u0010\u0006\"\u0004\b/\u0010\bR\"\u00107\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\"\u0010?\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\"\u0010C\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b@\u00102\u001a\u0004\bA\u00104\"\u0004\bB\u00106R\"\u0010G\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u00102\u001a\u0004\bE\u00104\"\u0004\bF\u00106R\"\u0010K\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bH\u00102\u001a\u0004\bI\u00104\"\u0004\bJ\u00106R\"\u0010O\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bL\u0010:\u001a\u0004\bM\u0010<\"\u0004\bN\u0010>R\"\u0010S\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bP\u0010:\u001a\u0004\bQ\u0010<\"\u0004\bR\u0010>R\"\u0010W\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bT\u0010:\u001a\u0004\bU\u0010<\"\u0004\bV\u0010>R\"\u0010[\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bX\u00102\u001a\u0004\bY\u00104\"\u0004\bZ\u00106R\"\u0010_\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\\\u0010:\u001a\u0004\b]\u0010<\"\u0004\b^\u0010>R\"\u0010c\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010:\u001a\u0004\ba\u0010<\"\u0004\bb\u0010>R\"\u0010g\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bd\u0010:\u001a\u0004\be\u0010<\"\u0004\bf\u0010>R\"\u0010o\u001a\u00020h8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bi\u0010j\u001a\u0004\bk\u0010l\"\u0004\bm\u0010nR\"\u0010s\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bp\u0010:\u001a\u0004\bq\u0010<\"\u0004\br\u0010>R\"\u0010w\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010:\u001a\u0004\bu\u0010<\"\u0004\bv\u0010>R\"\u0010{\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u00102\u001a\u0004\by\u00104\"\u0004\bz\u00106R\"\u0010\u007f\u001a\u0002008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b|\u00102\u001a\u0004\b}\u00104\"\u0004\b~\u00106R%\u0010\u0082\u0001\u001a\u0002088\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\bj\u0010:\u001a\u0005\b\u0080\u0001\u0010<\"\u0005\b\u0081\u0001\u0010>¨\u0006\u0085\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "isEnableMoveGesture", Constants.BOOLEAN_VALUE_SIG, "setEnableMoveGesture", "(Z)V", "b", "isEnableFlingGesture", "setEnableFlingGesture", "c", "isEnableScaleGesture", "setEnableScaleGesture", "d", "isEnableCommonGesture", "setEnableCommonGesture", "e", "isEnableNoGesture", "setEnableNoGesture", C6997f.f39671c, "isEnableDoubleGesture", "setEnableDoubleGesture", C6998g.f39679a, "isEnableLongPressGesture", "setEnableLongPressGesture", C6999h.f39688c, "isEnabledPenTouch", "setEnabledPenTouch", "i", "isEnabledMultiTouch", "setEnabledMultiTouch", "j", "isEnabledPalmReject", "setEnabledPalmReject", C4921e.f26537n, "isEnableFilterOnHover", "setEnableFilterOnHover", "l", "isEnableTwoMoveGesture", "setEnableTwoMoveGesture", "m", "isEnableMultiClick", "setEnableMultiClick", GoogleApiAvailabilityLight.f29016b, "isEnableScaleSpanCheck", "setEnableScaleSpanCheck", "", C4921e.f26528e, "I", "getMultiMoveDistanceThreshold", "()I", "setMultiMoveDistanceThreshold", "(I)V", "multiMoveDistanceThreshold", "", "p", "J", "getMultiMoveTimeThreshold", "()J", "setMultiMoveTimeThreshold", "(J)V", "multiMoveTimeThreshold", "q", "getSingleMoveDistanceThreshold", "setSingleMoveDistanceThreshold", "singleMoveDistanceThreshold", "r", "getSingleMoveDistanceThresholdShort", "setSingleMoveDistanceThresholdShort", "singleMoveDistanceThresholdShort", "s", "getSingleTapDistanceThreshold", "setSingleTapDistanceThreshold", "singleTapDistanceThreshold", "t", "getSingleTapTimeMsMax", "setSingleTapTimeMsMax", "singleTapTimeMsMax", "u", "getSingleTapTimeMsMin", "setSingleTapTimeMsMin", "singleTapTimeMsMin", "v", "getSingleTapConfirmedTimeMsThreshold", "setSingleTapConfirmedTimeMsThreshold", "singleTapConfirmedTimeMsThreshold", "w", "getDoubleTapDistanceThreshold", "setDoubleTapDistanceThreshold", "doubleTapDistanceThreshold", "x", "getDoubleTapTimeMsThreshold", "setDoubleTapTimeMsThreshold", "doubleTapTimeMsThreshold", "y", "getSingleMoveTimeThreshold", "setSingleMoveTimeThreshold", "singleMoveTimeThreshold", "z", "getPenLeaveTimeThreshold", "setPenLeaveTimeThreshold", "penLeaveTimeThreshold", "", "A", "F", "getScaleFactorIntervalThreshold", "()F", "setScaleFactorIntervalThreshold", "(F)V", "scaleFactorIntervalThreshold", "B", "getScaleIntervalTimeMs", "setScaleIntervalTimeMs", "scaleIntervalTimeMs", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "getMoveIntervalTimeMs", "setMoveIntervalTimeMs", "moveIntervalTimeMs", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "getMoveDistanceThreshold", "setMoveDistanceThreshold", "moveDistanceThreshold", "E", "getLongPressMoveDistanceThreshold", "setLongPressMoveDistanceThreshold", "longPressMoveDistanceThreshold", "getLongPressTime", "setLongPressTime", "longPressTime", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RxGestureConfig {

    /* renamed from: A, reason: from kotlin metadata */
    public float scaleFactorIntervalThreshold;

    /* renamed from: B, reason: from kotlin metadata */
    public long scaleIntervalTimeMs;

    /* renamed from: C, reason: from kotlin metadata */
    public long moveIntervalTimeMs;

    /* renamed from: D, reason: from kotlin metadata */
    public int moveDistanceThreshold;

    /* renamed from: E, reason: from kotlin metadata */
    public int longPressMoveDistanceThreshold;

    /* renamed from: F, reason: from kotlin metadata */
    public long longPressTime;

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isEnableMoveGesture;

    /* renamed from: b, reason: from kotlin metadata */
    public boolean isEnableFlingGesture;

    /* renamed from: c, reason: from kotlin metadata */
    public boolean isEnableScaleGesture;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean isEnableCommonGesture;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean isEnableNoGesture;

    /* renamed from: f, reason: from kotlin metadata */
    public boolean isEnableDoubleGesture;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean isEnableLongPressGesture;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isEnabledPenTouch;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isEnableTwoMoveGesture;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isEnableScaleSpanCheck;

    /* renamed from: s, reason: from kotlin metadata */
    public int singleTapDistanceThreshold;

    /* renamed from: t, reason: from kotlin metadata */
    public long singleTapTimeMsMax;

    /* renamed from: u, reason: from kotlin metadata */
    public long singleTapTimeMsMin;

    /* renamed from: v, reason: from kotlin metadata */
    public long singleTapConfirmedTimeMsThreshold;

    /* renamed from: w, reason: from kotlin metadata */
    public int doubleTapDistanceThreshold;

    /* renamed from: x, reason: from kotlin metadata */
    public long doubleTapTimeMsThreshold;

    /* renamed from: y, reason: from kotlin metadata */
    public long singleMoveTimeThreshold;

    /* renamed from: z, reason: from kotlin metadata */
    public long penLeaveTimeThreshold;

    /* renamed from: i, reason: from kotlin metadata */
    public boolean isEnabledMultiTouch = true;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isEnabledPalmReject = true;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isEnableFilterOnHover = true;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isEnableMultiClick = true;

    /* renamed from: o, reason: from kotlin metadata */
    public int multiMoveDistanceThreshold = 150;

    /* renamed from: p, reason: from kotlin metadata */
    public long multiMoveTimeThreshold = 200;

    /* renamed from: q, reason: from kotlin metadata */
    public int singleMoveDistanceThreshold = 30;

    /* renamed from: r, reason: from kotlin metadata */
    public int singleMoveDistanceThresholdShort = 5;

    public RxGestureConfig() {
        RxGestureConstant rxGestureConstant = RxGestureConstant.INSTANCE;
        this.singleTapDistanceThreshold = rxGestureConstant.getSINGLE_TAP_DISTANCE_THRESHOLD();
        this.singleTapTimeMsMax = 1200L;
        this.singleTapTimeMsMin = 30L;
        this.singleTapConfirmedTimeMsThreshold = 1200L;
        this.doubleTapDistanceThreshold = rxGestureConstant.getDOUBLE_TAP_DISTANCE_THRESHOLD();
        this.doubleTapTimeMsThreshold = 1200L;
        this.singleMoveTimeThreshold = 300L;
        this.penLeaveTimeThreshold = 20L;
        this.scaleFactorIntervalThreshold = 0.03f;
        this.scaleIntervalTimeMs = 50L;
        this.moveIntervalTimeMs = 80L;
        this.moveDistanceThreshold = 5;
        this.longPressMoveDistanceThreshold = 10;
        this.longPressTime = 500L;
    }

    public final int getDoubleTapDistanceThreshold() {
        return this.doubleTapDistanceThreshold;
    }

    public final long getDoubleTapTimeMsThreshold() {
        return this.doubleTapTimeMsThreshold;
    }

    public final int getLongPressMoveDistanceThreshold() {
        return this.longPressMoveDistanceThreshold;
    }

    public final long getLongPressTime() {
        return this.longPressTime;
    }

    public final int getMoveDistanceThreshold() {
        return this.moveDistanceThreshold;
    }

    public final long getMoveIntervalTimeMs() {
        return this.moveIntervalTimeMs;
    }

    public final int getMultiMoveDistanceThreshold() {
        return this.multiMoveDistanceThreshold;
    }

    public final long getMultiMoveTimeThreshold() {
        return this.multiMoveTimeThreshold;
    }

    public final long getPenLeaveTimeThreshold() {
        return this.penLeaveTimeThreshold;
    }

    public final float getScaleFactorIntervalThreshold() {
        return this.scaleFactorIntervalThreshold;
    }

    public final long getScaleIntervalTimeMs() {
        return this.scaleIntervalTimeMs;
    }

    public final int getSingleMoveDistanceThreshold() {
        return this.singleMoveDistanceThreshold;
    }

    public final int getSingleMoveDistanceThresholdShort() {
        return this.singleMoveDistanceThresholdShort;
    }

    public final long getSingleMoveTimeThreshold() {
        return this.singleMoveTimeThreshold;
    }

    public final long getSingleTapConfirmedTimeMsThreshold() {
        return this.singleTapConfirmedTimeMsThreshold;
    }

    public final int getSingleTapDistanceThreshold() {
        return this.singleTapDistanceThreshold;
    }

    public final long getSingleTapTimeMsMax() {
        return this.singleTapTimeMsMax;
    }

    public final long getSingleTapTimeMsMin() {
        return this.singleTapTimeMsMin;
    }

    /* renamed from: isEnableCommonGesture, reason: from getter */
    public final boolean getIsEnableCommonGesture() {
        return this.isEnableCommonGesture;
    }

    /* renamed from: isEnableDoubleGesture, reason: from getter */
    public final boolean getIsEnableDoubleGesture() {
        return this.isEnableDoubleGesture;
    }

    /* renamed from: isEnableFilterOnHover, reason: from getter */
    public final boolean getIsEnableFilterOnHover() {
        return this.isEnableFilterOnHover;
    }

    /* renamed from: isEnableFlingGesture, reason: from getter */
    public final boolean getIsEnableFlingGesture() {
        return this.isEnableFlingGesture;
    }

    /* renamed from: isEnableLongPressGesture, reason: from getter */
    public final boolean getIsEnableLongPressGesture() {
        return this.isEnableLongPressGesture;
    }

    /* renamed from: isEnableMoveGesture, reason: from getter */
    public final boolean getIsEnableMoveGesture() {
        return this.isEnableMoveGesture;
    }

    /* renamed from: isEnableMultiClick, reason: from getter */
    public final boolean getIsEnableMultiClick() {
        return this.isEnableMultiClick;
    }

    /* renamed from: isEnableNoGesture, reason: from getter */
    public final boolean getIsEnableNoGesture() {
        return this.isEnableNoGesture;
    }

    /* renamed from: isEnableScaleGesture, reason: from getter */
    public final boolean getIsEnableScaleGesture() {
        return this.isEnableScaleGesture;
    }

    /* renamed from: isEnableScaleSpanCheck, reason: from getter */
    public final boolean getIsEnableScaleSpanCheck() {
        return this.isEnableScaleSpanCheck;
    }

    /* renamed from: isEnableTwoMoveGesture, reason: from getter */
    public final boolean getIsEnableTwoMoveGesture() {
        return this.isEnableTwoMoveGesture;
    }

    /* renamed from: isEnabledMultiTouch, reason: from getter */
    public final boolean getIsEnabledMultiTouch() {
        return this.isEnabledMultiTouch;
    }

    /* renamed from: isEnabledPalmReject, reason: from getter */
    public final boolean getIsEnabledPalmReject() {
        return this.isEnabledPalmReject;
    }

    /* renamed from: isEnabledPenTouch, reason: from getter */
    public final boolean getIsEnabledPenTouch() {
        return this.isEnabledPenTouch;
    }

    public final void setDoubleTapDistanceThreshold(int i) {
        this.doubleTapDistanceThreshold = i;
    }

    public final void setDoubleTapTimeMsThreshold(long j) {
        this.doubleTapTimeMsThreshold = j;
    }

    public final void setEnableCommonGesture(boolean z) {
        this.isEnableCommonGesture = z;
    }

    public final void setEnableDoubleGesture(boolean z) {
        this.isEnableDoubleGesture = z;
    }

    public final void setEnableFilterOnHover(boolean z) {
        this.isEnableFilterOnHover = z;
    }

    public final void setEnableFlingGesture(boolean z) {
        this.isEnableFlingGesture = z;
    }

    public final void setEnableLongPressGesture(boolean z) {
        this.isEnableLongPressGesture = z;
    }

    public final void setEnableMoveGesture(boolean z) {
        this.isEnableMoveGesture = z;
    }

    public final void setEnableMultiClick(boolean z) {
        this.isEnableMultiClick = z;
    }

    public final void setEnableNoGesture(boolean z) {
        this.isEnableNoGesture = z;
    }

    public final void setEnableScaleGesture(boolean z) {
        this.isEnableScaleGesture = z;
    }

    public final void setEnableScaleSpanCheck(boolean z) {
        this.isEnableScaleSpanCheck = z;
    }

    public final void setEnableTwoMoveGesture(boolean z) {
        this.isEnableTwoMoveGesture = z;
    }

    public final void setEnabledMultiTouch(boolean z) {
        this.isEnabledMultiTouch = z;
    }

    public final void setEnabledPalmReject(boolean z) {
        this.isEnabledPalmReject = z;
    }

    public final void setEnabledPenTouch(boolean z) {
        this.isEnabledPenTouch = z;
    }

    public final void setLongPressMoveDistanceThreshold(int i) {
        this.longPressMoveDistanceThreshold = i;
    }

    public final void setLongPressTime(long j) {
        this.longPressTime = j;
    }

    public final void setMoveDistanceThreshold(int i) {
        this.moveDistanceThreshold = i;
    }

    public final void setMoveIntervalTimeMs(long j) {
        this.moveIntervalTimeMs = j;
    }

    public final void setMultiMoveDistanceThreshold(int i) {
        this.multiMoveDistanceThreshold = i;
    }

    public final void setMultiMoveTimeThreshold(long j) {
        this.multiMoveTimeThreshold = j;
    }

    public final void setPenLeaveTimeThreshold(long j) {
        this.penLeaveTimeThreshold = j;
    }

    public final void setScaleFactorIntervalThreshold(float f) {
        this.scaleFactorIntervalThreshold = f;
    }

    public final void setScaleIntervalTimeMs(long j) {
        this.scaleIntervalTimeMs = j;
    }

    public final void setSingleMoveDistanceThreshold(int i) {
        this.singleMoveDistanceThreshold = i;
    }

    public final void setSingleMoveDistanceThresholdShort(int i) {
        this.singleMoveDistanceThresholdShort = i;
    }

    public final void setSingleMoveTimeThreshold(long j) {
        this.singleMoveTimeThreshold = j;
    }

    public final void setSingleTapConfirmedTimeMsThreshold(long j) {
        this.singleTapConfirmedTimeMsThreshold = j;
    }

    public final void setSingleTapDistanceThreshold(int i) {
        this.singleTapDistanceThreshold = i;
    }

    public final void setSingleTapTimeMsMax(long j) {
        this.singleTapTimeMsMax = j;
    }

    public final void setSingleTapTimeMsMin(long j) {
        this.singleTapTimeMsMin = j;
    }
}
