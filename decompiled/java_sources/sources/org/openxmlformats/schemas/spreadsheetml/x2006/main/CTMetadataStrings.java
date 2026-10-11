package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMetadataStrings extends XmlObject {
    public static final DocumentFactory<CTMetadataStrings> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMetadataStrings> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmetadatastrings65f2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTXStringElement addNewS();

    long getCount();

    CTXStringElement getSArray(int i);

    CTXStringElement[] getSArray();

    List<CTXStringElement> getSList();

    CTXStringElement insertNewS(int i);

    boolean isSetCount();

    void removeS(int i);

    void setCount(long j);

    void setSArray(int i, CTXStringElement cTXStringElement);

    void setSArray(CTXStringElement[] cTXStringElementArr);

    int sizeOfSArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
