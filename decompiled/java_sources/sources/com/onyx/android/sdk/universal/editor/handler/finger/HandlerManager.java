package com.onyx.android.sdk.universal.editor.handler.finger;

import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.device.DeviceFactory;
import com.onyx.android.sdk.device.IDevice;
import com.onyx.android.sdk.note.common.shape.Shape;
import com.onyx.android.sdk.note.common.shape.ShapeTypes;
import com.onyx.android.sdk.rxgesture.RxGestureConfig;
import com.onyx.android.sdk.rxgesture.RxGestureContext;
import com.onyx.android.sdk.universal.editor.EditorBundle;
import com.onyx.android.sdk.universal.editor.GlobalBundle;
import com.onyx.android.sdk.universal.editor.action.handler.StylusLongPressEraserAction;
import com.onyx.android.sdk.universal.editor.action.shape.HitTestShapeAction;
import com.onyx.android.sdk.universal.editor.config.AppConfig;
import com.onyx.android.sdk.universal.editor.config.EditorTouchMode;
import com.onyx.android.sdk.universal.editor.events.app.NoGesturesEvent;
import com.onyx.android.sdk.universal.editor.events.note.ChangeTouchModeEvent;
import com.onyx.android.sdk.universal.editor.events.note.CurrentLayerHiddenEvent;
import com.onyx.android.sdk.universal.editor.events.note.CurrentLayerLockedEvent;
import com.onyx.android.sdk.universal.editor.extension.EditorBundleKt;
import com.onyx.android.sdk.universal.editor.extension.MMKVNote;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeature;
import com.onyx.android.sdk.universal.editor.feature.touch.TouchModeFeatureManager;
import com.onyx.android.sdk.universal.editor.gesture.FastUpdateContentViewSizeAction;
import com.onyx.android.sdk.universal.editor.gesture.ReaderGestureDistributor;
import com.onyx.android.sdk.universal.editor.gesture.ScaleGestureHandlerAction;
import com.onyx.android.sdk.universal.editor.gesture.ScrollGestureHandlerAction;
import com.onyx.android.sdk.universal.editor.gesture.TouchEventTransformer;
import com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo;
import com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager;
import com.onyx.android.sdk.universal.editor.handler.shape.BaseShapeHandler;
import com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager;
import com.onyx.android.sdk.universal.editor.helper.DefaultEditorDataProxy;
import com.onyx.android.sdk.universal.editor.helper.EditorDataProxy;
import com.onyx.android.sdk.universal.editor.helper.QuicklyFunctionHelper;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Predicate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¸\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b*\u0018\u0000 ½\u00012\u00020\u0001:\u0002½\u0001B\t¢\u0006\u0006\b»\u0001\u0010¼\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\b\u0010\u0004\u001a\u00020\u0002H\u0002J\b\u0010\u0005\u001a\u00020\u0002H\u0002J\b\u0010\u0006\u001a\u00020\u0002H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\u0012\u001a\u00020\u0002H\u0002J\b\u0010\u0013\u001a\u00020\bH\u0002J\b\u0010\u0014\u001a\u00020\bH\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u0002H\u0002J\u0012\u0010\u001a\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002J\b\u0010\u001b\u001a\u00020\bH\u0002J\u000e\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cJ\u0006\u0010\u001f\u001a\u00020\u0002J\u0016\u0010#\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 2\u0006\u0010\"\u001a\u00020\u0017J\u000e\u0010$\u001a\u00020\u00022\u0006\u0010!\u001a\u00020 J\u0006\u0010%\u001a\u00020\u0002J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020&J\u0006\u0010)\u001a\u00020&J\u0006\u0010*\u001a\u00020\bJ\u0006\u0010+\u001a\u00020\bJ\u0006\u0010,\u001a\u00020\bJ\u0006\u0010-\u001a\u00020\bJ\u0016\u0010.\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010/\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u00101\u001a\u00020\u00022\u0006\u00100\u001a\u00020\bJ\u0010\u00103\u001a\u00020\b2\b\b\u0002\u00102\u001a\u00020\bJ\u000e\u00105\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u001e\u0010:\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u0016\u0010;\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u001e\u0010<\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u001e\u0010=\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00108\u001a\u00020\n2\u0006\u00109\u001a\u00020\nJ\u0016\u0010>\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u0016\u0010?\u001a\u00020\u00022\u0006\u00107\u001a\u0002062\u0006\u00104\u001a\u00020\nJ\u000e\u0010@\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010A\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010D\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BJ\u000e\u0010E\u001a\u00020\u00022\u0006\u0010C\u001a\u00020BJ\u000e\u0010G\u001a\u00020\u00022\u0006\u0010F\u001a\u00020\bJ\u000e\u0010H\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010I\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010J\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u0006\u0010K\u001a\u00020\u0002J\u000e\u0010L\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010M\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u000e\u0010N\u001a\u00020\u00022\u0006\u00104\u001a\u00020\nJ\u0006\u0010O\u001a\u00020\bJ\u000e\u0010R\u001a\u00020\b2\u0006\u0010Q\u001a\u00020PJ\u000e\u0010S\u001a\u00020\b2\u0006\u0010Q\u001a\u00020PJ\u0006\u0010T\u001a\u00020\bJ\u0006\u0010U\u001a\u00020\bJ\u001a\u0010X\u001a\u00020\b2\u0012\u0010W\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\b0VJ\u0006\u0010Y\u001a\u00020\bR\"\u0010\u001d\u001a\u00020\u001c8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u001d\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R#\u0010d\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020\u00170_8\u0006¢\u0006\f\n\u0004\b`\u0010a\u001a\u0004\bb\u0010cR\"\u0010k\u001a\u00020 8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\be\u0010f\u001a\u0004\bg\u0010h\"\u0004\bi\u0010jR\u0017\u0010q\u001a\u00020l8\u0006¢\u0006\f\n\u0004\bm\u0010n\u001a\u0004\bo\u0010pR\u0017\u0010v\u001a\u00020r8\u0006¢\u0006\f\n\u0004\b\u0010\u0010s\u001a\u0004\bt\u0010uR\u001e\u0010z\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030x0w8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010yR$\u0010|\u001a\u00020{8\u0006@\u0006X\u0086.¢\u0006\u0014\n\u0004\b|\u0010}\u001a\u0004\b~\u0010\u007f\"\u0006\b\u0080\u0001\u0010\u0081\u0001R\u0019\u0010\u0084\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082.¢\u0006\u0007\n\u0005\b\u001b\u0010\u0083\u0001R*\u0010\u0086\u0001\u001a\u00030\u0085\u00018\u0006@\u0006X\u0086.¢\u0006\u0018\n\u0006\b\u0086\u0001\u0010\u0087\u0001\u001a\u0006\b\u0088\u0001\u0010\u0089\u0001\"\u0006\b\u008a\u0001\u0010\u008b\u0001R+\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0006\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001\"\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0017\u0010'\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0007\u0010\u0093\u0001R\u0019\u0010\u0096\u0001\u001a\u00030\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0018\u0010\u0095\u0001R(\u0010\u0098\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0016\u0010\u0097\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001\"\u0006\b\u009a\u0001\u0010\u009b\u0001R(\u0010\u009c\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0004\u0010\u0097\u0001\u001a\u0006\b\u009c\u0001\u0010\u0099\u0001\"\u0006\b\u009d\u0001\u0010\u009b\u0001R(\u0010\u009e\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0003\u0010\u0097\u0001\u001a\u0006\b\u009e\u0001\u0010\u0099\u0001\"\u0006\b\u009f\u0001\u0010\u009b\u0001R(\u0010 \u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0005\u0010\u0097\u0001\u001a\u0006\b \u0001\u0010\u0099\u0001\"\u0006\b¡\u0001\u0010\u009b\u0001R(\u0010¢\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\t\u0010\u0097\u0001\u001a\u0006\b¢\u0001\u0010\u0099\u0001\"\u0006\b£\u0001\u0010\u009b\u0001R(\u0010¤\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u001a\u0010\u0097\u0001\u001a\u0006\b¤\u0001\u0010\u0099\u0001\"\u0006\b¥\u0001\u0010\u009b\u0001R(\u0010¦\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0013\u0010\u0097\u0001\u001a\u0006\b¦\u0001\u0010\u0099\u0001\"\u0006\b§\u0001\u0010\u009b\u0001R)\u0010©\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¨\u0001\u0010\u0097\u0001\u001a\u0006\b©\u0001\u0010\u0099\u0001\"\u0006\bª\u0001\u0010\u009b\u0001R(\u0010«\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u000f\u0010\u0097\u0001\u001a\u0006\b«\u0001\u0010\u0099\u0001\"\u0006\b¬\u0001\u0010\u009b\u0001R)\u0010®\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u00ad\u0001\u0010\u0097\u0001\u001a\u0006\b®\u0001\u0010\u0099\u0001\"\u0006\b¯\u0001\u0010\u009b\u0001R)\u0010±\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b°\u0001\u0010\u0097\u0001\u001a\u0006\b±\u0001\u0010\u0099\u0001\"\u0006\b²\u0001\u0010\u009b\u0001R(\u0010³\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0011\u0010\u0097\u0001\u001a\u0006\b³\u0001\u0010\u0099\u0001\"\u0006\b´\u0001\u0010\u009b\u0001R(\u0010µ\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0014\u0010\u0097\u0001\u001a\u0006\bµ\u0001\u0010\u0099\u0001\"\u0006\b¶\u0001\u0010\u009b\u0001R(\u0010·\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\u0012\u0010\u0097\u0001\u001a\u0006\b·\u0001\u0010\u0099\u0001\"\u0006\b¸\u0001\u0010\u009b\u0001R(\u0010¹\u0001\u001a\u00020\b8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b\f\u0010\u0097\u0001\u001a\u0006\b¹\u0001\u0010\u0099\u0001\"\u0006\bº\u0001\u0010\u009b\u0001¨\u0006¾\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;", "", "", "l", C4921e.f26537n, "m", C6998g.f39679a, C6999h.f39688c, "", GoogleApiAvailabilityLight.f29016b, "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "x", "Landroid/view/View;", "view", "r", "d", "u", "w", "p", "v", "", "j", "Lcom/onyx/android/sdk/universal/editor/handler/finger/BaseHandler;", "i", "e", C4921e.f26528e, C6997f.f39671c, "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "editorBundle", "init", "destroy", "", "key", Constants.TRANSLET_OUTPUT_PNAME, "registerHandler", "unregisterHandler", "subscribeTouchEvent", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "touchMode", "updateTouchMode", "getTouchMode", "isSupportTouchEdit", "isSupportFingerTouchEdit", "isShapeTouchEnabled", "isTextSelectionTouchEnabled", "onTouchEvent", "dispatchTouchEvent", "isActive", "setStylusLongPressActive", "showToast", "checkNoteLayer", "motionEvent", "onTouchDown", "Lcom/onyx/android/sdk/rxgesture/RxGestureContext;", "gestureContext", "downMotionEvent", "currentEvent", "onMoving", "onExitSingleMove", "onTwoFingerMoving", "onFling", "onTouchUp", "onTouchCancel", "onSingleTapUp", "onLongPress", "Landroid/view/ScaleGestureDetector;", "detector", "onScaleBegin", "onScale", "pinchZooming", "onScaleEnd", "onDoubleTap", "onTwoFingerClicked", "onThreeFingerClicked", "onExitLongPress", "onNoGestures", "onStylusLongPressActive", "onStylusLongPressRelease", "isGestureMoved", "Lcom/onyx/android/sdk/note/common/shape/Shape;", "shape", "supportSingleTapClick", "supportSingleTapClickOnNonEditMode", "isLongPress", "hasMultiplePoint", "Lkotlin/Function1;", "predicate", "filterByFingerGesture", "isDummyProvider", "Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "getEditorBundle", "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;", "setEditorBundle", "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V", "", "a", "Ljava/util/Map;", "getHandlerMap", "()Ljava/util/Map;", "handlerMap", "b", Constants.STRING_SIG, "getActiveProviderName", "()Ljava/lang/String;", "setActiveProviderName", "(Ljava/lang/String;)V", "activeProviderName", "Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;", "c", "Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;", "getReaderGestureDistributor", "()Lcom/onyx/android/sdk/universal/editor/gesture/ReaderGestureDistributor;", "readerGestureDistributor", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;", "getTouchStateInfo", "()Lcom/onyx/android/sdk/universal/editor/gesture/TouchStateInfo;", "touchStateInfo", "", "Lcom/onyx/android/sdk/base/rx/RxBaseAction;", "Ljava/util/List;", "gestureHandlerActionList", "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "shapeHandlerManager", "Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "getShapeHandlerManager", "()Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;", "setShapeHandlerManager", "(Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;)V", "Lcom/onyx/android/sdk/device/IDevice;", "Lcom/onyx/android/sdk/device/IDevice;", "motionEventChecker", "Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;", "editorDataProxy", "Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;", "getEditorDataProxy", "()Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;", "setEditorDataProxy", "(Lcom/onyx/android/sdk/universal/editor/helper/EditorDataProxy;)V", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;", "Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;", "getRulerTransformHandler", "()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;", "setRulerTransformHandler", "(Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;)V", "rulerTransformHandler", "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;", "Lcom/onyx/android/sdk/universal/editor/feature/touch/TouchModeFeature;", "touchModeFeature", Constants.HASIDCALL_INDEX_SIG, "isEnabledProcess", Constants.BOOLEAN_VALUE_SIG, "setEnabledProcess", "(Z)V", "isEnabledKeyProcess", "setEnabledKeyProcess", "isEnabledFingerTouchProcess", "setEnabledFingerTouchProcess", "isEnabledStylusTouchProcess", "setEnabledStylusTouchProcess", "isEnabledEraseTouchProcess", "setEnabledEraseTouchProcess", "isEnabledScale", "setEnabledScale", "isEnabledLongPress", "setEnabledLongPress", "q", "isEnabledSingleTapUp", "setEnabledSingleTapUp", "isEnabledScroll", "setEnabledScroll", "s", "isEnabledFling", "setEnabledFling", "t", "isEnabledDown", "setEnabledDown", "isEnabledPan", "setEnabledPan", "isEnabledDoubleTap", "setEnabledDoubleTap", "isEnableMultiClick", "setEnableMultiClick", "isEnableStylusLongClick", "setEnableStylusLongClick", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nHandlerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,560:1\n1855#2,2:561\n1855#2,2:563\n1855#2,2:565\n*S KotlinDebug\n*F\n+ 1 HandlerManager.kt\ncom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager\n*L\n126#1:561,2\n141#1:563,2\n147#1:565,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HandlerManager {

    @NotNull
    public static final String DUMMY_PROVIDER = "dummy";

    @NotNull
    public static final String MENU = "menu";

    @NotNull
    public static final String READING_PROVIDER = "reading_provider";

    @NotNull
    public static final String TAG = "HandlerManager";

    @NotNull
    public static final String WORD_SELECTION_PROVIDER = "word_selection_provider";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, BaseHandler> handlerMap = new LinkedHashMap();

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public String activeProviderName = "dummy";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final ReaderGestureDistributor readerGestureDistributor = new ReaderGestureDistributor();

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final TouchStateInfo touchStateInfo = new TouchStateInfo();

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<RxBaseAction<?>> gestureHandlerActionList = new ArrayList();
    public EditorBundle editorBundle;
    public EditorDataProxy editorDataProxy;

    /* renamed from: f, reason: from kotlin metadata */
    public IDevice motionEventChecker;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public TouchEventTransformer rulerTransformHandler;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public EditorTouchMode touchMode;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public TouchModeFeature touchModeFeature;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isEnabledProcess;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isEnabledKeyProcess;

    /* renamed from: l, reason: from kotlin metadata */
    public boolean isEnabledFingerTouchProcess;

    /* renamed from: m, reason: from kotlin metadata */
    public boolean isEnabledStylusTouchProcess;

    /* renamed from: n, reason: from kotlin metadata */
    public boolean isEnabledEraseTouchProcess;

    /* renamed from: o, reason: from kotlin metadata */
    public boolean isEnabledScale;

    /* renamed from: p, reason: from kotlin metadata */
    public boolean isEnabledLongPress;

    /* renamed from: q, reason: from kotlin metadata */
    public boolean isEnabledSingleTapUp;

    /* renamed from: r, reason: from kotlin metadata */
    public boolean isEnabledScroll;

    /* renamed from: s, reason: from kotlin metadata */
    public boolean isEnabledFling;
    public ShapeHandlerManager shapeHandlerManager;

    /* renamed from: t, reason: from kotlin metadata */
    public boolean isEnabledDown;

    /* renamed from: u, reason: from kotlin metadata */
    public boolean isEnabledPan;

    /* renamed from: v, reason: from kotlin metadata */
    public boolean isEnabledDoubleTap;

    /* renamed from: w, reason: from kotlin metadata */
    public boolean isEnableMultiClick;

    /* renamed from: x, reason: from kotlin metadata */
    public boolean isEnableStylusLongClick;

    public HandlerManager() {
        EditorTouchMode editorTouchMode = EditorTouchMode.STYLUS_SCRIBBLE;
        this.touchMode = editorTouchMode;
        this.touchModeFeature = TouchModeFeatureManager.INSTANCE.getTouchModeFeature(editorTouchMode);
        this.isEnabledProcess = true;
        this.isEnabledKeyProcess = true;
        this.isEnabledFingerTouchProcess = true;
        this.isEnabledScale = true;
        this.isEnabledLongPress = true;
        this.isEnabledSingleTapUp = true;
        this.isEnabledScroll = true;
        this.isEnabledFling = true;
        this.isEnabledDown = true;
        this.isEnabledPan = true;
        this.isEnabledDoubleTap = true;
        this.isEnableMultiClick = true;
        this.isEnableStylusLongClick = true;
    }

    public static /* synthetic */ boolean checkNoteLayer$default(HandlerManager handlerManager, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return handlerManager.checkNoteLayer(z);
    }

    /* renamed from: q */
    public static final void m40993q(HandlerManager this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m40997e();
    }

    /* renamed from: s */
    public static final boolean m40994s(HandlerManager this$0, Shape it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it2, "it");
        return this$0.supportSingleTapClick(it2);
    }

    /* renamed from: t */
    public static final void m40995t(HandlerManager this$0, MotionEvent motionEvent, HitTestShapeAction it2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(motionEvent, "$motionEvent");
        Intrinsics.checkNotNullParameter(it2, "it");
        this$0.m41001i().onSingleTapUp(motionEvent);
    }

    public final boolean checkNoteLayer(boolean showToast) {
        if (EditorBundleKt.isCurNoteLayerLocked(getEditorBundle())) {
            if (showToast) {
                EditorBundleKt.postEvent(getEditorBundle(), new CurrentLayerLockedEvent());
            }
            return false;
        }
        if (EditorBundleKt.isCurNoteLayerShown(getEditorBundle())) {
            return true;
        }
        if (showToast) {
            EditorBundleKt.postEvent(getEditorBundle(), new CurrentLayerHiddenEvent());
        }
        return false;
    }

    /* renamed from: d */
    public final boolean m40996d(MotionEvent event) {
        if (!isSupportTouchEdit() || !MotionEventKt.isUpAction(event) || this.touchStateInfo.getIsScrolling() || this.touchStateInfo.getIsPinchZooming()) {
            return false;
        }
        return isSupportFingerTouchEdit() || !MotionEventKt.isFingerTouch(event);
    }

    public final void destroy() {
        getShapeHandlerManager().destroy();
        m40999g();
        m41000h();
    }

    public final void dispatchTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        m41012w();
        this.readerGestureDistributor.dispatchTouchEvent(event);
    }

    /* renamed from: e */
    public final void m40997e() {
        BaseShapeHandler activeHandler;
        if (isSupportFingerTouchEdit() && (activeHandler = getShapeHandlerManager().getActiveHandler()) != null) {
            activeHandler.cancelAction();
        }
    }

    /* renamed from: f */
    public final boolean m40998f() {
        if (this.isEnabledScale) {
            return true;
        }
        m41001i().onScaleDisabled();
        return false;
    }

    public final boolean filterByFingerGesture(@NotNull Function1<? super HandlerManager, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (isSupportFingerTouchEdit()) {
            return predicate.invoke(this).booleanValue();
        }
        return false;
    }

    /* renamed from: g */
    public final void m40999g() {
        Iterator<T> it2 = this.handlerMap.values().iterator();
        while (it2.hasNext()) {
            ((BaseHandler) it2.next()).destroy();
        }
        this.handlerMap.clear();
    }

    @NotNull
    public final String getActiveProviderName() {
        return this.activeProviderName;
    }

    @NotNull
    public final EditorBundle getEditorBundle() {
        EditorBundle editorBundle = this.editorBundle;
        if (editorBundle != null) {
            return editorBundle;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorBundle");
        return null;
    }

    @NotNull
    public final EditorDataProxy getEditorDataProxy() {
        EditorDataProxy editorDataProxy = this.editorDataProxy;
        if (editorDataProxy != null) {
            return editorDataProxy;
        }
        Intrinsics.throwUninitializedPropertyAccessException("editorDataProxy");
        return null;
    }

    @NotNull
    public final Map<String, BaseHandler> getHandlerMap() {
        return this.handlerMap;
    }

    @NotNull
    public final ReaderGestureDistributor getReaderGestureDistributor() {
        return this.readerGestureDistributor;
    }

    @Nullable
    public final TouchEventTransformer getRulerTransformHandler() {
        return this.rulerTransformHandler;
    }

    @NotNull
    public final ShapeHandlerManager getShapeHandlerManager() {
        ShapeHandlerManager shapeHandlerManager = this.shapeHandlerManager;
        if (shapeHandlerManager != null) {
            return shapeHandlerManager;
        }
        Intrinsics.throwUninitializedPropertyAccessException("shapeHandlerManager");
        return null;
    }

    @NotNull
    public final EditorTouchMode getTouchMode() {
        return this.touchMode;
    }

    @NotNull
    public final TouchStateInfo getTouchStateInfo() {
        return this.touchStateInfo;
    }

    /* renamed from: h */
    public final void m41000h() {
        this.readerGestureDistributor.dispose();
        Iterator<T> it2 = this.gestureHandlerActionList.iterator();
        while (it2.hasNext()) {
            ((RxBaseAction) it2.next()).dispose();
        }
        this.gestureHandlerActionList.clear();
    }

    public final boolean hasMultiplePoint() {
        return this.readerGestureDistributor.getRxGesture().getGestureContext().getIsHasMultiplePoint();
    }

    /* renamed from: i */
    public final BaseHandler m41001i() {
        BaseHandler baseHandler = this.handlerMap.get(this.activeProviderName);
        Intrinsics.checkNotNull(baseHandler);
        return baseHandler;
    }

    public final void init(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "editorBundle");
        setEditorBundle(editorBundle);
        this.readerGestureDistributor.setHandlerManager(this);
        m41004l();
        setShapeHandlerManager(new ShapeHandlerManager(editorBundle));
        if (this.isEnableStylusLongClick) {
            this.motionEventChecker = DeviceFactory.INSTANCE.getDevice();
        }
        setEditorDataProxy(new DefaultEditorDataProxy(editorBundle));
        m41003k();
        m41005m();
    }

    public final boolean isDummyProvider() {
        return Intrinsics.areEqual(this.activeProviderName, "dummy");
    }

    /* renamed from: isEnableMultiClick, reason: from getter */
    public final boolean getIsEnableMultiClick() {
        return this.isEnableMultiClick;
    }

    /* renamed from: isEnableStylusLongClick, reason: from getter */
    public final boolean getIsEnableStylusLongClick() {
        return this.isEnableStylusLongClick;
    }

    /* renamed from: isEnabledDoubleTap, reason: from getter */
    public final boolean getIsEnabledDoubleTap() {
        return this.isEnabledDoubleTap;
    }

    /* renamed from: isEnabledDown, reason: from getter */
    public final boolean getIsEnabledDown() {
        return this.isEnabledDown;
    }

    /* renamed from: isEnabledEraseTouchProcess, reason: from getter */
    public final boolean getIsEnabledEraseTouchProcess() {
        return this.isEnabledEraseTouchProcess;
    }

    /* renamed from: isEnabledFingerTouchProcess, reason: from getter */
    public final boolean getIsEnabledFingerTouchProcess() {
        return this.isEnabledFingerTouchProcess;
    }

    /* renamed from: isEnabledFling, reason: from getter */
    public final boolean getIsEnabledFling() {
        return this.isEnabledFling;
    }

    /* renamed from: isEnabledKeyProcess, reason: from getter */
    public final boolean getIsEnabledKeyProcess() {
        return this.isEnabledKeyProcess;
    }

    /* renamed from: isEnabledLongPress, reason: from getter */
    public final boolean getIsEnabledLongPress() {
        return this.isEnabledLongPress;
    }

    /* renamed from: isEnabledPan, reason: from getter */
    public final boolean getIsEnabledPan() {
        return this.isEnabledPan;
    }

    /* renamed from: isEnabledProcess, reason: from getter */
    public final boolean getIsEnabledProcess() {
        return this.isEnabledProcess;
    }

    /* renamed from: isEnabledScale, reason: from getter */
    public final boolean getIsEnabledScale() {
        return this.isEnabledScale;
    }

    /* renamed from: isEnabledScroll, reason: from getter */
    public final boolean getIsEnabledScroll() {
        return this.isEnabledScroll;
    }

    /* renamed from: isEnabledSingleTapUp, reason: from getter */
    public final boolean getIsEnabledSingleTapUp() {
        return this.isEnabledSingleTapUp;
    }

    /* renamed from: isEnabledStylusTouchProcess, reason: from getter */
    public final boolean getIsEnabledStylusTouchProcess() {
        return this.isEnabledStylusTouchProcess;
    }

    public final boolean isGestureMoved() {
        return (isSupportFingerTouchEdit() ? this.readerGestureDistributor.isMultiFingersMoved() : this.readerGestureDistributor.isSingleFingerMoved()) && !m41007o(this.readerGestureDistributor.getCurMoveMotionEvent());
    }

    public final boolean isLongPress() {
        return this.readerGestureDistributor.isLongPress();
    }

    public final boolean isShapeTouchEnabled() {
        return this.touchStateInfo.getIsShapeTouchEnabled();
    }

    public final boolean isSupportFingerTouchEdit() {
        return this.touchModeFeature.supportFingerEdit();
    }

    public final boolean isSupportTouchEdit() {
        return this.touchModeFeature.supportEdit();
    }

    public final boolean isTextSelectionTouchEnabled() {
        return this.touchStateInfo.getIsTextSelectionTouchEnabled();
    }

    /* renamed from: j */
    public final long m41002j() {
        return isSupportTouchEdit() ? 30L : 10L;
    }

    /* renamed from: k */
    public final void m41003k() {
        this.gestureHandlerActionList.add(new ScaleGestureHandlerAction(getEditorBundle()));
        this.gestureHandlerActionList.add(new ScrollGestureHandlerAction(getEditorBundle()));
        this.gestureHandlerActionList.add(new FastUpdateContentViewSizeAction(getEditorBundle()));
        Iterator<T> it2 = this.gestureHandlerActionList.iterator();
        while (it2.hasNext()) {
            RxjavaKt.subscribeWithDefault$default(((RxBaseAction) it2.next()).build(), null, null, null, 7, null);
        }
    }

    /* renamed from: l */
    public final void m41004l() {
        registerHandler("dummy", new DummyHandler(getEditorBundle()));
        registerHandler(READING_PROVIDER, new ReadingHandler(getEditorBundle()));
    }

    /* renamed from: m */
    public final void m41005m() {
        EditorTouchMode editTouchMode$default = MMKVNote.getEditTouchMode$default(MMKVNote.INSTANCE, null, 1, null);
        this.touchMode = editTouchMode$default;
        updateTouchMode(editTouchMode$default);
    }

    /* renamed from: n */
    public final boolean m41006n() {
        return this.isEnabledStylusTouchProcess || this.touchModeFeature.supportScrollWithPen();
    }

    /* renamed from: o */
    public final boolean m41007o(MotionEvent event) {
        return getShapeHandlerManager().isHandlerProcessing(event);
    }

    public final void onDoubleTap(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (this.isEnabledDoubleTap) {
            if (isSupportFingerTouchEdit() && QuicklyFunctionHelper.INSTANCE.hasGestureDoubleQuicklyClickFunc()) {
                RxjavaKt.runInUI(new Runnable() { // from class: com.sunia.HTREnginev2.lfh
                    @Override // java.lang.Runnable
                    public final void run() {
                        HandlerManager.m40993q(HandlerManager.this);
                    }
                });
            }
            m41001i().onDoubleTap(motionEvent);
        }
    }

    public final void onExitLongPress() {
        m41001i().onExitLongPress();
    }

    public final void onExitSingleMove(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onExitSingleMove(gestureContext, motionEvent);
    }

    public final void onFling(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        if (this.isEnabledFling) {
            m40997e();
            m41001i().onFling(gestureContext, downMotionEvent, currentEvent);
        }
    }

    public final void onLongPress(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (this.isEnabledLongPress && !m41007o(motionEvent)) {
            m41001i().onLongPress(motionEvent);
        }
    }

    public final void onMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        if (!this.isEnabledScroll || isSupportFingerTouchEdit() || m41007o(currentEvent)) {
            return;
        }
        m40997e();
        m41001i().onMoving(downMotionEvent, currentEvent);
    }

    public final void onNoGestures(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (isSupportFingerTouchEdit()) {
            EditorBundleKt.postEvent(getEditorBundle(), new NoGesturesEvent(com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent)));
        }
    }

    public final void onScale(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (m40998f()) {
            m41001i().onScale(detector);
        }
    }

    public final void onScaleBegin(@NotNull ScaleGestureDetector detector) {
        Intrinsics.checkNotNullParameter(detector, "detector");
        if (m40998f()) {
            m40997e();
            m41001i().onScaleBegin(detector);
        }
    }

    public final void onScaleEnd(boolean pinchZooming) {
        if (m40998f() && pinchZooming) {
            m41001i().onScaleEnd();
        }
    }

    public final void onSingleTapUp(@NotNull final MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (this.isEnabledSingleTapUp) {
            if (!isSupportFingerTouchEdit()) {
                m41001i().onSingleTapUp(motionEvent);
                return;
            }
            TouchPoint touchPoint = com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchPoint(motionEvent);
            HitTestShapeAction hitTestShapeAction = new HitTestShapeAction(getEditorBundle(), touchPoint);
            hitTestShapeAction.setPredicate(new Predicate() { // from class: com.sunia.HTREnginev2.mfh
                @Override // io.reactivex.rxjava3.functions.Predicate
                public final boolean test(Object obj) {
                    boolean m40994s;
                    m40994s = HandlerManager.m40994s(HandlerManager.this, (Shape) obj);
                    return m40994s;
                }
            });
            RxjavaKt.flatMapIf(RxjavaKt.doOnNextIf(hitTestShapeAction.build(), new Function1<HitTestShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager$onSingleTapUp$2
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull HitTestShapeAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.getHitTestShape() != null);
                }
            }, new Consumer() { // from class: com.sunia.HTREnginev2.nfh
                @Override // io.reactivex.rxjava3.functions.Consumer
                public final void accept(Object obj) {
                    HandlerManager.m40995t(HandlerManager.this, motionEvent, (HitTestShapeAction) obj);
                }
            }), new Function1<HitTestShapeAction, Boolean>() { // from class: com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager$onSingleTapUp$4
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final Boolean invoke(@NotNull HitTestShapeAction it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return Boolean.valueOf(it2.getHitTestShape() == null);
                }
            }, new HandlerManager$onSingleTapUp$5(this, touchPoint, motionEvent)).subscribe();
        }
    }

    public final void onStylusLongPressActive(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onStylusLongPressActive(motionEvent);
    }

    public final void onStylusLongPressRelease(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onStylusLongPressRelease(motionEvent);
    }

    public final void onThreeFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onThreeFingerClicked(motionEvent);
    }

    public final void onTouchCancel(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onTouchCancel(gestureContext, motionEvent);
    }

    public final void onTouchDown(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        if (this.isEnabledDown) {
            m41001i().onTouchDown(motionEvent);
        }
    }

    public final boolean onTouchEvent(@NotNull View view, @NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(event, "event");
        try {
            MotionEventKt.reportMotionEvent(event);
            m41012w();
            m41013x(event);
            m41009r(view, event);
            this.readerGestureDistributor.onTouchEvent(view, event);
            return true;
        } catch (Exception e) {
            Debug.INSTANCE.m32048e(e);
            return true;
        }
    }

    public final void onTouchUp(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onTouchUp(gestureContext, motionEvent);
    }

    public final void onTwoFingerClicked(@NotNull MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(motionEvent, "motionEvent");
        m41001i().onTwoFingerClicked(motionEvent);
    }

    public final void onTwoFingerMoving(@NotNull RxGestureContext gestureContext, @NotNull MotionEvent downMotionEvent, @NotNull MotionEvent currentEvent) {
        Intrinsics.checkNotNullParameter(gestureContext, "gestureContext");
        Intrinsics.checkNotNullParameter(downMotionEvent, "downMotionEvent");
        Intrinsics.checkNotNullParameter(currentEvent, "currentEvent");
        if (this.isEnabledScroll && isSupportFingerTouchEdit()) {
            m40997e();
            m41001i().onMoving(downMotionEvent, currentEvent);
        }
    }

    /* renamed from: p */
    public final boolean m41008p() {
        return AppConfig.INSTANCE.isEnabledPalmReject() && this.touchMode.isStylusMode();
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0062, code lost:
    
        if (r1.isEraserPressed(r7) != false) goto L24;
     */
    /* renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m41009r(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.isShapeTouchEnabled()
            if (r0 != 0) goto L7
            return
        L7:
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isDownAction(r7)
            if (r0 == 0) goto L39
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isPenTouchType(r7)
            if (r0 == 0) goto L39
            com.onyx.android.sdk.universal.editor.EditorBundle r0 = r5.getEditorBundle()
            boolean r0 = com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.stopScroll(r0)
            com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo r1 = r5.touchStateInfo
            r2 = 0
            r1.setStylusLongPress(r2)
            com.onyx.android.sdk.rxgesture.RxGestureLog r1 = com.onyx.android.sdk.rxgesture.RxGestureLog.INSTANCE
            java.lang.Class<com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager> r2 = com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager.class
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "onShapeTouchEvent, stopScroll = "
            r3.append(r4)
            r3.append(r0)
            java.lang.String r0 = r3.toString()
            r1.m35971d(r2, r0)
        L39:
            boolean r0 = r5.m40996d(r7)
            boolean r0 = r5.checkNoteLayer(r0)
            if (r0 != 0) goto L44
            return
        L44:
            com.onyx.android.sdk.device.IDevice r0 = r5.motionEventChecker
            r1 = 0
            java.lang.String r2 = "motionEventChecker"
            if (r0 != 0) goto L4f
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            r0 = r1
        L4f:
            boolean r0 = r0.isStylusLongPressed(r7)
            if (r0 != 0) goto L64
            com.onyx.android.sdk.device.IDevice r0 = r5.motionEventChecker
            if (r0 != 0) goto L5d
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r2)
            goto L5e
        L5d:
            r1 = r0
        L5e:
            boolean r0 = r1.isEraserPressed(r7)
            if (r0 == 0) goto L8a
        L64:
            com.onyx.android.sdk.universal.editor.extension.MMKVNote r0 = com.onyx.android.sdk.universal.editor.extension.MMKVNote.INSTANCE
            boolean r0 = r0.isStylusLongPressEraser()
            if (r0 == 0) goto L70
            r5.m41010u(r7)
            goto L84
        L70:
            com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo r0 = r5.touchStateInfo
            boolean r0 = r0.getIsStylusLongPress()
            if (r0 != 0) goto L84
            com.onyx.android.sdk.universal.editor.EditorBundle r0 = r5.getEditorBundle()
            com.onyx.android.sdk.universal.editor.events.note.ShowStylusFunctionInvalidEvent r1 = new com.onyx.android.sdk.universal.editor.events.note.ShowStylusFunctionInvalidEvent
            r1.<init>()
            com.onyx.android.sdk.universal.editor.extension.EditorBundleKt.postEvent(r0, r1)
        L84:
            com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo r0 = r5.touchStateInfo
            r1 = 1
            r0.setStylusLongPress(r1)
        L8a:
            com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo r0 = r5.touchStateInfo
            boolean r0 = r0.getIsScrolling()
            if (r0 != 0) goto La2
            com.onyx.android.sdk.universal.editor.gesture.TouchStateInfo r0 = r5.touchStateInfo
            boolean r0 = r0.getIsPinchZooming()
            if (r0 == 0) goto L9b
            goto La2
        L9b:
            com.onyx.android.sdk.universal.editor.handler.shape.ShapeHandlerManager r5 = r5.getShapeHandlerManager()
            r5.onTouchEvent(r6, r7)
        La2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.universal.editor.handler.finger.HandlerManager.m41009r(android.view.View, android.view.MotionEvent):void");
    }

    public final void registerHandler(@NotNull String key, @NotNull BaseHandler handler) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.handlerMap.put(key, handler);
    }

    public final void setActiveProviderName(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.activeProviderName = str;
    }

    public final void setEditorBundle(@NotNull EditorBundle editorBundle) {
        Intrinsics.checkNotNullParameter(editorBundle, "<set-?>");
        this.editorBundle = editorBundle;
    }

    public final void setEditorDataProxy(@NotNull EditorDataProxy editorDataProxy) {
        Intrinsics.checkNotNullParameter(editorDataProxy, "<set-?>");
        this.editorDataProxy = editorDataProxy;
    }

    public final void setEnableMultiClick(boolean z) {
        this.isEnableMultiClick = z;
    }

    public final void setEnableStylusLongClick(boolean z) {
        this.isEnableStylusLongClick = z;
    }

    public final void setEnabledDoubleTap(boolean z) {
        this.isEnabledDoubleTap = z;
    }

    public final void setEnabledDown(boolean z) {
        this.isEnabledDown = z;
    }

    public final void setEnabledEraseTouchProcess(boolean z) {
        this.isEnabledEraseTouchProcess = z;
    }

    public final void setEnabledFingerTouchProcess(boolean z) {
        this.isEnabledFingerTouchProcess = z;
    }

    public final void setEnabledFling(boolean z) {
        this.isEnabledFling = z;
    }

    public final void setEnabledKeyProcess(boolean z) {
        this.isEnabledKeyProcess = z;
    }

    public final void setEnabledLongPress(boolean z) {
        this.isEnabledLongPress = z;
    }

    public final void setEnabledPan(boolean z) {
        this.isEnabledPan = z;
    }

    public final void setEnabledProcess(boolean z) {
        this.isEnabledProcess = z;
    }

    public final void setEnabledScale(boolean z) {
        this.isEnabledScale = z;
    }

    public final void setEnabledScroll(boolean z) {
        this.isEnabledScroll = z;
    }

    public final void setEnabledSingleTapUp(boolean z) {
        this.isEnabledSingleTapUp = z;
    }

    public final void setEnabledStylusTouchProcess(boolean z) {
        this.isEnabledStylusTouchProcess = z;
    }

    public final void setRulerTransformHandler(@Nullable TouchEventTransformer touchEventTransformer) {
        this.rulerTransformHandler = touchEventTransformer;
    }

    public final void setShapeHandlerManager(@NotNull ShapeHandlerManager shapeHandlerManager) {
        Intrinsics.checkNotNullParameter(shapeHandlerManager, "<set-?>");
        this.shapeHandlerManager = shapeHandlerManager;
    }

    public final void setStylusLongPressActive(boolean isActive) {
        IDevice iDevice = this.motionEventChecker;
        if (iDevice == null) {
            Intrinsics.throwUninitializedPropertyAccessException("motionEventChecker");
            iDevice = null;
        }
        iDevice.setStylusLongPressActive(isActive);
    }

    public final void subscribeTouchEvent() {
        this.readerGestureDistributor.subscribe();
    }

    public final boolean supportSingleTapClick(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
        return (shapeTypes.isPenShape(shapeTypes.getTargetShape(shape)) || shapeTypes.isHwrTextShape(shapeTypes.getTargetShape(shape))) ? false : true;
    }

    public final boolean supportSingleTapClickOnNonEditMode(@NotNull Shape shape) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (supportSingleTapClick(shape)) {
            ShapeTypes shapeTypes = ShapeTypes.INSTANCE;
            if (shapeTypes.isLinkShape(shapeTypes.getTargetShape(shape))) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: u */
    public final void m41010u(MotionEvent event) {
        if (EditorBundleKt.shapeHandlerManager(getEditorBundle()).isEraserHandler()) {
            return;
        }
        RxjavaKt.subscribeWithDefault$default(new StylusLongPressEraserAction(getEditorBundle(), com.onyx.android.sdk.geometry.extension.MotionEventKt.toTouchData$default(event, null, null, 0, 7, null)).build(), null, null, null, 7, null);
    }

    public final void unregisterHandler(@NotNull String key) {
        Intrinsics.checkNotNullParameter(key, "key");
        this.handlerMap.remove(key);
    }

    public final void updateTouchMode(@NotNull EditorTouchMode touchMode) {
        Intrinsics.checkNotNullParameter(touchMode, "touchMode");
        this.touchMode = touchMode;
        this.touchModeFeature = TouchModeFeatureManager.INSTANCE.getTouchModeFeature(touchMode);
        m41012w();
        getShapeHandlerManager().updateTouchMode(touchMode);
    }

    /* renamed from: v */
    public final boolean m41011v() {
        return true;
    }

    /* renamed from: w */
    public final void m41012w() {
        RxGestureConfig gestureConfig = this.readerGestureDistributor.getRxGesture().getGestureConfig();
        gestureConfig.setEnableMoveGesture(true);
        gestureConfig.setEnableTwoMoveGesture(isSupportFingerTouchEdit());
        gestureConfig.setEnableMultiClick(this.isEnableMultiClick);
        gestureConfig.setEnableFlingGesture(true);
        gestureConfig.setEnableCommonGesture(true);
        gestureConfig.setEnableNoGesture(isSupportFingerTouchEdit());
        gestureConfig.setEnableDoubleGesture(this.isEnabledDoubleTap);
        gestureConfig.setEnableLongPressGesture(this.isEnabledLongPress);
        gestureConfig.setEnabledPenTouch(m41006n());
        gestureConfig.setEnabledMultiTouch(!this.touchStateInfo.getIsLongPress());
        gestureConfig.setEnableScaleGesture(m41011v());
        gestureConfig.setEnabledPalmReject(m41008p());
        gestureConfig.setEnableScaleSpanCheck(DeviceFactory.INSTANCE.getCurrentDevice().isCheckScaleSpanEnable() && isSupportFingerTouchEdit());
        gestureConfig.setSingleTapConfirmedTimeMsThreshold(300L);
        gestureConfig.setDoubleTapTimeMsThreshold(300L);
        gestureConfig.setSingleTapTimeMsMax(300L);
        gestureConfig.setSingleTapTimeMsMin(m41002j());
    }

    /* renamed from: x */
    public final void m41013x(MotionEvent event) {
        this.touchStateInfo.onTouchEvent(event);
        if (MotionEventKt.isDownAction(event) && MotionEventKt.isPenTouchType(event) && isSupportFingerTouchEdit()) {
            EditorTouchMode editorTouchMode = EditorTouchMode.STYLUS_SCRIBBLE;
            GlobalBundle.INSTANCE.postEvent(new ChangeTouchModeEvent(this.touchMode, editorTouchMode));
            updateTouchMode(editorTouchMode);
        }
    }
}
