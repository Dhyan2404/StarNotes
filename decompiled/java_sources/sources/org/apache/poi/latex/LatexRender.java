package org.apache.poi.latex;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import java.io.Closeable;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.sl.draw.ImageRenderer;

/* loaded from: classes12.dex */
public abstract class LatexRender implements ImageRenderer, Closeable {
    protected static final Logger LOG = LogManager.getLogger((Class<?>) LatexRender.class);
    protected Latex latex;

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public boolean canRender(String str) {
        return Latex.LATEX_TYPE.equalsIgnoreCase(str);
    }

    public void close() {
    }

    public abstract boolean drawImage(Graphics2D graphics2D, float f);

    @Override // org.apache.poi.sl.draw.ImageRenderer
    public Rectangle2D getBounds() {
        return getNativeBounds();
    }

    public abstract void loadImage(String str, Rectangle2D rectangle2D);

    public abstract void loadImage(Latex latex, Rectangle2D rectangle2D);
}
