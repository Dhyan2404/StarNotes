package org.openxmlformats.schemas.drawingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTCustomColorList extends XmlObject {
    public static final DocumentFactory<CTCustomColorList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCustomColorList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcustomcolorlist6661type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCustomColor addNewCustClr();

    CTCustomColor getCustClrArray(int i);

    CTCustomColor[] getCustClrArray();

    List<CTCustomColor> getCustClrList();

    CTCustomColor insertNewCustClr(int i);

    void removeCustClr(int i);

    void setCustClrArray(int i, CTCustomColor cTCustomColor);

    void setCustClrArray(CTCustomColor[] cTCustomColorArr);

    int sizeOfCustClrArray();
}
