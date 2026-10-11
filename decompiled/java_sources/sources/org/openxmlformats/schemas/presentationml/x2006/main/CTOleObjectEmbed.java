package org.openxmlformats.schemas.presentationml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.presentationml.x2006.main.STOleObjectFollowColorScheme;

/* loaded from: classes14.dex */
public interface CTOleObjectEmbed extends XmlObject {
    public static final DocumentFactory<CTOleObjectEmbed> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTOleObjectEmbed> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctoleobjectembedcc93type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTExtensionList addNewExtLst();

    CTExtensionList getExtLst();

    STOleObjectFollowColorScheme.Enum getFollowColorScheme();

    boolean isSetExtLst();

    boolean isSetFollowColorScheme();

    void setExtLst(CTExtensionList cTExtensionList);

    void setFollowColorScheme(STOleObjectFollowColorScheme.Enum r1);

    void unsetExtLst();

    void unsetFollowColorScheme();

    STOleObjectFollowColorScheme xgetFollowColorScheme();

    void xsetFollowColorScheme(STOleObjectFollowColorScheme sTOleObjectFollowColorScheme);
}
