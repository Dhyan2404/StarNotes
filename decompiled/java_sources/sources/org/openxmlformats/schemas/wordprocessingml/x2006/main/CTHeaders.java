package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTHeaders extends XmlObject {
    public static final DocumentFactory<CTHeaders> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTHeaders> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctheaders8acctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTString addNewHeader();

    CTString getHeaderArray(int i);

    CTString[] getHeaderArray();

    List<CTString> getHeaderList();

    CTString insertNewHeader(int i);

    void removeHeader(int i);

    void setHeaderArray(int i, CTString cTString);

    void setHeaderArray(CTString[] cTStringArr);

    int sizeOfHeaderArray();
}
