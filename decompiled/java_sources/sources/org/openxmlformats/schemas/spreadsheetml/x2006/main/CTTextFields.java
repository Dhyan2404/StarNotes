package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTTextFields extends XmlObject {
    public static final DocumentFactory<CTTextFields> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTextFields> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttextfields104ftype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTextField addNewTextField();

    long getCount();

    CTTextField getTextFieldArray(int i);

    CTTextField[] getTextFieldArray();

    List<CTTextField> getTextFieldList();

    CTTextField insertNewTextField(int i);

    boolean isSetCount();

    void removeTextField(int i);

    void setCount(long j);

    void setTextFieldArray(int i, CTTextField cTTextField);

    void setTextFieldArray(CTTextField[] cTTextFieldArr);

    int sizeOfTextFieldArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
