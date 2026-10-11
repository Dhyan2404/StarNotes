package org.apache.poi.sl.draw.geom;

import java.awt.Shape;

/* loaded from: classes12.dex */
public class Outline {
    private final PathIf path;
    private final Shape shape;

    public Outline(Shape shape, PathIf pathIf) {
        this.shape = shape;
        this.path = pathIf;
    }

    public Shape getOutline() {
        return this.shape;
    }

    public PathIf getPath() {
        return this.path;
    }
}
