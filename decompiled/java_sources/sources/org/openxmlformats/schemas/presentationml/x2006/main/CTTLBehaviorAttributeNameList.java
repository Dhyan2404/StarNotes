package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLBehaviorAttributeNameList extends XmlObject {
    public static final DocumentFactory<CTTLBehaviorAttributeNameList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLBehaviorAttributeNameList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttlbehaviorattributenamelist0494type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addAttrName(String str);

    XmlString addNewAttrName();

    String getAttrNameArray(int i);

    String[] getAttrNameArray();

    List<String> getAttrNameList();

    void insertAttrName(int i, String str);

    XmlString insertNewAttrName(int i);

    void removeAttrName(int i);

    void setAttrNameArray(int i, String str);

    void setAttrNameArray(String[] strArr);

    int sizeOfAttrNameArray();

    XmlString xgetAttrNameArray(int i);

    XmlString[] xgetAttrNameArray();

    List<XmlString> xgetAttrNameList();

    void xsetAttrNameArray(int i, XmlString xmlString);

    void xsetAttrNameArray(XmlString[] xmlStringArr);
}
