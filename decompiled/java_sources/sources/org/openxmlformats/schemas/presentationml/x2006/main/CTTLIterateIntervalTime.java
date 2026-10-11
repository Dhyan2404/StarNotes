package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLIterateIntervalTime extends XmlObject {
    public static final DocumentFactory<CTTLIterateIntervalTime> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLIterateIntervalTime> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttliterateintervaltimee83btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getVal();

    void setVal(Object obj);

    STTLTime xgetVal();

    void xsetVal(STTLTime sTTLTime);
}
