package org.openxmlformats.schemas.officeDocument.x2006.math;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTEqArr extends XmlObject {
    public static final DocumentFactory<CTEqArr> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTEqArr> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cteqarr9667type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOMathArg addNewE();

    CTEqArrPr addNewEqArrPr();

    CTOMathArg getEArray(int i);

    CTOMathArg[] getEArray();

    List<CTOMathArg> getEList();

    CTEqArrPr getEqArrPr();

    CTOMathArg insertNewE(int i);

    boolean isSetEqArrPr();

    void removeE(int i);

    void setEArray(int i, CTOMathArg cTOMathArg);

    void setEArray(CTOMathArg[] cTOMathArgArr);

    void setEqArrPr(CTEqArrPr cTEqArrPr);

    int sizeOfEArray();

    void unsetEqArrPr();
}
