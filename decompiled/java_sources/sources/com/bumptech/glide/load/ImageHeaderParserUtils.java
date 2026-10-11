package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.ParcelFileDescriptorRewinder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* loaded from: classes3.dex */
public final class ImageHeaderParserUtils {

    /* renamed from: a */
    public static final int f14459a = 5242880;

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$a */
    /* loaded from: classes3.dex */
    public class C1906a implements InterfaceC1912g {

        /* renamed from: a */
        public final /* synthetic */ InputStream f14460a;

        public C1906a(InputStream inputStream) {
            this.f14460a = inputStream;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.InterfaceC1912g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo8669a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.getType(this.f14460a);
            } finally {
                this.f14460a.reset();
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$b */
    /* loaded from: classes3.dex */
    public class C1907b implements InterfaceC1912g {

        /* renamed from: a */
        public final /* synthetic */ ByteBuffer f14461a;

        public C1907b(ByteBuffer byteBuffer) {
            this.f14461a = byteBuffer;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.InterfaceC1912g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo8669a(ImageHeaderParser imageHeaderParser) throws IOException {
            return imageHeaderParser.getType(this.f14461a);
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$c */
    /* loaded from: classes3.dex */
    public class C1908c implements InterfaceC1912g {

        /* renamed from: a */
        public final /* synthetic */ ParcelFileDescriptorRewinder f14462a;

        /* renamed from: b */
        public final /* synthetic */ ArrayPool f14463b;

        public C1908c(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, ArrayPool arrayPool) {
            this.f14462a = parcelFileDescriptorRewinder;
            this.f14463b = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.InterfaceC1912g
        /* renamed from: a */
        public ImageHeaderParser.ImageType mo8669a(ImageHeaderParser imageHeaderParser) throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f14462a.rewindAndGet().getFileDescriptor()), this.f14463b);
                try {
                    ImageHeaderParser.ImageType type = imageHeaderParser.getType(recyclableBufferedInputStream2);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    this.f14462a.rewindAndGet();
                    return type;
                } catch (Throwable th) {
                    th = th;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f14462a.rewindAndGet();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$d */
    /* loaded from: classes3.dex */
    public class C1909d implements InterfaceC1911f {

        /* renamed from: a */
        public final /* synthetic */ InputStream f14464a;

        /* renamed from: b */
        public final /* synthetic */ ArrayPool f14465b;

        public C1909d(InputStream inputStream, ArrayPool arrayPool) {
            this.f14464a = inputStream;
            this.f14465b = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.InterfaceC1911f
        /* renamed from: a */
        public int mo8670a(ImageHeaderParser imageHeaderParser) throws IOException {
            try {
                return imageHeaderParser.getOrientation(this.f14464a, this.f14465b);
            } finally {
                this.f14464a.reset();
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$e */
    /* loaded from: classes3.dex */
    public class C1910e implements InterfaceC1911f {

        /* renamed from: a */
        public final /* synthetic */ ParcelFileDescriptorRewinder f14466a;

        /* renamed from: b */
        public final /* synthetic */ ArrayPool f14467b;

        public C1910e(ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, ArrayPool arrayPool) {
            this.f14466a = parcelFileDescriptorRewinder;
            this.f14467b = arrayPool;
        }

        @Override // com.bumptech.glide.load.ImageHeaderParserUtils.InterfaceC1911f
        /* renamed from: a */
        public int mo8670a(ImageHeaderParser imageHeaderParser) throws IOException {
            RecyclableBufferedInputStream recyclableBufferedInputStream = null;
            try {
                RecyclableBufferedInputStream recyclableBufferedInputStream2 = new RecyclableBufferedInputStream(new FileInputStream(this.f14466a.rewindAndGet().getFileDescriptor()), this.f14467b);
                try {
                    int orientation = imageHeaderParser.getOrientation(recyclableBufferedInputStream2, this.f14467b);
                    try {
                        recyclableBufferedInputStream2.close();
                    } catch (IOException unused) {
                    }
                    this.f14466a.rewindAndGet();
                    return orientation;
                } catch (Throwable th) {
                    th = th;
                    recyclableBufferedInputStream = recyclableBufferedInputStream2;
                    if (recyclableBufferedInputStream != null) {
                        try {
                            recyclableBufferedInputStream.close();
                        } catch (IOException unused2) {
                        }
                    }
                    this.f14466a.rewindAndGet();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$f */
    /* loaded from: classes3.dex */
    public interface InterfaceC1911f {
        /* renamed from: a */
        int mo8670a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* renamed from: com.bumptech.glide.load.ImageHeaderParserUtils$g */
    /* loaded from: classes3.dex */
    public interface InterfaceC1912g {
        /* renamed from: a */
        ImageHeaderParser.ImageType mo8669a(ImageHeaderParser imageHeaderParser) throws IOException;
    }

    /* renamed from: a */
    public static int m8667a(@NonNull List<ImageHeaderParser> list, InterfaceC1911f interfaceC1911f) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            int mo8670a = interfaceC1911f.mo8670a(list.get(i));
            if (mo8670a != -1) {
                return mo8670a;
            }
        }
        return -1;
    }

    @NonNull
    /* renamed from: b */
    public static ImageHeaderParser.ImageType m8668b(@NonNull List<ImageHeaderParser> list, InterfaceC1912g interfaceC1912g) throws IOException {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ImageHeaderParser.ImageType mo8669a = interfaceC1912g.mo8669a(list.get(i));
            if (mo8669a != ImageHeaderParser.ImageType.UNKNOWN) {
                return mo8669a;
            }
        }
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    public static int getOrientation(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return m8667a(list, new C1909d(inputStream, arrayPool));
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable InputStream inputStream, @NonNull ArrayPool arrayPool) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        }
        inputStream.mark(5242880);
        return m8668b(list, new C1906a(inputStream));
    }

    @RequiresApi(21)
    public static int getOrientation(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull ArrayPool arrayPool) throws IOException {
        return m8667a(list, new C1910e(parcelFileDescriptorRewinder, arrayPool));
    }

    @NonNull
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @Nullable ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser.ImageType.UNKNOWN;
        }
        return m8668b(list, new C1907b(byteBuffer));
    }

    @NonNull
    @RequiresApi(21)
    public static ImageHeaderParser.ImageType getType(@NonNull List<ImageHeaderParser> list, @NonNull ParcelFileDescriptorRewinder parcelFileDescriptorRewinder, @NonNull ArrayPool arrayPool) throws IOException {
        return m8668b(list, new C1908c(parcelFileDescriptorRewinder, arrayPool));
    }
}
