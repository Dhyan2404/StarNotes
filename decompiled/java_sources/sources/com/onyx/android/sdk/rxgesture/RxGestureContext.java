package com.onyx.android.sdk.rxgesture;

import android.view.MotionEvent;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.geometry.extension.TouchPointKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0016\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b?\n\u0002\u0018\u0002\n\u0002\bT\u0018\u0000 Ñ\u00012\u00020\u0001:\u0002Ñ\u0001B\t¢\u0006\u0006\bÏ\u0001\u0010Ð\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u001a\u0010\f\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0004J\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010 \u001a\u00020\u000eJ\u0006\u0010!\u001a\u00020\u000eJ\u0006\u0010\"\u001a\u00020\u000eJ\u0006\u0010#\u001a\u00020\u0004J\u000e\u0010$\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010&\u001a\u00020%J\u0006\u0010'\u001a\u00020%J\u0006\u0010(\u001a\u00020%J\u0006\u0010)\u001a\u00020%J\u0006\u0010*\u001a\u00020%J\u0006\u0010+\u001a\u00020%J\u0006\u0010,\u001a\u00020%J\u0006\u0010.\u001a\u00020-J\u0006\u0010/\u001a\u00020%J\u0006\u00100\u001a\u00020%J\u0006\u00101\u001a\u00020%J\u0006\u00102\u001a\u00020-J\u0006\u00103\u001a\u00020\u000eJ\u0006\u00104\u001a\u00020\u000eJ\u0006\u00105\u001a\u00020\u000eJ\u0006\u00106\u001a\u00020%J\u0006\u00107\u001a\u00020%J\u0006\u00108\u001a\u00020%J\u0006\u00109\u001a\u00020%J\u0006\u0010:\u001a\u00020%J\u0006\u0010;\u001a\u00020%J\u0006\u0010<\u001a\u00020%J\u0006\u0010=\u001a\u00020%R\"\u0010D\u001a\u00020>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR$\u0010J\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\"\u0010P\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\"\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010K\u001a\u0004\bQ\u0010M\"\u0004\bR\u0010OR$\u0010Y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bS\u0010T\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR$\u0010]\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bZ\u0010T\u001a\u0004\b[\u0010V\"\u0004\b\\\u0010XR$\u0010a\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b^\u0010E\u001a\u0004\b_\u0010G\"\u0004\b`\u0010IR\"\u0010e\u001a\u00020\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010K\u001a\u0004\bc\u0010M\"\u0004\bd\u0010OR$\u0010i\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bf\u0010E\u001a\u0004\bg\u0010G\"\u0004\bh\u0010IR$\u0010m\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bj\u0010E\u001a\u0004\bk\u0010G\"\u0004\bl\u0010IR$\u0010q\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bn\u0010E\u001a\u0004\bo\u0010G\"\u0004\bp\u0010IR$\u0010u\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\br\u0010E\u001a\u0004\bs\u0010G\"\u0004\bt\u0010IR$\u0010y\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bv\u0010T\u001a\u0004\bw\u0010V\"\u0004\bx\u0010XR$\u0010}\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bz\u0010T\u001a\u0004\b{\u0010V\"\u0004\b|\u0010XR\u001b\u0010\u0083\u0001\u001a\u00020~8\u0006¢\u0006\u000f\n\u0005\b\u007f\u0010\u0080\u0001\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001R(\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0084\u0001\u0010E\u001a\u0005\b\u0085\u0001\u0010G\"\u0005\b\u0086\u0001\u0010IR(\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0088\u0001\u0010E\u001a\u0005\b\u0089\u0001\u0010G\"\u0005\b\u008a\u0001\u0010IR(\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u008c\u0001\u0010T\u001a\u0005\b\u008d\u0001\u0010V\"\u0005\b\u008e\u0001\u0010XR(\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0090\u0001\u0010T\u001a\u0005\b\u0091\u0001\u0010V\"\u0005\b\u0092\u0001\u0010XR)\u0010\u009a\u0001\u001a\u00020-8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0094\u0001\u0010\u0095\u0001\u001a\u0006\b\u0096\u0001\u0010\u0097\u0001\"\u0006\b\u0098\u0001\u0010\u0099\u0001R)\u0010¡\u0001\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009b\u0001\u0010\u009c\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001\"\u0006\b\u009f\u0001\u0010 \u0001R)\u0010¤\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¢\u0001\u0010£\u0001\u001a\u0006\b¤\u0001\u0010¥\u0001\"\u0006\b¦\u0001\u0010§\u0001R)\u0010©\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¨\u0001\u0010£\u0001\u001a\u0006\b©\u0001\u0010¥\u0001\"\u0006\bª\u0001\u0010§\u0001R)\u0010¬\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b«\u0001\u0010£\u0001\u001a\u0006\b¬\u0001\u0010¥\u0001\"\u0006\b\u00ad\u0001\u0010§\u0001R)\u0010¯\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b®\u0001\u0010£\u0001\u001a\u0006\b¯\u0001\u0010¥\u0001\"\u0006\b°\u0001\u0010§\u0001R)\u0010²\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b±\u0001\u0010£\u0001\u001a\u0006\b²\u0001\u0010¥\u0001\"\u0006\b³\u0001\u0010§\u0001R)\u0010µ\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b´\u0001\u0010£\u0001\u001a\u0006\bµ\u0001\u0010¥\u0001\"\u0006\b¶\u0001\u0010§\u0001R)\u0010¸\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b·\u0001\u0010£\u0001\u001a\u0006\b¸\u0001\u0010¥\u0001\"\u0006\b¹\u0001\u0010§\u0001R)\u0010»\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bº\u0001\u0010£\u0001\u001a\u0006\b»\u0001\u0010¥\u0001\"\u0006\b¼\u0001\u0010§\u0001R)\u0010¾\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b½\u0001\u0010£\u0001\u001a\u0006\b¾\u0001\u0010¥\u0001\"\u0006\b¿\u0001\u0010§\u0001R)\u0010Á\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÀ\u0001\u0010£\u0001\u001a\u0006\bÁ\u0001\u0010¥\u0001\"\u0006\bÂ\u0001\u0010§\u0001R)\u0010Ã\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u009c\u0001\u0010£\u0001\u001a\u0006\bÃ\u0001\u0010¥\u0001\"\u0006\bÄ\u0001\u0010§\u0001R)\u0010Æ\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÅ\u0001\u0010£\u0001\u001a\u0006\bÆ\u0001\u0010¥\u0001\"\u0006\bÇ\u0001\u0010§\u0001R)\u0010É\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÈ\u0001\u0010£\u0001\u001a\u0006\bÉ\u0001\u0010¥\u0001\"\u0006\bÊ\u0001\u0010§\u0001R(\u0010Ë\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\bK\u0010£\u0001\u001a\u0006\bË\u0001\u0010¥\u0001\"\u0006\bÌ\u0001\u0010§\u0001R)\u0010Í\u0001\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0095\u0001\u0010£\u0001\u001a\u0006\bÍ\u0001\u0010¥\u0001\"\u0006\bÎ\u0001\u0010§\u0001¨\u0006Ò\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "d", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "lastPoint", "c", "b", "", "pointerId", "a", "updatePointerDownPoint", "", "isActivePoint", "updatePointerUpPoint", "updateDownPoint", "updateMovePoint", "onMoved", "onMultipleMoved", "onLongPress", "onShortMoved", "onExitLongPress", "onFling", "onDoubleTap", "onSingleTap", "onPalmPressed", "onBigPalmPressed", "updateUpPoint", "updateActiveUpPoint", "updateCancelPoint", "isSinglePointTouch", "isThreeFingerTouch", "isTwoFingerTouch", Constants.RESET, "isDisabledPenTouch", "", "moveToDownDistance", "moveToDownSpanX", "moveToDownSpanY", "pointerMoveToDownDistance", "pointerMoveToDownSpanX", "pointerMoveToDownSpanY", "upToDownDistance", "", "upToDownTime", "moveToMoveDistance", "pointerMoveToMoveDistance", "downDistance", "pointerDownTime", "hasMoved", "hasSingleMoved", "hasMultipleMoved", "moveDistanceX", "moveDistanceY", "totalDistanceX", "totalDistanceY", "fixMoveDistanceX", "fixMoveDistanceY", "upDownDistanceX", "upDownDistanceY", "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "getConfig", "()Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;", "setConfig", "(Lcom/onyx/android/sdk/rxgesture/RxGestureConfig;)V", AbstractLogger.CONFIG, "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getDownPoint", "()Lcom/onyx/android/sdk/base/data/TouchPoint;", "setDownPoint", "(Lcom/onyx/android/sdk/base/data/TouchPoint;)V", "downPoint", "I", "getActivePointerId", "()I", "setActivePointerId", "(I)V", "activePointerId", "getPointerId", "setPointerId", "e", "Landroid/view/MotionEvent;", "getPointerDownMotionEvent", "()Landroid/view/MotionEvent;", "setPointerDownMotionEvent", "(Landroid/view/MotionEvent;)V", "pointerDownMotionEvent", C6997f.f39671c, "getPointerCurMotionEvent", "setPointerCurMotionEvent", "pointerCurMotionEvent", C6998g.f39679a, "getPointerDownPoint", "setPointerDownPoint", "pointerDownPoint", C6999h.f39688c, "getPointerCount", "setPointerCount", "pointerCount", "i", "getMovePoint", "setMovePoint", "movePoint", "j", "getUpPoint", "setUpPoint", "upPoint", C4921e.f26537n, "getPointerUpPoint", "setPointerUpPoint", "pointerUpPoint", "l", "getActiveUpPoint", "setActiveUpPoint", "activeUpPoint", "m", "getDownMotionEvent", "setDownMotionEvent", "downMotionEvent", GoogleApiAvailabilityLight.f29016b, "getCurMotionEvent", "setCurMotionEvent", "curMotionEvent", "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", C4921e.f26528e, "Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "getVelocityTrackerWrapper", "()Lcom/onyx/android/sdk/rxgesture/VelocityTrackerWrapper;", "velocityTrackerWrapper", "p", "getLastPointerMovePoint", "setLastPointerMovePoint", "lastPointerMovePoint", "q", "getLastMovePoint", "setLastMovePoint", "lastMovePoint", "r", "getActiveMoveMotionEvent", "setActiveMoveMotionEvent", "activeMoveMotionEvent", "s", "getActiveMultiMoveMotionEvent", "setActiveMultiMoveMotionEvent", "activeMultiMoveMotionEvent", "t", "J", "getLastMoveTime", "()J", "setLastMoveTime", "(J)V", "lastMoveTime", "u", "F", "getMaxMoveDistance", "()F", "setMaxMoveDistance", "(F)V", "maxMoveDistance", "v", Constants.HASIDCALL_INDEX_SIG, "isLongPress", Constants.BOOLEAN_VALUE_SIG, "setLongPress", "(Z)V", "w", "isFling", "setFling", "x", "isDoubleTap", "setDoubleTap", "y", "isSingleTap", "setSingleTap", "z", "isScale", "setScale", "A", "isHover", "setHover", "B", "isPenActive", "setPenActive", BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "isHasMultiplePoint", "setHasMultiplePoint", SardineUtil.DEFAULT_NAMESPACE_PREFIX, "isHasMultipleMove", "setHasMultipleMove", "E", "isMorePointer", "setMorePointer", "isCancelled", "setCancelled", "G", "isLongPressExit", "setLongPressExit", "H", "isShortMoved", "setShortMoved", "isPalmPressed", "setPalmPressed", "isBigPalmPressed", "setBigPalmPressed", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRxGestureContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxGestureContext.kt\ncom/onyx/android/sdk/rxgesture/RxGestureContext\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,374:1\n1#2:375\n*E\n"})
/* loaded from: classes8.dex */
public final class RxGestureContext {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: A, reason: from kotlin metadata */
    public boolean isHover;

    /* renamed from: B, reason: from kotlin metadata */
    public boolean isPenActive;

    /* renamed from: C, reason: from kotlin metadata */
    public boolean isHasMultiplePoint;

    /* renamed from: D, reason: from kotlin metadata */
    public boolean isHasMultipleMove;

    /* renamed from: E, reason: from kotlin metadata */
    public boolean isMorePointer;

    /* renamed from: F, reason: from kotlin metadata */
    public boolean isCancelled;

    /* renamed from: G, reason: from kotlin metadata */
    public boolean isLongPressExit;

    /* renamed from: H, reason: from kotlin metadata */
    public boolean isShortMoved;

    /* renamed from: I, reason: from kotlin metadata */
    public boolean isPalmPressed;

    /* renamed from: J, reason: from kotlin metadata */
    public boolean isBigPalmPressed;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public TouchPoint downPoint;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public MotionEvent pointerDownMotionEvent;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public MotionEvent pointerCurMotionEvent;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TouchPoint pointerDownPoint;

    /* renamed from: h, reason: from kotlin metadata */
    public int pointerCount;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public TouchPoint movePoint;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public TouchPoint upPoint;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public TouchPoint pointerUpPoint;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public TouchPoint activeUpPoint;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public MotionEvent downMotionEvent;

    /* renamed from: n, reason: from kotlin metadata */
    @Nullable
    public MotionEvent curMotionEvent;

    /* renamed from: p, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastPointerMovePoint;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastMovePoint;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public MotionEvent activeMoveMotionEvent;

    /* renamed from: s, reason: from kotlin metadata */
    @Nullable
    public MotionEvent activeMultiMoveMotionEvent;

    /* renamed from: t, reason: from kotlin metadata */
    public long lastMoveTime;

    /* renamed from: u, reason: from kotlin metadata */
    public float maxMoveDistance;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean isLongPress;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isFling;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean isDoubleTap;

    /* renamed from: y, reason: from kotlin metadata */
    public boolean isSingleTap;

    /* renamed from: z, reason: from kotlin metadata */
    public boolean isScale;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public RxGestureConfig config = new RxGestureConfig();

    /* renamed from: c, reason: from kotlin metadata */
    public int activePointerId = -1;

    /* renamed from: d, reason: from kotlin metadata */
    public int pointerId = -1;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final VelocityTrackerWrapper velocityTrackerWrapper = new VelocityTrackerWrapper();

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001a\u0010\u0003\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u001a\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bJ\u001a\u0010\u000f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\b¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/rxgesture/RxGestureContext$Companion;", "", "()V", "distance", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "pointA", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "pointB", "downX", "downY", "moveX", "moveY", "spanX", "spanY", "sdk-rxgesture_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final float distance(@Nullable TouchPoint pointA, @Nullable TouchPoint pointB) {
            if (pointA != null) {
                Float valueOf = pointB != null ? Float.valueOf(RxGestureContext.INSTANCE.distance(pointA.getX(), pointA.getY(), pointB.getX(), pointB.getY())) : null;
                if (valueOf != null) {
                    return valueOf.floatValue();
                }
            }
            return 0.0f;
        }

        public final float spanX(@Nullable TouchPoint pointA, @Nullable TouchPoint pointB) {
            if (pointA != null) {
                Float valueOf = pointB != null ? Float.valueOf(pointB.getX() - pointA.getX()) : null;
                if (valueOf != null) {
                    return valueOf.floatValue();
                }
            }
            return 0.0f;
        }

        public final float spanY(@Nullable TouchPoint pointA, @Nullable TouchPoint pointB) {
            if (pointA != null) {
                Float valueOf = pointB != null ? Float.valueOf(pointB.getY() - pointA.getY()) : null;
                if (valueOf != null) {
                    return valueOf.floatValue();
                }
            }
            return 0.0f;
        }

        public Companion() {
        }

        public final float distance(@NotNull MotionEvent event) {
            Intrinsics.checkNotNullParameter(event, "event");
            if (event.getPointerCount() <= 1) {
                return 0.0f;
            }
            float x = event.getX(0) - event.getX(1);
            float y = event.getY(0) - event.getY(1);
            return (float) Math.sqrt((x * x) + (y * y));
        }

        public final float distance(float downX, float downY, float moveX, float moveY) {
            float f = downX - moveX;
            float f2 = downY - moveY;
            return (float) Math.sqrt((f * f) + (f2 * f2));
        }
    }

    /* renamed from: a */
    public final MotionEvent m35967a(MotionEvent event, int pointerId) {
        int findPointerIndex = event.findPointerIndex(pointerId);
        if (findPointerIndex >= 1) {
            return MotionEvent.obtain(event.getDownTime(), event.getEventTime(), event.getAction(), event.getX(findPointerIndex), event.getY(findPointerIndex), event.getMetaState());
        }
        return null;
    }

    /* renamed from: b */
    public final TouchPoint m35968b(MotionEvent event) {
        TouchPoint touchPoint = new TouchPoint(event);
        touchPoint.m72174setTimestamp(System.currentTimeMillis());
        return touchPoint;
    }

    /* renamed from: c */
    public final void m35969c(TouchPoint lastPoint) {
        TouchPoint touchPoint = this.downPoint;
        if (touchPoint != null && this.maxMoveDistance <= this.config.getSingleTapDistanceThreshold()) {
            this.maxMoveDistance = Math.max(this.maxMoveDistance, INSTANCE.distance(touchPoint, lastPoint));
        }
    }

    /* renamed from: d */
    public final void m35970d(MotionEvent event) {
        if (this.pointerDownMotionEvent == null) {
            return;
        }
        this.pointerCurMotionEvent = m35967a(event, this.pointerId);
    }

    public final float downDistance() {
        return INSTANCE.distance(this.downPoint, this.pointerDownPoint);
    }

    public final float fixMoveDistanceX() {
        return this.isHasMultipleMove ? upDownDistanceX() : moveDistanceX();
    }

    public final float fixMoveDistanceY() {
        return this.isHasMultipleMove ? upDownDistanceY() : moveDistanceY();
    }

    @Nullable
    public final MotionEvent getActiveMoveMotionEvent() {
        return this.activeMoveMotionEvent;
    }

    @Nullable
    public final MotionEvent getActiveMultiMoveMotionEvent() {
        return this.activeMultiMoveMotionEvent;
    }

    public final int getActivePointerId() {
        return this.activePointerId;
    }

    @Nullable
    public final TouchPoint getActiveUpPoint() {
        return this.activeUpPoint;
    }

    @NotNull
    public final RxGestureConfig getConfig() {
        return this.config;
    }

    @Nullable
    public final MotionEvent getCurMotionEvent() {
        return this.curMotionEvent;
    }

    @Nullable
    public final MotionEvent getDownMotionEvent() {
        return this.downMotionEvent;
    }

    @Nullable
    public final TouchPoint getDownPoint() {
        return this.downPoint;
    }

    @Nullable
    public final TouchPoint getLastMovePoint() {
        return this.lastMovePoint;
    }

    public final long getLastMoveTime() {
        return this.lastMoveTime;
    }

    @Nullable
    public final TouchPoint getLastPointerMovePoint() {
        return this.lastPointerMovePoint;
    }

    public final float getMaxMoveDistance() {
        return this.maxMoveDistance;
    }

    @Nullable
    public final TouchPoint getMovePoint() {
        return this.movePoint;
    }

    public final int getPointerCount() {
        return this.pointerCount;
    }

    @Nullable
    public final MotionEvent getPointerCurMotionEvent() {
        return this.pointerCurMotionEvent;
    }

    @Nullable
    public final MotionEvent getPointerDownMotionEvent() {
        return this.pointerDownMotionEvent;
    }

    @Nullable
    public final TouchPoint getPointerDownPoint() {
        return this.pointerDownPoint;
    }

    public final int getPointerId() {
        return this.pointerId;
    }

    @Nullable
    public final TouchPoint getPointerUpPoint() {
        return this.pointerUpPoint;
    }

    @Nullable
    public final TouchPoint getUpPoint() {
        return this.upPoint;
    }

    @NotNull
    public final VelocityTrackerWrapper getVelocityTrackerWrapper() {
        return this.velocityTrackerWrapper;
    }

    public final boolean hasMoved() {
        return hasSingleMoved() || getIsHasMultipleMove();
    }

    /* renamed from: hasMultipleMoved, reason: from getter */
    public final boolean getIsHasMultipleMove() {
        return this.isHasMultipleMove;
    }

    public final boolean hasSingleMoved() {
        return this.lastMovePoint != null;
    }

    public final boolean isActivePoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        return event.getPointerId(event.getActionIndex()) == this.activePointerId;
    }

    /* renamed from: isBigPalmPressed, reason: from getter */
    public final boolean getIsBigPalmPressed() {
        return this.isBigPalmPressed;
    }

    /* renamed from: isCancelled, reason: from getter */
    public final boolean getIsCancelled() {
        return this.isCancelled;
    }

    public final boolean isDisabledPenTouch(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.config.getIsEnabledPenTouch()) {
            return false;
        }
        if (this.isPenActive) {
            return true;
        }
        return MotionEventKt.isPenTouchType(event);
    }

    /* renamed from: isDoubleTap, reason: from getter */
    public final boolean getIsDoubleTap() {
        return this.isDoubleTap;
    }

    /* renamed from: isFling, reason: from getter */
    public final boolean getIsFling() {
        return this.isFling;
    }

    public final boolean isHasMultipleMove() {
        return this.isHasMultipleMove;
    }

    /* renamed from: isHasMultiplePoint, reason: from getter */
    public final boolean getIsHasMultiplePoint() {
        return this.isHasMultiplePoint;
    }

    /* renamed from: isHover, reason: from getter */
    public final boolean getIsHover() {
        return this.isHover;
    }

    /* renamed from: isLongPress, reason: from getter */
    public final boolean getIsLongPress() {
        return this.isLongPress;
    }

    /* renamed from: isLongPressExit, reason: from getter */
    public final boolean getIsLongPressExit() {
        return this.isLongPressExit;
    }

    /* renamed from: isMorePointer, reason: from getter */
    public final boolean getIsMorePointer() {
        return this.isMorePointer;
    }

    /* renamed from: isPalmPressed, reason: from getter */
    public final boolean getIsPalmPressed() {
        return this.isPalmPressed;
    }

    /* renamed from: isPenActive, reason: from getter */
    public final boolean getIsPenActive() {
        return this.isPenActive;
    }

    /* renamed from: isScale, reason: from getter */
    public final boolean getIsScale() {
        return this.isScale;
    }

    /* renamed from: isShortMoved, reason: from getter */
    public final boolean getIsShortMoved() {
        return this.isShortMoved;
    }

    public final boolean isSinglePointTouch() {
        return !this.isHasMultiplePoint;
    }

    /* renamed from: isSingleTap, reason: from getter */
    public final boolean getIsSingleTap() {
        return this.isSingleTap;
    }

    public final boolean isThreeFingerTouch() {
        return this.pointerCount == 3;
    }

    public final boolean isTwoFingerTouch() {
        return this.pointerCount == 2;
    }

    public final float moveDistanceX() {
        TouchPoint touchPoint = this.lastMovePoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.movePoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint2.getX() - touchPoint.getX()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float moveDistanceY() {
        TouchPoint touchPoint = this.lastMovePoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.movePoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint2.getY() - touchPoint.getY()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float moveToDownDistance() {
        return INSTANCE.distance(this.movePoint, this.downPoint);
    }

    public final float moveToDownSpanX() {
        return INSTANCE.spanX(this.movePoint, this.downPoint);
    }

    public final float moveToDownSpanY() {
        return INSTANCE.spanY(this.movePoint, this.downPoint);
    }

    public final float moveToMoveDistance() {
        return INSTANCE.distance(this.movePoint, this.lastMovePoint);
    }

    public final void onBigPalmPressed() {
        this.isBigPalmPressed = true;
    }

    public final void onDoubleTap() {
        this.isDoubleTap = true;
    }

    public final void onExitLongPress() {
        this.isLongPressExit = true;
    }

    public final void onFling() {
        this.isFling = true;
    }

    public final void onLongPress() {
        this.isLongPress = true;
        this.isLongPressExit = false;
    }

    public final void onMoved() {
        MotionEvent motionEvent = this.curMotionEvent;
        if (motionEvent != null) {
            this.lastMovePoint = m35968b(motionEvent);
            this.lastMoveTime = System.currentTimeMillis();
            if (this.activeMoveMotionEvent == null) {
                this.activeMoveMotionEvent = motionEvent;
            }
        }
    }

    public final void onMultipleMoved() {
        MotionEvent motionEvent = this.pointerCurMotionEvent;
        if (motionEvent != null) {
            this.lastPointerMovePoint = m35968b(motionEvent);
            this.lastMoveTime = System.currentTimeMillis();
            if (this.activeMultiMoveMotionEvent == null) {
                this.activeMultiMoveMotionEvent = motionEvent;
            }
        }
        this.isHasMultipleMove = true;
    }

    public final void onPalmPressed() {
        this.isPalmPressed = true;
    }

    public final void onShortMoved() {
        this.isShortMoved = true;
    }

    public final void onSingleTap() {
        this.isSingleTap = true;
    }

    public final long pointerDownTime() {
        return TouchPointKt.obtainTimestamp(this.pointerDownPoint);
    }

    public final float pointerMoveToDownDistance() {
        Companion companion = INSTANCE;
        MotionEvent motionEvent = this.pointerCurMotionEvent;
        return companion.distance(motionEvent != null ? com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent) : null, this.pointerDownPoint);
    }

    public final float pointerMoveToDownSpanX() {
        Companion companion = INSTANCE;
        MotionEvent motionEvent = this.pointerCurMotionEvent;
        return companion.spanX(motionEvent != null ? com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent) : null, this.pointerDownPoint);
    }

    public final float pointerMoveToDownSpanY() {
        Companion companion = INSTANCE;
        MotionEvent motionEvent = this.pointerCurMotionEvent;
        return companion.spanY(motionEvent != null ? com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent) : null, this.pointerDownPoint);
    }

    public final float pointerMoveToMoveDistance() {
        Companion companion = INSTANCE;
        MotionEvent motionEvent = this.pointerCurMotionEvent;
        return companion.distance(motionEvent != null ? com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent) : null, this.lastPointerMovePoint);
    }

    public final void reset() {
        this.isHasMultiplePoint = false;
        this.isHasMultipleMove = false;
        this.isMorePointer = false;
        this.movePoint = null;
        this.lastMovePoint = null;
        this.upPoint = null;
        this.lastMoveTime = 0L;
        this.maxMoveDistance = 0.0f;
        this.isLongPress = false;
        this.isFling = false;
        this.isDoubleTap = false;
        this.isSingleTap = false;
        this.isScale = false;
        this.isCancelled = false;
        this.isShortMoved = false;
        this.pointerId = -1;
        this.pointerDownMotionEvent = null;
        this.pointerCurMotionEvent = null;
        this.lastPointerMovePoint = null;
        this.isPalmPressed = false;
        this.isBigPalmPressed = false;
        this.activeMoveMotionEvent = null;
        this.activeMultiMoveMotionEvent = null;
    }

    public final void setActiveMoveMotionEvent(@Nullable MotionEvent motionEvent) {
        this.activeMoveMotionEvent = motionEvent;
    }

    public final void setActiveMultiMoveMotionEvent(@Nullable MotionEvent motionEvent) {
        this.activeMultiMoveMotionEvent = motionEvent;
    }

    public final void setActivePointerId(int i) {
        this.activePointerId = i;
    }

    public final void setActiveUpPoint(@Nullable TouchPoint touchPoint) {
        this.activeUpPoint = touchPoint;
    }

    public final void setBigPalmPressed(boolean z) {
        this.isBigPalmPressed = z;
    }

    public final void setCancelled(boolean z) {
        this.isCancelled = z;
    }

    public final void setConfig(@NotNull RxGestureConfig rxGestureConfig) {
        Intrinsics.checkNotNullParameter(rxGestureConfig, "<set-?>");
        this.config = rxGestureConfig;
    }

    public final void setCurMotionEvent(@Nullable MotionEvent motionEvent) {
        this.curMotionEvent = motionEvent;
    }

    public final void setDoubleTap(boolean z) {
        this.isDoubleTap = z;
    }

    public final void setDownMotionEvent(@Nullable MotionEvent motionEvent) {
        this.downMotionEvent = motionEvent;
    }

    public final void setDownPoint(@Nullable TouchPoint touchPoint) {
        this.downPoint = touchPoint;
    }

    public final void setFling(boolean z) {
        this.isFling = z;
    }

    public final void setHasMultipleMove(boolean z) {
        this.isHasMultipleMove = z;
    }

    public final void setHasMultiplePoint(boolean z) {
        this.isHasMultiplePoint = z;
    }

    public final void setHover(boolean z) {
        this.isHover = z;
    }

    public final void setLastMovePoint(@Nullable TouchPoint touchPoint) {
        this.lastMovePoint = touchPoint;
    }

    public final void setLastMoveTime(long j) {
        this.lastMoveTime = j;
    }

    public final void setLastPointerMovePoint(@Nullable TouchPoint touchPoint) {
        this.lastPointerMovePoint = touchPoint;
    }

    public final void setLongPress(boolean z) {
        this.isLongPress = z;
    }

    public final void setLongPressExit(boolean z) {
        this.isLongPressExit = z;
    }

    public final void setMaxMoveDistance(float f) {
        this.maxMoveDistance = f;
    }

    public final void setMorePointer(boolean z) {
        this.isMorePointer = z;
    }

    public final void setMovePoint(@Nullable TouchPoint touchPoint) {
        this.movePoint = touchPoint;
    }

    public final void setPalmPressed(boolean z) {
        this.isPalmPressed = z;
    }

    public final void setPenActive(boolean z) {
        this.isPenActive = z;
    }

    public final void setPointerCount(int i) {
        this.pointerCount = i;
    }

    public final void setPointerCurMotionEvent(@Nullable MotionEvent motionEvent) {
        this.pointerCurMotionEvent = motionEvent;
    }

    public final void setPointerDownMotionEvent(@Nullable MotionEvent motionEvent) {
        this.pointerDownMotionEvent = motionEvent;
    }

    public final void setPointerDownPoint(@Nullable TouchPoint touchPoint) {
        this.pointerDownPoint = touchPoint;
    }

    public final void setPointerId(int i) {
        this.pointerId = i;
    }

    public final void setPointerUpPoint(@Nullable TouchPoint touchPoint) {
        this.pointerUpPoint = touchPoint;
    }

    public final void setScale(boolean z) {
        this.isScale = z;
    }

    public final void setShortMoved(boolean z) {
        this.isShortMoved = z;
    }

    public final void setSingleTap(boolean z) {
        this.isSingleTap = z;
    }

    public final void setUpPoint(@Nullable TouchPoint touchPoint) {
        this.upPoint = touchPoint;
    }

    public final float totalDistanceX() {
        TouchPoint touchPoint = this.downPoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.movePoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint2.getX() - touchPoint.getX()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float totalDistanceY() {
        TouchPoint touchPoint = this.downPoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.movePoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint2.getY() - touchPoint.getY()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float upDownDistanceX() {
        TouchPoint touchPoint = this.upPoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.downPoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint.getX() - touchPoint2.getX()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float upDownDistanceY() {
        TouchPoint touchPoint = this.upPoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.downPoint;
            Float valueOf = touchPoint2 != null ? Float.valueOf(touchPoint.getY() - touchPoint2.getY()) : null;
            if (valueOf != null) {
                return valueOf.floatValue();
            }
        }
        return 0.0f;
    }

    public final float upToDownDistance() {
        return INSTANCE.distance(this.activeUpPoint, this.downPoint);
    }

    public final long upToDownTime() {
        TouchPoint touchPoint = this.upPoint;
        if (touchPoint != null) {
            TouchPoint touchPoint2 = this.downPoint;
            Long valueOf = touchPoint2 != null ? Long.valueOf(touchPoint.getTimestamp() - touchPoint2.getTimestamp()) : null;
            if (valueOf != null) {
                return valueOf.longValue();
            }
        }
        return -1L;
    }

    public final void updateActiveUpPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.activeUpPoint = m35968b(event);
    }

    public final void updateCancelPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.isCancelled = true;
        this.curMotionEvent = MotionEvent.obtain(event);
        this.velocityTrackerWrapper.onRelease();
    }

    public final void updateDownPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.activePointerId = event.getPointerId(0);
        this.downPoint = m35968b(event);
        this.pointerCount = event.getPointerCount();
        this.downMotionEvent = MotionEvent.obtain(event);
        this.curMotionEvent = MotionEvent.obtain(event);
        reset();
        this.velocityTrackerWrapper.onDown(event);
    }

    public final void updateMovePoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.movePoint = m35968b(event);
        this.curMotionEvent = MotionEvent.obtain(event);
        m35970d(event);
        this.velocityTrackerWrapper.onMove(event);
        TouchPoint touchPoint = this.movePoint;
        if (touchPoint != null) {
            m35969c(touchPoint);
        }
    }

    public final void updatePointerDownPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        int pointerId = event.getPointerId(event.getActionIndex());
        this.pointerId = pointerId;
        MotionEvent m35967a = m35967a(event, pointerId);
        if (m35967a == null) {
            m35967a = event;
        }
        this.pointerDownMotionEvent = MotionEvent.obtain(m35967a);
        this.pointerCurMotionEvent = MotionEvent.obtain(m35967a);
        this.pointerDownPoint = m35968b(m35967a);
        this.curMotionEvent = MotionEvent.obtain(event);
        this.isHasMultiplePoint = true;
        this.pointerCount = event.getPointerCount();
    }

    public final void updatePointerUpPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.pointerUpPoint = m35968b(event);
        this.curMotionEvent = MotionEvent.obtain(event);
    }

    public final void updateUpPoint(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.upPoint = m35968b(event);
        this.curMotionEvent = MotionEvent.obtain(event);
        this.velocityTrackerWrapper.onUp(event);
        this.velocityTrackerWrapper.onRelease();
        TouchPoint touchPoint = this.upPoint;
        if (touchPoint != null) {
            m35969c(touchPoint);
        }
    }
}
