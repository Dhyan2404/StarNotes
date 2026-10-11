package java.awt;

import android.graphics.Bitmap;
import com.trans.android.AndroidGraphics2D;
import com.trans.android.BufferedImageWrapper;
import com.trans.android.util.BridgeUtils;
import java.awt.image.BufferedImage;
import sun.java2d.SunGraphicsEnvironment;

/* loaded from: classes4.dex */
public class AndroidGraphicsEnvironment extends SunGraphicsEnvironment {
    public static Rectangle getUsableBounds(GraphicsDevice graphicsDevice) {
        return graphicsDevice.getDefaultConfiguration().getBounds();
    }

    @Override // sun.java2d.SunGraphicsEnvironment, java.awt.GraphicsEnvironment
    public Graphics2D createGraphics(BufferedImage bufferedImage) {
        if (bufferedImage instanceof BufferedImageWrapper) {
            return ((BufferedImageWrapper) bufferedImage).getAndroidImage().createGraphics();
        }
        AndroidGraphics2D androidGraphics2D = new AndroidGraphics2D(Bitmap.createBitmap(bufferedImage.getWidth(), bufferedImage.getHeight(), BridgeUtils.getConfigByImageType(bufferedImage.getType())));
        androidGraphics2D.setRecycleBitmap(true);
        if (bufferedImage.getWidth() * bufferedImage.getHeight() > 1) {
            androidGraphics2D.setBridge(bufferedImage);
        }
        return androidGraphics2D;
    }

    @Override // sun.java2d.SunGraphicsEnvironment
    public int getNumScreens() {
        return 1;
    }

    @Override // sun.java2d.SunGraphicsEnvironment
    public boolean isDisplayLocal() {
        return true;
    }

    @Override // sun.java2d.SunGraphicsEnvironment
    public GraphicsDevice makeScreenDevice(int i) {
        return new AndroidGraphicsDevice();
    }
}
