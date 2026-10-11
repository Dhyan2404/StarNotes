package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTCalculatedMembers extends XmlObject {
    public static final DocumentFactory<CTCalculatedMembers> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCalculatedMembers> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcalculatedmembersfa5atype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTCalculatedMember addNewCalculatedMember();

    CTCalculatedMember getCalculatedMemberArray(int i);

    CTCalculatedMember[] getCalculatedMemberArray();

    List<CTCalculatedMember> getCalculatedMemberList();

    long getCount();

    CTCalculatedMember insertNewCalculatedMember(int i);

    boolean isSetCount();

    void removeCalculatedMember(int i);

    void setCalculatedMemberArray(int i, CTCalculatedMember cTCalculatedMember);

    void setCalculatedMemberArray(CTCalculatedMember[] cTCalculatedMemberArr);

    void setCount(long j);

    int sizeOfCalculatedMemberArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
