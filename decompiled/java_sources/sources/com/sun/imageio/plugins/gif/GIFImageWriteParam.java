package com.sun.imageio.plugins.gif;

import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes9.dex */
class GIFImageWriteParam extends ImageWriteParam {
    public GIFImageWriteParam(Locale locale) {
        super(locale);
        this.canWriteCompressed = true;
        this.canWriteProgressive = true;
        String[] strArr = {"LZW"};
        this.compressionTypes = strArr;
        this.compressionType = strArr[0];
    }

    @Override // javax.imageio.ImageWriteParam
    public void setCompressionMode(int i) {
        if (i == 0) {
            throw new UnsupportedOperationException("MODE_DISABLED is not supported.");
        }
        super.setCompressionMode(i);
    }
}
