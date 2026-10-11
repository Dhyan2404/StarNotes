package org.apache.poi.sl.image;

import java.awt.Dimension;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.util.Internal;
import org.apache.poi.util.Units;

@Internal
/* loaded from: classes12.dex */
public class ImageHeaderBitmap {
    private static final Logger LOG = LogManager.getLogger((Class<?>) ImageHeaderBitmap.class);
    private final Dimension size;

    public ImageHeaderBitmap(byte[] bArr, int i) {
        BufferedImage bufferedImage;
        try {
            bufferedImage = ImageIO.read(new UnsynchronizedByteArrayInputStream(bArr, i, bArr.length - i));
        } catch (IOException e) {
            LOG.atWarn().withThrowable(e).log("Can't determine image dimensions");
            bufferedImage = null;
        }
        this.size = bufferedImage == null ? new Dimension(200, 200) : new Dimension((int) Units.pixelToPoints(bufferedImage.getWidth()), (int) Units.pixelToPoints(bufferedImage.getHeight()));
    }

    public Dimension getSize() {
        return this.size;
    }
}
