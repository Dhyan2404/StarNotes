package com.microsoft.schemas.office.spreadsheetml.x2020.threadedcomments2;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlUnsignedInt;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STXstring;
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTExtensionList;

/* loaded from: classes7.dex */
public interface CTCommentHyperlink extends XmlObject {
    public static final DocumentFactory<CTCommentHyperlink> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommentHyperlink> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommenthyperlink1f71type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    long getLength();

    long getStartIndex();

    String getUrl();

    boolean isSetExtLst();

    void setExtLst(CTExtensionList cTExtensionList);

    void setLength(long j);

    void setStartIndex(long j);

    void setUrl(String str);

    void unsetExtLst();

    XmlUnsignedInt xgetLength();

    XmlUnsignedInt xgetStartIndex();

    STXstring xgetUrl();

    void xsetLength(XmlUnsignedInt xmlUnsignedInt);

    void xsetStartIndex(XmlUnsignedInt xmlUnsignedInt);

    void xsetUrl(STXstring sTXstring);
}
