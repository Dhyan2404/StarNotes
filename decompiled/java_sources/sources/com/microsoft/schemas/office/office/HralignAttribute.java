package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STHrAlign;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HralignAttribute extends XmlObject {
    public static final DocumentFactory<HralignAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HralignAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "hralignc56eattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STHrAlign.Enum getHralign();

    boolean isSetHralign();

    void setHralign(STHrAlign.Enum r1);

    void unsetHralign();

    STHrAlign xgetHralign();

    void xsetHralign(STHrAlign sTHrAlign);
}
