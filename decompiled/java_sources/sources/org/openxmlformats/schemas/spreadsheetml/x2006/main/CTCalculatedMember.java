package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlInt;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTCalculatedMember extends XmlObject {
    public static final DocumentFactory<CTCalculatedMember> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCalculatedMember> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcalculatedmember9dc1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    String getHierarchy();

    String getMdx();

    String getMemberName();

    String getName();

    String getParent();

    boolean getSet();

    int getSolveOrder();

    boolean isSetExtLst();

    boolean isSetHierarchy();

    boolean isSetMemberName();

    boolean isSetParent();

    boolean isSetSet();

    boolean isSetSolveOrder();

    void setExtLst(CTExtensionList cTExtensionList);

    void setHierarchy(String str);

    void setMdx(String str);

    void setMemberName(String str);

    void setName(String str);

    void setParent(String str);

    void setSet(boolean z);

    void setSolveOrder(int i);

    void unsetExtLst();

    void unsetHierarchy();

    void unsetMemberName();

    void unsetParent();

    void unsetSet();

    void unsetSolveOrder();

    STXstring xgetHierarchy();

    STXstring xgetMdx();

    STXstring xgetMemberName();

    STXstring xgetName();

    STXstring xgetParent();

    XmlBoolean xgetSet();

    XmlInt xgetSolveOrder();

    void xsetHierarchy(STXstring sTXstring);

    void xsetMdx(STXstring sTXstring);

    void xsetMemberName(STXstring sTXstring);

    void xsetName(STXstring sTXstring);

    void xsetParent(STXstring sTXstring);

    void xsetSet(XmlBoolean xmlBoolean);

    void xsetSolveOrder(XmlInt xmlInt);
}
