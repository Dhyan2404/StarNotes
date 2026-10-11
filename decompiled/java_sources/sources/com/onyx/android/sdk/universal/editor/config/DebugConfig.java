package com.onyx.android.sdk.universal.editor.config;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.onyx.android.sdk.base.p018rx.RxScroller;
import com.onyx.android.sdk.base.scheduler.RequestManager;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.device.C7384R;
import com.onyx.android.sdk.geometry.data.SliceLruCache;
import com.onyx.android.sdk.note.request.RenderNotePageRequest;
import com.onyx.android.sdk.rxgesture.RxGestureLog;
import com.onyx.android.sdk.rxgesture.palm.TouchSizeHistogram;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b!\u0010\"J\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\rR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\rR\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\rR\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\rR\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\rR\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\rR\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\rR\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\rR\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\rR\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\rR\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\rR\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\rR\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\rR\u001b\u0010 \u001a\u00020\u001c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\f\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/config/DebugConfig;", "", "", "isDebuggable", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "", "drawRenderNodeDebugRect", "Landroid/graphics/Bitmap;", "bitmap", "Landroid/graphics/Matrix;", "matrix", "a", Constants.HASIDCALL_INDEX_SIG, "DEBUG_RENDER_NODE", "DEBUG_RX_GESTURE", "DEBUG_PALM_TOUCH_SIZE_HISTOGRAM", "DEBUG_RENDER_TASK", "DEBUG_REQUEST_MANAGER", "DEBUG_VIRTUAL_DOC_VIEW_INFO", "DEBUG_SCROLL_LOG", "DEBUG_RX_SCROLL_LOG", "DEBUG_SCALE_LOG", "DEBUG_SLICE_CACHE", "DEBUG_RENDER_NOTE_BITMAP", "DEBUG_RENDER_NOTE_LOG", "DEBUG_RENDER_NOTE_DIRTY_RECT", "DEBUG_RENDER_NODE_RECT", "Landroid/graphics/Paint;", "b", "Lkotlin/Lazy;", "()Landroid/graphics/Paint;", "renderNodePaint", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class DebugConfig {
    public static final boolean DEBUG_PALM_TOUCH_SIZE_HISTOGRAM = false;
    public static final boolean DEBUG_RENDER_NODE = false;
    public static final boolean DEBUG_RENDER_NODE_RECT = false;
    public static final boolean DEBUG_RENDER_NOTE_BITMAP = false;
    public static final boolean DEBUG_RENDER_NOTE_DIRTY_RECT = false;
    public static final boolean DEBUG_RENDER_NOTE_LOG = false;
    public static final boolean DEBUG_RENDER_TASK = false;
    public static final boolean DEBUG_REQUEST_MANAGER = false;
    public static final boolean DEBUG_RX_GESTURE = false;
    public static final boolean DEBUG_RX_SCROLL_LOG = false;
    public static final boolean DEBUG_SCALE_LOG = false;
    public static final boolean DEBUG_SCROLL_LOG = false;
    public static final boolean DEBUG_SLICE_CACHE = false;
    public static final boolean DEBUG_VIRTUAL_DOC_VIEW_INFO = false;

    @NotNull
    public static final DebugConfig INSTANCE = new DebugConfig();

    /* renamed from: a, reason: from kotlin metadata */
    public static final boolean isDebuggable = false;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final Lazy renderNodePaint;

    static {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Paint>() { // from class: com.onyx.android.sdk.universal.editor.config.DebugConfig$renderNodePaint$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Paint invoke() {
                Paint paint = new Paint();
                paint.setStyle(Paint.Style.STROKE);
                paint.setColor(-65536);
                paint.setStrokeWidth(ResManager.INSTANCE.getDimension(C7384R.dimen.dp_3));
                return paint;
            }
        });
        renderNodePaint = lazy;
        RxGestureLog.INSTANCE.setDebugLog(false);
        TouchSizeHistogram.INSTANCE.setDEBUG_LOG(false);
        SliceLruCache.INSTANCE.setDEBUG_LOG(false);
        RenderNotePageRequest.Companion companion = RenderNotePageRequest.INSTANCE;
        companion.setDEBUG_BITMAP(false);
        companion.setDEBUG_LOG(false);
        companion.setDEBUG_DIRTY_RECT(false);
        RequestManager.INSTANCE.setDEBUG_REQUEST(false);
        RxScroller.INSTANCE.setDEBUG_LOG(false);
    }

    /* renamed from: a */
    public final Paint m40607a() {
        return (Paint) renderNodePaint.getValue();
    }

    public final void drawRenderNodeDebugRect(@NotNull Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
    }

    public final boolean isDebuggable() {
        return false;
    }

    public final void drawRenderNodeDebugRect(@NotNull Canvas canvas, @NotNull Bitmap bitmap, @NotNull Matrix matrix) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Intrinsics.checkNotNullParameter(bitmap, "bitmap");
        Intrinsics.checkNotNullParameter(matrix, "matrix");
    }
}
