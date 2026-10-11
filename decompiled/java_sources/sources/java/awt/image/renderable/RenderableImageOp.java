package java.awt.image.renderable;

import java.awt.RenderingHints;
import java.awt.geom.AffineTransform;
import java.awt.geom.Rectangle2D;
import java.awt.image.RenderedImage;
import java.util.Vector;

/* loaded from: classes5.dex */
public class RenderableImageOp implements RenderableImage {
    Rectangle2D boundingBox;
    ContextualRenderedImageFactory myCRIF;
    ParameterBlock paramBlock;

    public RenderableImageOp(ContextualRenderedImageFactory contextualRenderedImageFactory, ParameterBlock parameterBlock) {
        this.myCRIF = contextualRenderedImageFactory;
        this.paramBlock = (ParameterBlock) parameterBlock.clone();
    }

    private Vector getRenderableSources() {
        if (this.paramBlock.getNumSources() <= 0) {
            return null;
        }
        Vector vector = new Vector();
        for (int i = 0; i < this.paramBlock.getNumSources(); i++) {
            Object source = this.paramBlock.getSource(i);
            if (!(source instanceof RenderableImage)) {
                return vector;
            }
            vector.add((RenderableImage) source);
        }
        return vector;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public RenderedImage createDefaultRendering() {
        return createRendering(new RenderContext(new AffineTransform()));
    }

    @Override // java.awt.image.renderable.RenderableImage
    public RenderedImage createRendering(RenderContext renderContext) {
        ParameterBlock parameterBlock = (ParameterBlock) this.paramBlock.clone();
        Vector renderableSources = getRenderableSources();
        if (renderableSources != null) {
            try {
                Vector<Object> vector = new Vector<>();
                for (int i = 0; i < renderableSources.size(); i++) {
                    RenderedImage createRendering = ((RenderableImage) renderableSources.elementAt(i)).createRendering(this.myCRIF.mapRenderContext(i, renderContext, this.paramBlock, this));
                    if (createRendering == null) {
                        return null;
                    }
                    vector.addElement(createRendering);
                }
                if (vector.size() > 0) {
                    parameterBlock.setSources(vector);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                return null;
            }
        }
        return this.myCRIF.create(renderContext, parameterBlock);
    }

    @Override // java.awt.image.renderable.RenderableImage
    public RenderedImage createScaledRendering(int i, int i2, RenderingHints renderingHints) {
        double width = i / getWidth();
        double height = i2 / getHeight();
        if (Math.abs((width / height) - 1.0d) < 0.01d) {
            width = height;
        }
        return createRendering(new RenderContext(AffineTransform.getScaleInstance(width, height), renderingHints));
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getHeight() {
        if (this.boundingBox == null) {
            this.boundingBox = this.myCRIF.getBounds2D(this.paramBlock);
        }
        return (float) this.boundingBox.getHeight();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getMinX() {
        if (this.boundingBox == null) {
            this.boundingBox = this.myCRIF.getBounds2D(this.paramBlock);
        }
        return (float) this.boundingBox.getMinX();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getMinY() {
        if (this.boundingBox == null) {
            this.boundingBox = this.myCRIF.getBounds2D(this.paramBlock);
        }
        return (float) this.boundingBox.getMinY();
    }

    public ParameterBlock getParameterBlock() {
        return this.paramBlock;
    }

    @Override // java.awt.image.renderable.RenderableImage
    public Object getProperty(String str) {
        return this.myCRIF.getProperty(this.paramBlock, str);
    }

    @Override // java.awt.image.renderable.RenderableImage
    public String[] getPropertyNames() {
        return this.myCRIF.getPropertyNames();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public Vector<RenderableImage> getSources() {
        return getRenderableSources();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public float getWidth() {
        if (this.boundingBox == null) {
            this.boundingBox = this.myCRIF.getBounds2D(this.paramBlock);
        }
        return (float) this.boundingBox.getWidth();
    }

    @Override // java.awt.image.renderable.RenderableImage
    public boolean isDynamic() {
        return this.myCRIF.isDynamic();
    }

    public ParameterBlock setParameterBlock(ParameterBlock parameterBlock) {
        ParameterBlock parameterBlock2 = this.paramBlock;
        this.paramBlock = (ParameterBlock) parameterBlock.clone();
        return parameterBlock2;
    }
}
