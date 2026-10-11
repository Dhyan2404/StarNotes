package org.apache.poi.picture;

import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import javax.imageio.ImageIO;
import org.apache.poi.sl.draw.DrawPictureShape;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.StringUtil;

/* loaded from: classes12.dex */
public class BufferedImagePicturesCache extends PicturesCache<BufferedImage> {
    private final DecimalFormat format;

    public BufferedImagePicturesCache(String str) {
        super(str);
        this.format = new DecimalFormat("image_00000");
    }

    @Override // org.apache.poi.picture.PicturesCache
    public boolean existCache(String str) {
        return false;
    }

    @Override // org.apache.poi.picture.PicturesCache
    public String getFilename(String str, int i) {
        if (str != null) {
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf > 0) {
                str = str.substring(0, lastIndexOf) + ".png";
            } else {
                str = str + ".png";
            }
        }
        return StringUtil.join("_", this.format.format(i), str);
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public ImageRenderer getImageRenderer(String str) {
        return DrawPictureShape.getImageRenderer(null, str);
    }

    @Override // org.apache.poi.picture.PicturesCache
    public InputStream getStream(String str) {
        try {
            return new FileInputStream(new File(this.location, str));
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return null;
        }
    }

    @Override // org.apache.poi.picture.PicturesCache
    public Dimension readImageSize(String str) {
        try {
            BufferedImage read = ImageIO.read(new File(this.location, str));
            return read == null ? new Dimension() : new Dimension(read.getWidth(), read.getHeight());
        } catch (Exception e) {
            this.LOG.atError().withThrowable(e).log();
            return new Dimension();
        }
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public BufferedImage createImage(int i, int i2) {
        return new BufferedImage(i, i2, 2);
    }

    @Override // org.apache.poi.p114wp.draw.ImageCreator
    public Graphics2D getGraphics(BufferedImage bufferedImage) {
        return (Graphics2D) bufferedImage.getGraphics();
    }

    @Override // org.apache.poi.picture.PicturesCache
    public boolean saveImage(BufferedImage bufferedImage, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.location, str));
            try {
                ImageIO.write(bufferedImage, "png", fileOutputStream);
                setImageSize(str, new Dimension(bufferedImage.getWidth(), bufferedImage.getHeight()));
                fileOutputStream.close();
                return true;
            } finally {
            }
        } catch (IOException e) {
            this.LOG.atError().withThrowable(e).log();
            return false;
        }
    }
}
