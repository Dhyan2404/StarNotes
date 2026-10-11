package org.apache.poi.xdgf.usermodel.shape;

import java.awt.geom.AffineTransform;
import org.apache.poi.xdgf.usermodel.XDGFShape;
import org.apache.poi.xdgf.usermodel.shape.ShapeVisitor;

/* loaded from: classes13.dex */
public abstract class ShapeVisitor {
    protected ShapeVisitorAcceptor _acceptor = getAcceptor();

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$getAcceptor$0(XDGFShape xDGFShape) {
        return !xDGFShape.isDeleted();
    }

    public boolean accept(XDGFShape xDGFShape) {
        return this._acceptor.accept(xDGFShape);
    }

    public ShapeVisitorAcceptor getAcceptor() {
        return new ShapeVisitorAcceptor() { // from class: com.sunia.HTREnginev2.rmm
            @Override // org.apache.poi.xdgf.usermodel.shape.ShapeVisitorAcceptor
            public final boolean accept(XDGFShape xDGFShape) {
                boolean lambda$getAcceptor$0;
                lambda$getAcceptor$0 = ShapeVisitor.lambda$getAcceptor$0(xDGFShape);
                return lambda$getAcceptor$0;
            }
        };
    }

    public void setAcceptor(ShapeVisitorAcceptor shapeVisitorAcceptor) {
        this._acceptor = shapeVisitorAcceptor;
    }

    public abstract void visit(XDGFShape xDGFShape, AffineTransform affineTransform, int i);
}
