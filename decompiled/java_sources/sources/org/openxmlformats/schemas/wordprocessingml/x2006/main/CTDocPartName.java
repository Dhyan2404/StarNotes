package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes16.dex */
public interface CTDocPartName extends XmlObject {
    public static final DocumentFactory<CTDocPartName> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTDocPartName> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctdocpartnameb35ctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getDecorated();

    String getVal();

    boolean isSetDecorated();

    void setDecorated(Object obj);

    void setVal(String str);

    void unsetDecorated();

    STOnOff xgetDecorated();

    STString xgetVal();

    void xsetDecorated(STOnOff sTOnOff);

    void xsetVal(STString sTString);
}
