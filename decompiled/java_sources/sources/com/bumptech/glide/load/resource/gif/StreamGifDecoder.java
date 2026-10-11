package com.bumptech.glide.load.resource.gif;

import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes3.dex */
public class StreamGifDecoder implements ResourceDecoder<InputStream, GifDrawable> {

    /* renamed from: d */
    public static final String f15182d = "StreamGifDecoder";

    /* renamed from: a */
    public final List<ImageHeaderParser> f15183a;

    /* renamed from: b */
    public final ResourceDecoder<ByteBuffer, GifDrawable> f15184b;

    /* renamed from: c */
    public final ArrayPool f15185c;

    public StreamGifDecoder(List<ImageHeaderParser> list, ResourceDecoder<ByteBuffer, GifDrawable> resourceDecoder, ArrayPool arrayPool) {
        this.f15183a = list;
        this.f15184b = resourceDecoder;
        this.f15185c = arrayPool;
    }

    /* renamed from: a */
    public static byte[] m9038a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e) {
            if (!Log.isLoggable(f15182d, 5)) {
                return null;
            }
            Log.w(f15182d, "Error reading data from stream", e);
            return null;
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<GifDrawable> decode(@NonNull InputStream inputStream, int i, int i2, @NonNull Options options) throws IOException {
        byte[] m9038a = m9038a(inputStream);
        if (m9038a == null) {
            return null;
        }
        return this.f15184b.decode(ByteBuffer.wrap(m9038a), i, i2, options);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull InputStream inputStream, @NonNull Options options) throws IOException {
        return !((Boolean) options.get(GifOptions.DISABLE_ANIMATION)).booleanValue() && ImageHeaderParserUtils.getType(this.f15183a, inputStream, this.f15185c) == ImageHeaderParser.ImageType.GIF;
    }
}
