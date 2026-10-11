package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTGroupMembers extends XmlObject {
    public static final DocumentFactory<CTGroupMembers> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTGroupMembers> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctgroupmembers7d63type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTGroupMember addNewGroupMember();

    long getCount();

    CTGroupMember getGroupMemberArray(int i);

    CTGroupMember[] getGroupMemberArray();

    List<CTGroupMember> getGroupMemberList();

    CTGroupMember insertNewGroupMember(int i);

    boolean isSetCount();

    void removeGroupMember(int i);

    void setCount(long j);

    void setGroupMemberArray(int i, CTGroupMember cTGroupMember);

    void setGroupMemberArray(CTGroupMember[] cTGroupMemberArr);

    int sizeOfGroupMemberArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
