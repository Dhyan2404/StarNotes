package com.onyx.android.sdk.reader.request;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.reader.Reader;
import com.onyx.android.sdk.reader.ReaderBundle;
import com.onyx.android.sdk.reader.api.DrawArgs;
import com.onyx.android.sdk.reader.api.ReaderNavigator;
import com.onyx.android.sdk.reader.data.ReaderThumbnailRenderArgs;
import com.onyx.android.sdk.reader.data.RenderBackgroundArgs;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0010\u0010\f\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002R\"\u0010\u0013\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012¨\u0006\u0017"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest;", "Lcom/onyx/android/sdk/reader/request/RxBaseReaderRequest;", "Lcom/onyx/android/sdk/reader/ReaderBundle;", "bundle", "", "execute", "", C6997f.f39671c, C6998g.f39679a, "Lcom/onyx/android/sdk/reader/Reader;", "reader", C6999h.f39688c, "i", "Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;", "Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;", "getArgs", "()Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;", "setArgs", "(Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V", "args", "readerBundle", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/reader/ReaderBundle;Lcom/onyx/android/sdk/reader/data/ReaderThumbnailRenderArgs;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nRenderReaderPageThumbnailRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n+ 3 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 4 Bitmap.kt\nandroidx/core/graphics/BitmapKt\n*L\n1#1,103:1\n32#2,5:104\n41#2,5:109\n32#2,5:114\n98#3,4:119\n43#4,3:123\n*S KotlinDebug\n*F\n+ 1 RenderReaderPageThumbnailRequest.kt\ncom/onyx/android/sdk/reader/request/RenderReaderPageThumbnailRequest\n*L\n50#1:104,5\n53#1:109,5\n55#1:114,5\n81#1:119,4\n82#1:123,3\n*E\n"})
/* loaded from: classes8.dex */
public final class RenderReaderPageThumbnailRequest extends RxBaseReaderRequest {

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public ReaderThumbnailRenderArgs args;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RenderReaderPageThumbnailRequest(@NotNull ReaderBundle readerBundle, @NotNull ReaderThumbnailRenderArgs args) {
        super(readerBundle);
        Intrinsics.checkNotNullParameter(readerBundle, "readerBundle");
        Intrinsics.checkNotNullParameter(args, "args");
        this.args = args;
    }

    @Override // com.onyx.android.sdk.reader.request.RxBaseReaderRequest
    public void execute(@NotNull ReaderBundle bundle) {
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        m34840f();
    }

    /* renamed from: f */
    public final boolean m34840f() {
        Reader ensureReaderByPath$default = ReaderBundle.ensureReaderByPath$default(getReaderBundle(), this.args.getPath(), null, 2, null);
        if (ensureReaderByPath$default == null) {
            return false;
        }
        m34841g();
        if (m34842h(ensureReaderByPath$default)) {
            return true;
        }
        m34843i(ensureReaderByPath$default);
        return true;
    }

    /* renamed from: g */
    public final void m34841g() {
        float coerceAtMost;
        RenderBackgroundArgs renderBackgroundArgs = this.args.getRenderBackgroundArgs();
        if (renderBackgroundArgs == null) {
            return;
        }
        if (!(renderBackgroundArgs.getImageUri() != null)) {
            if (renderBackgroundArgs.getColor() != 0) {
                new Canvas(this.args.getBitmap()).drawColor(renderBackgroundArgs.getColor());
                return;
            }
            return;
        }
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        Uri imageUri = renderBackgroundArgs.getImageUri();
        Intrinsics.checkNotNull(imageUri);
        Bitmap decodeBitmap = bitmapUtils.decodeBitmap(imageUri);
        if ((decodeBitmap == null) || decodeBitmap.isRecycled()) {
            Debug.INSTANCE.m32044e(RenderReaderPageThumbnailRequest.class, "decode background failed: " + renderBackgroundArgs.getImageUri(), new Object[0]);
            return;
        }
        Canvas canvas = new Canvas(this.args.getBitmap());
        coerceAtMost = RangesKt___RangesKt.coerceAtMost(this.args.getBitmap().getWidth() / decodeBitmap.getWidth(), this.args.getBitmap().getHeight() / decodeBitmap.getHeight());
        float width = decodeBitmap.getWidth() * coerceAtMost;
        float height = decodeBitmap.getHeight() * coerceAtMost;
        float f = 2;
        int width2 = (int) ((this.args.getBitmap().getWidth() - width) / f);
        int height2 = (int) ((this.args.getBitmap().getHeight() - height) / f);
        canvas.drawBitmap(decodeBitmap, new Rect(0, 0, decodeBitmap.getWidth(), decodeBitmap.getHeight()), new Rect(width2, height2, ((int) width) + width2, ((int) height) + height2), new Paint());
    }

    @NotNull
    public final ReaderThumbnailRenderArgs getArgs() {
        return this.args;
    }

    /* renamed from: h */
    public final boolean m34842h(Reader reader) {
        RectF displayRectF = this.args.getDisplayRectF();
        String diskCacheKey = reader.getContentDiskCache().getDiskCacheKey(this.args.getPosition(), this.args.getRotation());
        Bitmap queryCacheBitmap = reader.getContentDiskCache().queryCacheBitmap(displayRectF, diskCacheKey);
        if (!BitmapKt.isValid(queryCacheBitmap)) {
            return false;
        }
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            debug.m32035d(RenderReaderPageThumbnailRequest.class, "hitTest reader content disk cache:" + diskCacheKey + ',' + BitmapKt.boundingRect(queryCacheBitmap), new Object[0]);
        }
        new Canvas(this.args.getBitmap()).drawBitmap(queryCacheBitmap, displayRectF.left, displayRectF.top, (Paint) null);
        return true;
    }

    /* renamed from: i */
    public final void m34843i(Reader reader) {
        ReaderKt.safeRender(reader, new DrawArgs(ReaderNavigator.DefaultImpls.positionByPositionString$default(reader.getNavigator(), this.args.getPosition(), false, 2, null), this.args.getScale(), (int) this.args.getRotation(), this.args.getDisplayRectF(), this.args.getPageRect(), this.args.getPageRect(), this.args.getBitmap(), null, null, null, false, 1920, null));
    }

    public final void setArgs(@NotNull ReaderThumbnailRenderArgs readerThumbnailRenderArgs) {
        Intrinsics.checkNotNullParameter(readerThumbnailRenderArgs, "<set-?>");
        this.args = readerThumbnailRenderArgs;
    }
}
