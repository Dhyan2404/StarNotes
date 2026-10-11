package com.onyx.android.sdk.textbox.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.net.MailTo;
import androidx.core.view.GestureDetectorCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.TouchPoint;
import com.onyx.android.sdk.base.eventbus.EventBusHolder;
import com.onyx.android.sdk.base.extension.MotionEventKt;
import com.onyx.android.sdk.base.extension.RectKt;
import com.onyx.android.sdk.base.extension.RxjavaKt;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.p018rx.RxBaseAction;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.DimenUtils;
import com.onyx.android.sdk.base.utils.RectUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.textbox.C8002R;
import com.onyx.android.sdk.textbox.action.TextBoxResizeAction;
import com.onyx.android.sdk.textbox.action.TextBoxTranslateAction;
import com.onyx.android.sdk.textbox.data.EditorState;
import com.onyx.android.sdk.textbox.data.TextBoxInitArgs;
import com.onyx.android.sdk.textbox.data.TextBoxProperties;
import com.onyx.android.sdk.textbox.data.TransformType;
import com.onyx.android.sdk.textbox.databinding.LayoutTextBoxBinding;
import com.onyx.android.sdk.textbox.editor.IEditor;
import com.onyx.android.sdk.textbox.editor.NativeEditor;
import com.onyx.android.sdk.textbox.editor.WebEditor;
import com.onyx.android.sdk.textbox.event.TextInputStateChangeEvent;
import com.onyx.android.sdk.textbox.listener.EditorTransformGestureListener;
import com.onyx.android.sdk.textbox.mode.SemiAdaptiveMode;
import com.onyx.android.sdk.textbox.mode.TextBoxMode;
import com.onyx.android.sdk.textbox.utils.TextBoxUtils;
import com.onyx.android.sdk.textbox.widget.TextBoxView;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b0\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 »\u00012\u00020\u0001:\u0004»\u0001¼\u0001B\u0015\b\u0016\u0012\b\u0010³\u0001\u001a\u00030²\u0001¢\u0006\u0006\b´\u0001\u0010µ\u0001B!\b\u0016\u0012\b\u0010³\u0001\u001a\u00030²\u0001\u0012\n\u0010·\u0001\u001a\u0005\u0018\u00010¶\u0001¢\u0006\u0006\b´\u0001\u0010¸\u0001B*\b\u0016\u0012\b\u0010³\u0001\u001a\u00030²\u0001\u0012\n\u0010·\u0001\u001a\u0005\u0018\u00010¶\u0001\u0012\u0007\u0010¹\u0001\u001a\u00020\u0004¢\u0006\u0006\b´\u0001\u0010º\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0003J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u0018\u0010\f\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0010\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J \u0010\u0011\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u000bH\u0002J\u0018\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\tH\u0002J \u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004H\u0002J\u0010\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u001e\u0010\u001f\u001a\u00020\u00022\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001d2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\b\u0010!\u001a\u00020 H\u0002J \u0010#\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\"\u001a\u00020 H\u0002J\u0006\u0010$\u001a\u00020\u0002J\u0010\u0010'\u001a\u00020\u00022\b\u0010&\u001a\u0004\u0018\u00010%J\u0006\u0010(\u001a\u00020\u0002J\u0006\u0010*\u001a\u00020)J\u0006\u0010+\u001a\u00020\u0007J\u0006\u0010-\u001a\u00020,J\u0006\u0010.\u001a\u00020\u000bJ\u0006\u0010/\u001a\u00020\u000bJ\u0006\u00100\u001a\u00020\u000bJ\u0006\u00101\u001a\u00020\u000bJ\u0006\u00102\u001a\u00020\u000bJ\u0006\u00103\u001a\u00020\u000bJ\u0006\u00104\u001a\u00020\u000bJ\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u000205J\b\u00108\u001a\u0004\u0018\u000105J\b\u0010:\u001a\u0004\u0018\u000109J\u000e\u0010<\u001a\u00020\u00022\u0006\u0010;\u001a\u000209J\u0006\u0010=\u001a\u00020\u0002J\u000e\u0010?\u001a\u00020\u00022\u0006\u0010>\u001a\u00020\u000bJ\u0006\u0010A\u001a\u00020@J\u001e\u0010B\u001a\u00020\u000b2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010C\u001a\u00020\u000bJ\b\u0010D\u001a\u0004\u0018\u00010@J.\u0010L\u001a\u00020J2\u0006\u0010F\u001a\u00020E2\u0006\u0010G\u001a\u00020E2\u0006\u0010H\u001a\u00020\u00042\u0006\u0010I\u001a\u00020\u00042\u0006\u0010K\u001a\u00020JJ\u0016\u0010O\u001a\u00020\u00022\u0006\u0010M\u001a\u00020E2\u0006\u0010N\u001a\u00020EJ\u0016\u0010R\u001a\u00020\u00022\u0006\u0010P\u001a\u00020E2\u0006\u0010Q\u001a\u00020EJ\u0006\u0010S\u001a\u00020\u000bJ\u0006\u0010T\u001a\u00020\u000bJ\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u000bJ\u0006\u0010W\u001a\u00020\u0004J\u0006\u0010X\u001a\u00020EJ\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020@J\u000e\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\u000bJ\u000e\u0010^\u001a\u00020\u00022\u0006\u0010]\u001a\u00020EJ\u0006\u0010_\u001a\u00020EJ\u000e\u0010`\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000bJ\u0016\u0010b\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010a\u001a\u00020EJ\u0016\u0010e\u001a\u00020\u00022\u0006\u0010c\u001a\u00020E2\u0006\u0010d\u001a\u00020EJ\u0006\u0010f\u001a\u00020\u0002J\u0006\u0010g\u001a\u00020\u0002J\u001e\u0010i\u001a\u00020\u00022\u0006\u0010h\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u0016\u0010j\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010k\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004J\u000e\u0010l\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010m\u001a\u00020@J\u0006\u0010n\u001a\u00020EJ\u0006\u0010o\u001a\u00020EJ\u0006\u0010p\u001a\u00020EJ\u0006\u0010q\u001a\u00020EJ\u0006\u0010r\u001a\u00020EJ\u0006\u0010s\u001a\u00020EJ\u0006\u0010t\u001a\u00020\u0004J\u0006\u0010u\u001a\u00020\u0004J\u0006\u0010v\u001a\u00020EJ\u0006\u0010w\u001a\u00020EJ\u0006\u0010x\u001a\u00020EJ\u0006\u0010y\u001a\u00020EJ\u0006\u0010z\u001a\u00020\u0004J\u0014\u0010|\u001a\b\u0012\u0004\u0012\u00020\u000b0{2\u0006\u0010\u001b\u001a\u00020\u001aJ\u0006\u0010}\u001a\u00020\u0002J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\b\u0010\u007f\u001a\u0004\u0018\u00010~J\u0010\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010\u0081\u0001\u001a\u00020\u000bJ\u0007\u0010\u0083\u0001\u001a\u00020\u0002J\u0007\u0010\u0084\u0001\u001a\u00020\u0002J\u0007\u0010\u0085\u0001\u001a\u00020\u0002R\u0016\u0010\u0087\u0001\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010\u001fR\u0016\u0010\u0089\u0001\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010\u001fR\u0016\u0010\u008b\u0001\u001a\u00020\u00048\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010\u001fR\u0019\u0010\u008e\u0001\u001a\u00020,8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0092\u0001\u001a\u00030\u008f\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u001a\u0010\u007f\u001a\u0004\u0018\u00010~8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001b\u0010\u0097\u0001\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001a\u0010;\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u0017\u0010c\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010\u0019R\u0016\u0010d\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0019R\u0017\u0010\u009b\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0017\u0010\u009c\u0001\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0019R\u001a\u00106\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001b\u0010¡\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u0018\u0010¥\u0001\u001a\u00030¢\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b£\u0001\u0010¤\u0001R\u0018\u0010§\u0001\u001a\u00030¢\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¦\u0001\u0010¤\u0001R \u0010¬\u0001\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¨\u0001\u0010©\u0001\u001a\u0006\bª\u0001\u0010«\u0001R\u001c\u0010±\u0001\u001a\u00030\u00ad\u00018\u0006¢\u0006\u000f\n\u0005\b\b\u0010®\u0001\u001a\u0006\b¯\u0001\u0010°\u0001¨\u0006½\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/TextBoxView;", "Landroid/widget/FrameLayout;", "", "p", "", "getBorderMargin", "getContentPadding", "Landroid/view/View;", "v", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "H", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "type", "B", SardineUtil.DEFAULT_NAMESPACE_PREFIX, BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY, "E", "moved", "setTextBoxMoved", GoogleApiAvailabilityLight.f29016b, "view", "width", "height", "F", "Lcom/onyx/android/sdk/textbox/data/TextBoxInitArgs;", "args", "G", "Lio/reactivex/rxjava3/subjects/PublishSubject;", MailTo.f5529g, "I", "Landroidx/core/view/GestureDetectorCompat;", C4921e.f26528e, "gestureDetector", "A", "enterEditingMode", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "holder", "setEventBusHolder", "ensureCreateEditor", "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "getEditor", "getEditorView", "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;", "getViewBinding", "isVertical", "isReadOnly", "isEditing", "isOperable", "isPrepared", "isRendering", "isIdleState", "Lcom/onyx/android/sdk/textbox/data/EditorState;", "editorState", "setEditorState", "getEditorState", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "getLastPoint", "lastPoint", "updateLastPoint", Constants.RESET, "isDarkTheme", "resetEditorBorder", "Landroid/graphics/RectF;", "getTouchLimitRect", "handleTouch", "isLimitTranslateRect", "getLimitRect", "", "textBoxOldX", "textBoxOldY", "richWidth", "richHeight", "Landroid/graphics/PointF;", "offsetXY", "adjustTranslateOffsetValue", "dx", "dy", "updatePosition", "x", "y", "resetPosition", "isTextBoxMoved", "isTextBoxMovable", "movable", "setTextBoxMovable", "getPadding", "getNonClickPadding", "limitRect", "setLimitRect", "limitTranslateRect", "setLimitTranslateRect", "rotate", "setEditorRotate", "getEditorRotate", "changeOrientation", "rotateAngle", "setOrientation", "scaleX", "scaleY", "setScale", "clearTouchLimitRect", Constants.CLEAR_ATTRIBUTES, "newAdded", "resetMinimumSize", "resetSize", "updateWidth", "updateHeight", "getEditorRect", "getEditorContentWidth", "getEditorContentHeight", "getEditorViewWidth", "getEditorViewHeight", "getEditorScaleWidth", "getEditorScaleHeight", "getEditorScaleWidthInt", "getEditorScaleHeightInt", "getEditorMinWidth", "getEditorMinHeight", "getEditorScaleX", "getEditorScaleY", "getEditorCursorBottom", "Lio/reactivex/rxjava3/core/Observable;", "startEdit", "finishEdit", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;", "transformListener", "setTransformListener", "enableHandleTouchEvent", "setEnableHandleTouchEvent", "showEditorView", "enterEditLayout", "exitEditLayout", "e", "TOUCH_SLOP", C6997f.f39671c, "TEXT_ORIENTATION_HORIZONTAL", C6998g.f39679a, "TEXT_ORIENTATION_VERTICAL", C6999h.f39688c, "Lcom/onyx/android/sdk/textbox/databinding/LayoutTextBoxBinding;", "binding", "Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;", "i", "Lcom/onyx/android/sdk/textbox/data/TextBoxProperties;", "textBoxProps", "j", "Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;", C4921e.f26537n, "Lcom/onyx/android/sdk/textbox/editor/IEditor;", "editor", "l", "Lcom/onyx/android/sdk/base/data/TouchPoint;", "m", Constant.PADDING_TAG, "paddingNonClick", "q", "Lcom/onyx/android/sdk/textbox/data/EditorState;", "r", "Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;", "eventBusHolder", "Ljava/util/concurrent/atomic/AtomicBoolean;", "s", "Ljava/util/concurrent/atomic/AtomicBoolean;", "textBoxMoved", "t", "textBoxMovable", "u", "Lkotlin/Lazy;", "getTransformGesture", "()Landroidx/core/view/GestureDetectorCompat;", "transformGesture", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", "getMode", "()Lcom/onyx/android/sdk/textbox/mode/TextBoxMode;", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MODE, "Landroid/content/Context;", "context", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Companion", "OnTransformListener", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nTextBoxView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,677:1\n172#2,2:678\n172#2,2:680\n*S KotlinDebug\n*F\n+ 1 TextBoxView.kt\ncom/onyx/android/sdk/textbox/widget/TextBoxView\n*L\n157#1:678,2\n159#1:680,2\n*E\n"})
/* loaded from: classes8.dex */
public final class TextBoxView extends FrameLayout {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: w */
    public static final int f46801w = 180;

    /* renamed from: x */
    public static final boolean f46802x = true;

    /* renamed from: e, reason: from kotlin metadata */
    public final int TOUCH_SLOP;

    /* renamed from: f, reason: from kotlin metadata */
    public final int TEXT_ORIENTATION_HORIZONTAL;

    /* renamed from: g, reason: from kotlin metadata */
    public final int TEXT_ORIENTATION_VERTICAL;

    /* renamed from: h, reason: from kotlin metadata */
    public LayoutTextBoxBinding binding;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final TextBoxProperties textBoxProps;

    /* renamed from: j, reason: from kotlin metadata */
    @Nullable
    public OnTransformListener transformListener;

    /* renamed from: k, reason: from kotlin metadata */
    @Nullable
    public IEditor editor;

    /* renamed from: l, reason: from kotlin metadata */
    @Nullable
    public TouchPoint lastPoint;

    /* renamed from: m, reason: from kotlin metadata */
    public float scaleX;

    /* renamed from: n, reason: from kotlin metadata */
    public float scaleY;

    /* renamed from: o, reason: from kotlin metadata */
    public int padding;

    /* renamed from: p, reason: from kotlin metadata */
    public float paddingNonClick;

    /* renamed from: q, reason: from kotlin metadata */
    @Nullable
    public EditorState editorState;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public EventBusHolder eventBusHolder;

    /* renamed from: s, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean textBoxMoved;

    /* renamed from: t, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean textBoxMovable;

    /* renamed from: u, reason: from kotlin metadata */
    @NotNull
    public final Lazy transformGesture;

    /* renamed from: v, reason: from kotlin metadata */
    @NotNull
    public final TextBoxMode mode;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\bX\u0086D¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/TextBoxView$Companion;", "", "()V", "ORIENTATION_VERTICAL_ANGLE", "", "getORIENTATION_VERTICAL_ANGLE", "()I", "USING_NATIVE_EDITOR", "", "getUSING_NATIVE_EDITOR", Constants.BOOLEAN_VALUE_SIG, "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int getORIENTATION_VERTICAL_ANGLE() {
            return TextBoxView.f46801w;
        }

        public final boolean getUSING_NATIVE_EDITOR() {
            return TextBoxView.f46802x;
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/textbox/widget/TextBoxView$OnTransformListener;", "", "onTransformFinish", "", "type", "Lcom/onyx/android/sdk/textbox/data/TransformType;", "onTransformStart", "sdk-textbox_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface OnTransformListener {
        void onTransformFinish(@NotNull TransformType type);

        void onTransformStart(@NotNull TransformType type);
    }

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[TransformType.values().length];
            try {
                iArr[TransformType.TRANSLATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransformType.RESIZE_TL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TransformType.RESIZE_TR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[TransformType.RESIZE_BL.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[TransformType.RESIZE_BR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[TransformType.RESIZE_L.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[TransformType.RESIZE_R.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[TransformType.RESIZE_T.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[TransformType.RESIZE_B.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextBoxView(@NotNull Context context) {
        super(context);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.TOUCH_SLOP = 5;
        this.TEXT_ORIENTATION_VERTICAL = 1;
        this.textBoxProps = new TextBoxProperties();
        this.textBoxMoved = new AtomicBoolean(false);
        this.textBoxMovable = new AtomicBoolean(false);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GestureDetectorCompat>() { // from class: com.onyx.android.sdk.textbox.widget.TextBoxView$transformGesture$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GestureDetectorCompat invoke() {
                GestureDetectorCompat m36210o;
                m36210o = TextBoxView.this.m36210o();
                return m36210o;
            }
        });
        this.transformGesture = lazy;
        this.mode = new SemiAdaptiveMode(this);
        m36211p();
    }

    /* renamed from: J */
    public static final void m36176J(TextBoxView this$0, PublishSubject subject, TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(subject, "$subject");
        Intrinsics.checkNotNullParameter(args, "$args");
        if (this$0.isPrepared()) {
            this$0.m36208I(subject, args);
        } else {
            RxjavaKt.done(subject, Boolean.FALSE);
        }
    }

    private final int getBorderMargin() {
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return dimenUtils.dip2px(context, ResManager.INSTANCE.getInteger(C8002R.integer.note_textbox_border_margin_dp));
    }

    private final int getContentPadding() {
        DimenUtils dimenUtils = DimenUtils.INSTANCE;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return dimenUtils.dip2px(context, ResManager.INSTANCE.getInteger(C8002R.integer.note_textbox_content_padding_dp));
    }

    private final GestureDetectorCompat getTransformGesture() {
        return (GestureDetectorCompat) this.transformGesture.getValue();
    }

    /* renamed from: m */
    public static final void m36189m(TextBoxView this$0, boolean z, float f) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setOrientation(z, f);
    }

    /* renamed from: q */
    public static final boolean m36190q(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.TRANSLATE);
    }

    /* renamed from: r */
    public static final boolean m36191r(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.m36200A(view, motionEvent, this$0.getTransformGesture());
    }

    /* renamed from: s */
    public static final boolean m36192s(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_L);
    }

    private final void setTextBoxMoved(boolean moved) {
        this.textBoxMoved.set(moved);
    }

    /* renamed from: t */
    public static final boolean m36193t(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_R);
    }

    /* renamed from: u */
    public static final boolean m36194u(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_T);
    }

    /* renamed from: v */
    public static final boolean m36195v(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_B);
    }

    /* renamed from: w */
    public static final boolean m36196w(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_TL);
    }

    /* renamed from: x */
    public static final boolean m36197x(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_TR);
    }

    /* renamed from: y */
    public static final boolean m36198y(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_BL);
    }

    /* renamed from: z */
    public static final boolean m36199z(TextBoxView this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNull(view);
        Intrinsics.checkNotNull(motionEvent);
        return this$0.handleTouch(view, motionEvent, TransformType.RESIZE_BR);
    }

    /* renamed from: A */
    public final boolean m36200A(View view, MotionEvent event, GestureDetectorCompat gestureDetector) {
        IEditor iEditor = this.editor;
        if (iEditor != null) {
            iEditor.onEditorTouchEvent(event);
        }
        boolean onTouchEvent = gestureDetector.onTouchEvent(event);
        return ((MotionEventKt.isUpAction(event) || MotionEventKt.isCancelAction(event)) && isTextBoxMovable()) ? handleTouch(view, event, TransformType.TRANSLATE) : onTouchEvent;
    }

    /* renamed from: B */
    public final void m36201B(MotionEvent event, TransformType type) {
        if (isTextBoxMoved()) {
            return;
        }
        updateLastPoint(new TouchPoint(event.getRawX(), event.getRawY()));
        setTextBoxMoved(false);
        setTextBoxMovable(true);
        OnTransformListener onTransformListener = this.transformListener;
        if (onTransformListener != null) {
            onTransformListener.onTransformStart(type);
        }
    }

    /* renamed from: C */
    public final void m36202C(View v, MotionEvent event, TransformType type) {
        this.lastPoint = null;
        setTextBoxMovable(false);
        float rawX = event.getRawX();
        float rawY = event.getRawY();
        if (isTextBoxMoved()) {
            setTextBoxMoved(false);
            Debug.INSTANCE.m32035d(TextBoxView.class, v + ", x=" + rawX + ", y=" + rawY + ", transform finish: " + event, new Object[0]);
        } else {
            Debug.INSTANCE.m32044e(TextBoxView.class, v + ", x=" + rawX + ", y=" + rawY + ", illegal finish event: " + event, new Object[0]);
        }
        OnTransformListener onTransformListener = this.transformListener;
        if (onTransformListener != null) {
            onTransformListener.onTransformFinish(type);
        }
    }

    /* renamed from: D */
    public final void m36203D(MotionEvent event, TransformType type) {
        if (isTextBoxMovable()) {
            if (isTextBoxMoved() || m36209n(type, event)) {
                if (isTextBoxMoved()) {
                    m36204E(type, event);
                } else {
                    getEditor().onStartMoving();
                    setTextBoxMoved(true);
                }
            }
        }
    }

    /* renamed from: E */
    public final void m36204E(TransformType type, MotionEvent event) {
        MotionEvent obtain = MotionEvent.obtain(event);
        if (type == TransformType.TRANSLATE) {
            RxBaseAction.execute$default(new TextBoxTranslateAction(this).setMotionEvent(obtain), null, null, null, 7, null);
        } else {
            RxBaseAction.execute$default(new TextBoxResizeAction(this).setMotionEvent(obtain).setType(type), null, null, null, 7, null);
        }
    }

    /* renamed from: F */
    public final void m36205F(View view, int width, int height) {
        view.invalidate();
        view.measure(View.MeasureSpec.makeMeasureSpec(width, 1073741824), View.MeasureSpec.makeMeasureSpec(height, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.requestLayout();
    }

    /* renamed from: G */
    public final void m36206G(TextBoxInitArgs args) {
        int roundToInt;
        int roundToInt2;
        int roundToInt3;
        int roundToInt4;
        RectF renderRect = args.getRenderRect();
        if (renderRect == null) {
            return;
        }
        float width = renderRect.width();
        float height = renderRect.height();
        View editorView = getEditorView();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        roundToInt = MathKt__MathJVMKt.roundToInt((getPadding() * 2) + width);
        layoutParams.width = roundToInt;
        ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
        roundToInt2 = MathKt__MathJVMKt.roundToInt((getPadding() * 2) + height);
        layoutParams2.height = roundToInt2;
        roundToInt3 = MathKt__MathJVMKt.roundToInt(width / editorView.getScaleX());
        roundToInt4 = MathKt__MathJVMKt.roundToInt(height / editorView.getScaleY());
        editorView.getLayoutParams().width = roundToInt3;
        editorView.getLayoutParams().height = roundToInt4;
        m36205F(this, getLayoutParams().width, getLayoutParams().height);
        Debug.INSTANCE.m32035d(TextBoxView.class, "editor size, w=" + roundToInt3 + ", h=" + roundToInt4, new Object[0]);
    }

    /* renamed from: H */
    public final boolean m36207H(View v, MotionEvent event) {
        if (event.getPointerCount() <= 1 && getTouchLimitRect().contains(event.getRawX(), event.getRawY())) {
            return false;
        }
        Debug debug = Debug.INSTANCE;
        debug.m32052i(TextBoxView.class, "limit rect=" + getTouchLimitRect(), new Object[0]);
        debug.m32044e(TextBoxView.class, "filter event: " + v + ", " + event.getRawX() + ", y=" + event.getRawY() + ", event: " + event, new Object[0]);
        return true;
    }

    /* renamed from: I */
    public final void m36208I(PublishSubject<Boolean> subject, TextBoxInitArgs args) {
        setEditorState(EditorState.PREPARE);
        resetEditorBorder(args.getIsDarkTheme());
        RectF renderRect = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect);
        float padding = renderRect.left - getPadding();
        RectF renderRect2 = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect2);
        resetPosition(padding, renderRect2.top - getPadding());
        setOrientation(args.getOrientation() == this.TEXT_ORIENTATION_VERTICAL, args.getRotation());
        setLimitRect(args.getLimitRect());
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        layoutTextBoxBinding.setIsAdaptiveMode(Boolean.valueOf(this.mode.getType().isAdaptive()));
        getEditor().startEdit(subject, args);
        if (args.getShowEditorDirectly()) {
            showEditorView();
        }
    }

    @NotNull
    public final PointF adjustTranslateOffsetValue(float textBoxOldX, float textBoxOldY, int richWidth, int richHeight, @NotNull PointF offsetXY) {
        Intrinsics.checkNotNullParameter(offsetXY, "offsetXY");
        if (!isLimitTranslateRect()) {
            return offsetXY;
        }
        int padding = richWidth + (getPadding() * 2);
        int padding2 = richHeight + (getPadding() * 2);
        RectUtils rectUtils = RectUtils.INSTANCE;
        RectF limitRect = this.textBoxProps.getLimitRect();
        Intrinsics.checkNotNull(limitRect);
        return rectUtils.limitOffsetInLimitRect(limitRect, textBoxOldX, textBoxOldY, padding, padding2, offsetXY);
    }

    public final void changeOrientation(final boolean isVertical) {
        if (!getEditor().supportMultiTextOrientation() || this.textBoxProps.getIsVertical() == isVertical) {
            return;
        }
        final float editorRotate = getEditorRotate();
        this.textBoxProps.setVertical(isVertical);
        View editorView = getEditorView();
        boolean z = editorView.getMinimumWidth() > 0 || editorView.getMinimumHeight() > 0;
        int editorScaleWidthInt = getEditorScaleWidthInt();
        int editorScaleHeightInt = getEditorScaleHeightInt();
        resetMinimumSize(z, editorScaleWidthInt, editorScaleHeightInt);
        resetSize(editorScaleWidthInt, editorScaleHeightInt);
        post(new Runnable() { // from class: com.sunia.HTREnginev2.qbn
            @Override // java.lang.Runnable
            public final void run() {
                TextBoxView.m36189m(TextBoxView.this, isVertical, editorRotate);
            }
        });
    }

    public final void clear() {
        clearTouchLimitRect();
        if (this.editor == null) {
            return;
        }
        setEditorState(EditorState.IDLE);
        getEditor().destroy();
        this.editor = null;
    }

    public final void clearTouchLimitRect() {
        this.textBoxProps.setTouchLimitRect(null);
    }

    public final void ensureCreateEditor() {
        getEditor();
    }

    public final void enterEditLayout() {
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        layoutTextBoxBinding.touchContainer.setClickable(false);
        IEditor iEditor = this.editor;
        View richEditor = iEditor != null ? iEditor.getRichEditor() : null;
        if (richEditor == null) {
            return;
        }
        richEditor.setEnabled(true);
    }

    public final void enterEditingMode() {
        enterEditLayout();
        if (isReadOnly()) {
            getEditor().enableEdit(true, false);
        } else {
            ViewKt.showForcedInputKeyboard(getEditorView());
        }
    }

    public final void exitEditLayout() {
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        layoutTextBoxBinding.touchContainer.setClickable(true);
        IEditor iEditor = this.editor;
        View richEditor = iEditor != null ? iEditor.getRichEditor() : null;
        if (richEditor == null) {
            return;
        }
        richEditor.setEnabled(false);
    }

    public final void finishEdit() {
        clearTouchLimitRect();
        setEditorState(EditorState.IDLE);
        IEditor iEditor = this.editor;
        if (iEditor != null) {
            iEditor.finishEdit();
        }
        exitEditLayout();
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        layoutTextBoxBinding.editorContainer.removeAllViews();
    }

    @NotNull
    public final IEditor getEditor() {
        LayoutTextBoxBinding layoutTextBoxBinding = null;
        if (this.editor == null) {
            this.editor = f46802x ? new NativeEditor(this) : new WebEditor(this);
            LayoutTextBoxBinding layoutTextBoxBinding2 = this.binding;
            if (layoutTextBoxBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                layoutTextBoxBinding2 = null;
            }
            layoutTextBoxBinding2.editorContainer.removeAllViews();
        }
        LayoutTextBoxBinding layoutTextBoxBinding3 = this.binding;
        if (layoutTextBoxBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding3 = null;
        }
        if (layoutTextBoxBinding3.editorContainer.getChildCount() == 0) {
            IEditor iEditor = this.editor;
            View richEditor = iEditor != null ? iEditor.getRichEditor() : null;
            if (richEditor != null) {
                ViewGroup viewGroup = (ViewGroup) richEditor.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(richEditor);
                }
                LayoutTextBoxBinding layoutTextBoxBinding4 = this.binding;
                if (layoutTextBoxBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutTextBoxBinding4 = null;
                }
                TintLinearLayout editorContainer = layoutTextBoxBinding4.editorContainer;
                Intrinsics.checkNotNullExpressionValue(editorContainer, "editorContainer");
                int contentPadding = getContentPadding();
                editorContainer.setPadding(contentPadding, contentPadding, contentPadding, contentPadding);
                LayoutTextBoxBinding layoutTextBoxBinding5 = this.binding;
                if (layoutTextBoxBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutTextBoxBinding5 = null;
                }
                TintLinearLayout editorContainer2 = layoutTextBoxBinding5.editorContainer;
                Intrinsics.checkNotNullExpressionValue(editorContainer2, "editorContainer");
                ViewKt.setMargins(editorContainer2, getBorderMargin());
                LayoutTextBoxBinding layoutTextBoxBinding6 = this.binding;
                if (layoutTextBoxBinding6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutTextBoxBinding6 = null;
                }
                View touchContainer = layoutTextBoxBinding6.touchContainer;
                Intrinsics.checkNotNullExpressionValue(touchContainer, "touchContainer");
                int contentPadding2 = getContentPadding();
                touchContainer.setPadding(contentPadding2, contentPadding2, contentPadding2, contentPadding2);
                LayoutTextBoxBinding layoutTextBoxBinding7 = this.binding;
                if (layoutTextBoxBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    layoutTextBoxBinding7 = null;
                }
                View touchContainer2 = layoutTextBoxBinding7.touchContainer;
                Intrinsics.checkNotNullExpressionValue(touchContainer2, "touchContainer");
                ViewKt.setMargins(touchContainer2, getBorderMargin());
                LayoutTextBoxBinding layoutTextBoxBinding8 = this.binding;
                if (layoutTextBoxBinding8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                } else {
                    layoutTextBoxBinding = layoutTextBoxBinding8;
                }
                layoutTextBoxBinding.editorContainer.addView(richEditor);
                richEditor.setEnabled(false);
            }
        }
        IEditor iEditor2 = this.editor;
        Intrinsics.checkNotNull(iEditor2);
        return iEditor2;
    }

    public final float getEditorContentHeight() {
        return this.mode.getEditorContentHeight();
    }

    public final float getEditorContentWidth() {
        return this.mode.getEditorContentWidth();
    }

    public final int getEditorCursorBottom() {
        int dimens;
        View editorView = getEditorView();
        int contentPadding = ViewKt.getLocationOnScreen(this)[1] + getContentPadding();
        IEditor editor = getEditor();
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        RectF cursorPosition = editor.getCursorPosition(context);
        if (cursorPosition == null) {
            dimens = getBottom();
        } else if (cursorPosition.bottom <= 0.0f) {
            dimens = getBottom();
        } else {
            contentPadding = contentPadding + editorView.getPaddingTop() + ((int) cursorPosition.bottom);
            dimens = ResManager.INSTANCE.getDimens(C8002R.dimen.android_selection_handle_height);
        }
        return contentPadding + dimens;
    }

    public final float getEditorMinHeight() {
        ResManager resManager = ResManager.INSTANCE;
        return Math.max(getEditor().getEditorMinHeight(), resManager.getDimension(C8002R.dimen.move_selection_handler_icon_height) + resManager.getDimension(C8002R.dimen.textbox_selection_handler_icon_size));
    }

    public final float getEditorMinWidth() {
        return Math.max(getEditor().getEditorMinWidth(), TextBoxUtils.INSTANCE.getEditorMinWidth());
    }

    @NotNull
    public final RectF getEditorRect() {
        TextBoxUtils textBoxUtils = TextBoxUtils.INSTANCE;
        RectF textBoxRect = textBoxUtils.getTextBoxRect(this);
        int[] locationInParent = textBoxUtils.getLocationInParent(this);
        TouchPoint rotatePoint = textBoxUtils.rotatePoint(new TouchPoint(locationInParent[0], locationInParent[1]), -getRotation(), textBoxRect.centerX(), textBoxRect.centerY());
        float x = rotatePoint.getX() + getPadding();
        float y = rotatePoint.getY() + getPadding();
        return new RectF(x, y, getEditorScaleWidth() + x, getEditorScaleHeight() + y);
    }

    public final float getEditorRotate() {
        return getEditor().getRotate();
    }

    public final float getEditorScaleHeight() {
        return getEditorViewHeight() * getScaleY();
    }

    public final int getEditorScaleHeightInt() {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(getEditorScaleHeight());
        return roundToInt;
    }

    public final float getEditorScaleWidth() {
        return getEditorViewWidth() * getScaleX();
    }

    public final int getEditorScaleWidthInt() {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(getEditorScaleWidth());
        return roundToInt;
    }

    /* renamed from: getEditorScaleX, reason: from getter */
    public final float getScaleX() {
        return this.scaleX;
    }

    /* renamed from: getEditorScaleY, reason: from getter */
    public final float getScaleY() {
        return this.scaleY;
    }

    @Nullable
    public final EditorState getEditorState() {
        return this.editorState;
    }

    @NotNull
    public final View getEditorView() {
        return getEditor().getRichEditor();
    }

    public final float getEditorViewHeight() {
        return getEditor().getEditorViewHeight();
    }

    public final float getEditorViewWidth() {
        return getEditor().getEditorViewWidth();
    }

    @Nullable
    public final TouchPoint getLastPoint() {
        return this.lastPoint;
    }

    @Nullable
    public final RectF getLimitRect() {
        return this.textBoxProps.getLimitRect();
    }

    @NotNull
    public final TextBoxMode getMode() {
        return this.mode;
    }

    /* renamed from: getNonClickPadding, reason: from getter */
    public final float getPaddingNonClick() {
        return this.paddingNonClick;
    }

    public final int getPadding() {
        return this.padding;
    }

    @NotNull
    public final RectF getTouchLimitRect() {
        if (this.textBoxProps.getTouchLimitRect() == null) {
            Object parent = getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.View");
            int[] locationOnScreen = ViewKt.getLocationOnScreen((View) parent);
            this.textBoxProps.setTouchLimitRect(new RectF(locationOnScreen[0], locationOnScreen[1], r4 + r0.getWidth(), locationOnScreen[1] + r0.getHeight()));
        }
        RectF touchLimitRect = this.textBoxProps.getTouchLimitRect();
        Intrinsics.checkNotNull(touchLimitRect);
        return touchLimitRect;
    }

    @NotNull
    public final LayoutTextBoxBinding getViewBinding() {
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding != null) {
            return layoutTextBoxBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
    
        if (r0 != 3) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleTouch(@org.jetbrains.annotations.NotNull android.view.View r6, @org.jetbrains.annotations.NotNull android.view.MotionEvent r7, @org.jetbrains.annotations.NotNull com.onyx.android.sdk.textbox.data.TransformType r8) {
        /*
            r5 = this;
            java.lang.String r0 = "v"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            java.lang.String r0 = "event"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.lang.String r0 = "type"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            boolean r0 = com.onyx.android.sdk.base.extension.MotionEventKt.isFingerTouch(r7)
            r1 = 0
            if (r0 == 0) goto L1f
            com.onyx.android.sdk.textbox.data.TextBoxProperties r0 = r5.textBoxProps
            boolean r0 = r0.getEnableHandleTouchEvent()
            if (r0 != 0) goto L1f
            return r1
        L1f:
            boolean r0 = r5.m36207H(r6, r7)
            r2 = 3
            r3 = 1
            if (r0 == 0) goto L42
            int r0 = r7.getAction()
            if (r0 == r3) goto L33
            int r0 = r7.getAction()
            if (r0 != r2) goto L41
        L33:
            com.onyx.android.sdk.base.utils.Debug r0 = com.onyx.android.sdk.base.utils.Debug.INSTANCE
            java.lang.Class<com.onyx.android.sdk.textbox.widget.TextBoxView> r2 = com.onyx.android.sdk.textbox.widget.TextBoxView.class
            java.lang.String r4 = "processFinishEvent, out limit rect."
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r0.m32052i(r2, r4, r1)
            r5.m36202C(r6, r7, r8)
        L41:
            return r3
        L42:
            int r0 = r7.getAction()
            if (r0 == 0) goto L58
            if (r0 == r3) goto L54
            r1 = 2
            if (r0 == r1) goto L50
            if (r0 == r2) goto L54
            goto L5b
        L50:
            r5.m36203D(r7, r8)
            goto L5b
        L54:
            r5.m36202C(r6, r7, r8)
            goto L5b
        L58:
            r5.m36201B(r7, r8)
        L5b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.textbox.widget.TextBoxView.handleTouch(android.view.View, android.view.MotionEvent, com.onyx.android.sdk.textbox.data.TransformType):boolean");
    }

    public final boolean isEditing() {
        EditorState editorState = this.editorState;
        Intrinsics.checkNotNull(editorState);
        return editorState.isEditing();
    }

    public final boolean isIdleState() {
        EditorState editorState = this.editorState;
        Intrinsics.checkNotNull(editorState);
        return editorState.isIdleState();
    }

    public final boolean isLimitTranslateRect() {
        return this.textBoxProps.getIsLimitTranslateRect() && this.textBoxProps.getLimitRect() != null;
    }

    public final boolean isOperable() {
        return isReadOnly() || isEditing();
    }

    public final boolean isPrepared() {
        EditorState editorState = this.editorState;
        Intrinsics.checkNotNull(editorState);
        return editorState.isPrepared();
    }

    public final boolean isReadOnly() {
        EditorState editorState = this.editorState;
        if (editorState != null) {
            return editorState.isReadOnly();
        }
        return false;
    }

    public final boolean isRendering() {
        EditorState editorState = this.editorState;
        Intrinsics.checkNotNull(editorState);
        return editorState.isRendering();
    }

    public final boolean isTextBoxMovable() {
        return this.textBoxMovable.get();
    }

    public final boolean isTextBoxMoved() {
        return this.textBoxMoved.get();
    }

    public final boolean isVertical() {
        return this.textBoxProps.getIsVertical();
    }

    /* renamed from: n */
    public final boolean m36209n(TransformType type, MotionEvent event) {
        float rawX = event.getRawX();
        TouchPoint touchPoint = this.lastPoint;
        Intrinsics.checkNotNull(touchPoint);
        float x = rawX - touchPoint.getX();
        float rawY = event.getRawY();
        TouchPoint touchPoint2 = this.lastPoint;
        Intrinsics.checkNotNull(touchPoint2);
        float y = rawY - touchPoint2.getY();
        int i = this.TOUCH_SLOP;
        switch (WhenMappings.$EnumSwitchMapping$0[type.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                float f = i;
                if (Math.abs(x) < f && Math.abs(y) < f) {
                    return false;
                }
                break;
            case 6:
            case 7:
                if (Math.abs(x) < i) {
                    return false;
                }
                break;
            case 8:
            case 9:
                if (Math.abs(y) < i) {
                    return false;
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return true;
    }

    /* renamed from: o */
    public final GestureDetectorCompat m36210o() {
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        View touchContainer = layoutTextBoxBinding.touchContainer;
        Intrinsics.checkNotNullExpressionValue(touchContainer, "touchContainer");
        return new GestureDetectorCompat(getContext(), new EditorTransformGestureListener(this, touchContainer));
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: p */
    public final void m36211p() {
        LayoutTextBoxBinding inflate = LayoutTextBoxBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(...)");
        this.binding = inflate;
        LayoutTextBoxBinding layoutTextBoxBinding = null;
        if (inflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            inflate = null;
        }
        inflate.btnMove.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.obn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36190q;
                m36190q = TextBoxView.m36190q(TextBoxView.this, view, motionEvent);
                return m36190q;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding2 = this.binding;
        if (layoutTextBoxBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding2 = null;
        }
        layoutTextBoxBinding2.touchContainer.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.rbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36191r;
                m36191r = TextBoxView.m36191r(TextBoxView.this, view, motionEvent);
                return m36191r;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding3 = this.binding;
        if (layoutTextBoxBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding3 = null;
        }
        layoutTextBoxBinding3.selectionLeftHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.sbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36192s;
                m36192s = TextBoxView.m36192s(TextBoxView.this, view, motionEvent);
                return m36192s;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding4 = this.binding;
        if (layoutTextBoxBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding4 = null;
        }
        layoutTextBoxBinding4.selectionRightHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.tbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36193t;
                m36193t = TextBoxView.m36193t(TextBoxView.this, view, motionEvent);
                return m36193t;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding5 = this.binding;
        if (layoutTextBoxBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding5 = null;
        }
        layoutTextBoxBinding5.selectionTopHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.ubn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36194u;
                m36194u = TextBoxView.m36194u(TextBoxView.this, view, motionEvent);
                return m36194u;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding6 = this.binding;
        if (layoutTextBoxBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding6 = null;
        }
        layoutTextBoxBinding6.selectionBottomHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.vbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36195v;
                m36195v = TextBoxView.m36195v(TextBoxView.this, view, motionEvent);
                return m36195v;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding7 = this.binding;
        if (layoutTextBoxBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding7 = null;
        }
        layoutTextBoxBinding7.leftTopHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.wbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36196w;
                m36196w = TextBoxView.m36196w(TextBoxView.this, view, motionEvent);
                return m36196w;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding8 = this.binding;
        if (layoutTextBoxBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding8 = null;
        }
        layoutTextBoxBinding8.rightTopHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.xbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36197x;
                m36197x = TextBoxView.m36197x(TextBoxView.this, view, motionEvent);
                return m36197x;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding9 = this.binding;
        if (layoutTextBoxBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding9 = null;
        }
        layoutTextBoxBinding9.leftBottomHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.ybn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36198y;
                m36198y = TextBoxView.m36198y(TextBoxView.this, view, motionEvent);
                return m36198y;
            }
        });
        LayoutTextBoxBinding layoutTextBoxBinding10 = this.binding;
        if (layoutTextBoxBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            layoutTextBoxBinding = layoutTextBoxBinding10;
        }
        layoutTextBoxBinding.rightBottomHandle.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.zbn
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                boolean m36199z;
                m36199z = TextBoxView.m36199z(TextBoxView.this, view, motionEvent);
                return m36199z;
            }
        });
        int borderMargin = getBorderMargin() + getContentPadding();
        this.padding = borderMargin;
        this.paddingNonClick = borderMargin - ResManager.INSTANCE.getDimension(C8002R.dimen.selection_handler_click_padding);
        reset();
    }

    public final void reset() {
        this.scaleX = 1.0f;
        this.scaleY = 1.0f;
        setEditorState(EditorState.IDLE);
        setEditorRotate(0.0f);
        ensureCreateEditor();
    }

    public final void resetEditorBorder(boolean isDarkTheme) {
        LayoutTextBoxBinding layoutTextBoxBinding = this.binding;
        if (layoutTextBoxBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            layoutTextBoxBinding = null;
        }
        layoutTextBoxBinding.editorContainer.setBackgroundResource(isDarkTheme ? C8002R.drawable.textbox_square_border_white : C8002R.drawable.textbox_square_border_primary);
        getEditor().setCaretColor(isDarkTheme ? -1 : -16777216);
    }

    public final void resetMinimumSize(boolean newAdded, int width, int height) {
        this.mode.resetMinimumSize(newAdded, width, height);
    }

    public final void resetPosition(float x, float y) {
        setX(x);
        setY(y);
    }

    public final void resetSize(int width, int height) {
        updateWidth(width);
        updateHeight(height);
        m36205F(this, getLayoutParams().width, getLayoutParams().height);
    }

    public final void setEditorRotate(float rotate) {
        setPivotX(getWidth() / 2.0f);
        setPivotY(getHeight() / 2.0f);
        getEditor().setRotate(rotate);
    }

    public final void setEditorState(@NotNull EditorState editorState) {
        Intrinsics.checkNotNullParameter(editorState, "editorState");
        this.editorState = editorState;
        EventBusHolder eventBusHolder = this.eventBusHolder;
        if (eventBusHolder != null) {
            eventBusHolder.post(new TextInputStateChangeEvent(editorState));
        }
    }

    public final void setEnableHandleTouchEvent(boolean enableHandleTouchEvent) {
        this.textBoxProps.setEnableHandleTouchEvent(enableHandleTouchEvent);
    }

    public final void setEventBusHolder(@Nullable EventBusHolder holder) {
        this.eventBusHolder = holder;
        getEditor().setEventBusHolder(holder);
    }

    public final void setLimitRect(@NotNull RectF limitRect) {
        Intrinsics.checkNotNullParameter(limitRect, "limitRect");
        RectF rectF = new RectF(limitRect);
        float f = rectF.left;
        float f2 = this.paddingNonClick;
        getEditor().setLimitRect(new RectF(new RectF(f + f2, rectF.top + f2, rectF.right - f2, rectF.bottom - f2)));
        ResManager resManager = ResManager.INSTANCE;
        RectKt.expand(rectF, resManager.getDimens(C8002R.dimen.selection_handler_click_padding) + (resManager.getDimens(C8002R.dimen.textbox_selection_handler_icon_size) / 2.0f));
        RectUtils.INSTANCE.translate(rectF, getTouchLimitRect().left, getTouchLimitRect().top);
        this.textBoxProps.setLimitRect(rectF);
    }

    public final void setLimitTranslateRect(boolean limitTranslateRect) {
        this.textBoxProps.setLimitTranslateRect(limitTranslateRect);
    }

    public final void setOrientation(boolean isVertical, float rotateAngle) {
        this.textBoxProps.setVertical(isVertical);
        getEditor().setTextOrientation(isVertical ? this.TEXT_ORIENTATION_VERTICAL : this.TEXT_ORIENTATION_HORIZONTAL);
        setEditorRotate(rotateAngle);
        this.mode.onOrientationChanged(isVertical);
    }

    public final void setScale(float scaleX, float scaleY) {
        this.scaleX = scaleX;
        this.scaleY = scaleY;
        getEditor().setScale(scaleX, scaleY);
    }

    public final void setTextBoxMovable(boolean movable) {
        this.textBoxMovable.set(movable);
    }

    public final void setTransformListener(@Nullable OnTransformListener transformListener) {
        this.transformListener = transformListener;
    }

    public final void showEditorView() {
        ViewKt.setViewVisibleOrGone(this, true);
        if (isEditing()) {
            enterEditLayout();
            IEditor iEditor = this.editor;
            if (iEditor != null) {
                iEditor.showEditorView();
            }
        }
    }

    @NotNull
    public final Observable<Boolean> startEdit(@NotNull final TextBoxInitArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Debug.INSTANCE.m32035d(TextBoxView.class, "editor scale: " + args.getScaleX() + ", " + args.getScaleY(), new Object[0]);
        RectF renderRect = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect);
        int round = Math.round(renderRect.width());
        RectF renderRect2 = args.getRenderRect();
        Intrinsics.checkNotNull(renderRect2);
        int round2 = Math.round(renderRect2.height());
        this.textBoxProps.setVertical(args.getOrientation() == this.TEXT_ORIENTATION_VERTICAL);
        String content = args.getContent();
        resetMinimumSize(content == null || content.length() == 0, round, round2);
        setScale(args.getScaleX(), args.getScaleY());
        m36206G(args);
        final PublishSubject create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create(...)");
        post(new Runnable() { // from class: com.sunia.HTREnginev2.pbn
            @Override // java.lang.Runnable
            public final void run() {
                TextBoxView.m36176J(TextBoxView.this, create, args);
            }
        });
        return create;
    }

    public final void updateHeight(int height) {
        int roundToInt;
        View editorView = getEditorView();
        ViewGroup.LayoutParams layoutParams = editorView.getLayoutParams();
        roundToInt = MathKt__MathJVMKt.roundToInt(height / editorView.getScaleY());
        layoutParams.height = roundToInt;
        getLayoutParams().height = height + (getPadding() * 2);
    }

    public final void updateLastPoint(@NotNull TouchPoint lastPoint) {
        Intrinsics.checkNotNullParameter(lastPoint, "lastPoint");
        lastPoint.setTimestamp(System.currentTimeMillis());
        this.lastPoint = lastPoint;
    }

    public final void updatePosition(float dx, float dy) {
        setX(getX() + dx);
        setY(getY() + dy);
    }

    public final void updateWidth(int width) {
        int roundToInt;
        View editorView = getEditorView();
        ViewGroup.LayoutParams layoutParams = editorView.getLayoutParams();
        roundToInt = MathKt__MathJVMKt.roundToInt(width / editorView.getScaleX());
        layoutParams.width = roundToInt;
        getLayoutParams().width = width + (getPadding() * 2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextBoxView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.TOUCH_SLOP = 5;
        this.TEXT_ORIENTATION_VERTICAL = 1;
        this.textBoxProps = new TextBoxProperties();
        this.textBoxMoved = new AtomicBoolean(false);
        this.textBoxMovable = new AtomicBoolean(false);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GestureDetectorCompat>() { // from class: com.onyx.android.sdk.textbox.widget.TextBoxView$transformGesture$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GestureDetectorCompat invoke() {
                GestureDetectorCompat m36210o;
                m36210o = TextBoxView.this.m36210o();
                return m36210o;
            }
        });
        this.transformGesture = lazy;
        this.mode = new SemiAdaptiveMode(this);
        m36211p();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextBoxView(@NotNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Lazy lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        this.TOUCH_SLOP = 5;
        this.TEXT_ORIENTATION_VERTICAL = 1;
        this.textBoxProps = new TextBoxProperties();
        this.textBoxMoved = new AtomicBoolean(false);
        this.textBoxMovable = new AtomicBoolean(false);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<GestureDetectorCompat>() { // from class: com.onyx.android.sdk.textbox.widget.TextBoxView$transformGesture$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final GestureDetectorCompat invoke() {
                GestureDetectorCompat m36210o;
                m36210o = TextBoxView.this.m36210o();
                return m36210o;
            }
        });
        this.transformGesture = lazy;
        this.mode = new SemiAdaptiveMode(this);
        m36211p();
    }
}
