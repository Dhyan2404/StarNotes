package org.openxmlformats.schemas.drawingml.x2006.chartDrawing;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTDrawing extends XmlObject {
    public static final DocumentFactory<CTDrawing> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDrawing> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdrawingfb76type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAbsSizeAnchor addNewAbsSizeAnchor();

    CTRelSizeAnchor addNewRelSizeAnchor();

    CTAbsSizeAnchor getAbsSizeAnchorArray(int i);

    CTAbsSizeAnchor[] getAbsSizeAnchorArray();

    List<CTAbsSizeAnchor> getAbsSizeAnchorList();

    CTRelSizeAnchor getRelSizeAnchorArray(int i);

    CTRelSizeAnchor[] getRelSizeAnchorArray();

    List<CTRelSizeAnchor> getRelSizeAnchorList();

    CTAbsSizeAnchor insertNewAbsSizeAnchor(int i);

    CTRelSizeAnchor insertNewRelSizeAnchor(int i);

    void removeAbsSizeAnchor(int i);

    void removeRelSizeAnchor(int i);

    void setAbsSizeAnchorArray(int i, CTAbsSizeAnchor cTAbsSizeAnchor);

    void setAbsSizeAnchorArray(CTAbsSizeAnchor[] cTAbsSizeAnchorArr);

    void setRelSizeAnchorArray(int i, CTRelSizeAnchor cTRelSizeAnchor);

    void setRelSizeAnchorArray(CTRelSizeAnchor[] cTRelSizeAnchorArr);

    int sizeOfAbsSizeAnchorArray();

    int sizeOfRelSizeAnchorArray();
}
