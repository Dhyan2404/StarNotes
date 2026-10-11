package com.microsoft.schemas.office.office;

import com.microsoft.schemas.office.office.STInsetMode;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface InsetmodeAttribute extends XmlObject {
    public static final DocumentFactory<InsetmodeAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<InsetmodeAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "insetmode7733attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STInsetMode.Enum getInsetmode();

    boolean isSetInsetmode();

    void setInsetmode(STInsetMode.Enum r1);

    void unsetInsetmode();

    STInsetMode xgetInsetmode();

    void xsetInsetmode(STInsetMode sTInsetMode);
}
