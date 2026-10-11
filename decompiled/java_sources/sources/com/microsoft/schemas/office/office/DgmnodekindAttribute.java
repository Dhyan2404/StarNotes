package com.microsoft.schemas.office.office;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface DgmnodekindAttribute extends XmlObject {
    public static final DocumentFactory<DgmnodekindAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<DgmnodekindAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "dgmnodekindcc93attrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getDgmnodekind();

    boolean isSetDgmnodekind();

    void setDgmnodekind(BigInteger bigInteger);

    void unsetDgmnodekind();

    XmlInteger xgetDgmnodekind();

    void xsetDgmnodekind(XmlInteger xmlInteger);
}
