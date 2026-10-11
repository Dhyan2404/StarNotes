package com.onyx.android.sdk.base.extension;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.Editable;
import android.util.Size;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupKt;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.liulishuo.okdownload.core.breakpoint.BreakpointSQLiteHelper;
import com.onyx.android.sdk.base.C7106R;
import com.onyx.android.sdk.base.data.TimedTask;
import com.onyx.android.sdk.base.extension.ViewKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sunia.HTREnginev2.gon;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000ø\u0001\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0004\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\u001a\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u001a \u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\b\u001a\u001c\u0010\u000e\u001a\u00020\u000f*\u00020\u00042\u0010\u0010\u0010\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0011j\u0002`\u0012\u001aB\u0010\u0013\u001a\u00020\u000f*\u00020\u000426\u0010\u0014\u001a2\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0019\u0012\u0013\u0012\u00110\u0016¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u001a\u0012\u0004\u0012\u00020\u000f0\u0015\u001a%\u0010\u001b\u001a\u00020\u000f*\u0004\u0018\u00010\f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\u0010\u001d\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\u001e\u001a\n\u0010\u001f\u001a\u00020\u000f*\u00020\u0004\u001a\u0012\u0010 \u001a\u00020\b*\u00020!2\u0006\u0010\"\u001a\u00020\b\u001a\f\u0010#\u001a\u0004\u0018\u00010$*\u00020\u0004\u001a\u0012\u0010%\u001a\u00020\u000f*\u00020\u00042\u0006\u0010&\u001a\u00020'\u001a\n\u0010(\u001a\u00020\u000f*\u00020\u0004\u001a\u0012\u0010)\u001a\u00020\u000f*\u00020\u00042\u0006\u0010*\u001a\u00020+\u001a\u0018\u0010,\u001a\u0004\u0018\u00010\u0004*\u00020\f2\n\u0010-\u001a\u0006\u0012\u0002\b\u00030.\u001a\u0018\u0010/\u001a\u0004\u0018\u000100*\u0002002\n\u0010-\u001a\u0006\u0012\u0002\b\u00030.\u001a\n\u00101\u001a\u00020\u0016*\u00020\u0004\u001a\n\u00102\u001a\u000203*\u00020\u0004\u001a\u0014\u00104\u001a\u00020\u0016*\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\b\u001a\n\u00105\u001a\u00020+*\u00020\u0004\u001a\n\u00106\u001a\u000203*\u00020\u0004\u001a\n\u00107\u001a\u000203*\u00020\u0004\u001a\u001e\u00108\u001a\u000209*\u00020\u00042\b\b\u0002\u0010:\u001a\u00020\b2\b\b\u0002\u0010;\u001a\u00020\b\u001a\n\u0010<\u001a\u00020\f*\u00020\u0004\u001a\n\u0010=\u001a\u000209*\u00020\u0004\u001a\u0019\u0010>\u001a\u0004\u0018\u0001H?\"\u0004\b\u0000\u0010?*\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010@\u001a\u001e\u0010A\u001a\u00020B*\u00020\u00042\b\b\u0002\u0010C\u001a\u00020+2\b\b\u0002\u0010D\u001a\u00020+\u001a\f\u0010E\u001a\u0004\u0018\u00010F*\u00020\u0004\u001a\n\u0010G\u001a\u00020\u0016*\u00020\u0004\u001a\n\u0010H\u001a\u00020I*\u00020\u0004\u001a#\u0010J\u001a\u00020\u000f*\u00020\u00042\u0012\u0010K\u001a\n\u0012\u0006\b\u0001\u0012\u00020M0L\"\u00020M¢\u0006\u0002\u0010N\u001a\f\u0010O\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\n\u0010P\u001a\u00020\b*\u00020\u0004\u001a\u0014\u0010Q\u001a\u00020\u000f*\u00020R2\b\u0010S\u001a\u0004\u0018\u00010F\u001a\f\u0010T\u001a\u00020+*\u0004\u0018\u00010\u0004\u001a\"\u0010U\u001a\u00020+*\u00020\u00042\u0006\u0010V\u001a\u00020B2\u0006\u0010W\u001a\u00020B2\u0006\u0010X\u001a\u00020B\u001a\f\u0010Y\u001a\u00020+*\u0004\u0018\u00010\u0004\u001a\f\u0010Z\u001a\u0004\u0018\u00010\u0004*\u00020\f\u001a\u000e\u0010[\u001a\u0004\u0018\u00010$*\u0004\u0018\u00010\u0004\u001a\u000e\u0010\\\u001a\u0004\u0018\u00010$*\u0004\u0018\u00010\u0004\u001a(\u0010]\u001a\u0004\u0018\u00010$*\u0004\u0018\u00010\u00042\u0006\u0010^\u001a\u00020\b2\u0006\u0010_\u001a\u00020\b2\b\b\u0002\u0010`\u001a\u00020a\u001a\n\u0010b\u001a\u00020\u0016*\u00020\u0004\u001a\n\u0010c\u001a\u00020I*\u00020\u0004\u001a\n\u0010d\u001a\u00020\u000f*\u00020\u0004\u001a\n\u0010e\u001a\u00020\u000f*\u00020\u0004\u001a\n\u0010f\u001a\u00020\u000f*\u00020g\u001a\n\u0010h\u001a\u00020\u000f*\u00020R\u001a1\u0010i\u001a\u00020\u000f\"\b\b\u0000\u0010?*\u00020\u0004*\u0002H?2\u0006\u0010j\u001a\u00020k2\u0006\u0010l\u001a\u00020\u00012\u0006\u0010m\u001a\u00020\b¢\u0006\u0002\u0010n\u001a-\u0010o\u001a\u00020\u000f\"\b\b\u0000\u0010?*\u00020\u0004*\u0002H?2\u0012\u0010p\u001a\u000e\u0012\u0004\u0012\u0002H?\u0012\u0004\u0012\u00020\u000f0q¢\u0006\u0002\u0010r\u001a5\u0010s\u001a\u00020\u000f\"\b\b\u0000\u0010?*\u00020\u0004*\u0002H?2\u0012\u0010p\u001a\u000e\u0012\u0004\u0012\u0002H?\u0012\u0004\u0012\u00020\u000f0q2\u0006\u0010l\u001a\u00020\u0001¢\u0006\u0002\u0010t\u001a\u0014\u0010u\u001a\u00020\u000f*\u00020\u00042\b\b\u0002\u0010l\u001a\u00020\u0001\u001a\n\u0010v\u001a\u00020\u000f*\u00020\u0004\u001a\n\u0010w\u001a\u00020\u0016*\u00020\u0004\u001a\f\u0010x\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\f\u0010y\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\f\u0010z\u001a\u00020\u000f*\u0004\u0018\u00010\f\u001a\u001c\u0010{\u001a\u00020\u000f*\u00020\u00042\u0006\u0010j\u001a\u00020k2\b\b\u0002\u0010|\u001a\u00020\u0001\u001a\u0012\u0010}\u001a\u00020\u000f*\u00020\f2\u0006\u0010~\u001a\u00020B\u001a\u0014\u0010\u007f\u001a\u00020\u000f*\u0004\u0018\u00010\f2\u0006\u0010\u001d\u001a\u00020\b\u001a\u0018\u0010\u0080\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\f2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004\u001a\u000b\u0010\u0082\u0001\u001a\u00020\u0016*\u00020\u0004\u001a\u0014\u0010\u0083\u0001\u001a\u00020\u000f*\u00020!2\u0007\u0010\u0084\u0001\u001a\u00020+\u001a \u0010\u0085\u0001\u001a\u00020\u000f*\u00020\u00042\u0011\b\u0002\u0010\u0086\u0001\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0011H\u0007\u001a\u0017\u0010\u0087\u0001\u001a\u00020\u000f*\u0004\u0018\u00010!2\b\u0010S\u001a\u0004\u0018\u00010F\u001a \u0010\u0087\u0001\u001a\u00020\u000f*\u0004\u0018\u00010!2\b\u0010S\u001a\u0004\u0018\u00010F2\u0007\u0010\u0084\u0001\u001a\u00020+\u001a\u0014\u0010\u0088\u0001\u001a\u00020\u000f*\u00020\u00042\u0007\u0010\u0089\u0001\u001a\u00020+\u001a)\u0010\u008a\u0001\u001a\u00020\u000f*\u00020\u00042\b\b\u0002\u0010|\u001a\u00020\u00012\u0012\b\u0002\u0010\u0010\u001a\f\u0012\u0004\u0012\u00020\u000f0\u0011j\u0002`\u0012\u001a\u0013\u0010\u008b\u0001\u001a\u00020\u000f*\u00020\u00042\u0006\u0010_\u001a\u00020'\u001a'\u0010\u008c\u0001\u001a\u00020\u000f*\u00020\u00042\u001a\u0010\u008d\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u008e\u0001\u0012\u0004\u0012\u00020\u000f0q¢\u0006\u0003\b\u008f\u0001\u001a\u0013\u0010\u008c\u0001\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\"\u001a\u00020\b\u001a/\u0010\u008c\u0001\u001a\u00020\u000f*\u00020\u00042\u0007\u0010\u0090\u0001\u001a\u00020\b2\u0007\u0010\u0091\u0001\u001a\u00020\b2\u0007\u0010\u0092\u0001\u001a\u00020\b2\u0007\u0010\u0093\u0001\u001a\u00020\b\u001a'\u0010\u0094\u0001\u001a\u00020\u000f*\u00020\u00042\u001a\u0010\u008d\u0001\u001a\u0015\u0012\u0005\u0012\u00030\u0095\u0001\u0012\u0004\u0012\u00020\u000f0q¢\u0006\u0003\b\u008f\u0001\u001a\u001b\u0010\u0094\u0001\u001a\u00020\u000f*\u00020\u00042\u0006\u0010^\u001a\u00020\b2\u0006\u0010_\u001a\u00020\b\u001a\u0014\u0010\u0096\u0001\u001a\u00020\u000f*\u00020\u00042\u0007\u0010\u0097\u0001\u001a\u00020B\u001a\u0013\u0010\u0098\u0001\u001a\u00020\u000f*\u00020\u00042\u0006\u0010^\u001a\u00020\b\u001a\u0013\u0010\u0099\u0001\u001a\u00020\u000f*\u00020\u00042\u0006\u0010\"\u001a\u00020\b\u001a/\u0010\u0099\u0001\u001a\u00020\u000f*\u00020\u00042\u0007\u0010\u0090\u0001\u001a\u00020\b2\u0007\u0010\u0091\u0001\u001a\u00020\b2\u0007\u0010\u0092\u0001\u001a\u00020\b2\u0007\u0010\u0093\u0001\u001a\u00020\b\u001a\u0014\u0010\u009a\u0001\u001a\u00020!*\u00020!2\u0007\u0010\u009b\u0001\u001a\u00020\b\u001a\u0016\u0010\u009c\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\u0007\u0010\u009d\u0001\u001a\u00020\b\u001a\u0018\u0010\u009e\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\t\u0010\u009f\u0001\u001a\u0004\u0018\u00010F\u001a\u0014\u0010 \u0001\u001a\u00020\u000f*\u00020\u00042\u0007\u0010¡\u0001\u001a\u00020F\u001a\u0016\u0010¢\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\u0007\u0010£\u0001\u001a\u00020+\u001a\u0016\u0010¤\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u00042\u0007\u0010£\u0001\u001a\u00020+\u001a\r\u0010¥\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\f\u0010¦\u0001\u001a\u00020+*\u00030§\u0001\u001a\r\u0010¨\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\r\u0010©\u0001\u001a\u00020\u000f*\u0004\u0018\u00010\u0004\u001a\u0018\u0010ª\u0001\u001a\u00020+*\u0004\u0018\u00010\u00042\t\b\u0002\u0010«\u0001\u001a\u00020+\u001a9\u0010¬\u0001\u001a\u00020\u000f\"\u000b\b\u0000\u0010?\u0018\u0001*\u00030\u0095\u0001*\u00020\u00042\u0019\u0010\u008d\u0001\u001a\u0014\u0012\u0004\u0012\u0002H?\u0012\u0004\u0012\u00020\u000f0q¢\u0006\u0003\b\u008f\u0001H\u0086\bø\u0001\u0000\u001a\u000b\u0010\u00ad\u0001\u001a\u00020\u0016*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000*\r\u0010®\u0001\"\u00030¯\u00012\u00030¯\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006°\u0001"}, m61528d2 = {"pressTimeForDragDelete", "", "pressTimeForDragMove", "createEmptyView", "Landroid/view/View;", "context", "Landroid/content/Context;", "findDropIndex", "", "point", "Landroid/graphics/Point;", "parent", "Landroid/view/ViewGroup;", Constant.PADDING_TAG, "addBackPressListener", "", "callback", "Lkotlin/Function0;", "Lcom/onyx/android/sdk/base/extension/NoArgCallbackFunc;", "addOnLayoutChangeListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lkotlin/Function2;", "Landroid/graphics/Rect;", "Lkotlin/ParameterName;", "name", "newRect", "oldRect", "addViewSafely", "child", FirebaseAnalytics.Param.INDEX, "(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/Integer;)V", "adjustSizeOfImeCompat", "calculateFontHeight", "Landroid/widget/TextView;", "margin", "capture", "Landroid/graphics/Bitmap;", "clipToRoundRect", "cornerRadius", "", "detachFromParent", "enableAll", "enabled", "", "findChild", "viewClass", "Ljava/lang/Class;", "findParent", "Landroid/view/ViewParent;", "generateDrawingRect", "getDrawingPosition", "", "getDropRect", "getIdleStateTag", "getLocationInWindow", "getLocationOnScreen", "getMeasureSize", "Landroid/util/Size;", "widthSpec", "heightSpec", "getParentView", "getSize", "getTagSafely", "T", "(Landroid/view/View;)Ljava/lang/Object;", "getTranslationX", "", "includeAncestors", "onlyNegativeValue", "getUniqueIdTag", "", "globalVisibleRect", "globalVisibleRectF", "Landroid/graphics/RectF;", "handleTouchEventByPressTime", "tasks", "", "Lcom/onyx/android/sdk/base/data/TimedTask;", "(Landroid/view/View;[Lcom/onyx/android/sdk/base/data/TimedTask;)V", "hideInputKeyboard", "indexInParent", "insertText", "Landroid/widget/EditText;", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "isInvalidSize", "isPointIn", "localX", "localY", "slop", "isVisible", "lastChild", "loadBitmap", "loadBitmapFromDrawingCache", "loadBitmapWithMatrix", "width", "height", "matrix", "Landroid/graphics/Matrix;", "localVisibleRect", "localVisibleRectF", "matchParent", "matchParentBySize", "matchScreen", "Landroid/view/WindowManager$LayoutParams;", "moveCursorToEnd", "postDelayedLastTaskWithTag", "runnable", "Ljava/lang/Runnable;", "delayMillis", CouchFieldKey.KEY_TAG_ID, "(Landroid/view/View;Ljava/lang/Runnable;JI)V", "postSelf", "action", "Lkotlin/Function1;", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V", "postSelfDelayed", "(Landroid/view/View;Lkotlin/jvm/functions/Function1;J)V", "postToShowInputKeyboard", "postToShowInputKeyboardWithDelay", "relativelyParentRect", "removeAllViews", "removeFromParent", "removeLastChild", "repostDelayed", "delay", "rotationAllChildView", "rotation", "safeRemoveChild", "safelyAddView", "view", "screenVisibleRect", "setBold", "bold", "setClearEditFocusTouchListener", "clearFocusListener", "setFakeBoldText", "setIdleStateTag", "idle", "setInvisibleDelayed", "setLayoutHeight", "setLayoutMargin", BreakpointSQLiteHelper.f39283i, "Landroid/view/ViewGroup$MarginLayoutParams;", "Lkotlin/ExtensionFunctionType;", "left", OneDriverConstants.TOP, gon.f71288n0, "bottom", "setLayoutParams", "Landroid/view/ViewGroup$LayoutParams;", "setLayoutWeight", "weight", "setLayoutWidth", "setMargins", "setTextColorResource", "colorResId", "setTextGravity", NotificationCompat.WearableExtender.f5060z, "setTextViewString", "text", "setUniqueIdTag", "id", "setViewVisibleOrGone", "show", "setViewVisibleOrInvisible", "showForcedInputKeyboard", "toggleCheckBox", "Landroid/widget/CompoundButton;", "toggleGone", "toggleInvisible", "toggleVisible", "gone", "updateLayoutParamSafely", "windowVisibleRect", "BaseIdRes", "Lcom/onyx/android/sdk/base/R$id;", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,712:1\n316#1,4:719\n337#2:713\n337#2:714\n1#3:715\n193#4,3:716\n162#4,8:725\n1313#5,2:723\n*S KotlinDebug\n*F\n+ 1 View.kt\ncom/onyx/android/sdk/base/extension/ViewKt\n*L\n322#1:719,4\n124#1:713\n128#1:714\n227#1:716,3\n701#1:725,8\n710#1:723,2\n*E\n"})
/* loaded from: classes7.dex */
public final class ViewKt {
    public static final long pressTimeForDragDelete = 500;
    public static final long pressTimeForDragMove = 1000;

    public static final void addBackPressListener(@NotNull View view, @NotNull final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        view.setOnKeyListener(new View.OnKeyListener() { // from class: com.sunia.HTREnginev2.z3o
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view2, int i, KeyEvent keyEvent) {
                boolean m31953i;
                m31953i = ViewKt.m31953i(Function0.this, view2, i, keyEvent);
                return m31953i;
            }
        });
    }

    public static final void addOnLayoutChangeListener(@NotNull View view, @NotNull final Function2<? super Rect, ? super Rect, Unit> listener) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(listener, "listener");
        view.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.sunia.HTREnginev2.d4o
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                ViewKt.m31954j(Function2.this, view2, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
    }

    public static final void addViewSafely(@Nullable ViewGroup viewGroup, @Nullable View view, @Nullable Integer num) {
        if (viewGroup == null || view == null) {
            return;
        }
        int intValue = num != null ? num.intValue() : viewGroup.getChildCount();
        boolean z = false;
        if (intValue >= 0 && intValue <= viewGroup.getChildCount()) {
            z = true;
        }
        if (z) {
            viewGroup.addView(view, intValue);
        }
    }

    public static final void adjustSizeOfImeCompat(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (BuildKt.isApiLevelAbove(35)) {
            ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.sunia.HTREnginev2.c4o
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                    WindowInsetsCompat m31955k;
                    m31955k = ViewKt.m31955k(view2, windowInsetsCompat);
                    return m31955k;
                }
            });
        }
    }

    public static final int calculateFontHeight(@NotNull TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        return (int) Math.ceil((textView.getPaint().getFontMetrics().bottom - textView.getPaint().getFontMetrics().top) - (i * 2));
    }

    @Nullable
    public static final Bitmap capture(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.getMeasuredWidth() * view.getMeasuredHeight() == 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    public static final void clipToRoundRect(@NotNull final View view, @NotNull final Number cornerRadius) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(cornerRadius, "cornerRadius");
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.onyx.android.sdk.base.extension.ViewKt$clipToRoundRect$1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(@NotNull View view2, @NotNull Outline outline) {
                Intrinsics.checkNotNullParameter(view2, "view");
                Intrinsics.checkNotNullParameter(outline, "outline");
                outline.setRoundRect(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight(), cornerRadius.floatValue());
            }
        });
        view.setClipToOutline(true);
        if (view instanceof ViewGroup) {
            ((ViewGroup) view).setClipChildren(true);
        }
    }

    @NotNull
    public static final View createEmptyView(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        View view = new View(context);
        matchParent(view);
        view.setBackgroundColor(-16777216);
        return view;
    }

    public static final void detachFromParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.getParent() != null) {
            ViewParent parent = view.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static final void enableAll(@NotNull View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            Iterator<View> it2 = ViewGroupKt.getChildren((ViewGroup) view).iterator();
            while (it2.hasNext()) {
                enableAll(it2.next(), z);
            }
        }
    }

    @Nullable
    public static final View findChild(@NotNull ViewGroup viewGroup, @NotNull Class<?> viewClass) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Intrinsics.checkNotNullParameter(viewClass, "viewClass");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if (viewClass.isInstance(childAt)) {
                return childAt;
            }
            if (childAt instanceof ViewGroup) {
                return findChild((ViewGroup) childAt, viewClass);
            }
        }
        return null;
    }

    public static final int findDropIndex(@NotNull Point point, @NotNull ViewGroup parent, int i) {
        Intrinsics.checkNotNullParameter(point, "point");
        Intrinsics.checkNotNullParameter(parent, "parent");
        if (!RectKt.expand(ViewLocator.INSTANCE.rectInWindow(parent), Integer.valueOf(-i)).contains(point.x, point.y)) {
            return -1;
        }
        int childCount = parent.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = parent.getChildAt(i2);
            ViewLocator viewLocator = ViewLocator.INSTANCE;
            Intrinsics.checkNotNull(childAt);
            Rect rectInWindow = viewLocator.rectInWindow(childAt);
            int i3 = point.y;
            if (i3 >= rectInWindow.top && i3 <= rectInWindow.bottom) {
                if (i2 == childCount - 1) {
                    return i2 + 1;
                }
                if (point.x < rectInWindow.centerX()) {
                    return i2;
                }
                int i4 = i2 + 1;
                View childAt2 = parent.getChildAt(i4);
                Intrinsics.checkNotNull(childAt2);
                Rect rectInWindow2 = viewLocator.rectInWindow(childAt2);
                if (point.x > rectInWindow.centerX() && point.x < rectInWindow2.centerX()) {
                    return i4;
                }
                if (point.x > rectInWindow.centerX() && rectInWindow2.top > point.y) {
                    return i4;
                }
            }
        }
        return -1;
    }

    public static /* synthetic */ int findDropIndex$default(Point point, ViewGroup viewGroup, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return findDropIndex(point, viewGroup, i);
    }

    @Nullable
    public static final ViewParent findParent(@NotNull ViewParent viewParent, @NotNull Class<?> viewClass) {
        Intrinsics.checkNotNullParameter(viewParent, "<this>");
        Intrinsics.checkNotNullParameter(viewClass, "viewClass");
        ViewParent parent = viewParent.getParent();
        if (parent == null) {
            return null;
        }
        return viewClass.isInstance(parent) ? parent : findParent(parent, viewClass);
    }

    @NotNull
    public static final Rect generateDrawingRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getDrawingRect(rect);
        return rect;
    }

    @NotNull
    public static final int[] getDrawingPosition(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getRootView().getLocationOnScreen(iArr);
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        return new int[]{iArr2[0] - iArr[0], iArr2[1] - iArr[1]};
    }

    @NotNull
    public static final Rect getDropRect(@NotNull ViewGroup viewGroup, int i) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        Rect screenVisibleRect = screenVisibleRect(viewGroup);
        screenVisibleRect.left -= i;
        screenVisibleRect.right += i;
        return screenVisibleRect;
    }

    public static /* synthetic */ Rect getDropRect$default(ViewGroup viewGroup, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return getDropRect(viewGroup, i);
    }

    public static final boolean getIdleStateTag(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(C7106R.id.idle_state);
        Boolean bool = tag instanceof Boolean ? (Boolean) tag : null;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    @NotNull
    public static final int[] getLocationInWindow(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        return iArr;
    }

    @NotNull
    public static final int[] getLocationOnScreen(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr;
    }

    @NotNull
    public static final Size getMeasureSize(@NotNull View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.measure(i, i2);
        return new Size(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public static /* synthetic */ Size getMeasureSize$default(View view, int i, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        if ((i3 & 2) != 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        }
        return getMeasureSize(view, i, i2);
    }

    @NotNull
    public static final ViewGroup getParentView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewParent parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        return (ViewGroup) parent;
    }

    @NotNull
    public static final Size getSize(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return new Size(view.getWidth(), view.getHeight());
    }

    @Nullable
    public static final <T> T getTagSafely(@Nullable View view) {
        T t = view != null ? (T) view.getTag() : null;
        if (t == null) {
            return null;
        }
        return t;
    }

    public static final float getTranslationX(@NotNull View view, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        float translationX = view.getTranslationX();
        if (z2 && translationX > 0.0f) {
            translationX = 0.0f;
        }
        if (!z) {
            return translationX;
        }
        Object parent = view.getParent();
        View view2 = parent instanceof View ? (View) parent : null;
        return view2 == null ? translationX : translationX + getTranslationX(view2, true, z2);
    }

    public static /* synthetic */ float getTranslationX$default(View view, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        return getTranslationX(view, z, z2);
    }

    @Nullable
    public static final String getUniqueIdTag(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Object tag = view.getTag(C7106R.id.uniqueId);
        if (tag instanceof String) {
            return (String) tag;
        }
        return null;
    }

    @NotNull
    public static final Rect globalVisibleRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getGlobalVisibleRect(rect);
        return rect;
    }

    @NotNull
    public static final RectF globalVisibleRectF(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return new RectF(globalVisibleRect(view));
    }

    public static final void handleTouchEventByPressTime(@NotNull final View view, @NotNull final TimedTask... tasks) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(tasks, "tasks");
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.onyx.android.sdk.base.extension.ViewKt$handleTouchEventByPressTime$listener$1

            /* renamed from: e, reason: from kotlin metadata */
            public long start;

            /* renamed from: f, reason: from kotlin metadata */
            public final int timeout = ViewConfiguration.getLongPressTimeout();

            public final long getStart() {
                return this.start;
            }

            public final int getTimeout() {
                return this.timeout;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(@NotNull View v, @NotNull MotionEvent event) {
                Intrinsics.checkNotNullParameter(v, "v");
                Intrinsics.checkNotNullParameter(event, "event");
                long currentTimeMillis = System.currentTimeMillis();
                long j = currentTimeMillis - this.start;
                int action = event.getAction();
                int i = 0;
                if (action == 0) {
                    this.start = currentTimeMillis;
                    TimedTask[] timedTaskArr = tasks;
                    int length = timedTaskArr.length;
                    while (i < length) {
                        timedTaskArr[i].activate();
                        i++;
                    }
                } else if (action != 1) {
                    if (action == 2) {
                        TimedTask[] timedTaskArr2 = tasks;
                        int length2 = timedTaskArr2.length;
                        while (i < length2) {
                            timedTaskArr2[i].handle(j);
                            i++;
                        }
                    }
                } else if (j < this.timeout) {
                    view.performClick();
                }
                return true;
            }

            public final void setStart(long j) {
                this.start = j;
            }
        });
    }

    public static final void hideInputKeyboard(@Nullable View view) {
        if (view == null) {
            return;
        }
        view.clearFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: i */
    public static final boolean m31953i(Function0 callback, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNullParameter(callback, "$callback");
        if (i != 4 || keyEvent.getAction() != 1) {
            return false;
        }
        callback.invoke();
        return true;
    }

    public static final int indexInParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.getParent() == null) {
            return -1;
        }
        ViewParent parent = view.getParent();
        Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
        return ((ViewGroup) parent).indexOfChild(view);
    }

    public static final void insertText(@NotNull EditText editText, @Nullable String str) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        int selectionStart = editText.getSelectionStart();
        if (selectionStart < 0) {
            selectionStart = editText.length();
        }
        Editable text = editText.getText();
        if (text != null) {
            if (str == null) {
                str = "";
            }
            text.insert(selectionStart, str);
        }
    }

    public static final boolean isInvalidSize(@Nullable View view) {
        return view == null || view.getWidth() <= 0 || view.getHeight() <= 0;
    }

    public static final boolean isPointIn(@NotNull View view, float f, float f2, float f3) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        float f4 = -f3;
        return f >= f4 && f2 >= f4 && f < ((float) view.getWidth()) + f3 && f2 < ((float) view.getHeight()) + f3;
    }

    public static final boolean isVisible(@Nullable View view) {
        return view != null && view.getVisibility() == 0;
    }

    /* renamed from: j */
    public static final void m31954j(Function2 listener, View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Intrinsics.checkNotNullParameter(listener, "$listener");
        listener.invoke(new Rect(i, i2, i3, i4), new Rect(i5, i6, i7, i8));
    }

    /* renamed from: k */
    public static final WindowInsetsCompat m31955k(View view, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.ime());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        view.setPadding(view.getPaddingLeft(), view.getPaddingTop(), view.getPaddingRight(), insets2.bottom);
        return insets;
    }

    /* renamed from: l */
    public static final void m31956l(View this_postDelayedLastTaskWithTag, int i, Runnable runnable) {
        Intrinsics.checkNotNullParameter(this_postDelayedLastTaskWithTag, "$this_postDelayedLastTaskWithTag");
        Intrinsics.checkNotNullParameter(runnable, "$runnable");
        this_postDelayedLastTaskWithTag.setTag(i, null);
        runnable.run();
    }

    @Nullable
    public static final View lastChild(@NotNull ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        return viewGroup.getChildAt(viewGroup.getChildCount() - 1);
    }

    @Nullable
    public static final Bitmap loadBitmap(@Nullable View view) {
        if (view == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }

    @Nullable
    public static final Bitmap loadBitmapFromDrawingCache(@Nullable View view) {
        if (view == null) {
            return null;
        }
        view.setDrawingCacheEnabled(true);
        view.destroyDrawingCache();
        return view.getDrawingCache(true);
    }

    @Nullable
    public static final Bitmap loadBitmapWithMatrix(@Nullable View view, int i, int i2, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        if (view == null) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        Canvas canvas = new Canvas(createBitmap);
        canvas.setMatrix(matrix);
        view.draw(canvas);
        return createBitmap;
    }

    public static /* synthetic */ Bitmap loadBitmapWithMatrix$default(View view, int i, int i2, Matrix matrix, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            matrix = new Matrix();
        }
        return loadBitmapWithMatrix(view, i, i2, matrix);
    }

    @NotNull
    public static final Rect localVisibleRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        return rect;
    }

    @NotNull
    public static final RectF localVisibleRectF(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Rect rect = new Rect();
        view.getLocalVisibleRect(rect);
        return new RectF(rect);
    }

    /* renamed from: m */
    public static final void m31957m(Function1 action, View this_postSelf) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(this_postSelf, "$this_postSelf");
        action.invoke(this_postSelf);
    }

    public static final void matchParent(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setLayoutParams(view, -1, -1);
    }

    public static final void matchParentBySize(@NotNull final View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setLayoutParams(view, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$matchParentBySize$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                ViewGroup parentView = ViewKt.getParentView(view);
                setLayoutParams.width = parentView.getMeasuredWidth();
                setLayoutParams.height = parentView.getMeasuredHeight();
            }
        });
    }

    public static final void matchScreen(@NotNull WindowManager.LayoutParams layoutParams) {
        Intrinsics.checkNotNullParameter(layoutParams, "<this>");
        Size screenSize = ViewLocator.INSTANCE.getScreenSize();
        layoutParams.x = 0;
        layoutParams.y = 0;
        layoutParams.width = screenSize.getWidth();
        layoutParams.height = screenSize.getHeight();
        layoutParams.gravity = 51;
        layoutParams.flags = layoutParams.flags | 512 | 256;
    }

    public static final void moveCursorToEnd(@NotNull EditText editText) {
        Intrinsics.checkNotNullParameter(editText, "<this>");
        editText.setSelection(editText.getText().toString().length());
    }

    /* renamed from: n */
    public static final void m31958n(Function1 action, View this_postSelfDelayed) {
        Intrinsics.checkNotNullParameter(action, "$action");
        Intrinsics.checkNotNullParameter(this_postSelfDelayed, "$this_postSelfDelayed");
        action.invoke(this_postSelfDelayed);
    }

    /* renamed from: o */
    public static final void m31959o(View this_postToShowInputKeyboard) {
        Intrinsics.checkNotNullParameter(this_postToShowInputKeyboard, "$this_postToShowInputKeyboard");
        this_postToShowInputKeyboard.requestFocus();
        showForcedInputKeyboard(this_postToShowInputKeyboard);
    }

    /* renamed from: p */
    public static final boolean m31960p(Function0 function0, View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action != 1 && action != 3) {
            return false;
        }
        View findFocus = view.findFocus();
        if (!(findFocus instanceof EditText) || globalVisibleRect(findFocus).contains((int) motionEvent.getRawX(), (int) motionEvent.getRawY())) {
            return false;
        }
        if (function0 != null) {
            function0.invoke();
        }
        findFocus.clearFocus();
        hideInputKeyboard(findFocus);
        return false;
    }

    public static final <T extends View> void postDelayedLastTaskWithTag(@NotNull final T t, @NotNull final Runnable runnable, long j, final int i) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        Runnable runnable2 = (Runnable) t.getTag(i);
        if (runnable2 != null) {
            t.removeCallbacks(runnable2);
        }
        Runnable runnable3 = new Runnable() { // from class: com.sunia.HTREnginev2.x3o
            @Override // java.lang.Runnable
            public final void run() {
                ViewKt.m31956l(t, i, runnable);
            }
        };
        t.postDelayed(runnable3, j);
        t.setTag(i, runnable3);
    }

    public static final <T extends View> void postSelf(@NotNull final T t, @NotNull final Function1<? super T, Unit> action) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        t.post(new Runnable() { // from class: com.sunia.HTREnginev2.t3o
            @Override // java.lang.Runnable
            public final void run() {
                ViewKt.m31957m(Function1.this, t);
            }
        });
    }

    public static final <T extends View> void postSelfDelayed(@NotNull final T t, @NotNull final Function1<? super T, Unit> action, long j) {
        Intrinsics.checkNotNullParameter(t, "<this>");
        Intrinsics.checkNotNullParameter(action, "action");
        t.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.e4o
            @Override // java.lang.Runnable
            public final void run() {
                ViewKt.m31958n(Function1.this, t);
            }
        }, j);
    }

    public static final void postToShowInputKeyboard(@NotNull final View view, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.b4o
            @Override // java.lang.Runnable
            public final void run() {
                ViewKt.m31959o(view);
            }
        }, j);
    }

    public static /* synthetic */ void postToShowInputKeyboard$default(View view, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = 0;
        }
        postToShowInputKeyboard(view, j);
    }

    public static final void postToShowInputKeyboardWithDelay(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        postToShowInputKeyboard(view, 500L);
    }

    @NotNull
    public static final Rect relativelyParentRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
    }

    public static final void removeAllViews(@Nullable View view) {
        if (view != null && (view instanceof ViewGroup)) {
            ((ViewGroup) view).removeAllViews();
        }
    }

    public static final void removeFromParent(@Nullable View view) {
        ViewParent parent = view != null ? view.getParent() : null;
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(view);
        }
    }

    public static final void removeLastChild(@Nullable ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        Integer valueOf = Integer.valueOf(viewGroup.getChildCount());
        if (!(valueOf.intValue() > 0)) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.intValue();
            viewGroup.removeViewAt(viewGroup.getChildCount() - 1);
        }
    }

    public static final void repostDelayed(@NotNull View view, @NotNull Runnable runnable, long j) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        view.removeCallbacks(runnable);
        view.postDelayed(runnable, j);
    }

    public static /* synthetic */ void repostDelayed$default(View view, Runnable runnable, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        repostDelayed(view, runnable, j);
    }

    public static final void rotationAllChildView(@NotNull ViewGroup viewGroup, float f) {
        Intrinsics.checkNotNullParameter(viewGroup, "<this>");
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            viewGroup.getChildAt(i).setRotation(f);
        }
    }

    public static final void safeRemoveChild(@Nullable ViewGroup viewGroup, int i) {
        if (viewGroup == null) {
            return;
        }
        Integer valueOf = Integer.valueOf(i);
        int intValue = valueOf.intValue();
        boolean z = false;
        if (intValue >= 0 && intValue <= viewGroup.getChildCount() - 1) {
            z = true;
        }
        if (!z) {
            valueOf = null;
        }
        if (valueOf != null) {
            valueOf.intValue();
            viewGroup.removeViewAt(i);
        }
    }

    public static final void safelyAddView(@Nullable ViewGroup viewGroup, @Nullable View view) {
        if (viewGroup == null || view == null || view.getParent() == viewGroup) {
            return;
        }
        removeFromParent(viewGroup);
        viewGroup.addView(view);
    }

    @NotNull
    public static final Rect screenVisibleRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] locationOnScreen = getLocationOnScreen(view);
        Rect localVisibleRect = localVisibleRect(view);
        localVisibleRect.offset(locationOnScreen[0], locationOnScreen[1]);
        return localVisibleRect;
    }

    public static final void setBold(@NotNull TextView textView, boolean z) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.getPaint().setFakeBoldText(z);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public static final void setClearEditFocusTouchListener(@NotNull View view, @Nullable final Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.sunia.HTREnginev2.a4o
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean m31960p;
                m31960p = ViewKt.m31960p(Function0.this, view2, motionEvent);
                return m31960p;
            }
        });
    }

    public static /* synthetic */ void setClearEditFocusTouchListener$default(View view, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        setClearEditFocusTouchListener(view, function0);
    }

    public static final void setFakeBoldText(@Nullable TextView textView, @Nullable String str) {
        setFakeBoldText(textView, str, true);
    }

    public static final void setIdleStateTag(@NotNull View view, boolean z) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        view.setTag(C7106R.id.idle_state, Boolean.valueOf(z));
    }

    public static final void setInvisibleDelayed(@NotNull final View view, long j, @NotNull final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(callback, "callback");
        view.postDelayed(new Runnable() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setInvisibleDelayed$$inlined$postDelayed$1
            @Override // java.lang.Runnable
            public final void run() {
                view.setVisibility(4);
                callback.invoke();
            }
        }, j);
    }

    public static /* synthetic */ void setInvisibleDelayed$default(View view, long j, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            j = ResManager.INSTANCE.getLong(C7106R.integer.ui_medium_delay);
        }
        if ((i & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setInvisibleDelayed$1
                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        setInvisibleDelayed(view, j, function0);
    }

    public static final void setLayoutHeight(@NotNull View view, @NotNull final Number height) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(height, "height");
        setLayoutParams(view, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setLayoutHeight$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.height = height.intValue();
            }
        });
    }

    public static final void setLayoutMargin(@NotNull View view, final int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setLayoutMargin(view, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setLayoutMargin$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                int i2 = i;
                setLayoutMargin.setMargins(i2, i2, i2, i2);
            }
        });
    }

    public static final void setLayoutParams(@NotNull View view, @NotNull Function1<? super ViewGroup.LayoutParams, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(-2, -2);
        }
        block.invoke(layoutParams);
        view.setLayoutParams(layoutParams);
    }

    public static final void setLayoutWeight(@NotNull View view, float f) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LinearLayout.LayoutParams)) {
            layoutParams = null;
        }
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        if (layoutParams2 == null) {
            return;
        }
        layoutParams2.weight = f;
    }

    public static final void setLayoutWidth(@NotNull View view, final int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setLayoutParams(view, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setLayoutWidth$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                setLayoutParams.width = i;
            }
        });
    }

    public static final void setMargins(@NotNull View view, int i) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setMargins(view, i, i, i, i);
    }

    @NotNull
    public static final TextView setTextColorResource(@NotNull TextView textView, int i) {
        Intrinsics.checkNotNullParameter(textView, "<this>");
        textView.setTextColor(ResManager.INSTANCE.getColor(i));
        return textView;
    }

    public static final void setTextGravity(@Nullable View view, int i) {
        if (view instanceof TextView) {
            ((TextView) view).setGravity(i);
        }
    }

    public static final void setTextViewString(@Nullable View view, @Nullable String str) {
        if (view instanceof TextView) {
            ((TextView) view).setText(str);
        }
    }

    public static final void setUniqueIdTag(@NotNull View view, @NotNull String id) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(id, "id");
        view.setTag(C7106R.id.uniqueId, id);
    }

    public static final void setViewVisibleOrGone(@Nullable View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    public static final void setViewVisibleOrInvisible(@Nullable View view, boolean z) {
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 0 : 4);
    }

    public static final void showForcedInputKeyboard(@Nullable View view) {
        if (view == null) {
            return;
        }
        Object systemService = view.getContext().getSystemService("input_method");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager");
        ((InputMethodManager) systemService).showSoftInput(view, 2);
    }

    public static final boolean toggleCheckBox(@NotNull CompoundButton compoundButton) {
        Intrinsics.checkNotNullParameter(compoundButton, "<this>");
        compoundButton.setChecked(!compoundButton.isChecked());
        return compoundButton.isChecked();
    }

    public static final void toggleGone(@Nullable View view) {
        setViewVisibleOrGone(view, !isVisible(view));
    }

    public static final void toggleInvisible(@Nullable View view) {
        setViewVisibleOrInvisible(view, !isVisible(view));
    }

    public static final boolean toggleVisible(@Nullable View view, boolean z) {
        if (!isVisible(view)) {
            setViewVisibleOrGone(view, true);
            return true;
        }
        if (z) {
            setViewVisibleOrGone(view, false);
        } else {
            setViewVisibleOrInvisible(view, false);
        }
        return false;
    }

    public static /* synthetic */ boolean toggleVisible$default(View view, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return toggleVisible(view, z);
    }

    public static final /* synthetic */ <T extends ViewGroup.LayoutParams> void updateLayoutParamSafely(View view, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.reifiedOperationMarker(2, "T");
        if (layoutParams != null) {
            block.invoke(layoutParams);
        }
    }

    @NotNull
    public static final Rect windowVisibleRect(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        int[] locationInWindow = getLocationInWindow(view);
        Rect localVisibleRect = localVisibleRect(view);
        localVisibleRect.offset(locationInWindow[0], locationInWindow[1]);
        return localVisibleRect;
    }

    public static final void setFakeBoldText(@Nullable TextView textView, @Nullable String str, boolean z) {
        if (textView != null) {
            textView.getPaint().setFakeBoldText(z);
            textView.setText(str);
        }
    }

    public static final void setLayoutMargin(@NotNull View view, final int i, final int i2, final int i3, final int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        setLayoutMargin(view, new Function1<ViewGroup.MarginLayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setLayoutMargin$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.MarginLayoutParams marginLayoutParams) {
                invoke2(marginLayoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.MarginLayoutParams setLayoutMargin) {
                Intrinsics.checkNotNullParameter(setLayoutMargin, "$this$setLayoutMargin");
                setLayoutMargin.setMargins(i, i2, i3, i4);
            }
        });
    }

    public static final void setMargins(@NotNull View view, int i, int i2, int i3, int i4) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams == null) {
            return;
        }
        marginLayoutParams.setMargins(i, i2, i3, i4);
    }

    public static final void setLayoutMargin(@NotNull View view, @NotNull final Function1<? super ViewGroup.MarginLayoutParams, Unit> block) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        setLayoutParams(view, new Function1<ViewGroup.LayoutParams, Unit>() { // from class: com.onyx.android.sdk.base.extension.ViewKt$setLayoutMargin$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(ViewGroup.LayoutParams layoutParams) {
                invoke2(layoutParams);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull ViewGroup.LayoutParams setLayoutParams) {
                Intrinsics.checkNotNullParameter(setLayoutParams, "$this$setLayoutParams");
                ViewGroup.MarginLayoutParams marginLayoutParams = setLayoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) setLayoutParams : null;
                if (marginLayoutParams != null) {
                    block.invoke(marginLayoutParams);
                }
            }
        });
    }

    public static final void setLayoutParams(@NotNull View view, int i, int i2) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        if (view.getLayoutParams() == null) {
            view.setLayoutParams(new ViewGroup.LayoutParams(i, i2));
            return;
        }
        view.getLayoutParams().width = i;
        view.getLayoutParams().height = i2;
        view.setLayoutParams(view.getLayoutParams());
    }
}
