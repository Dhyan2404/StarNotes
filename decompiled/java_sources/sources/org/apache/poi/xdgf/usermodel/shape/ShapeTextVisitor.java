package org.apache.poi.xdgf.usermodel.shape;

import java.awt.geom.AffineTransform;
import org.apache.poi.xdgf.usermodel.XDGFShape;

/* loaded from: classes13.dex */
public class ShapeTextVisitor extends ShapeVisitor {
    protected StringBuilder text = new StringBuilder();

    /* loaded from: classes13.dex */
    public static class TextAcceptor implements ShapeVisitorAcceptor {
        @Override // org.apache.poi.xdgf.usermodel.shape.ShapeVisitorAcceptor
        public boolean accept(XDGFShape xDGFShape) {
            return xDGFShape.hasText();
        }
    }

    @Override // org.apache.poi.xdgf.usermodel.shape.ShapeVisitor
    public ShapeVisitorAcceptor getAcceptor() {
        return new TextAcceptor();
    }

    public String getText() {
        return this.text.toString();
    }

    @Override // org.apache.poi.xdgf.usermodel.shape.ShapeVisitor
    public void visit(XDGFShape xDGFShape, AffineTransform affineTransform, int i) {
        this.text.append(xDGFShape.getText().getTextContent().trim());
        this.text.append('\n');
    }
}
