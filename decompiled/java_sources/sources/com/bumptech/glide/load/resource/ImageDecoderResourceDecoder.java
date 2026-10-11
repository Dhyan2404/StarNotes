package com.bumptech.glide.load.resource;

import android.annotation.SuppressLint;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.util.Log;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import java.io.IOException;

@RequiresApi(api = 28)
/* loaded from: classes3.dex */
public abstract class ImageDecoderResourceDecoder<T> implements ResourceDecoder<ImageDecoder.Source, T> {

    /* renamed from: b */
    public static final String f14971b = "ImageDecoder";

    /* renamed from: a */
    public final HardwareConfigState f14972a = HardwareConfigState.getInstance();

    /* renamed from: com.bumptech.glide.load.resource.ImageDecoderResourceDecoder$a */
    /* loaded from: classes3.dex */
    public class C1987a implements ImageDecoder.OnHeaderDecodedListener {

        /* renamed from: a */
        public final /* synthetic */ int f14973a;

        /* renamed from: b */
        public final /* synthetic */ int f14974b;

        /* renamed from: c */
        public final /* synthetic */ boolean f14975c;

        /* renamed from: d */
        public final /* synthetic */ DecodeFormat f14976d;

        /* renamed from: e */
        public final /* synthetic */ DownsampleStrategy f14977e;

        /* renamed from: f */
        public final /* synthetic */ PreferredColorSpace f14978f;

        /* renamed from: com.bumptech.glide.load.resource.ImageDecoderResourceDecoder$a$a */
        /* loaded from: classes3.dex */
        public class a implements ImageDecoder.OnPartialImageListener {
            public a() {
            }

            @Override // android.graphics.ImageDecoder.OnPartialImageListener
            public boolean onPartialImage(@NonNull ImageDecoder.DecodeException decodeException) {
                return false;
            }
        }

        public C1987a(int i, int i2, boolean z, DecodeFormat decodeFormat, DownsampleStrategy downsampleStrategy, PreferredColorSpace preferredColorSpace) {
            this.f14973a = i;
            this.f14974b = i2;
            this.f14975c = z;
            this.f14976d = decodeFormat;
            this.f14977e = downsampleStrategy;
            this.f14978f = preferredColorSpace;
        }

        @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
        @SuppressLint({"Override"})
        public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
            boolean z = false;
            if (ImageDecoderResourceDecoder.this.f14972a.isHardwareConfigAllowed(this.f14973a, this.f14974b, this.f14975c, false)) {
                imageDecoder.setAllocator(3);
            } else {
                imageDecoder.setAllocator(1);
            }
            if (this.f14976d == DecodeFormat.PREFER_RGB_565) {
                imageDecoder.setMemorySizePolicy(0);
            }
            imageDecoder.setOnPartialImageListener(new a());
            Size size = imageInfo.getSize();
            int i = this.f14973a;
            if (i == Integer.MIN_VALUE) {
                i = size.getWidth();
            }
            int i2 = this.f14974b;
            if (i2 == Integer.MIN_VALUE) {
                i2 = size.getHeight();
            }
            float scaleFactor = this.f14977e.getScaleFactor(size.getWidth(), size.getHeight(), i, i2);
            int round = Math.round(size.getWidth() * scaleFactor);
            int round2 = Math.round(size.getHeight() * scaleFactor);
            if (Log.isLoggable(ImageDecoderResourceDecoder.f14971b, 2)) {
                Log.v(ImageDecoderResourceDecoder.f14971b, "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + scaleFactor);
            }
            imageDecoder.setTargetSize(round, round2);
            if (this.f14978f == PreferredColorSpace.DISPLAY_P3 && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) {
                z = true;
            }
            imageDecoder.setTargetColorSpace(ColorSpace.get(z ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
        }
    }

    public abstract Resource<T> decode(ImageDecoder.Source source, int i, int i2, ImageDecoder.OnHeaderDecodedListener onHeaderDecodedListener) throws IOException;

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean handles(@NonNull ImageDecoder.Source source, @NonNull Options options) {
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    @Nullable
    public final Resource<T> decode(@NonNull ImageDecoder.Source source, int i, int i2, @NonNull Options options) throws IOException {
        DecodeFormat decodeFormat = (DecodeFormat) options.get(Downsampler.DECODE_FORMAT);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
        Option<Boolean> option = Downsampler.ALLOW_HARDWARE_CONFIG;
        return decode(source, i, i2, new C1987a(i, i2, options.get(option) != null && ((Boolean) options.get(option)).booleanValue(), decodeFormat, downsampleStrategy, (PreferredColorSpace) options.get(Downsampler.PREFERRED_COLOR_SPACE)));
    }
}
