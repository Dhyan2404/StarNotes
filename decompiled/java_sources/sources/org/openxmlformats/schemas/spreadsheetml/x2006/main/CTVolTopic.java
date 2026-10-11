package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.STVolValueType;

/* loaded from: classes15.dex */
public interface CTVolTopic extends XmlObject {
    public static final DocumentFactory<CTVolTopic> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTVolTopic> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctvoltopic23e5type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STXstring addNewStp();

    CTVolTopicRef addNewTr();

    void addStp(String str);

    String getStpArray(int i);

    String[] getStpArray();

    List<String> getStpList();

    STVolValueType.Enum getT();

    CTVolTopicRef getTrArray(int i);

    CTVolTopicRef[] getTrArray();

    List<CTVolTopicRef> getTrList();

    String getV();

    STXstring insertNewStp(int i);

    CTVolTopicRef insertNewTr(int i);

    void insertStp(int i, String str);

    boolean isSetT();

    void removeStp(int i);

    void removeTr(int i);

    void setStpArray(int i, String str);

    void setStpArray(String[] strArr);

    void setT(STVolValueType.Enum r1);

    void setTrArray(int i, CTVolTopicRef cTVolTopicRef);

    void setTrArray(CTVolTopicRef[] cTVolTopicRefArr);

    void setV(String str);

    int sizeOfStpArray();

    int sizeOfTrArray();

    void unsetT();

    STXstring xgetStpArray(int i);

    STXstring[] xgetStpArray();

    List<STXstring> xgetStpList();

    STVolValueType xgetT();

    STXstring xgetV();

    void xsetStpArray(int i, STXstring sTXstring);

    void xsetStpArray(STXstring[] sTXstringArr);

    void xsetT(STVolValueType sTVolValueType);

    void xsetV(STXstring sTXstring);
}
