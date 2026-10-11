package org.openxmlformats.schemas.drawingml.x2006.diagram;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTPtList extends XmlObject {
    public static final DocumentFactory<CTPtList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPtList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctptlistf2eftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTPt addNewPt();

    CTPt getPtArray(int i);

    CTPt[] getPtArray();

    List<CTPt> getPtList();

    CTPt insertNewPt(int i);

    void removePt(int i);

    void setPtArray(int i, CTPt cTPt);

    void setPtArray(CTPt[] cTPtArr);

    int sizeOfPtArray();
}
