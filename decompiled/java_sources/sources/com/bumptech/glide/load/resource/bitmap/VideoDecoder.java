package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {
    public static final long DEFAULT_FRAME = -1;

    /* renamed from: d */
    public static final String f15108d = "VideoDecoder";

    /* renamed from: e */
    @VisibleForTesting
    public static final int f15109e = 2;

    /* renamed from: a */
    public final InterfaceC2009f<T> f15111a;

    /* renamed from: b */
    public final BitmapPool f15112b;

    /* renamed from: c */
    public final C2008e f15113c;
    public static final Option<Long> TARGET_FRAME = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C2004a());
    public static final Option<Integer> FRAME_OPTION = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C2005b());

    /* renamed from: f */
    public static final C2008e f15110f = new C2008e();

    /* loaded from: classes3.dex */
    public static final class VideoDecoderException extends RuntimeException {
        private static final long serialVersionUID = -2556382523004027815L;

        public VideoDecoderException() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$a */
    /* loaded from: classes3.dex */
    public class C2004a implements Option.CacheKeyUpdater<Long> {

        /* renamed from: a */
        public final ByteBuffer f15114a = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void update(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f15114a) {
                this.f15114a.position(0);
                messageDigest.update(this.f15114a.putLong(l.longValue()).array());
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$b */
    /* loaded from: classes3.dex */
    public class C2005b implements Option.CacheKeyUpdater<Integer> {

        /* renamed from: a */
        public final ByteBuffer f15115a = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.Option.CacheKeyUpdater
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void update(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f15115a) {
                this.f15115a.position(0);
                messageDigest.update(this.f15115a.putInt(num.intValue()).array());
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$c */
    /* loaded from: classes3.dex */
    public static final class C2006c implements InterfaceC2009f<AssetFileDescriptor> {
        public C2006c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.InterfaceC2009f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo8988a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }

        public /* synthetic */ C2006c(C2004a c2004a) {
            this();
        }
    }

    @RequiresApi(23)
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$d */
    /* loaded from: classes3.dex */
    public static final class C2007d implements InterfaceC2009f<ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$d$a */
        /* loaded from: classes3.dex */
        public class a extends MediaDataSource {

            /* renamed from: e */
            public final /* synthetic */ ByteBuffer f15116e;

            public a(ByteBuffer byteBuffer) {
                this.f15116e = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f15116e.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j, byte[] bArr, int i, int i2) {
                if (j >= this.f15116e.limit()) {
                    return -1;
                }
                this.f15116e.position((int) j);
                int min = Math.min(i2, this.f15116e.remaining());
                this.f15116e.get(bArr, i, min);
                return min;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.InterfaceC2009f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo8988a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new a(byteBuffer));
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$e */
    /* loaded from: classes3.dex */
    public static class C2008e {
        /* renamed from: a */
        public MediaMetadataRetriever m8991a() {
            return new MediaMetadataRetriever();
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$f */
    /* loaded from: classes3.dex */
    public interface InterfaceC2009f<T> {
        /* renamed from: a */
        void mo8988a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$g */
    /* loaded from: classes3.dex */
    public static final class C2010g implements InterfaceC2009f<ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.resource.bitmap.VideoDecoder.InterfaceC2009f
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo8988a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public VideoDecoder(BitmapPool bitmapPool, InterfaceC2009f<T> interfaceC2009f) {
        this(bitmapPool, interfaceC2009f, f15110f);
    }

    @Nullable
    /* renamed from: a */
    public static Bitmap m8983a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap m8985c = (i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.NONE) ? null : m8985c(mediaMetadataRetriever, j, i, i2, i3, downsampleStrategy);
        if (m8985c == null) {
            m8985c = m8984b(mediaMetadataRetriever, j, i);
        }
        if (m8985c != null) {
            return m8985c;
        }
        throw new VideoDecoderException();
    }

    public static ResourceDecoder<AssetFileDescriptor, Bitmap> asset(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new C2006c(null));
    }

    /* renamed from: b */
    public static Bitmap m8984b(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    @RequiresApi(api = 23)
    public static ResourceDecoder<ByteBuffer, Bitmap> byteBuffer(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new C2007d());
    }

    @Nullable
    @TargetApi(27)
    /* renamed from: c */
    public static Bitmap m8985c(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float scaleFactor = downsampleStrategy.getScaleFactor(parseInt, parseInt2, i2, i3);
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(parseInt * scaleFactor), Math.round(scaleFactor * parseInt2));
        } catch (Throwable th) {
            if (!Log.isLoggable(f15108d, 3)) {
                return null;
            }
            Log.d(f15108d, "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame", th);
            return null;
        }
    }

    public static ResourceDecoder<ParcelFileDescriptor, Bitmap> parcel(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new C2010g());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> decode(@NonNull T t, int i, int i2, @NonNull Options options) throws IOException {
        long longValue = ((Long) options.get(TARGET_FRAME)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) options.get(FRAME_OPTION);
        if (num == null) {
            num = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
        if (downsampleStrategy == null) {
            downsampleStrategy = DownsampleStrategy.DEFAULT;
        }
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        MediaMetadataRetriever m8991a = this.f15113c.m8991a();
        try {
            this.f15111a.mo8988a(m8991a, t);
            Bitmap m8983a = m8983a(m8991a, longValue, num.intValue(), i, i2, downsampleStrategy2);
            m8991a.release();
            return BitmapResource.obtain(m8983a, this.f15112b);
        } catch (Throwable th) {
            m8991a.release();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull T t, @NonNull Options options) {
        return true;
    }

    @VisibleForTesting
    public VideoDecoder(BitmapPool bitmapPool, InterfaceC2009f<T> interfaceC2009f, C2008e c2008e) {
        this.f15112b = bitmapPool;
        this.f15111a = interfaceC2009f;
        this.f15113c = c2008e;
    }
}
