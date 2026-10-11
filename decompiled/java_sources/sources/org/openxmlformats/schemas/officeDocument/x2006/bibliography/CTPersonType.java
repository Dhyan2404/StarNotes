package org.openxmlformats.schemas.officeDocument.x2006.bibliography;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STString;

/* loaded from: classes14.dex */
public interface CTPersonType extends XmlObject {
    public static final DocumentFactory<CTPersonType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTPersonType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctpersontypef23dtype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    void addFirst(String str);

    void addLast(String str);

    void addMiddle(String str);

    STString addNewFirst();

    STString addNewLast();

    STString addNewMiddle();

    String getFirstArray(int i);

    String[] getFirstArray();

    List<String> getFirstList();

    String getLastArray(int i);

    String[] getLastArray();

    List<String> getLastList();

    String getMiddleArray(int i);

    String[] getMiddleArray();

    List<String> getMiddleList();

    void insertFirst(int i, String str);

    void insertLast(int i, String str);

    void insertMiddle(int i, String str);

    STString insertNewFirst(int i);

    STString insertNewLast(int i);

    STString insertNewMiddle(int i);

    void removeFirst(int i);

    void removeLast(int i);

    void removeMiddle(int i);

    void setFirstArray(int i, String str);

    void setFirstArray(String[] strArr);

    void setLastArray(int i, String str);

    void setLastArray(String[] strArr);

    void setMiddleArray(int i, String str);

    void setMiddleArray(String[] strArr);

    int sizeOfFirstArray();

    int sizeOfLastArray();

    int sizeOfMiddleArray();

    STString xgetFirstArray(int i);

    STString[] xgetFirstArray();

    List<STString> xgetFirstList();

    STString xgetLastArray(int i);

    STString[] xgetLastArray();

    List<STString> xgetLastList();

    STString xgetMiddleArray(int i);

    STString[] xgetMiddleArray();

    List<STString> xgetMiddleList();

    void xsetFirstArray(int i, STString sTString);

    void xsetFirstArray(STString[] sTStringArr);

    void xsetLastArray(int i, STString sTString);

    void xsetLastArray(STString[] sTStringArr);

    void xsetMiddleArray(int i, STString sTString);

    void xsetMiddleArray(STString[] sTStringArr);
}
