package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface OtherCertStatusValuesType extends XmlObject {
    public static final DocumentFactory<OtherCertStatusValuesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OtherCertStatusValuesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "othercertstatusvaluestypebf44type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AnyType addNewOtherValue();

    AnyType getOtherValueArray(int i);

    AnyType[] getOtherValueArray();

    List<AnyType> getOtherValueList();

    AnyType insertNewOtherValue(int i);

    void removeOtherValue(int i);

    void setOtherValueArray(int i, AnyType anyType);

    void setOtherValueArray(AnyType[] anyTypeArr);

    int sizeOfOtherValueArray();
}
