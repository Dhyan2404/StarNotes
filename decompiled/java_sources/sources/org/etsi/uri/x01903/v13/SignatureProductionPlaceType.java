package org.etsi.uri.x01903.v13;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface SignatureProductionPlaceType extends XmlObject {
    public static final DocumentFactory<SignatureProductionPlaceType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<SignatureProductionPlaceType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "signatureproductionplacetype9684type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getCity();

    String getCountryName();

    String getPostalCode();

    String getStateOrProvince();

    boolean isSetCity();

    boolean isSetCountryName();

    boolean isSetPostalCode();

    boolean isSetStateOrProvince();

    void setCity(String str);

    void setCountryName(String str);

    void setPostalCode(String str);

    void setStateOrProvince(String str);

    void unsetCity();

    void unsetCountryName();

    void unsetPostalCode();

    void unsetStateOrProvince();

    XmlString xgetCity();

    XmlString xgetCountryName();

    XmlString xgetPostalCode();

    XmlString xgetStateOrProvince();

    void xsetCity(XmlString xmlString);

    void xsetCountryName(XmlString xmlString);

    void xsetPostalCode(XmlString xmlString);

    void xsetStateOrProvince(XmlString xmlString);
}
