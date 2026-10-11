package javax.imageio.plugins.bmp;

import com.sun.imageio.plugins.bmp.BMPCompressionTypes;
import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes5.dex */
public class BMPImageWriteParam extends ImageWriteParam {

    /* renamed from: a */
    public boolean f97896a;

    public BMPImageWriteParam(Locale locale) {
        super(locale);
        this.f97896a = false;
        String[] compressionTypes = BMPCompressionTypes.getCompressionTypes();
        this.compressionTypes = compressionTypes;
        this.canWriteCompressed = true;
        this.compressionMode = 3;
        this.compressionType = compressionTypes[0];
    }

    public boolean isTopDown() {
        return this.f97896a;
    }

    public void setTopDown(boolean z) {
        this.f97896a = z;
    }

    public BMPImageWriteParam() {
        this(null);
    }
}
