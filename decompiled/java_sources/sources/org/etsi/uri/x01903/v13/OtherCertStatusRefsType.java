package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface OtherCertStatusRefsType extends XmlObject {
    public static final DocumentFactory<OtherCertStatusRefsType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<OtherCertStatusRefsType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "othercertstatusrefstype6922type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AnyType addNewOtherRef();

    AnyType getOtherRefArray(int i);

    AnyType[] getOtherRefArray();

    List<AnyType> getOtherRefList();

    AnyType insertNewOtherRef(int i);

    void removeOtherRef(int i);

    void setOtherRefArray(int i, AnyType anyType);

    void setOtherRefArray(AnyType[] anyTypeArr);

    int sizeOfOtherRefArray();
}
