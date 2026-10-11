package java.awt.image.renderable;

import java.awt.geom.Rectangle2D;
import java.awt.image.RenderedImage;

/* loaded from: classes5.dex */
public interface ContextualRenderedImageFactory extends RenderedImageFactory {
    RenderedImage create(RenderContext renderContext, ParameterBlock parameterBlock);

    Rectangle2D getBounds2D(ParameterBlock parameterBlock);

    Object getProperty(ParameterBlock parameterBlock, String str);

    String[] getPropertyNames();

    boolean isDynamic();

    RenderContext mapRenderContext(int i, RenderContext renderContext, ParameterBlock parameterBlock, RenderableImage renderableImage);
}
