package org.etsi.uri.x01903.v13;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlID;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes13.dex */
public interface UnsignedDataObjectPropertiesType extends XmlObject {
    public static final DocumentFactory<UnsignedDataObjectPropertiesType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<UnsignedDataObjectPropertiesType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "unsigneddataobjectpropertiestype61fftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    AnyType addNewUnsignedDataObjectProperty();

    String getId();

    AnyType getUnsignedDataObjectPropertyArray(int i);

    AnyType[] getUnsignedDataObjectPropertyArray();

    List<AnyType> getUnsignedDataObjectPropertyList();

    AnyType insertNewUnsignedDataObjectProperty(int i);

    boolean isSetId();

    void removeUnsignedDataObjectProperty(int i);

    void setId(String str);

    void setUnsignedDataObjectPropertyArray(int i, AnyType anyType);

    void setUnsignedDataObjectPropertyArray(AnyType[] anyTypeArr);

    int sizeOfUnsignedDataObjectPropertyArray();

    void unsetId();

    XmlID xgetId();

    void xsetId(XmlID xmlID);
}
