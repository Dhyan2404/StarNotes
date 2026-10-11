package com.microsoft.schemas.office.visio.x2012.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlString;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes7.dex */
public interface HeaderFooterType extends XmlObject {
    public static final DocumentFactory<HeaderFooterType> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<HeaderFooterType> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "headerfootertypec2f1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    FooterCenterType addNewFooterCenter();

    FooterLeftType addNewFooterLeft();

    FooterMarginType addNewFooterMargin();

    FooterRightType addNewFooterRight();

    HeaderCenterType addNewHeaderCenter();

    HeaderFooterFontType addNewHeaderFooterFont();

    HeaderLeftType addNewHeaderLeft();

    HeaderMarginType addNewHeaderMargin();

    HeaderRightType addNewHeaderRight();

    FooterCenterType getFooterCenter();

    FooterLeftType getFooterLeft();

    FooterMarginType getFooterMargin();

    FooterRightType getFooterRight();

    HeaderCenterType getHeaderCenter();

    String getHeaderFooterColor();

    HeaderFooterFontType getHeaderFooterFont();

    HeaderLeftType getHeaderLeft();

    HeaderMarginType getHeaderMargin();

    HeaderRightType getHeaderRight();

    boolean isSetFooterCenter();

    boolean isSetFooterLeft();

    boolean isSetFooterMargin();

    boolean isSetFooterRight();

    boolean isSetHeaderCenter();

    boolean isSetHeaderFooterColor();

    boolean isSetHeaderFooterFont();

    boolean isSetHeaderLeft();

    boolean isSetHeaderMargin();

    boolean isSetHeaderRight();

    void setFooterCenter(FooterCenterType footerCenterType);

    void setFooterLeft(FooterLeftType footerLeftType);

    void setFooterMargin(FooterMarginType footerMarginType);

    void setFooterRight(FooterRightType footerRightType);

    void setHeaderCenter(HeaderCenterType headerCenterType);

    void setHeaderFooterColor(String str);

    void setHeaderFooterFont(HeaderFooterFontType headerFooterFontType);

    void setHeaderLeft(HeaderLeftType headerLeftType);

    void setHeaderMargin(HeaderMarginType headerMarginType);

    void setHeaderRight(HeaderRightType headerRightType);

    void unsetFooterCenter();

    void unsetFooterLeft();

    void unsetFooterMargin();

    void unsetFooterRight();

    void unsetHeaderCenter();

    void unsetHeaderFooterColor();

    void unsetHeaderFooterFont();

    void unsetHeaderLeft();

    void unsetHeaderMargin();

    void unsetHeaderRight();

    XmlString xgetHeaderFooterColor();

    void xsetHeaderFooterColor(XmlString xmlString);
}
