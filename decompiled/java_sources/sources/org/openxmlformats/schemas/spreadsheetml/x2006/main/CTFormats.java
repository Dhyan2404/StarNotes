package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTFormats extends XmlObject {
    public static final DocumentFactory<CTFormats> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFormats> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctformatseebbtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTFormat addNewFormat();

    long getCount();

    CTFormat getFormatArray(int i);

    CTFormat[] getFormatArray();

    List<CTFormat> getFormatList();

    CTFormat insertNewFormat(int i);

    boolean isSetCount();

    void removeFormat(int i);

    void setCount(long j);

    void setFormatArray(int i, CTFormat cTFormat);

    void setFormatArray(CTFormat[] cTFormatArr);

    int sizeOfFormatArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
