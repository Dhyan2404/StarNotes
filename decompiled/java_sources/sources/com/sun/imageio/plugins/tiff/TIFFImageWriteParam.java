package com.sun.imageio.plugins.tiff;

import java.util.Locale;
import javax.imageio.ImageWriteParam;

/* loaded from: classes9.dex */
public class TIFFImageWriteParam extends ImageWriteParam {
    public TIFFImageWriteParam(Locale locale) {
        super(locale);
        this.canWriteCompressed = true;
        this.canWriteTiles = true;
        this.compressionTypes = TIFFImageWriter.TIFFCompressionTypes;
    }
}
