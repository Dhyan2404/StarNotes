package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTDocRsids extends XmlObject {
    public static final DocumentFactory<CTDocRsids> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocRsids> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocrsids0dc9type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTLongHexNumber addNewRsid();

    CTLongHexNumber addNewRsidRoot();

    CTLongHexNumber getRsidArray(int i);

    CTLongHexNumber[] getRsidArray();

    List<CTLongHexNumber> getRsidList();

    CTLongHexNumber getRsidRoot();

    CTLongHexNumber insertNewRsid(int i);

    boolean isSetRsidRoot();

    void removeRsid(int i);

    void setRsidArray(int i, CTLongHexNumber cTLongHexNumber);

    void setRsidArray(CTLongHexNumber[] cTLongHexNumberArr);

    void setRsidRoot(CTLongHexNumber cTLongHexNumber);

    int sizeOfRsidArray();

    void unsetRsidRoot();
}
