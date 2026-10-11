package javax.imageio.spi;

import java.io.File;
import java.io.IOException;
import javax.imageio.stream.ImageOutputStream;

/* loaded from: classes5.dex */
public abstract class ImageOutputStreamSpi extends IIOServiceProvider {
    protected Class<?> outputClass;

    public ImageOutputStreamSpi() {
    }

    public boolean canUseCacheFile() {
        return false;
    }

    public ImageOutputStream createOutputStreamInstance(Object obj) throws IOException {
        return createOutputStreamInstance(obj, true, null);
    }

    public abstract ImageOutputStream createOutputStreamInstance(Object obj, boolean z, File file) throws IOException;

    public Class<?> getOutputClass() {
        return this.outputClass;
    }

    public boolean needsCacheFile() {
        return false;
    }

    public ImageOutputStreamSpi(String str, String str2, Class<?> cls) {
        super(str, str2);
        this.outputClass = cls;
    }
}
