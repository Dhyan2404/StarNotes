package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STGuid;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes16.dex */
public interface CTFontRel extends CTRel {
    public static final DocumentFactory<CTFontRel> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTFontRel> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctfontrelc308type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    String getFontKey();

    Object getSubsetted();

    boolean isSetFontKey();

    boolean isSetSubsetted();

    void setFontKey(String str);

    void setSubsetted(Object obj);

    void unsetFontKey();

    void unsetSubsetted();

    STGuid xgetFontKey();

    STOnOff xgetSubsetted();

    void xsetFontKey(STGuid sTGuid);

    void xsetSubsetted(STOnOff sTOnOff);
}
