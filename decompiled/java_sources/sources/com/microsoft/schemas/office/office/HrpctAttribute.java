package com.microsoft.schemas.office.office;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlFloat;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HrpctAttribute extends XmlObject {
    public static final DocumentFactory<HrpctAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HrpctAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hrpct420aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    float getHrpct();

    boolean isSetHrpct();

    void setHrpct(float f);

    void unsetHrpct();

    XmlFloat xgetHrpct();

    void xsetHrpct(XmlFloat xmlFloat);
}
