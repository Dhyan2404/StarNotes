package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.STWmlColorSchemeIndex;

/* loaded from: classes16.dex */
public interface CTColorSchemeMapping extends XmlObject {
    public static final DocumentFactory<CTColorSchemeMapping> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTColorSchemeMapping> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctcolorschememapping8722type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    STWmlColorSchemeIndex.Enum getAccent1();

    STWmlColorSchemeIndex.Enum getAccent2();

    STWmlColorSchemeIndex.Enum getAccent3();

    STWmlColorSchemeIndex.Enum getAccent4();

    STWmlColorSchemeIndex.Enum getAccent5();

    STWmlColorSchemeIndex.Enum getAccent6();

    STWmlColorSchemeIndex.Enum getBg1();

    STWmlColorSchemeIndex.Enum getBg2();

    STWmlColorSchemeIndex.Enum getFollowedHyperlink();

    STWmlColorSchemeIndex.Enum getHyperlink();

    STWmlColorSchemeIndex.Enum getT1();

    STWmlColorSchemeIndex.Enum getT2();

    boolean isSetAccent1();

    boolean isSetAccent2();

    boolean isSetAccent3();

    boolean isSetAccent4();

    boolean isSetAccent5();

    boolean isSetAccent6();

    boolean isSetBg1();

    boolean isSetBg2();

    boolean isSetFollowedHyperlink();

    boolean isSetHyperlink();

    boolean isSetT1();

    boolean isSetT2();

    void setAccent1(STWmlColorSchemeIndex.Enum r1);

    void setAccent2(STWmlColorSchemeIndex.Enum r1);

    void setAccent3(STWmlColorSchemeIndex.Enum r1);

    void setAccent4(STWmlColorSchemeIndex.Enum r1);

    void setAccent5(STWmlColorSchemeIndex.Enum r1);

    void setAccent6(STWmlColorSchemeIndex.Enum r1);

    void setBg1(STWmlColorSchemeIndex.Enum r1);

    void setBg2(STWmlColorSchemeIndex.Enum r1);

    void setFollowedHyperlink(STWmlColorSchemeIndex.Enum r1);

    void setHyperlink(STWmlColorSchemeIndex.Enum r1);

    void setT1(STWmlColorSchemeIndex.Enum r1);

    void setT2(STWmlColorSchemeIndex.Enum r1);

    void unsetAccent1();

    void unsetAccent2();

    void unsetAccent3();

    void unsetAccent4();

    void unsetAccent5();

    void unsetAccent6();

    void unsetBg1();

    void unsetBg2();

    void unsetFollowedHyperlink();

    void unsetHyperlink();

    void unsetT1();

    void unsetT2();

    STWmlColorSchemeIndex xgetAccent1();

    STWmlColorSchemeIndex xgetAccent2();

    STWmlColorSchemeIndex xgetAccent3();

    STWmlColorSchemeIndex xgetAccent4();

    STWmlColorSchemeIndex xgetAccent5();

    STWmlColorSchemeIndex xgetAccent6();

    STWmlColorSchemeIndex xgetBg1();

    STWmlColorSchemeIndex xgetBg2();

    STWmlColorSchemeIndex xgetFollowedHyperlink();

    STWmlColorSchemeIndex xgetHyperlink();

    STWmlColorSchemeIndex xgetT1();

    STWmlColorSchemeIndex xgetT2();

    void xsetAccent1(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetAccent2(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetAccent3(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetAccent4(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetAccent5(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetAccent6(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetBg1(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetBg2(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetFollowedHyperlink(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetHyperlink(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetT1(STWmlColorSchemeIndex sTWmlColorSchemeIndex);

    void xsetT2(STWmlColorSchemeIndex sTWmlColorSchemeIndex);
}
