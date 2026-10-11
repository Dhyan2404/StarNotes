package com.onyx.android.sdk.p039ui.wheelview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.C0619b;
import androidx.core.app.NotificationCompat;
import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.p039ui.wheelview.WheelView;
import com.onyx.android.sdk.uicommon.C8044R;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b;\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 Ë\u00012\u00020\u0001:\fÌ\u0001Ë\u0001Í\u0001Î\u0001Ï\u0001Ð\u0001B\u001d\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0010Ç\u0001\u001a\u0005\u0018\u00010Æ\u0001¢\u0006\u0006\bÈ\u0001\u0010É\u0001B\u0013\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0006\bÈ\u0001\u0010Ê\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0002H\u0002J\b\u0010\b\u001a\u00020\u0002H\u0002J\b\u0010\t\u001a\u00020\u0002H\u0002J\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0012\u0010\u0016\u001a\u00020\u000e2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0002J\u0010\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J\u0010\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u0010\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000eH\u0002J\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bJ\u000e\u0010\u001f\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\nJ\u0006\u0010 \u001a\u00020\u0002J\u000e\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!J\u000e\u0010&\u001a\u00020\u00022\u0006\u0010%\u001a\u00020$J\u000e\u0010(\u001a\u00020\u00022\u0006\u0010'\u001a\u00020\nJ\u000e\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010+\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010,\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010-\u001a\u00020\u00022\u0006\u0010)\u001a\u00020\nJ\u000e\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020\u0011J\u0010\u00102\u001a\u00020\u00022\b\u00101\u001a\u0004\u0018\u000100J\u0014\u00105\u001a\u00020\u00022\f\u00104\u001a\b\u0012\u0004\u0012\u00020\u001403J\u000e\u00107\u001a\u00020\u00022\u0006\u00106\u001a\u00020\u0011J\u000e\u00109\u001a\u00020\u00022\u0006\u00108\u001a\u00020!J\f\u0010:\u001a\b\u0012\u0004\u0012\u00020\u001403J\u0006\u0010;\u001a\u00020\u0011J\u0006\u0010<\u001a\u00020\u000eJ\u0006\u0010=\u001a\u00020\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0014J\u0018\u0010C\u001a\u00020\u00022\u0006\u0010A\u001a\u00020\u00112\u0006\u0010B\u001a\u00020\u0011H\u0014J\u0010\u0010F\u001a\u00020!2\u0006\u0010E\u001a\u00020DH\u0017J\u0006\u0010G\u001a\u00020\u0011J\u0010\u0010I\u001a\u00020\u00022\b\u0010H\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010J\u001a\u00020\u00022\u0006\u0010J\u001a\u00020!J\u000e\u0010L\u001a\u00020\u00022\u0006\u0010K\u001a\u00020\u0011J\u001a\u0010P\u001a\u00020\u00112\b\u0010N\u001a\u0004\u0018\u00010M2\b\u0010O\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010R\u001a\u00020\u00022\u0006\u0010Q\u001a\u00020!J\u000e\u0010T\u001a\u00020\u00022\u0006\u0010S\u001a\u00020\u0011J\u000e\u0010V\u001a\u00020\u00022\u0006\u0010U\u001a\u00020\u0011J\u000e\u0010X\u001a\u00020\u00022\u0006\u0010W\u001a\u00020\u0011J\u000e\u0010Z\u001a\u00020\u00022\u0006\u0010Y\u001a\u00020\u0011J\u000e\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\u0011J\u0010\u0010_\u001a\u00020\u00022\b\u0010^\u001a\u0004\u0018\u00010]J\u000e\u0010a\u001a\u00020\u00022\u0006\u0010`\u001a\u00020\nJ\u0006\u0010b\u001a\u00020!J\u0006\u0010c\u001a\u00020\nJ\u000e\u0010e\u001a\u00020\u00022\u0006\u0010d\u001a\u00020\nJ\u0006\u0010f\u001a\u00020\nJ\u0006\u0010g\u001a\u00020\u0011J\n\u0010i\u001a\u0004\u0018\u00010hH\u0016R\u0018\u0010^\u001a\u0004\u0018\u00010]8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010jR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0007\u0010kR\u0018\u0010m\u001a\u0004\u0018\u00010h8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010oR\u0018\u00101\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010qR\u0016\u0010s\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010rR\u0016\u0010J\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010rR\u0014\u0010w\u001a\u00020u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010vR\u001c\u0010z\u001a\b\u0012\u0002\b\u0003\u0018\u00010x8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010yR\u0016\u0010|\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010{R\u0016\u0010~\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010{R\u0017\u0010\u0080\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010{R\u001e\u00104\u001a\b\u0012\u0004\u0012\u00020\u0014038\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001a\u0010H\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u0019\u0010\u0089\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0086\u0001R\u0019\u0010\u008b\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0086\u0001R\u0019\u0010\u008d\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u0086\u0001R\u0018\u0010W\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u0086\u0001R\u0019\u0010\u0091\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u0094\u0001\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0018\u0010S\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0086\u0001R\u0018\u0010U\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0086\u0001R\u0018\u0010[\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0086\u0001R\u0018\u0010Y\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0086\u0001R\u0018\u0010`\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0090\u0001R\u0017\u0010b\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009a\u0001\u0010rR\u0019\u0010\u009c\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0090\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0090\u0001R\u0019\u0010 \u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u0090\u0001R\u0018\u0010d\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u0090\u0001R\u0019\u0010£\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010\u0086\u0001R\u0019\u0010¥\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¤\u0001\u0010\u0086\u0001R\u0019\u0010§\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010\u0086\u0001R\u0019\u0010©\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010\u0086\u0001R\u0019\u0010«\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010\u0086\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010\u0086\u0001R\u0019\u0010¯\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010\u0086\u0001R\u0019\u0010±\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u0086\u0001R\u0019\u0010³\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010\u0090\u0001R\u001a\u0010¶\u0001\u001a\u00030´\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0096\u0001R\u0018\u0010A\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010\u0086\u0001R\u0019\u0010¹\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u0086\u0001R\u0019\u0010»\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u0086\u0001R\u0019\u0010½\u0001\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010\u0086\u0001R\u0019\u0010¿\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010\u0090\u0001R\u0019\u0010Á\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0090\u0001R\u0019\u0010Ã\u0001\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010\u0090\u0001R\u0018\u0010Å\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bÄ\u0001\u0010r¨\u0006Ñ\u0001"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "Landroid/view/View;", "", C6998g.f39679a, "Landroid/content/Context;", "context", "e", C6997f.f39671c, "l", C6999h.f39688c, "", "offsetCoefficient", "angle", GoogleApiAvailabilityLight.f29016b, "", "contentText", "m", "", "i", "d", "", "item", "b", "timeNum", "c", "content", "j", "Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;", "action", "smoothScroll", "velocityY", "scrollBy", "cancelFuture", "", "cyclic", "setCyclic", "Landroid/graphics/Typeface;", "font", "setTypeface", "skew", "setTextSkewX", "size", "setTextSize", "setTextSizeOut", "setTextSizePx", "setTextSizeOutPx", "currentItem", "setCurrentItem", "Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;", "onItemSelectedListener", "setOnItemSelectedListener", "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;", "adapter", "setAdapter", "visibleCount", "setItemsVisibleCount", "alphaGradient", "setAlphaGradient", "getAdapter", "getCurrentItem", "getCurrentItemText", "onItemSelected", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "onDraw", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "getItemsCount", C0619b.f5199k, "setLabel", "isCenterLabel", NotificationCompat.WearableExtender.f5060z, "setGravity", "Landroid/graphics/Paint;", "paint", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "getTextWidth", "options", "setIsOptions", "textColorOut", "setTextColorOut", "textColorCenter", "setTextColorCenter", "textXOffset", "setTextXOffset", "dividerWidth", "setDividerWidth", "dividerColor", "setDividerColor", "Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;", "dividerType", "setDividerType", "lineSpacingMultiplier", "setLineSpacingMultiplier", "isLoop", "getTotalScrollY", "totalScrollY", "setTotalScrollY", "getItemHeight", "getInitPosition", "Landroid/os/Handler;", "getHandler", "Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;", "Landroid/content/Context;", "Landroid/os/Handler;", Constants.TRANSLET_OUTPUT_PNAME, "Landroid/view/GestureDetector;", "Landroid/view/GestureDetector;", "gestureDetector", "Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;", Constants.HASIDCALL_INDEX_SIG, "isOptions", C4921e.f26537n, "Ljava/util/concurrent/ScheduledExecutorService;", "Ljava/util/concurrent/ScheduledExecutorService;", "mExecutor", "Ljava/util/concurrent/ScheduledFuture;", "Ljava/util/concurrent/ScheduledFuture;", "mFuture", "Landroid/graphics/Paint;", "paintOuterText", C4921e.f26528e, "paintCenterText", "p", "paintIndicator", "q", "Lcom/onyx/android/sdk/ui/wheelview/WheelAdapter;", "r", Constants.STRING_SIG, "s", "I", "textSize", "t", "textSizeOut", "u", "maxTextWidth", "v", "maxTextHeight", "w", "x", "F", "itemHeight", "y", "Landroid/graphics/Typeface;", "typeface", "z", "J", BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION, "Q", "k0", "q0", "t0", "firstLineY", "u0", "secondLineY", "v0", "centerY", "w0", "x0", "initPosition", "y0", "selectedItem", "z0", "preCurrentIndex", "A0", "itemsVisible", "B0", "measuredHeight", "C0", "measuredWidth", "D0", "radius", "E0", "mOffset", "F0", "previousY", "", "G0", "startTime", "H0", "I0", "mGravity", "J0", "drawCenterContentStart", "K0", "drawOutContentStart", "L0", "centerContentOffset", "M0", "textSkewX", "N0", "scaleContentFactor", "O0", "isAlphaGradient", "Landroid/util/AttributeSet;", "attrs", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "(Landroid/content/Context;)V", "Companion", "ACTION", "DividerType", "IPickerViewData", "LoopViewGestureListener", "OnItemSelectedListener", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class WheelView extends View {

    /* renamed from: P0 */
    @NotNull
    public static final String[] f47259P0 = {"00", "01", "02", "03", "04", "05", "06", "07", "08", "09"};

    /* renamed from: Q0 */
    public static final int f47260Q0 = 5;

    /* renamed from: R0 */
    public static final float f47261R0 = 0.8f;

    /* renamed from: S0 */
    public static final float f47262S0 = 0.5f;

    /* renamed from: A0, reason: from kotlin metadata */
    public int itemsVisible;

    /* renamed from: B0, reason: from kotlin metadata */
    public int measuredHeight;

    /* renamed from: C0, reason: from kotlin metadata */
    public int measuredWidth;

    /* renamed from: D0, reason: from kotlin metadata */
    public int radius;

    /* renamed from: E0, reason: from kotlin metadata */
    public int mOffset;

    /* renamed from: F0, reason: from kotlin metadata */
    public float previousY;

    /* renamed from: G0, reason: from kotlin metadata */
    public long startTime;

    /* renamed from: H0, reason: from kotlin metadata */
    public int widthMeasureSpec;

    /* renamed from: I0, reason: from kotlin metadata */
    public int mGravity;

    /* renamed from: J, reason: from kotlin metadata */
    public int textColorCenter;

    /* renamed from: J0, reason: from kotlin metadata */
    public int drawCenterContentStart;

    /* renamed from: K0, reason: from kotlin metadata */
    public int drawOutContentStart;

    /* renamed from: L0, reason: from kotlin metadata */
    public float centerContentOffset;

    /* renamed from: M0, reason: from kotlin metadata */
    public float textSkewX;

    /* renamed from: N0, reason: from kotlin metadata */
    public float scaleContentFactor;

    /* renamed from: O, reason: from kotlin metadata */
    public int dividerColor;

    /* renamed from: O0, reason: from kotlin metadata */
    public boolean isAlphaGradient;

    /* renamed from: Q, reason: from kotlin metadata */
    public int dividerWidth;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public DividerType dividerType;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public Context context;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Handler handler;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public GestureDetector gestureDetector;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public OnItemSelectedListener onItemSelectedListener;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean isOptions;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean isCenterLabel;

    /* renamed from: k0, reason: from kotlin metadata */
    public float lineSpacingMultiplier;

    /* renamed from: l, reason: from kotlin metadata */
    @NotNull
    public final ScheduledExecutorService mExecutor;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public ScheduledFuture<?> mFuture;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public Paint paintOuterText;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public Paint paintCenterText;

    /* renamed from: p, reason: from kotlin metadata */
    @NotNull
    public Paint paintIndicator;

    /* renamed from: q, reason: from kotlin metadata */
    public WheelAdapter<Object> adapter;

    /* renamed from: q0, reason: from kotlin metadata */
    public boolean isLoop;

    /* renamed from: r, reason: from kotlin metadata */
    @Nullable
    public String label;

    /* renamed from: s, reason: from kotlin metadata */
    public int textSize;

    /* renamed from: t, reason: from kotlin metadata */
    public int textSizeOut;

    /* renamed from: t0, reason: from kotlin metadata */
    public float firstLineY;

    /* renamed from: u, reason: from kotlin metadata */
    public int maxTextWidth;

    /* renamed from: u0, reason: from kotlin metadata */
    public float secondLineY;

    /* renamed from: v, reason: from kotlin metadata */
    public int maxTextHeight;

    /* renamed from: v0, reason: from kotlin metadata */
    public float centerY;

    /* renamed from: w, reason: from kotlin metadata */
    public int textXOffset;

    /* renamed from: w0, reason: from kotlin metadata */
    public float totalScrollY;

    /* renamed from: x, reason: from kotlin metadata */
    public float itemHeight;

    /* renamed from: x0, reason: from kotlin metadata */
    public int initPosition;

    /* renamed from: y, reason: from kotlin metadata */
    @NotNull
    public Typeface typeface;

    /* renamed from: y0, reason: from kotlin metadata */
    public int selectedItem;

    /* renamed from: z, reason: from kotlin metadata */
    public int textColorOut;

    /* renamed from: z0, reason: from kotlin metadata */
    public int preCurrentIndex;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView$ACTION;", "", "(Ljava/lang/String;I)V", "CLICK", "FLING", "DAGGLE", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class ACTION {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ACTION[] $VALUES;
        public static final ACTION CLICK = new ACTION("CLICK", 0);
        public static final ACTION FLING = new ACTION("FLING", 1);
        public static final ACTION DAGGLE = new ACTION("DAGGLE", 2);

        private static final /* synthetic */ ACTION[] $values() {
            return new ACTION[]{CLICK, FLING, DAGGLE};
        }

        static {
            ACTION[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private ACTION(String str, int i) {
        }

        @NotNull
        public static EnumEntries<ACTION> getEntries() {
            return $ENTRIES;
        }

        public static ACTION valueOf(String str) {
            return (ACTION) Enum.valueOf(ACTION.class, str);
        }

        public static ACTION[] values() {
            return (ACTION[]) $VALUES.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView$DividerType;", "", "(Ljava/lang/String;I)V", "FILL", "WRAP", "CIRCLE", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class DividerType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ DividerType[] $VALUES;
        public static final DividerType FILL = new DividerType("FILL", 0);
        public static final DividerType WRAP = new DividerType("WRAP", 1);
        public static final DividerType CIRCLE = new DividerType("CIRCLE", 2);

        private static final /* synthetic */ DividerType[] $values() {
            return new DividerType[]{FILL, WRAP, CIRCLE};
        }

        static {
            DividerType[] $values = $values();
            $VALUES = $values;
            $ENTRIES = EnumEntriesKt.enumEntries($values);
        }

        private DividerType(String str, int i) {
        }

        @NotNull
        public static EnumEntries<DividerType> getEntries() {
            return $ENTRIES;
        }

        public static DividerType valueOf(String str) {
            return (DividerType) Enum.valueOf(DividerType.class, str);
        }

        public static DividerType[] values() {
            return (DividerType[]) $VALUES.clone();
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView$IPickerViewData;", "", "getPickerViewText", "", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface IPickerViewData {
        @NotNull
        String getPickerViewText();
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ*\u0010\t\u001a\u00020\b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView$LoopViewGestureListener;", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "Landroid/view/MotionEvent;", "e1", "e2", "", "velocityX", "velocityY", "", "onFling", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "e", "Lcom/onyx/android/sdk/ui/wheelview/WheelView;", "wheelView", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/ui/wheelview/WheelView;)V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class LoopViewGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* renamed from: e, reason: from kotlin metadata */
        @NotNull
        public final WheelView wheelView;

        public LoopViewGestureListener(@NotNull WheelView wheelView) {
            Intrinsics.checkNotNullParameter(wheelView, "wheelView");
            this.wheelView = wheelView;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public boolean onFling(@Nullable MotionEvent e1, @NotNull MotionEvent e2, float velocityX, float velocityY) {
            Intrinsics.checkNotNullParameter(e2, "e2");
            this.wheelView.scrollBy(velocityY);
            return true;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/wheelview/WheelView$OnItemSelectedListener;", "", "onItemSelected", "", FirebaseAnalytics.Param.INDEX, "", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public interface OnItemSelectedListener {
        void onItemSelected(int index);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WheelView(@NotNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.checkNotNullParameter(context, "context");
        this.isCenterLabel = true;
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        Intrinsics.checkNotNullExpressionValue(newSingleThreadScheduledExecutor, "newSingleThreadScheduledExecutor(...)");
        this.mExecutor = newSingleThreadScheduledExecutor;
        this.paintOuterText = new Paint();
        this.paintCenterText = new Paint();
        this.paintIndicator = new Paint();
        Typeface MONOSPACE = Typeface.MONOSPACE;
        Intrinsics.checkNotNullExpressionValue(MONOSPACE, "MONOSPACE");
        this.typeface = MONOSPACE;
        this.lineSpacingMultiplier = 2.0f;
        this.itemsVisible = 11;
        this.mGravity = 17;
        this.scaleContentFactor = 1.0f;
        int dimensionPixelSize = getResources().getDimensionPixelSize(C8044R.dimen.wheel_view_text_size);
        this.textSize = dimensionPixelSize;
        this.textSizeOut = dimensionPixelSize;
        float f = getResources().getDisplayMetrics().density;
        if (f < 1.0f) {
            this.centerContentOffset = 2.4f;
        } else if (1.0f <= f && f < 2.0f) {
            this.centerContentOffset = 4.0f;
        } else if (2.0f <= f && f < 3.0f) {
            this.centerContentOffset = 6.0f;
        } else if (f >= 3.0f) {
            this.centerContentOffset = f * 2.5f;
        }
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C8044R.styleable.WheelView, 0, 0);
            Intrinsics.checkNotNullExpressionValue(obtainStyledAttributes, "obtainStyledAttributes(...)");
            this.mGravity = obtainStyledAttributes.getInt(C8044R.styleable.WheelView_wheelview_gravity, 17);
            this.textColorOut = obtainStyledAttributes.getColor(C8044R.styleable.WheelView_wheelview_textColorOut, -5723992);
            this.textSkewX = obtainStyledAttributes.getFloat(C8044R.styleable.WheelView_wheelview_textSkewX, 0.5f);
            this.scaleContentFactor = obtainStyledAttributes.getFloat(C8044R.styleable.WheelView_wheelview_textScaleContentFactor, 0.8f);
            this.textColorCenter = obtainStyledAttributes.getColor(C8044R.styleable.WheelView_wheelview_textColorCenter, -14013910);
            this.dividerColor = obtainStyledAttributes.getColor(C8044R.styleable.WheelView_wheelview_dividerColor, -2763307);
            this.dividerWidth = obtainStyledAttributes.getDimensionPixelSize(C8044R.styleable.WheelView_wheelview_dividerWidth, 2);
            this.textSize = obtainStyledAttributes.getDimensionPixelOffset(C8044R.styleable.WheelView_wheelview_textSize, this.textSize);
            this.textSizeOut = obtainStyledAttributes.getDimensionPixelOffset(C8044R.styleable.WheelView_wheelview_textSizeOut, this.textSizeOut);
            this.lineSpacingMultiplier = obtainStyledAttributes.getFloat(C8044R.styleable.WheelView_wheelview_lineSpacingMultiplier, this.lineSpacingMultiplier);
            obtainStyledAttributes.recycle();
        }
        m36466g();
        m36464e(context);
    }

    /* renamed from: k */
    public static final void m36460k(WheelView this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        OnItemSelectedListener onItemSelectedListener = this$0.onItemSelectedListener;
        if (onItemSelectedListener != null) {
            onItemSelectedListener.onItemSelected(this$0.getCurrentItem());
        }
    }

    /* renamed from: b */
    public final String m36461b(Object item) {
        return item == null ? "" : item instanceof IPickerViewData ? ((IPickerViewData) item).getPickerViewText() : item instanceof Integer ? m36462c(((Number) item).intValue()) : item.toString();
    }

    /* renamed from: c */
    public final String m36462c(int timeNum) {
        boolean z = false;
        if (timeNum >= 0 && timeNum < 10) {
            z = true;
        }
        return z ? f47259P0[timeNum] : String.valueOf(timeNum);
    }

    public final void cancelFuture() {
        ScheduledFuture<?> scheduledFuture = this.mFuture;
        if (scheduledFuture != null) {
            Intrinsics.checkNotNull(scheduledFuture);
            if (scheduledFuture.isCancelled()) {
                return;
            }
            ScheduledFuture<?> scheduledFuture2 = this.mFuture;
            Intrinsics.checkNotNull(scheduledFuture2);
            scheduledFuture2.cancel(true);
            this.mFuture = null;
        }
    }

    /* renamed from: d */
    public final int m36463d(int i) {
        WheelAdapter<Object> wheelAdapter = null;
        if (i < 0) {
            WheelAdapter<Object> wheelAdapter2 = this.adapter;
            if (wheelAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
            } else {
                wheelAdapter = wheelAdapter2;
            }
            return m36463d(i + wheelAdapter.getItemsCount());
        }
        WheelAdapter<Object> wheelAdapter3 = this.adapter;
        if (wheelAdapter3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter3 = null;
        }
        if (i <= wheelAdapter3.getItemsCount() - 1) {
            return i;
        }
        WheelAdapter<Object> wheelAdapter4 = this.adapter;
        if (wheelAdapter4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
        } else {
            wheelAdapter = wheelAdapter4;
        }
        return m36463d(i - wheelAdapter.getItemsCount());
    }

    /* renamed from: e */
    public final void m36464e(Context context) {
        this.context = context;
        this.handler = new MessageHandler(this);
        GestureDetector gestureDetector = new GestureDetector(context, new LoopViewGestureListener(this));
        this.gestureDetector = gestureDetector;
        gestureDetector.setIsLongpressEnabled(false);
        this.isLoop = true;
        this.totalScrollY = 0.0f;
        this.initPosition = -1;
        m36465f();
    }

    /* renamed from: f */
    public final void m36465f() {
        Paint paint = this.paintOuterText;
        paint.setColor(this.textColorOut);
        paint.setAntiAlias(true);
        paint.setTypeface(paint.getTypeface());
        paint.setTextSize(this.textSizeOut);
        Paint paint2 = this.paintCenterText;
        paint2.setColor(this.textColorCenter);
        paint2.setAntiAlias(true);
        paint2.setTextScaleX(1.1f);
        paint2.setTypeface(paint2.getTypeface());
        paint2.setTextSize(this.textSize);
        Paint paint3 = this.paintIndicator;
        paint3.setColor(this.dividerColor);
        paint3.setAntiAlias(true);
        setLayerType(1, null);
    }

    /* renamed from: g */
    public final void m36466g() {
        float f = this.lineSpacingMultiplier;
        if (f < 1.0f) {
            this.lineSpacingMultiplier = 1.0f;
        } else if (f > 4.0f) {
            this.lineSpacingMultiplier = 4.0f;
        }
    }

    @NotNull
    public final WheelAdapter<Object> getAdapter() {
        WheelAdapter<Object> wheelAdapter = this.adapter;
        if (wheelAdapter != null) {
            return wheelAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException("adapter");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
    
        if (r0 >= r4.getItemsCount()) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int getCurrentItem() {
        /*
            r8 = this;
            boolean r0 = r8.isLoop
            r1 = 0
            r2 = 0
            java.lang.String r3 = "adapter"
            if (r0 == 0) goto L4c
            int r0 = r8.selectedItem
            if (r0 < 0) goto L1a
            com.onyx.android.sdk.ui.wheelview.WheelAdapter<java.lang.Object> r4 = r8.adapter
            if (r4 != 0) goto L14
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r4 = r2
        L14:
            int r4 = r4.getItemsCount()
            if (r0 < r4) goto L4c
        L1a:
            int r0 = r8.selectedItem
            double r4 = (double) r0
            double r4 = java.lang.Math.abs(r4)
            com.onyx.android.sdk.ui.wheelview.WheelAdapter<java.lang.Object> r0 = r8.adapter
            if (r0 != 0) goto L29
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            r0 = r2
        L29:
            int r0 = r0.getItemsCount()
            double r6 = (double) r0
            double r4 = r4 - r6
            double r4 = java.lang.Math.abs(r4)
            int r0 = (int) r4
            com.onyx.android.sdk.ui.wheelview.WheelAdapter<java.lang.Object> r8 = r8.adapter
            if (r8 != 0) goto L3c
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            goto L3d
        L3c:
            r2 = r8
        L3d:
            int r8 = r2.getItemsCount()
            int r8 = r8 + (-1)
            int r8 = java.lang.Math.min(r0, r8)
            int r8 = kotlin.ranges.RangesKt.coerceAtLeast(r1, r8)
            return r8
        L4c:
            int r0 = r8.selectedItem
            com.onyx.android.sdk.ui.wheelview.WheelAdapter<java.lang.Object> r8 = r8.adapter
            if (r8 != 0) goto L56
            kotlin.jvm.internal.Intrinsics.throwUninitializedPropertyAccessException(r3)
            goto L57
        L56:
            r2 = r8
        L57:
            int r8 = r2.getItemsCount()
            int r8 = r8 + (-1)
            int r8 = kotlin.ranges.RangesKt.coerceAtMost(r0, r8)
            int r8 = kotlin.ranges.RangesKt.coerceAtLeast(r1, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.p039ui.wheelview.WheelView.getCurrentItem():int");
    }

    @NotNull
    public final String getCurrentItemText() {
        WheelAdapter<Object> wheelAdapter = this.adapter;
        if (wheelAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter = null;
        }
        return m36461b(wheelAdapter.getItem(getCurrentItem()));
    }

    @Override // android.view.View
    @Nullable
    public Handler getHandler() {
        return this.handler;
    }

    public final int getInitPosition() {
        return this.initPosition;
    }

    public final float getItemHeight() {
        return this.itemHeight;
    }

    public final int getItemsCount() {
        WheelAdapter<Object> wheelAdapter = this.adapter;
        if (wheelAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter = null;
        }
        return wheelAdapter.getItemsCount();
    }

    public final int getTextWidth(@Nullable Paint paint, @Nullable String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        int length = str.length();
        Intrinsics.checkNotNull(paint);
        paint.getTextWidths(str, new float[length]);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i += (int) Math.ceil(r1[i2]);
        }
        return i;
    }

    public final float getTotalScrollY() {
        return this.totalScrollY;
    }

    /* renamed from: h */
    public final void m36467h() {
        Rect rect = new Rect();
        WheelAdapter<Object> wheelAdapter = this.adapter;
        if (wheelAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter = null;
        }
        int itemsCount = wheelAdapter.getItemsCount();
        for (int i = 0; i < itemsCount; i++) {
            WheelAdapter<Object> wheelAdapter2 = this.adapter;
            if (wheelAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                wheelAdapter2 = null;
            }
            String m36461b = m36461b(wheelAdapter2.getItem(i));
            this.paintCenterText.getTextBounds(m36461b, 0, m36461b.length(), rect);
            int width = rect.width();
            if (width > this.maxTextWidth) {
                this.maxTextWidth = width;
            }
        }
        this.paintCenterText.getTextBounds("星期", 0, 2, rect);
        int height = rect.height() + 2;
        this.maxTextHeight = height;
        this.itemHeight = this.lineSpacingMultiplier * height;
    }

    /* renamed from: i */
    public final void m36468i(String content) {
        double width;
        double d;
        String str;
        Rect rect = new Rect();
        this.paintCenterText.getTextBounds(content, 0, content.length(), rect);
        int i = this.mGravity;
        if (i == 3) {
            this.drawCenterContentStart = 0;
            return;
        }
        if (i == 5) {
            this.drawCenterContentStart = (this.measuredWidth - rect.width()) - ((int) this.centerContentOffset);
            return;
        }
        if (i != 17) {
            return;
        }
        if (this.isOptions || (str = this.label) == null || Intrinsics.areEqual(str, "") || !this.isCenterLabel) {
            width = this.measuredWidth - rect.width();
            d = 0.5d;
        } else {
            width = this.measuredWidth - rect.width();
            d = 0.25d;
        }
        this.drawCenterContentStart = (int) (width * d);
    }

    public final void isCenterLabel(boolean isCenterLabel) {
        this.isCenterLabel = isCenterLabel;
    }

    /* renamed from: isLoop, reason: from getter */
    public final boolean getIsLoop() {
        return this.isLoop;
    }

    /* renamed from: j */
    public final void m36469j(String content) {
        double width;
        double d;
        String str;
        Rect rect = new Rect();
        this.paintOuterText.getTextBounds(content, 0, content.length(), rect);
        int i = this.mGravity;
        if (i == 3) {
            this.drawOutContentStart = 0;
            return;
        }
        if (i == 5) {
            this.drawOutContentStart = (this.measuredWidth - rect.width()) - ((int) this.centerContentOffset);
            return;
        }
        if (i != 17) {
            return;
        }
        if (this.isOptions || (str = this.label) == null || Intrinsics.areEqual(str, "") || !this.isCenterLabel) {
            width = this.measuredWidth - rect.width();
            d = 0.5d;
        } else {
            width = this.measuredWidth - rect.width();
            d = 0.25d;
        }
        this.drawOutContentStart = (int) (width * d);
    }

    /* renamed from: l */
    public final void m36470l() {
        int i;
        if (this.adapter == null) {
            return;
        }
        m36467h();
        int i2 = (int) (this.itemHeight * (this.itemsVisible - 1));
        this.measuredHeight = (int) ((i2 * 2) / 3.141592653589793d);
        this.radius = (int) (i2 / 3.141592653589793d);
        this.measuredWidth = View.MeasureSpec.getSize(this.widthMeasureSpec);
        int i3 = this.measuredHeight;
        float f = this.itemHeight;
        this.firstLineY = (i3 - f) / 2.0f;
        float f2 = (i3 + f) / 2.0f;
        this.secondLineY = f2;
        this.centerY = (f2 - ((f - this.maxTextHeight) / 2.0f)) - this.centerContentOffset;
        if (this.initPosition == -1) {
            if (this.isLoop) {
                WheelAdapter<Object> wheelAdapter = this.adapter;
                if (wheelAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    wheelAdapter = null;
                }
                i = (wheelAdapter.getItemsCount() + 1) / 2;
            } else {
                i = 0;
            }
            this.initPosition = i;
        }
        this.preCurrentIndex = this.initPosition;
    }

    /* renamed from: m */
    public final void m36471m(String contentText) {
        Rect rect = new Rect();
        this.paintCenterText.getTextBounds(contentText, 0, contentText.length(), rect);
        int i = this.textSize;
        for (int width = rect.width(); width > this.measuredWidth; width = rect.width()) {
            i--;
            this.paintCenterText.setTextSize(i);
            this.paintCenterText.getTextBounds(contentText, 0, contentText.length(), rect);
        }
        this.paintOuterText.setTextSize(i);
    }

    /* renamed from: n */
    public final void m36472n(float offsetCoefficient, float angle) {
        int i = this.textXOffset;
        this.paintOuterText.setTextSkewX((i > 0 ? 1 : i < 0 ? -1 : 0) * (angle <= 0.0f ? 1 : -1) * this.textSkewX * offsetCoefficient);
        int i2 = 255;
        if (this.isAlphaGradient) {
            double d = 90.0f;
            i2 = (int) (((d - Math.abs(angle)) / d) * 255);
        }
        this.paintOuterText.setAlpha(i2);
    }

    @Override // android.view.View
    public void onDraw(@NotNull Canvas canvas) {
        Object obj;
        String str;
        float f;
        String m36461b;
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        if (this.adapter == null) {
            return;
        }
        double max = Math.max(0.0d, this.initPosition);
        WheelAdapter<Object> wheelAdapter = this.adapter;
        String str2 = "adapter";
        if (wheelAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter = null;
        }
        int min = (int) Math.min(max, wheelAdapter.getItemsCount() - 1.0d);
        this.initPosition = min;
        int i = (int) (this.totalScrollY / this.itemHeight);
        try {
            WheelAdapter<Object> wheelAdapter2 = this.adapter;
            if (wheelAdapter2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                wheelAdapter2 = null;
            }
            this.preCurrentIndex = min + (i % wheelAdapter2.getItemsCount());
        } catch (ArithmeticException unused) {
            Log.e("WheelView", "adapter.getItemsCount() == 0");
        }
        if (this.isLoop) {
            int i2 = this.preCurrentIndex;
            if (i2 < 0) {
                WheelAdapter<Object> wheelAdapter3 = this.adapter;
                if (wheelAdapter3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    wheelAdapter3 = null;
                }
                this.preCurrentIndex = i2 + wheelAdapter3.getItemsCount();
            }
            int i3 = this.preCurrentIndex;
            WheelAdapter<Object> wheelAdapter4 = this.adapter;
            if (wheelAdapter4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                wheelAdapter4 = null;
            }
            if (i3 > wheelAdapter4.getItemsCount() - 1) {
                int i4 = this.preCurrentIndex;
                WheelAdapter<Object> wheelAdapter5 = this.adapter;
                if (wheelAdapter5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    wheelAdapter5 = null;
                }
                this.preCurrentIndex = i4 - wheelAdapter5.getItemsCount();
            }
        } else {
            if (this.preCurrentIndex < 0) {
                this.preCurrentIndex = 0;
            }
            int i5 = this.preCurrentIndex;
            WheelAdapter<Object> wheelAdapter6 = this.adapter;
            if (wheelAdapter6 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("adapter");
                wheelAdapter6 = null;
            }
            if (i5 > wheelAdapter6.getItemsCount() - 1) {
                WheelAdapter<Object> wheelAdapter7 = this.adapter;
                if (wheelAdapter7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("adapter");
                    wheelAdapter7 = null;
                }
                this.preCurrentIndex = wheelAdapter7.getItemsCount() - 1;
            }
        }
        float f2 = this.totalScrollY % this.itemHeight;
        DividerType dividerType = this.dividerType;
        if (dividerType == DividerType.WRAP) {
            float f3 = (TextUtils.isEmpty(this.label) ? (this.measuredWidth - this.maxTextWidth) / 2 : (this.measuredWidth - this.maxTextWidth) / 4) - 12;
            float f4 = f3 <= 0.0f ? 10.0f : f3;
            float f5 = this.measuredWidth - f4;
            float f6 = this.firstLineY;
            float f7 = f4;
            canvas.drawLine(f7, f6, f5, f6, this.paintIndicator);
            float f8 = this.secondLineY;
            canvas.drawLine(f7, f8, f5, f8, this.paintIndicator);
        } else if (dividerType == DividerType.CIRCLE) {
            this.paintIndicator.setStyle(Paint.Style.STROKE);
            this.paintIndicator.setStrokeWidth(this.dividerWidth);
            float f9 = (TextUtils.isEmpty(this.label) ? (this.measuredWidth - this.maxTextWidth) / 2.0f : (this.measuredWidth - this.maxTextWidth) / 4.0f) - 12;
            float f10 = f9 > 0.0f ? f9 : 10.0f;
            canvas.drawCircle(this.measuredWidth / 2.0f, this.measuredHeight / 2.0f, (float) (Math.max((this.measuredWidth - f10) - f10, this.itemHeight) / 1.8f), this.paintIndicator);
        } else {
            float f11 = this.firstLineY;
            canvas.drawLine(0.0f, f11, this.measuredWidth, f11, this.paintIndicator);
            float f12 = this.secondLineY;
            canvas.drawLine(0.0f, f12, this.measuredWidth, f12, this.paintIndicator);
        }
        if (!TextUtils.isEmpty(this.label) && this.isCenterLabel) {
            int textWidth = this.measuredWidth - getTextWidth(this.paintCenterText, this.label);
            String str3 = this.label;
            Intrinsics.checkNotNull(str3);
            canvas.drawText(str3, textWidth - this.centerContentOffset, this.centerY, this.paintCenterText);
        }
        int i6 = 0;
        while (true) {
            int i7 = this.itemsVisible;
            if (i6 >= i7) {
                return;
            }
            int i8 = this.preCurrentIndex - ((i7 / 2) - i6);
            if (this.isLoop) {
                int m36463d = m36463d(i8);
                WheelAdapter<Object> wheelAdapter8 = this.adapter;
                if (wheelAdapter8 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException(str2);
                    wheelAdapter8 = null;
                }
                obj = wheelAdapter8.getItem(m36463d);
            } else {
                obj = "";
                if (i8 >= 0) {
                    WheelAdapter<Object> wheelAdapter9 = this.adapter;
                    if (wheelAdapter9 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException(str2);
                        wheelAdapter9 = null;
                    }
                    if (i8 <= wheelAdapter9.getItemsCount() - 1) {
                        WheelAdapter<Object> wheelAdapter10 = this.adapter;
                        if (wheelAdapter10 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException(str2);
                            wheelAdapter10 = null;
                        }
                        obj = wheelAdapter10.getItem(i8);
                    }
                }
            }
            canvas.save();
            double d = ((this.itemHeight * i6) - f2) / this.radius;
            float f13 = (float) (90.0d - ((d / 3.141592653589793d) * 180.0d));
            if (f13 > 90.0f || f13 < -90.0f) {
                str = str2;
                f = f2;
                canvas.restore();
            } else {
                if (this.isCenterLabel || TextUtils.isEmpty(this.label) || TextUtils.isEmpty(m36461b(obj))) {
                    m36461b = m36461b(obj);
                } else {
                    m36461b = m36461b(obj) + this.label;
                }
                str = str2;
                float pow = (float) Math.pow(Math.abs(f13) / 90.0f, 2.2d);
                m36471m(m36461b);
                m36468i(m36461b);
                m36469j(m36461b);
                f = f2;
                float cos = (float) ((this.radius - (Math.cos(d) * this.radius)) - ((Math.sin(d) * this.maxTextHeight) / 2.0d));
                canvas.translate(0.0f, cos);
                float f14 = this.firstLineY;
                if (cos > f14 || this.maxTextHeight + cos < f14) {
                    float f15 = this.secondLineY;
                    if (cos > f15 || this.maxTextHeight + cos < f15) {
                        if (cos >= f14) {
                            int i9 = this.maxTextHeight;
                            if (i9 + cos <= f15) {
                                canvas.drawText(m36461b, this.drawCenterContentStart, i9 - this.centerContentOffset, this.paintCenterText);
                                this.selectedItem = this.preCurrentIndex - ((this.itemsVisible / 2) - i6);
                            }
                        }
                        canvas.save();
                        canvas.clipRect(0, 0, this.measuredWidth, (int) this.itemHeight);
                        canvas.scale(1.0f, ((float) Math.sin(d)) * this.scaleContentFactor);
                        m36472n(pow, f13);
                        canvas.drawText(m36461b, this.drawOutContentStart + (this.textXOffset * pow), this.maxTextHeight, this.paintOuterText);
                        canvas.restore();
                        canvas.restore();
                        this.paintCenterText.setTextSize(this.textSize);
                    } else {
                        canvas.save();
                        canvas.clipRect(0.0f, 0.0f, this.measuredWidth, this.secondLineY - cos);
                        canvas.scale(1.0f, ((float) Math.sin(d)) * 1.0f);
                        canvas.drawText(m36461b, this.drawCenterContentStart, this.maxTextHeight - this.centerContentOffset, this.paintCenterText);
                        canvas.restore();
                        canvas.save();
                        canvas.clipRect(0.0f, this.secondLineY - cos, this.measuredWidth, (int) this.itemHeight);
                        canvas.scale(1.0f, ((float) Math.sin(d)) * this.scaleContentFactor);
                        m36472n(pow, f13);
                        canvas.drawText(m36461b, this.drawOutContentStart, this.maxTextHeight, this.paintOuterText);
                        canvas.restore();
                    }
                } else {
                    canvas.save();
                    canvas.clipRect(0.0f, 0.0f, this.measuredWidth, this.firstLineY - cos);
                    canvas.scale(1.0f, ((float) Math.sin(d)) * this.scaleContentFactor);
                    m36472n(pow, f13);
                    canvas.drawText(m36461b, this.drawOutContentStart, this.maxTextHeight, this.paintOuterText);
                    canvas.restore();
                    canvas.save();
                    canvas.clipRect(0.0f, this.firstLineY - cos, this.measuredWidth, (int) this.itemHeight);
                    canvas.scale(1.0f, ((float) Math.sin(d)) * 1.0f);
                    canvas.drawText(m36461b, this.drawCenterContentStart, this.maxTextHeight - this.centerContentOffset, this.paintCenterText);
                    canvas.restore();
                }
                canvas.restore();
                this.paintCenterText.setTextSize(this.textSize);
            }
            i6++;
            str2 = str;
            f2 = f;
        }
    }

    public final void onItemSelected() {
        if (this.onItemSelectedListener != null) {
            postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.e7o
                @Override // java.lang.Runnable
                public final void run() {
                    WheelView.m36460k(WheelView.this);
                }
            }, 200L);
        }
    }

    @Override // android.view.View
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        this.widthMeasureSpec = widthMeasureSpec;
        m36470l();
        setMeasuredDimension(this.measuredWidth, this.measuredHeight);
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(@NotNull MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        GestureDetector gestureDetector = this.gestureDetector;
        Intrinsics.checkNotNull(gestureDetector);
        boolean onTouchEvent = gestureDetector.onTouchEvent(event);
        float f = (-this.initPosition) * this.itemHeight;
        WheelAdapter<Object> wheelAdapter = this.adapter;
        if (wheelAdapter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            wheelAdapter = null;
        }
        float itemsCount = ((wheelAdapter.getItemsCount() - 1) - this.initPosition) * this.itemHeight;
        int action = event.getAction();
        boolean z = false;
        if (action == 0) {
            this.startTime = System.currentTimeMillis();
            cancelFuture();
            this.previousY = event.getRawY();
        } else if (action != 1) {
            if (action == 2) {
                float rawY = this.previousY - event.getRawY();
                this.previousY = event.getRawY();
                float f2 = this.totalScrollY + rawY;
                this.totalScrollY = f2;
                if (!this.isLoop) {
                    float f3 = this.itemHeight;
                    if ((f2 - (f3 * 0.25f) < f && rawY < 0.0f) || ((f3 * 0.25f) + f2 > itemsCount && rawY > 0.0f)) {
                        this.totalScrollY = f2 - rawY;
                        z = true;
                    }
                }
            } else if (!onTouchEvent) {
                float y = event.getY();
                int i = this.radius;
                double acos = Math.acos((i - y) / i) * this.radius;
                float f4 = this.itemHeight;
                this.mOffset = (int) (((((int) ((acos + (f4 / 2)) / f4)) - (this.itemsVisible / 2)) * f4) - (((this.totalScrollY % f4) + f4) % f4));
                if (System.currentTimeMillis() - this.startTime > 120) {
                    smoothScroll(ACTION.DAGGLE);
                } else {
                    smoothScroll(ACTION.CLICK);
                }
            }
        } else if (!onTouchEvent) {
            float y2 = event.getY();
            int i2 = this.radius;
            double acos2 = Math.acos((i2 - y2) / i2) * this.radius;
            float f5 = this.itemHeight;
            this.mOffset = (int) (((((int) ((acos2 + (f5 / 2)) / f5)) - (this.itemsVisible / 2)) * f5) - (((this.totalScrollY % f5) + f5) % f5));
            if (System.currentTimeMillis() - this.startTime > 120) {
                smoothScroll(ACTION.DAGGLE);
            } else {
                smoothScroll(ACTION.CLICK);
            }
        }
        if (!z && event.getAction() != 0) {
            invalidate();
        }
        return true;
    }

    public final void scrollBy(float velocityY) {
        cancelFuture();
        this.mFuture = this.mExecutor.scheduleWithFixedDelay(new InertiaTimerTask(this, velocityY), 0L, 5L, TimeUnit.MILLISECONDS);
    }

    public final void setAdapter(@NotNull WheelAdapter<Object> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        this.adapter = adapter;
        m36470l();
        invalidate();
    }

    public final void setAlphaGradient(boolean alphaGradient) {
        this.isAlphaGradient = alphaGradient;
    }

    public final void setCurrentItem(int currentItem) {
        this.selectedItem = currentItem;
        this.initPosition = currentItem;
        this.totalScrollY = 0.0f;
        invalidate();
    }

    public final void setCyclic(boolean cyclic) {
        this.isLoop = cyclic;
    }

    public final void setDividerColor(int dividerColor) {
        this.dividerColor = dividerColor;
        this.paintIndicator.setColor(dividerColor);
    }

    public final void setDividerType(@Nullable DividerType dividerType) {
        this.dividerType = dividerType;
    }

    public final void setDividerWidth(int dividerWidth) {
        this.dividerWidth = dividerWidth;
        this.paintIndicator.setStrokeWidth(dividerWidth);
    }

    public final void setGravity(int gravity) {
        this.mGravity = gravity;
    }

    public final void setIsOptions(boolean options) {
        this.isOptions = options;
    }

    public final void setItemsVisibleCount(int visibleCount) {
        if (visibleCount % 2 == 0) {
            visibleCount++;
        }
        this.itemsVisible = visibleCount + 2;
    }

    public final void setLabel(@Nullable String label) {
        this.label = label;
    }

    public final void setLineSpacingMultiplier(float lineSpacingMultiplier) {
        if (lineSpacingMultiplier == 0.0f) {
            return;
        }
        this.lineSpacingMultiplier = lineSpacingMultiplier;
        m36466g();
    }

    public final void setOnItemSelectedListener(@Nullable OnItemSelectedListener onItemSelectedListener) {
        this.onItemSelectedListener = onItemSelectedListener;
    }

    public final void setTextColorCenter(int textColorCenter) {
        this.textColorCenter = textColorCenter;
        this.paintCenterText.setColor(textColorCenter);
    }

    public final void setTextColorOut(int textColorOut) {
        this.textColorOut = textColorOut;
        this.paintOuterText.setColor(textColorOut);
    }

    public final void setTextSize(float size) {
        if (size > 0.0f) {
            Context context = this.context;
            Intrinsics.checkNotNull(context);
            setTextSizePx(context.getResources().getDisplayMetrics().density * size);
        }
    }

    public final void setTextSizeOut(float size) {
        if (size > 0.0f) {
            Context context = this.context;
            Intrinsics.checkNotNull(context);
            setTextSizeOutPx(context.getResources().getDisplayMetrics().density * size);
        }
    }

    public final void setTextSizeOutPx(float size) {
        if (size > 0.0f) {
            this.textSize = (int) size;
            this.paintOuterText.setTextSize(size);
        }
    }

    public final void setTextSizePx(float size) {
        if (size > 0.0f) {
            this.textSize = (int) size;
            this.paintCenterText.setTextSize(size);
        }
    }

    public final void setTextSkewX(float skew) {
        this.textSkewX = skew;
    }

    public final void setTextXOffset(int textXOffset) {
        this.textXOffset = textXOffset;
        if (textXOffset != 0) {
            this.paintCenterText.setTextScaleX(1.0f);
        }
    }

    public final void setTotalScrollY(float totalScrollY) {
        this.totalScrollY = totalScrollY;
    }

    public final void setTypeface(@NotNull Typeface font) {
        Intrinsics.checkNotNullParameter(font, "font");
        this.typeface = font;
        this.paintOuterText.setTypeface(font);
        this.paintCenterText.setTypeface(this.typeface);
    }

    public final void smoothScroll(@NotNull ACTION action) {
        Intrinsics.checkNotNullParameter(action, "action");
        cancelFuture();
        if (action == ACTION.FLING || action == ACTION.DAGGLE) {
            float f = this.totalScrollY;
            float f2 = this.itemHeight;
            int i = (int) (((f % f2) + f2) % f2);
            this.mOffset = i;
            this.mOffset = ((float) i) > f2 / 2.0f ? (int) (f2 - i) : -i;
        }
        this.mFuture = this.mExecutor.scheduleWithFixedDelay(new SmoothScrollTimerTask(this, this.mOffset), 0L, 10L, TimeUnit.MILLISECONDS);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WheelView(@NotNull Context context) {
        this(context, null);
        Intrinsics.checkNotNullParameter(context, "context");
    }
}
