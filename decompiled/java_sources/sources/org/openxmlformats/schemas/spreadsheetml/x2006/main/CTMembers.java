package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTMembers extends XmlObject {
    public static final DocumentFactory<CTMembers> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTMembers> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctmembers9a38type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTMember addNewMember();

    long getCount();

    long getLevel();

    CTMember getMemberArray(int i);

    CTMember[] getMemberArray();

    List<CTMember> getMemberList();

    CTMember insertNewMember(int i);

    boolean isSetCount();

    boolean isSetLevel();

    void removeMember(int i);

    void setCount(long j);

    void setLevel(long j);

    void setMemberArray(int i, CTMember cTMember);

    void setMemberArray(CTMember[] cTMemberArr);

    int sizeOfMemberArray();

    void unsetCount();

    void unsetLevel();

    XmlUnsignedInt xgetCount();

    XmlUnsignedInt xgetLevel();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);

    void xsetLevel(XmlUnsignedInt xmlUnsignedInt);
}
