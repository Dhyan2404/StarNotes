package java.awt;

import android.util.DisplayMetrics;
import com.onyx.common.util.ContextUtils;
import com.onyx.common.util.JLog;
import java.awt.geom.AffineTransform;
import java.awt.image.ColorModel;
import java.awt.image.DirectColorModel;

/* loaded from: classes4.dex */
public class AndroidGraphicsConfiguration extends GraphicsConfiguration {
    private GraphicsDevice device;

    public AndroidGraphicsConfiguration(GraphicsDevice graphicsDevice) {
        this.device = graphicsDevice;
    }

    @Override // java.awt.GraphicsConfiguration
    public Rectangle getBounds() {
        DisplayMetrics displayMetrics = ContextUtils.getContext().getResources().getDisplayMetrics();
        return new Rectangle(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    @Override // java.awt.GraphicsConfiguration
    public ColorModel getColorModel() {
        return ColorModel.getRGBdefault();
    }

    @Override // java.awt.GraphicsConfiguration
    public AffineTransform getDefaultTransform() {
        return new AffineTransform();
    }

    @Override // java.awt.GraphicsConfiguration
    public GraphicsDevice getDevice() {
        return this.device;
    }

    @Override // java.awt.GraphicsConfiguration
    public AffineTransform getNormalizingTransform() {
        JLog.m41642e("AndroidGraphicsConfiguration", "getNormalizingTransform", new Object[0]);
        float f = ContextUtils.getContext().getResources().getDisplayMetrics().density;
        return new AffineTransform(f, 0.0d, 0.0d, f, 0.0d, 0.0d);
    }

    @Override // java.awt.GraphicsConfiguration
    public ColorModel getColorModel(int i) {
        if (i == 1) {
            return new DirectColorModel(24, 16711680, 65280, 255);
        }
        if (i == 2) {
            return new DirectColorModel(25, 16711680, 65280, 255, -16777216);
        }
        if (i != 3) {
            return null;
        }
        return ColorModel.getRGBdefault();
    }
}
