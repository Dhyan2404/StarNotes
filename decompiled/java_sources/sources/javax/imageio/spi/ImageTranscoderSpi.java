package javax.imageio.spi;

import javax.imageio.ImageTranscoder;

/* loaded from: classes5.dex */
public abstract class ImageTranscoderSpi extends IIOServiceProvider {
    public ImageTranscoderSpi() {
    }

    public abstract ImageTranscoder createTranscoderInstance();

    public abstract String getReaderServiceProviderName();

    public abstract String getWriterServiceProviderName();

    public ImageTranscoderSpi(String str, String str2) {
        super(str, str2);
    }
}
