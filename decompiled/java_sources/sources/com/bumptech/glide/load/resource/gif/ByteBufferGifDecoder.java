package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes3.dex */
public class ByteBufferGifDecoder implements ResourceDecoder<ByteBuffer, GifDrawable> {

    /* renamed from: f */
    public static final String f15129f = "BufferGifDecoder";

    /* renamed from: g */
    public static final C2011a f15130g = new C2011a();

    /* renamed from: h */
    public static final C2012b f15131h = new C2012b();

    /* renamed from: a */
    public final Context f15132a;

    /* renamed from: b */
    public final List<ImageHeaderParser> f15133b;

    /* renamed from: c */
    public final C2012b f15134c;

    /* renamed from: d */
    public final C2011a f15135d;

    /* renamed from: e */
    public final GifBitmapProvider f15136e;

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder$a */
    /* loaded from: classes3.dex */
    public static class C2011a {
        /* renamed from: a */
        public GifDecoder m9002a(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
            return new StandardGifDecoder(bitmapProvider, gifHeader, byteBuffer, i);
        }
    }

    @VisibleForTesting
    /* renamed from: com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder$b */
    /* loaded from: classes3.dex */
    public static class C2012b {

        /* renamed from: a */
        public final Queue<GifHeaderParser> f15137a = Util.createQueue(0);

        /* renamed from: a */
        public synchronized GifHeaderParser m9003a(ByteBuffer byteBuffer) {
            GifHeaderParser poll;
            poll = this.f15137a.poll();
            if (poll == null) {
                poll = new GifHeaderParser();
            }
            return poll.setData(byteBuffer);
        }

        /* renamed from: b */
        public synchronized void m9004b(GifHeaderParser gifHeaderParser) {
            gifHeaderParser.clear();
            this.f15137a.offer(gifHeaderParser);
        }
    }

    public ByteBufferGifDecoder(Context context) {
        this(context, Glide.get(context).getRegistry().getImageHeaderParsers(), Glide.get(context).getBitmapPool(), Glide.get(context).getArrayPool());
    }

    /* renamed from: b */
    public static int m9000b(GifHeader gifHeader, int i, int i2) {
        int min = Math.min(gifHeader.getHeight() / i2, gifHeader.getWidth() / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable(f15129f, 2) && max > 1) {
            Log.v(f15129f, "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + gifHeader.getWidth() + "x" + gifHeader.getHeight() + IteratorUtils.f104924b);
        }
        return max;
    }

    @Nullable
    /* renamed from: a */
    public final GifDrawableResource m9001a(ByteBuffer byteBuffer, int i, int i2, GifHeaderParser gifHeaderParser, Options options) {
        long logTime = LogTime.getLogTime();
        try {
            GifHeader parseHeader = gifHeaderParser.parseHeader();
            if (parseHeader.getNumFrames() > 0 && parseHeader.getStatus() == 0) {
                Bitmap.Config config = options.get(GifOptions.DECODE_FORMAT) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                GifDecoder m9002a = this.f15135d.m9002a(this.f15136e, parseHeader, byteBuffer, m9000b(parseHeader, i, i2));
                m9002a.setDefaultBitmapConfig(config);
                m9002a.advance();
                Bitmap nextFrame = m9002a.getNextFrame();
                if (nextFrame == null) {
                    return null;
                }
                GifDrawableResource gifDrawableResource = new GifDrawableResource(new GifDrawable(this.f15132a, m9002a, UnitTransformation.get(), i, i2, nextFrame));
                if (Log.isLoggable(f15129f, 2)) {
                    Log.v(f15129f, "Decoded GIF from stream in " + LogTime.getElapsedMillis(logTime));
                }
                return gifDrawableResource;
            }
            if (Log.isLoggable(f15129f, 2)) {
                Log.v(f15129f, "Decoded GIF from stream in " + LogTime.getElapsedMillis(logTime));
            }
            return null;
        } finally {
            if (Log.isLoggable(f15129f, 2)) {
                Log.v(f15129f, "Decoded GIF from stream in " + LogTime.getElapsedMillis(logTime));
            }
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public GifDrawableResource decode(@NonNull ByteBuffer byteBuffer, int i, int i2, @NonNull Options options) {
        GifHeaderParser m9003a = this.f15134c.m9003a(byteBuffer);
        try {
            return m9001a(byteBuffer, i, i2, m9003a, options);
        } finally {
            this.f15134c.m9004b(m9003a);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull ByteBuffer byteBuffer, @NonNull Options options) throws IOException {
        return !((Boolean) options.get(GifOptions.DISABLE_ANIMATION)).booleanValue() && ImageHeaderParserUtils.getType(this.f15133b, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public ByteBufferGifDecoder(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this(context, list, bitmapPool, arrayPool, f15131h, f15130g);
    }

    @VisibleForTesting
    public ByteBufferGifDecoder(Context context, List<ImageHeaderParser> list, BitmapPool bitmapPool, ArrayPool arrayPool, C2012b c2012b, C2011a c2011a) {
        this.f15132a = context.getApplicationContext();
        this.f15133b = list;
        this.f15135d = c2011a;
        this.f15136e = new GifBitmapProvider(bitmapPool, arrayPool);
        this.f15134c = c2012b;
    }
}
