package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;

/* loaded from: classes15.dex */
public interface CTGroupLevel extends XmlObject {
    public static final DocumentFactory<CTGroupLevel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupLevel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgrouplevel558etype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTGroups addNewGroups();

    String getCaption();

    boolean getCustomRollUp();

    CTExtensionList getExtLst();

    CTGroups getGroups();

    String getUniqueName();

    boolean getUser();

    boolean isSetCustomRollUp();

    boolean isSetExtLst();

    boolean isSetGroups();

    boolean isSetUser();

    void setCaption(String str);

    void setCustomRollUp(boolean z);

    void setExtLst(CTExtensionList cTExtensionList);

    void setGroups(CTGroups cTGroups);

    void setUniqueName(String str);

    void setUser(boolean z);

    void unsetCustomRollUp();

    void unsetExtLst();

    void unsetGroups();

    void unsetUser();

    STXstring xgetCaption();

    XmlBoolean xgetCustomRollUp();

    STXstring xgetUniqueName();

    XmlBoolean xgetUser();

    void xsetCaption(STXstring sTXstring);

    void xsetCustomRollUp(XmlBoolean xmlBoolean);

    void xsetUniqueName(STXstring sTXstring);

    void xsetUser(XmlBoolean xmlBoolean);
}
