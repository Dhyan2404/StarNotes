package java.awt.image.renderable;

import java.awt.RenderingHints;
import java.awt.image.RenderedImage;
import java.awt.image.renderable.RenderableImage;
import java.util.Vector;

/* loaded from: classes5.dex */
public interface RenderableImage<T extends RenderableImage, R extends RenderedImage> {
    public static final String HINTS_OBSERVED = "HINTS_OBSERVED";

    R createDefaultRendering();

    R createRendering(RenderContext renderContext);

    R createScaledRendering(int i, int i2, RenderingHints renderingHints);

    float getHeight();

    float getMinX();

    float getMinY();

    Object getProperty(String str);

    String[] getPropertyNames();

    Vector<T> getSources();

    float getWidth();

    boolean isDynamic();
}
