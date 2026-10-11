package com.microsoft.schemas.office.word.x2012.wordml;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STLongHexNumber;

/* loaded from: classes7.dex */
public interface CTCommentEx extends XmlObject {
    public static final DocumentFactory<CTCommentEx> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTCommentEx> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcommentexfadetype");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getDone();

    byte[] getParaId();

    byte[] getParaIdParent();

    boolean isSetDone();

    boolean isSetParaIdParent();

    void setDone(Object obj);

    void setParaId(byte[] bArr);

    void setParaIdParent(byte[] bArr);

    void unsetDone();

    void unsetParaIdParent();

    STOnOff xgetDone();

    STLongHexNumber xgetParaId();

    STLongHexNumber xgetParaIdParent();

    void xsetDone(STOnOff sTOnOff);

    void xsetParaId(STLongHexNumber sTLongHexNumber);

    void xsetParaIdParent(STLongHexNumber sTLongHexNumber);
}
