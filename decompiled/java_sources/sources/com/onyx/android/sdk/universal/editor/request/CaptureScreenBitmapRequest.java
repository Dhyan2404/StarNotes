package com.onyx.android.sdk.universal.editor.request;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.hardware.display.VirtualDisplay;
import android.media.Image;
import android.media.ImageReader;
import android.media.projection.MediaProjection;
import android.media.projection.MediaProjectionManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Size;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.load.engine.GlideException;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.common.error.BaseError;
import com.onyx.android.sdk.base.common.error.OnyxException;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.BitmapKt;
import com.onyx.android.sdk.base.extension.BuildKt;
import com.onyx.android.sdk.base.extension.ViewLocator;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.data.C7373R;
import com.onyx.android.sdk.data.account.bean.Device;
import com.onyx.android.sdk.universal.C8045R;
import com.onyx.android.sdk.universal.editor.request.CaptureScreenBitmapRequest;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.v6l;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000e\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u001f\u0010 J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0002R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\"\u0010\u001e\u001a\u00020\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u0015\u001a\u0004\b\u001c\u0010\u0017\"\u0004\b\u001d\u0010\u0019¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/request/CaptureScreenBitmapRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Landroid/graphics/Bitmap;", "execute", "Landroid/media/ImageReader;", "reader", C6999h.f39688c, "Landroid/media/Image;", C6998g.f39679a, "Landroid/content/Intent;", "a", "Landroid/content/Intent;", v6l.f87196g, "", "b", "J", "FLUSH_DELAY_TIME", "c", "ACQUIRE_IMAGE_DELAY_TIME", "", "d", Constants.HASIDCALL_INDEX_SIG, "getOverScreen", Constants.BOOLEAN_VALUE_SIG, "setOverScreen", "(Z)V", "overScreen", "e", "getScaleToContentSize", "setScaleToContentSize", "scaleToContentSize", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Intent;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class CaptureScreenBitmapRequest extends RxBaseRequest<Bitmap> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Intent intent;

    /* renamed from: b, reason: from kotlin metadata */
    public final long FLUSH_DELAY_TIME;

    /* renamed from: c, reason: from kotlin metadata */
    public final long ACQUIRE_IMAGE_DELAY_TIME;

    /* renamed from: d, reason: from kotlin metadata */
    public boolean overScreen;

    /* renamed from: e, reason: from kotlin metadata */
    public boolean scaleToContentSize;

    public CaptureScreenBitmapRequest(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        this.intent = intent;
        ResManager resManager = ResManager.INSTANCE;
        this.FLUSH_DELAY_TIME = resManager.getLong(C7373R.integer.delay_time_flush);
        this.ACQUIRE_IMAGE_DELAY_TIME = resManager.getLong(C7373R.integer.acquire_image_delay_time);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: d */
    public static final boolean m41408d(Ref.ObjectRef display, ImageReader reader, MediaProjection mediaProjection, Looper looper, Message it2) {
        Intrinsics.checkNotNullParameter(display, "$display");
        Intrinsics.checkNotNullParameter(reader, "$reader");
        Intrinsics.checkNotNullParameter(looper, "$looper");
        Intrinsics.checkNotNullParameter(it2, "it");
        VirtualDisplay virtualDisplay = (VirtualDisplay) display.element;
        if (virtualDisplay != null) {
            virtualDisplay.release();
        }
        reader.close();
        mediaProjection.stop();
        if (!BuildKt.isApiLevelBelow(34)) {
            return true;
        }
        looper.quitSafely();
        return true;
    }

    /* renamed from: e */
    public static final void m41409e(final Handler handler, final CaptureScreenBitmapRequest this$0, final Ref.ObjectRef bitmap, final ImageReader imageReader) {
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bitmap, "$bitmap");
        handler.postDelayed(new Runnable() { // from class: com.sunia.HTREnginev2.knd
            @Override // java.lang.Runnable
            public final void run() {
                CaptureScreenBitmapRequest.m41410f(Ref.ObjectRef.this, this$0, imageReader, handler);
            }
        }, this$0.FLUSH_DELAY_TIME);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, android.graphics.Bitmap] */
    /* renamed from: f */
    public static final void m41410f(Ref.ObjectRef bitmap, CaptureScreenBitmapRequest this$0, ImageReader imageReader, Handler handler) {
        Intrinsics.checkNotNullParameter(bitmap, "$bitmap");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(handler, "$handler");
        Intrinsics.checkNotNull(imageReader);
        ?? m41412h = this$0.m41412h(imageReader);
        bitmap.element = m41412h;
        if (m41412h == 0) {
            LogUtils.file(AnyKt.toSimpleNameString(this$0) + " Bitmap is null after calling readBitmap");
        }
        handler.sendEmptyMessage(0);
    }

    /* renamed from: g */
    public final Image m41411g(ImageReader reader) {
        int i = 0;
        Image image = null;
        while (image == null) {
            int i2 = i + 1;
            if (i >= 3) {
                break;
            }
            image = reader.acquireLatestImage();
            if (image == null) {
                Thread.sleep(this.ACQUIRE_IMAGE_DELAY_TIME);
            }
            i = i2;
        }
        if (image != null) {
            return image;
        }
        throw new Exception("ImageReader do not acquire image");
    }

    public final boolean getOverScreen() {
        return this.overScreen;
    }

    public final boolean getScaleToContentSize() {
        return this.scaleToContentSize;
    }

    /* renamed from: h */
    public final Bitmap m41412h(ImageReader reader) {
        ViewLocator viewLocator = ViewLocator.INSTANCE;
        Size screenSize = viewLocator.getScreenSize();
        Size screenSize2 = viewLocator.getScreenSize();
        Image m41411g = m41411g(reader);
        Image.Plane[] planes = m41411g.getPlanes();
        ByteBuffer buffer = planes[0].getBuffer();
        int pixelStride = planes[0].getPixelStride();
        int width = m41411g.getWidth() + ((planes[0].getRowStride() - (m41411g.getWidth() * pixelStride)) / pixelStride);
        Bitmap createBitmap = Bitmap.createBitmap(width, m41411g.getHeight(), Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(...)");
        createBitmap.copyPixelsFromBuffer(buffer);
        int leftPadding = BitmapKt.getLeftPadding(createBitmap);
        int rightPadding = (width - leftPadding) - BitmapKt.getRightPadding(createBitmap);
        int height = m41411g.getHeight();
        if (!this.overScreen) {
            if (screenSize.getHeight() - screenSize2.getHeight() == Device.INSTANCE.getNavigationBarHeight()) {
                height = (int) (m41411g.getHeight() * (1 - ((screenSize.getHeight() - screenSize2.getHeight()) / screenSize.getHeight())));
            }
        }
        if (rightPadding <= 0 || height <= 0) {
            LogUtils.file(AnyKt.toSimpleNameString(this) + " readBitmap width:" + rightPadding + "  height:" + height + GlideException.C1935a.f14609h);
            return null;
        }
        Bitmap createBitmap2 = Bitmap.createBitmap(createBitmap, leftPadding, 0, rightPadding, height);
        Intrinsics.checkNotNullExpressionValue(createBitmap2, "createBitmap(...)");
        if (this.overScreen) {
            createBitmap2 = Bitmap.createScaledBitmap(createBitmap2, screenSize.getWidth(), screenSize.getHeight(), true);
            Intrinsics.checkNotNull(createBitmap2);
        } else if (this.scaleToContentSize) {
            createBitmap2 = Bitmap.createScaledBitmap(createBitmap2, screenSize2.getWidth(), screenSize2.getHeight(), true);
            Intrinsics.checkNotNull(createBitmap2);
        }
        if (!this.intent.hasExtra("rect")) {
            return createBitmap2;
        }
        Rect unflattenFromString = Rect.unflattenFromString(this.intent.getStringExtra("rect"));
        Intrinsics.checkNotNull(unflattenFromString);
        Bitmap createBitmap3 = Bitmap.createBitmap(createBitmap2, unflattenFromString.left, unflattenFromString.top, unflattenFromString.width(), unflattenFromString.height());
        Intrinsics.checkNotNullExpressionValue(createBitmap3, "createBitmap(...)");
        return createBitmap3;
    }

    public final void setOverScreen(boolean z) {
        this.overScreen = z;
    }

    public final void setScaleToContentSize(boolean z) {
        this.scaleToContentSize = z;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [T, android.hardware.display.VirtualDisplay] */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public Bitmap execute() {
        ResManager resManager = ResManager.INSTANCE;
        Context appContext = resManager.getAppContext();
        final MediaProjection mediaProjection = ((MediaProjectionManager) appContext.getSystemService(MediaProjectionManager.class)).getMediaProjection(-1, this.intent);
        int i = appContext.getResources().getDisplayMetrics().densityDpi;
        Size screenSize = ViewLocator.INSTANCE.getScreenSize();
        int width = screenSize.getWidth();
        int height = screenSize.getHeight();
        final ImageReader newInstance = ImageReader.newInstance(width, height, 1, 1);
        Intrinsics.checkNotNullExpressionValue(newInstance, "newInstance(...)");
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        final Looper myLooper = Looper.myLooper();
        Intrinsics.checkNotNull(myLooper);
        if (!Intrinsics.areEqual(myLooper, Looper.getMainLooper())) {
            final Handler handler = new Handler(myLooper, new Handler.Callback() { // from class: com.sunia.HTREnginev2.lnd
                @Override // android.os.Handler.Callback
                public final boolean handleMessage(Message message) {
                    boolean m41408d;
                    m41408d = CaptureScreenBitmapRequest.m41408d(Ref.ObjectRef.this, newInstance, mediaProjection, myLooper, message);
                    return m41408d;
                }
            });
            final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            newInstance.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: com.sunia.HTREnginev2.mnd
                @Override // android.media.ImageReader.OnImageAvailableListener
                public final void onImageAvailable(ImageReader imageReader) {
                    CaptureScreenBitmapRequest.m41409e(handler, this, objectRef2, imageReader);
                }
            }, handler);
            if (BuildKt.isApiLevelAbove(34)) {
                mediaProjection.registerCallback(new MediaProjection.Callback() { // from class: com.onyx.android.sdk.universal.editor.request.CaptureScreenBitmapRequest$execute$2
                    @Override // android.media.projection.MediaProjection.Callback
                    public void onStop() {
                        if (objectRef2.element == null) {
                            LogUtils.file(AnyKt.toSimpleNameString(this) + " Bitmap is null when projection stops");
                        }
                        myLooper.quitSafely();
                        newInstance.close();
                        VirtualDisplay virtualDisplay = objectRef.element;
                        if (virtualDisplay != null) {
                            virtualDisplay.release();
                        }
                        mediaProjection.unregisterCallback(this);
                    }
                }, null);
            }
            objectRef.element = mediaProjection.createVirtualDisplay("ScreenCapture", width, height, i, 16, newInstance.getSurface(), null, handler);
            Thread.sleep(resManager.getLong(C8045R.integer.screen_capture_delay));
            Looper.loop();
            if (objectRef2.element == 0) {
                LogUtils.file(AnyKt.toSimpleNameString(this) + " Bitmap is null.");
            }
            T t = objectRef2.element;
            Intrinsics.checkNotNull(t);
            return (Bitmap) t;
        }
        throw OnyxException.INSTANCE.m31891of(BaseError.WORK_ON_MAIN_THREAD);
    }
}
