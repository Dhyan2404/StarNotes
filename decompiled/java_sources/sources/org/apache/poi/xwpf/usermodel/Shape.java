package org.apache.poi.xwpf.usermodel;

import java.awt.Graphics2D;
import java.awt.geom.Rectangle2D;
import org.apache.poi.xwpf.usermodel.Shape;

/* loaded from: classes13.dex */
public interface Shape<S extends Shape<S>> {
    void draw(Graphics2D graphics2D);

    Rectangle2D getAnchor();

    ShapeContainer<S> getParent();

    String getShapeId();
}
