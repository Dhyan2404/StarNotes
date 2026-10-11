package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTRecipients extends XmlObject {
    public static final DocumentFactory<CTRecipients> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTRecipients> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctrecipientsbdeetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTRecipientData addNewRecipientData();

    CTRecipientData getRecipientDataArray(int i);

    CTRecipientData[] getRecipientDataArray();

    List<CTRecipientData> getRecipientDataList();

    CTRecipientData insertNewRecipientData(int i);

    void removeRecipientData(int i);

    void setRecipientDataArray(int i, CTRecipientData cTRecipientData);

    void setRecipientDataArray(CTRecipientData[] cTRecipientDataArr);

    int sizeOfRecipientDataArray();
}
