package com.microsoft.schemas.office.office;

import java.math.BigInteger;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlInteger;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface RegroupidAttribute extends XmlObject {
    public static final DocumentFactory<RegroupidAttribute> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<RegroupidAttribute> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "regroupid623aattrtypetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    BigInteger getRegroupid();

    boolean isSetRegroupid();

    void setRegroupid(BigInteger bigInteger);

    void unsetRegroupid();

    XmlInteger xgetRegroupid();

    void xsetRegroupid(XmlInteger xmlInteger);
}
