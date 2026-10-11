package org.openxmlformats.schemas.spreadsheetml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes15.dex */
public interface CTUsers extends XmlObject {
    public static final DocumentFactory<CTUsers> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTUsers> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctusersa927type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTSharedUser addNewUserInfo();

    long getCount();

    CTSharedUser getUserInfoArray(int i);

    CTSharedUser[] getUserInfoArray();

    List<CTSharedUser> getUserInfoList();

    CTSharedUser insertNewUserInfo(int i);

    boolean isSetCount();

    void removeUserInfo(int i);

    void setCount(long j);

    void setUserInfoArray(int i, CTSharedUser cTSharedUser);

    void setUserInfoArray(CTSharedUser[] cTSharedUserArr);

    int sizeOfUserInfoArray();

    void unsetCount();

    XmlUnsignedInt xgetCount();

    void xsetCount(XmlUnsignedInt xmlUnsignedInt);
}
