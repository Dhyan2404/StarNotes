package org.apache.poi.xwpf.usermodel;

import java.util.List;
import org.apache.poi.xwpf.usermodel.Shape;

/* loaded from: classes13.dex */
public interface ShapeContainer<S extends Shape<S>> extends Shape<S>, Iterable<S> {
    void addShape(S s);

    List<S> getShapes();
}
