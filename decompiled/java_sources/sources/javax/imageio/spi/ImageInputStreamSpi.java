package javax.imageio.spi;

import java.io.File;
import java.io.IOException;
import javax.imageio.stream.ImageInputStream;

/* loaded from: classes5.dex */
public abstract class ImageInputStreamSpi extends IIOServiceProvider {
    protected Class<?> inputClass;

    public ImageInputStreamSpi() {
    }

    public boolean canUseCacheFile() {
        return false;
    }

    public ImageInputStream createInputStreamInstance(Object obj) throws IOException {
        return createInputStreamInstance(obj, true, null);
    }

    public abstract ImageInputStream createInputStreamInstance(Object obj, boolean z, File file) throws IOException;

    public Class<?> getInputClass() {
        return this.inputClass;
    }

    public boolean needsCacheFile() {
        return false;
    }

    public ImageInputStreamSpi(String str, String str2, Class<?> cls) {
        super(str, str2);
        this.inputClass = cls;
    }
}
