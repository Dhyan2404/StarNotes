package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocParts extends XmlObject {
    public static final DocumentFactory<CTDocParts> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocParts> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartsf460type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTDocPart addNewDocPart();

    CTDocPart getDocPartArray(int i);

    CTDocPart[] getDocPartArray();

    List<CTDocPart> getDocPartList();

    CTDocPart insertNewDocPart(int i);

    void removeDocPart(int i);

    void setDocPartArray(int i, CTDocPart cTDocPart);

    void setDocPartArray(CTDocPart[] cTDocPartArr);

    int sizeOfDocPartArray();
}
