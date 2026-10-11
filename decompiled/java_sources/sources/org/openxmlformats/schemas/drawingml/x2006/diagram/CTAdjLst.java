package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAdjLst extends XmlObject {
    public static final DocumentFactory<CTAdjLst> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAdjLst> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctadjlstfe8btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTAdj addNewAdj();

    CTAdj getAdjArray(int i);

    CTAdj[] getAdjArray();

    List<CTAdj> getAdjList();

    CTAdj insertNewAdj(int i);

    void removeAdj(int i);

    void setAdjArray(int i, CTAdj cTAdj);

    void setAdjArray(CTAdj[] cTAdjArr);

    int sizeOfAdjArray();
}
