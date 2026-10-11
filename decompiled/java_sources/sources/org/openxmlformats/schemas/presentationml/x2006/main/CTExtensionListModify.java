package org.openxmlformats.schemas.presentationml.x2006.main;

import java.util.List;
import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes14.dex */
public interface CTExtensionListModify extends XmlObject {
    public static final DocumentFactory<CTExtensionListModify> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTExtensionListModify> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctextensionlistmodify8c58type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtension addNewExt();

    CTExtension getExtArray(int i);

    CTExtension[] getExtArray();

    List<CTExtension> getExtList();

    boolean getMod();

    CTExtension insertNewExt(int i);

    boolean isSetMod();

    void removeExt(int i);

    void setExtArray(int i, CTExtension cTExtension);

    void setExtArray(CTExtension[] cTExtensionArr);

    void setMod(boolean z);

    int sizeOfExtArray();

    void unsetMod();

    XmlBoolean xgetMod();

    void xsetMod(XmlBoolean xmlBoolean);
}
