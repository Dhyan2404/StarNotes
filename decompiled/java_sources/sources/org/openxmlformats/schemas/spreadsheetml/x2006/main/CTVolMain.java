package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTVolMain extends XmlObject {
    public static final DocumentFactory<CTVolMain> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVolMain> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvolmaina48btype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTVolTopic addNewTp();

    String getFirst();

    CTVolTopic getTpArray(int i);

    CTVolTopic[] getTpArray();

    List<CTVolTopic> getTpList();

    CTVolTopic insertNewTp(int i);

    void removeTp(int i);

    void setFirst(String str);

    void setTpArray(int i, CTVolTopic cTVolTopic);

    void setTpArray(CTVolTopic[] cTVolTopicArr);

    int sizeOfTpArray();

    STXstring xgetFirst();

    void xsetFirst(STXstring sTXstring);
}
