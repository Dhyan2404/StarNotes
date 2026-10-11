package com.onyx.android.sdk.note.common.data.background;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.core.app.NotificationCompat;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.utils.SvgUtil;
import com.onyx.android.sdk.note.common.data.render.RenderMeasure;
import com.onyx.android.sdk.note.common.utils.BitmapLruCache;
import com.onyx.android.sdk.replicator.note.data.background.BKGroundConfig;
import com.onyx.android.sdk.replicator.note.data.background.BkGroundRes;
import com.onyx.android.sdk.replicator.note.data.background.NoteBackgroundType;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import org.apache.commons.lang3.math.NumberUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\bR\u0010SJ\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0002J\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u0004H\u0002J$\u0010 \u001a\u0004\u0018\u00010\u00042\b\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001f\u001a\u00020\rH\u0002J\b\u0010!\u001a\u00020\rH\u0002J\b\u0010\"\u001a\u00020\rH\u0002J\b\u0010$\u001a\u00020#H\u0002J\u001a\u0010&\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u00162\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002J\u0012\u0010'\u001a\u0004\u0018\u00010\u00042\u0006\u0010%\u001a\u00020\u0016H\u0002J\u0010\u0010)\u001a\u00020\u00062\b\u0010(\u001a\u0004\u0018\u00010\u0016J\u0010\u0010*\u001a\u0004\u0018\u00010\u00042\u0006\u0010\f\u001a\u00020\u000bJ*\u00100\u001a\u00020/2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010.\u001a\u0004\u0018\u00010-J\u0010\u00103\u001a\u00020\u00062\b\u00102\u001a\u0004\u0018\u000101J\u0016\u00106\u001a\u00020\u00062\u0006\u00104\u001a\u00020\r2\u0006\u00105\u001a\u00020\rJ\u0010\u00109\u001a\u00020\u00062\b\u00108\u001a\u0004\u0018\u000107J\u0016\u0010<\u001a\u00020\u00062\u0006\u0010:\u001a\u00020\r2\u0006\u0010;\u001a\u00020\rJ\u001c\u0010=\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u000e\u0010?\u001a\u00020\u00062\u0006\u0010>\u001a\u00020/J\u0006\u0010@\u001a\u00020/J\u0006\u0010A\u001a\u00020\u0006J\b\u0010B\u001a\u0004\u0018\u00010\u0010J\u0010\u0010C\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010J\u0006\u0010D\u001a\u00020\u0006R\u0016\u0010G\u001a\u00020E8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010FR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010HR\u0014\u0010J\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010IR\u0014\u0010K\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010IR\u0016\u0010M\u001a\u0002078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010LR\u0016\u0010O\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010NR\u0016\u0010>\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010PR\u0018\u0010(\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010Q¨\u0006T"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/background/BKGroundManager;", "", "Landroid/graphics/Canvas;", IStyleSheet.CLASS_CANVAS, "Landroid/graphics/Bitmap;", "bitmap", "", "c", "d", "e", C6997f.f39671c, "Landroid/content/Context;", "context", "", "type", "l", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", NotificationCompat.WearableExtender.f5054t, C4921e.f26537n, "r", GoogleApiAvailabilityLight.f29016b, C4921e.f26528e, "", "imagePath", "scaleType", "b", "Lcom/onyx/android/sdk/base/data/Size;", "m", "origin", "p", "width", "height", "q", "i", C6998g.f39679a, "", C6999h.f39688c, "key", "a", "j", "documentId", "setDocumentId", "getCurrentBackgroundBitmap", "Landroid/graphics/Rect;", "dst", "Landroid/graphics/Matrix;", "matrix", "", "drawBackGround", "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", AbstractLogger.CONFIG, "setBkGroundConfig", "viewWidth", "viewHeight", "setViewSize", "Landroid/graphics/RectF;", "rect", "setDeviceSize", "pageWidth", "pageHeight", "setPageSize", "getBackgroundBitmap", "exportModel", "setExportModel", "isExportModel", "clearBgBitmapCache", "getBackground", "setBackground", Constants.CLEAR_ATTRIBUTES, "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;", "Lcom/onyx/android/sdk/note/common/utils/BitmapLruCache;", "bgBitmapCache", "Lcom/onyx/android/sdk/replicator/note/data/background/BkGroundRes;", "Lcom/onyx/android/sdk/base/data/Size;", "pageSize", "viewSize", "Landroid/graphics/RectF;", "deviceRect", "Lcom/onyx/android/sdk/replicator/note/data/background/BKGroundConfig;", "bkGroundConfig", Constants.HASIDCALL_INDEX_SIG, Constants.STRING_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class BKGroundManager {

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public BkGroundRes background;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Size viewSize;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public RectF deviceRect;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public BKGroundConfig bkGroundConfig;

    /* renamed from: g, reason: from kotlin metadata */
    public boolean exportModel;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public String documentId;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public BitmapLruCache bgBitmapCache = new BitmapLruCache(20971520);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Size pageSize = new Size(0, 0, 3, null);

    public BKGroundManager() {
        RenderMeasure.Companion companion = RenderMeasure.INSTANCE;
        this.viewSize = new Size(companion.getDefaultPageWidth(), companion.getDefaultPageHeight());
        this.deviceRect = ResManager.INSTANCE.getScreenRectF();
        this.bkGroundConfig = new BKGroundConfig(false, false, false, 0, 15, null);
    }

    /* renamed from: a */
    public final void m33616a(String key, Bitmap bitmap) {
        if (bitmap != null) {
            this.bgBitmapCache.put(key, bitmap);
        }
    }

    /* renamed from: b */
    public final Bitmap m33617b(String imagePath, int scaleType) {
        SvgUtil svgUtil = SvgUtil.INSTANCE;
        return svgUtil.isSvgImage(imagePath) ? svgUtil.decodeSvgAsBitmap(imagePath, m33624i(), m33622g()) : scaleType != 0 ? scaleType != 2 ? m33631p(BitmapUtils.INSTANCE.scaleToWidthRatioBitmap(imagePath, m33624i())) : m33631p(BitmapUtils.INSTANCE.scaleToWidthRatioBitmap(imagePath, m33624i())) : BitmapUtils.INSTANCE.decodeBitmap(imagePath, m33624i(), m33622g());
    }

    /* renamed from: c */
    public final void m33618c(Canvas canvas, Bitmap bitmap) {
        int scaleType = this.bkGroundConfig.getScaleType();
        if (scaleType == 0) {
            m33620e(canvas, bitmap);
            return;
        }
        if (scaleType == 2) {
            m33621f(canvas, bitmap);
        } else if (scaleType != 3) {
            m33619d(canvas, bitmap);
        } else {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        }
    }

    public final void clear() {
        this.background = null;
        clearBgBitmapCache();
    }

    public final void clearBgBitmapCache() {
        this.bgBitmapCache.evictAll();
    }

    /* renamed from: d */
    public final void m33619d(Canvas canvas, Bitmap bitmap) {
        Size m33628m = m33628m();
        Rect rect = new Rect(0, 0, m33628m.getWidth(), m33628m.getHeight());
        Rect rect2 = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
        canvas.drawBitmap(bitmap, rect2, BitmapUtils.INSTANCE.getScaleFitCenterRect(rect2, rect), (Paint) null);
    }

    public final boolean drawBackGround(@NotNull Context context, @NotNull Canvas canvas, @Nullable Rect dst, @Nullable Matrix matrix) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        Bitmap currentBackgroundBitmap = getCurrentBackgroundBitmap(context);
        if (currentBackgroundBitmap == null) {
            return false;
        }
        if (matrix != null) {
            canvas.save();
            canvas.setMatrix(matrix);
        }
        m33618c(canvas, currentBackgroundBitmap);
        if (matrix == null) {
            return true;
        }
        canvas.restore();
        return true;
    }

    /* renamed from: e */
    public final void m33620e(Canvas canvas, Bitmap bitmap) {
        Size m33628m = m33628m();
        canvas.drawBitmap(bitmap, (Rect) null, new Rect(0, 0, m33628m.getWidth(), m33628m.getHeight()), (Paint) null);
    }

    /* renamed from: f */
    public final void m33621f(Canvas canvas, Bitmap bitmap) {
        int coerceAtLeast;
        int coerceAtLeast2;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(1, (int) Math.ceil(this.pageSize.getWidth() / m33624i()));
        coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(1, (int) Math.ceil(this.pageSize.getHeight() / m33622g()));
        for (int i = 0; i < coerceAtLeast; i++) {
            for (int i2 = 0; i2 < coerceAtLeast2; i2++) {
                canvas.drawBitmap(bitmap, m33624i() * i, m33622g() * i2, (Paint) null);
            }
        }
    }

    /* renamed from: g */
    public final int m33622g() {
        BkGroundRes bkGroundRes = this.background;
        Intrinsics.checkNotNull(bkGroundRes);
        int height = (int) bkGroundRes.getHeight();
        return getExportModel() ? height : (int) (m33623h() * height);
    }

    @Nullable
    public final BkGroundRes getBackground() {
        return this.background;
    }

    @Nullable
    public final Bitmap getBackgroundBitmap(@Nullable Context context, @Nullable BkGroundRes background) {
        if (background == null) {
            return null;
        }
        return !NoteBackgroundType.INSTANCE.isFileType(background.getType()) ? m33627l(context, background.getType()) : m33626k(context, background);
    }

    @Nullable
    public final Bitmap getCurrentBackgroundBitmap(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return getBackgroundBitmap(context, this.background);
    }

    /* renamed from: h */
    public final float m33623h() {
        Float f = NumberUtils.FLOAT_ONE;
        float floatValue = f.floatValue() * this.viewSize.getWidth();
        RenderMeasure.Companion companion = RenderMeasure.INSTANCE;
        return Math.max(floatValue / companion.getDefaultPageWidth(), (f.floatValue() * this.viewSize.getHeight()) / companion.getDefaultPageHeight());
    }

    /* renamed from: i */
    public final int m33624i() {
        BkGroundRes bkGroundRes = this.background;
        Intrinsics.checkNotNull(bkGroundRes);
        int width = (int) bkGroundRes.getWidth();
        return getExportModel() ? width : (int) (m33623h() * width);
    }

    /* renamed from: isExportModel, reason: from getter */
    public final boolean getExportModel() {
        return this.exportModel;
    }

    /* renamed from: j */
    public final Bitmap m33625j(String key) {
        return this.bgBitmapCache.get(key);
    }

    /* renamed from: k */
    public final Bitmap m33626k(Context context, BkGroundRes background) {
        return null;
    }

    /* renamed from: l */
    public final Bitmap m33627l(Context context, int type) {
        return null;
    }

    /* renamed from: m */
    public final Size m33628m() {
        Size size = new Size(0, 0);
        if (getExportModel()) {
            return size.setWidth(this.pageSize.getWidth()).setHeight(this.pageSize.getHeight());
        }
        if (this.pageSize.isEmpty()) {
            return size;
        }
        return size.setWidth((int) (m33623h() * this.pageSize.getWidth())).setHeight((int) (m33623h() * this.pageSize.getHeight()));
    }

    /* renamed from: n */
    public final Bitmap m33629n(BkGroundRes background) {
        return null;
    }

    /* renamed from: o */
    public final Bitmap m33630o(BkGroundRes background) {
        return null;
    }

    /* renamed from: p */
    public final Bitmap m33631p(Bitmap origin) {
        return m33632q(origin, m33624i(), m33622g());
    }

    /* renamed from: q */
    public final Bitmap m33632q(Bitmap origin, int width, int height) {
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        if (!bitmapUtils.isValid(origin)) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        if (!bitmapUtils.isValid(createBitmap)) {
            return null;
        }
        if (origin != null) {
            BitmapKt.scaleToFitCenter(origin, createBitmap);
        }
        return createBitmap;
    }

    /* renamed from: r */
    public final Bitmap m33633r(BkGroundRes background) {
        return null;
    }

    public final void setBackground(@Nullable BkGroundRes background) {
        this.background = background;
    }

    public final void setBkGroundConfig(@Nullable BKGroundConfig config) {
        if (config == null) {
            return;
        }
        this.bkGroundConfig = config;
    }

    public final void setDeviceSize(@Nullable RectF rect) {
        this.deviceRect = new RectF(rect);
    }

    public final void setDocumentId(@Nullable String documentId) {
        this.documentId = documentId;
    }

    public final void setExportModel(boolean exportModel) {
        this.exportModel = exportModel;
    }

    public final void setPageSize(int pageWidth, int pageHeight) {
        if (!this.pageSize.equals(pageWidth, pageHeight)) {
            clearBgBitmapCache();
        }
        this.pageSize.setWidth(pageWidth).setHeight(pageHeight);
    }

    public final void setViewSize(int viewWidth, int viewHeight) {
        if (!this.viewSize.equals(viewWidth, viewHeight)) {
            clearBgBitmapCache();
        }
        this.viewSize.setWidth(viewWidth).setHeight(viewHeight);
    }
}
