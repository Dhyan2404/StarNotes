package org.openxmlformats.schemas.officeDocument.x2006.characteristics;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTAdditionalCharacteristics extends XmlObject {
    public static final DocumentFactory<CTAdditionalCharacteristics> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTAdditionalCharacteristics> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctadditionalcharacteristics01f5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCharacteristic addNewCharacteristic();

    CTCharacteristic getCharacteristicArray(int i);

    CTCharacteristic[] getCharacteristicArray();

    List<CTCharacteristic> getCharacteristicList();

    CTCharacteristic insertNewCharacteristic(int i);

    void removeCharacteristic(int i);

    void setCharacteristicArray(int i, CTCharacteristic cTCharacteristic);

    void setCharacteristicArray(CTCharacteristic[] cTCharacteristicArr);

    int sizeOfCharacteristicArray();
}
