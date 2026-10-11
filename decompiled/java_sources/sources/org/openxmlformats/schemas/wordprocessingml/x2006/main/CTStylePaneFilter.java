package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.openxmlformats.schemas.officeDocument.x2006.sharedTypes.STOnOff;

/* loaded from: classes16.dex */
public interface CTStylePaneFilter extends XmlObject {
    public static final DocumentFactory<CTStylePaneFilter> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTStylePaneFilter> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctstylepanefilterd3a1type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Object getAllStyles();

    Object getAlternateStyleNames();

    Object getClearFormatting();

    Object getCustomStyles();

    Object getDirectFormattingOnNumbering();

    Object getDirectFormattingOnParagraphs();

    Object getDirectFormattingOnRuns();

    Object getDirectFormattingOnTables();

    Object getHeadingStyles();

    Object getLatentStyles();

    Object getNumberingStyles();

    Object getStylesInUse();

    Object getTableStyles();

    Object getTop3HeadingStyles();

    byte[] getVal();

    Object getVisibleStyles();

    boolean isSetAllStyles();

    boolean isSetAlternateStyleNames();

    boolean isSetClearFormatting();

    boolean isSetCustomStyles();

    boolean isSetDirectFormattingOnNumbering();

    boolean isSetDirectFormattingOnParagraphs();

    boolean isSetDirectFormattingOnRuns();

    boolean isSetDirectFormattingOnTables();

    boolean isSetHeadingStyles();

    boolean isSetLatentStyles();

    boolean isSetNumberingStyles();

    boolean isSetStylesInUse();

    boolean isSetTableStyles();

    boolean isSetTop3HeadingStyles();

    boolean isSetVal();

    boolean isSetVisibleStyles();

    void setAllStyles(Object obj);

    void setAlternateStyleNames(Object obj);

    void setClearFormatting(Object obj);

    void setCustomStyles(Object obj);

    void setDirectFormattingOnNumbering(Object obj);

    void setDirectFormattingOnParagraphs(Object obj);

    void setDirectFormattingOnRuns(Object obj);

    void setDirectFormattingOnTables(Object obj);

    void setHeadingStyles(Object obj);

    void setLatentStyles(Object obj);

    void setNumberingStyles(Object obj);

    void setStylesInUse(Object obj);

    void setTableStyles(Object obj);

    void setTop3HeadingStyles(Object obj);

    void setVal(byte[] bArr);

    void setVisibleStyles(Object obj);

    void unsetAllStyles();

    void unsetAlternateStyleNames();

    void unsetClearFormatting();

    void unsetCustomStyles();

    void unsetDirectFormattingOnNumbering();

    void unsetDirectFormattingOnParagraphs();

    void unsetDirectFormattingOnRuns();

    void unsetDirectFormattingOnTables();

    void unsetHeadingStyles();

    void unsetLatentStyles();

    void unsetNumberingStyles();

    void unsetStylesInUse();

    void unsetTableStyles();

    void unsetTop3HeadingStyles();

    void unsetVal();

    void unsetVisibleStyles();

    STOnOff xgetAllStyles();

    STOnOff xgetAlternateStyleNames();

    STOnOff xgetClearFormatting();

    STOnOff xgetCustomStyles();

    STOnOff xgetDirectFormattingOnNumbering();

    STOnOff xgetDirectFormattingOnParagraphs();

    STOnOff xgetDirectFormattingOnRuns();

    STOnOff xgetDirectFormattingOnTables();

    STOnOff xgetHeadingStyles();

    STOnOff xgetLatentStyles();

    STOnOff xgetNumberingStyles();

    STOnOff xgetStylesInUse();

    STOnOff xgetTableStyles();

    STOnOff xgetTop3HeadingStyles();

    STShortHexNumber xgetVal();

    STOnOff xgetVisibleStyles();

    void xsetAllStyles(STOnOff sTOnOff);

    void xsetAlternateStyleNames(STOnOff sTOnOff);

    void xsetClearFormatting(STOnOff sTOnOff);

    void xsetCustomStyles(STOnOff sTOnOff);

    void xsetDirectFormattingOnNumbering(STOnOff sTOnOff);

    void xsetDirectFormattingOnParagraphs(STOnOff sTOnOff);

    void xsetDirectFormattingOnRuns(STOnOff sTOnOff);

    void xsetDirectFormattingOnTables(STOnOff sTOnOff);

    void xsetHeadingStyles(STOnOff sTOnOff);

    void xsetLatentStyles(STOnOff sTOnOff);

    void xsetNumberingStyles(STOnOff sTOnOff);

    void xsetStylesInUse(STOnOff sTOnOff);

    void xsetTableStyles(STOnOff sTOnOff);

    void xsetTop3HeadingStyles(STOnOff sTOnOff);

    void xsetVal(STShortHexNumber sTShortHexNumber);

    void xsetVisibleStyles(STOnOff sTOnOff);
}
