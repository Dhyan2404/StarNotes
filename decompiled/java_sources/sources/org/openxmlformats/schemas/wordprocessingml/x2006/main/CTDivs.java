package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDivs extends XmlObject {
    public static final DocumentFactory<CTDivs> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDivs> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdivs96a6type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDiv addNewDiv();

    CTDiv getDivArray(int i);

    CTDiv[] getDivArray();

    List<CTDiv> getDivList();

    CTDiv insertNewDiv(int i);

    void removeDiv(int i);

    void setDivArray(int i, CTDiv cTDiv);

    void setDivArray(CTDiv[] cTDivArr);

    int sizeOfDivArray();
}
