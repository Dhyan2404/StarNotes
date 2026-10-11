package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STTargetScreenSz;

/* loaded from: classes16.dex */
public interface CTTargetScreenSz extends XmlObject {
    public static final DocumentFactory<CTTargetScreenSz> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTargetScreenSz> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttargetscreensz9584type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STTargetScreenSz.Enum getVal();

    void setVal(STTargetScreenSz.Enum r1);

    STTargetScreenSz xgetVal();

    void xsetVal(STTargetScreenSz sTTargetScreenSz);
}
