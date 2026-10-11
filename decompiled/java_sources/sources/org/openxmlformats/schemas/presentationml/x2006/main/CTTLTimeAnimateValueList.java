package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTTLTimeAnimateValueList extends XmlObject {
    public static final DocumentFactory<CTTLTimeAnimateValueList> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTTLTimeAnimateValueList> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "cttltimeanimatevaluelist7152type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTTLTimeAnimateValue addNewTav();

    CTTLTimeAnimateValue getTavArray(int i);

    CTTLTimeAnimateValue[] getTavArray();

    List<CTTLTimeAnimateValue> getTavList();

    CTTLTimeAnimateValue insertNewTav(int i);

    void removeTav(int i);

    void setTavArray(int i, CTTLTimeAnimateValue cTTLTimeAnimateValue);

    void setTavArray(CTTLTimeAnimateValue[] cTTLTimeAnimateValueArr);

    int sizeOfTavArray();
}
