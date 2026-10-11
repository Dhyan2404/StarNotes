package org.apache.poi.xwpf.usermodel;

import java.awt.Image;
import java.awt.geom.Rectangle2D;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.latex.Latex;
import org.apache.poi.latex.LatexRender;
import org.apache.poi.p114wp.draw.ImageCreator;
import org.apache.poi.p114wp.usermodel.IPicture;
import org.apache.poi.p114wp.usermodel.Position;
import org.apache.poi.sl.draw.ImageRenderer;
import org.apache.poi.util.RectUtils;

/* loaded from: classes13.dex */
public class LatexPicture implements IPicture, IRunPart {
    public static final String LATEX_PICTURE_NAME = "latex_image";
    private final Logger LOG = LogManager.getLogger(getClass());
    private Rectangle2D anchor;
    private Latex latex;

    public LatexPicture(Latex latex) {
        this.latex = latex;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Rectangle2D getAnchor() {
        return this.anchor;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getContentType() {
        return Latex.LATEX_TYPE;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public <IMAGE extends Image> IMAGE getImage(ImageCreator<IMAGE> imageCreator) {
        ImageRenderer imageRenderer = imageCreator.getImageRenderer(Latex.LATEX_TYPE);
        if (!imageRenderer.canRender(Latex.LATEX_TYPE) || !(imageRenderer instanceof LatexRender)) {
            this.anchor = new Rectangle2D.Double();
            return null;
        }
        LatexRender latexRender = (LatexRender) imageRenderer;
        latexRender.loadImage(this.latex, (Rectangle2D) null);
        Rectangle2D bounds = latexRender.getBounds();
        this.anchor = bounds;
        if (RectUtils.isEmptyImage(bounds)) {
            latexRender.close();
            this.LOG.atError().log("Empty image[{}] anchor:{}", this.latex.content, this.anchor);
            return null;
        }
        Rectangle2D.Double r0 = new Rectangle2D.Double(0.0d, 0.0d, imageCreator.getScale() * this.anchor.getWidth(), imageCreator.getScale() * this.anchor.getHeight());
        IMAGE createImage = imageCreator.createImage((int) r0.getWidth(), (int) r0.getHeight());
        latexRender.drawImage(imageCreator.getGraphics(createImage), imageCreator.getScale());
        latexRender.close();
        return createImage;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public String getName() {
        return LATEX_PICTURE_NAME;
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public Position getPosition() {
        return Position.MIDDLE;
    }

    @Override // org.apache.poi.xwpf.usermodel.IRunPart
    public String getText() {
        return "LatexPicture{" + this.latex.content + '}';
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public int identifier() {
        long hashCode = (-13952658) + (this.latex.content.hashCode() * 37);
        Latex latex = this.latex;
        long hashCode2 = hashCode + (latex.fontSize * 43.0f) + (latex.insets.hashCode() * 53);
        return ((int) hashCode2) ^ ((int) (hashCode2 >> 32));
    }

    @Override // org.apache.poi.p114wp.usermodel.IPicture
    public <IMAGE extends Image> Rectangle2D getAnchor(ImageCreator<IMAGE> imageCreator) {
        if (this.anchor == null) {
            ImageRenderer imageRenderer = imageCreator.getImageRenderer(Latex.LATEX_TYPE);
            if (imageRenderer.canRender(Latex.LATEX_TYPE) && (imageRenderer instanceof LatexRender)) {
                LatexRender latexRender = (LatexRender) imageRenderer;
                latexRender.loadImage(this.latex, (Rectangle2D) null);
                this.anchor = latexRender.getBounds();
                latexRender.close();
            } else {
                this.anchor = new Rectangle2D.Double();
                return null;
            }
        }
        return this.anchor;
    }
}
