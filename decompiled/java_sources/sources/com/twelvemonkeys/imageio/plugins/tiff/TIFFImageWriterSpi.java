package com.twelvemonkeys.imageio.plugins.tiff;

import com.sunia.HTREnginev2.d7n;
import com.twelvemonkeys.imageio.spi.ImageWriterSpiBase;
import java.io.IOException;
import java.util.Locale;
import javax.imageio.ImageTypeSpecifier;
import javax.imageio.ImageWriter;

/* loaded from: classes10.dex */
public final class TIFFImageWriterSpi extends ImageWriterSpiBase {
    public TIFFImageWriterSpi() {
        super(new d7n());
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public boolean canEncodeImage(ImageTypeSpecifier imageTypeSpecifier) {
        return true;
    }

    @Override // javax.imageio.spi.ImageWriterSpi
    public ImageWriter createWriterInstance(Object obj) throws IOException {
        return new TIFFImageWriter(this);
    }

    @Override // javax.imageio.spi.IIOServiceProvider
    public String getDescription(Locale locale) {
        return "Aldus/Adobe Tagged Image File Format (TIFF) image writer";
    }
}
