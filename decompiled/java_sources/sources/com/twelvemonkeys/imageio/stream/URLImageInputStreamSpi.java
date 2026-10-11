package com.twelvemonkeys.imageio.stream;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Locale;
import javax.imageio.spi.ImageInputStreamSpi;
import javax.imageio.stream.FileCacheImageInputStream;
import javax.imageio.stream.FileImageInputStream;
import javax.imageio.stream.ImageInputStream;
import javax.imageio.stream.MemoryCacheImageInputStream;

/* loaded from: classes10.dex */
public class URLImageInputStreamSpi extends ImageInputStreamSpi {

    /* renamed from: com.twelvemonkeys.imageio.stream.URLImageInputStreamSpi$a */
    /* loaded from: classes10.dex */
    public class C16969a extends FileCacheImageInputStream {

        /* renamed from: o */
        public final /* synthetic */ InputStream f94212o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16969a(InputStream inputStream, File file, InputStream inputStream2) {
            super(inputStream, file);
            this.f94212o = inputStream2;
        }

        @Override // javax.imageio.stream.FileCacheImageInputStream, javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                super.close();
            } finally {
                this.f94212o.close();
            }
        }
    }

    /* renamed from: com.twelvemonkeys.imageio.stream.URLImageInputStreamSpi$b */
    /* loaded from: classes10.dex */
    public class C16970b extends MemoryCacheImageInputStream {

        /* renamed from: i */
        public final /* synthetic */ InputStream f94214i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16970b(InputStream inputStream, InputStream inputStream2) {
            super(inputStream);
            this.f94214i = inputStream2;
        }

        @Override // javax.imageio.stream.MemoryCacheImageInputStream, javax.imageio.stream.ImageInputStreamImpl, javax.imageio.stream.ImageInputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                super.close();
            } finally {
                this.f94214i.close();
            }
        }
    }

    public URLImageInputStreamSpi() {
        super("TwelveMonkeys", "1.0 BETA", URL.class);
    }

    @Override // javax.imageio.spi.ImageInputStreamSpi
    public ImageInputStream createInputStreamInstance(Object obj, boolean z, File file) throws IOException {
        if (!(obj instanceof URL)) {
            throw new IllegalArgumentException("Expected input of type URL: " + obj);
        }
        URL url = (URL) obj;
        if ("file".equals(url.getProtocol())) {
            try {
                return new BufferedImageInputStream(new FileImageInputStream(new File(url.toURI())));
            } catch (URISyntaxException e) {
                e.printStackTrace();
            }
        }
        InputStream openStream = url.openStream();
        return z ? new BufferedImageInputStream(new C16969a(openStream, file, openStream)) : new C16970b(openStream, openStream);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Service provider that instantiates an ImageInputStream from a URL";
    }
}
