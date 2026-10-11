package org.openxmlformats.schemas.drawingml.x2006.chart;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTLvl extends XmlObject {
    public static final DocumentFactory<CTLvl> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTLvl> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctlvl9d84type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTStrVal addNewPt();

    CTStrVal getPtArray(int i);

    CTStrVal[] getPtArray();

    List<CTStrVal> getPtList();

    CTStrVal insertNewPt(int i);

    void removePt(int i);

    void setPtArray(int i, CTStrVal cTStrVal);

    void setPtArray(CTStrVal[] cTStrValArr);

    int sizeOfPtArray();
}
