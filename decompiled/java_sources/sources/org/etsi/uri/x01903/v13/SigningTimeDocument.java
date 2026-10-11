package org.etsi.uri.x01903.v13;

import java.util.Calendar;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlDateTime;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SigningTimeDocument extends XmlObject {
    public static final DocumentFactory<SigningTimeDocument> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SigningTimeDocument> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signingtime9e64doctype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Calendar getSigningTime();

    void setSigningTime(Calendar calendar);

    XmlDateTime xgetSigningTime();

    void xsetSigningTime(XmlDateTime xmlDateTime);
}
