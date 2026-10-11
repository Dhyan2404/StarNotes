package org.openxmlformats.schemas.wordprocessingml.x2006.main;

import org.apache.poi.schemas.ooxml.system.ooxml.TypeSystemHolder;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.impl.schema.DocumentFactory;

/* loaded from: classes16.dex */
public interface CTSectPrBase extends XmlObject {
    public static final DocumentFactory<CTSectPrBase> Factory;
    public static final SchemaType type;

    static {
        DocumentFactory<CTSectPrBase> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "ctsectprbase60d2type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    CTOnOff addNewBidi();

    CTColumns addNewCols();

    CTDocGrid addNewDocGrid();

    CTEdnProps addNewEndnotePr();

    CTFtnProps addNewFootnotePr();

    CTOnOff addNewFormProt();

    CTLineNumber addNewLnNumType();

    CTOnOff addNewNoEndnote();

    CTPaperSource addNewPaperSrc();

    CTPageBorders addNewPgBorders();

    CTPageMar addNewPgMar();

    CTPageNumber addNewPgNumType();

    CTPageSz addNewPgSz();

    CTRel addNewPrinterSettings();

    CTOnOff addNewRtlGutter();

    CTTextDirection addNewTextDirection();

    CTOnOff addNewTitlePg();

    CTSectType addNewType();

    CTVerticalJc addNewVAlign();

    CTOnOff getBidi();

    CTColumns getCols();

    CTDocGrid getDocGrid();

    CTEdnProps getEndnotePr();

    CTFtnProps getFootnotePr();

    CTOnOff getFormProt();

    CTLineNumber getLnNumType();

    CTOnOff getNoEndnote();

    CTPaperSource getPaperSrc();

    CTPageBorders getPgBorders();

    CTPageMar getPgMar();

    CTPageNumber getPgNumType();

    CTPageSz getPgSz();

    CTRel getPrinterSettings();

    byte[] getRsidDel();

    byte[] getRsidR();

    byte[] getRsidRPr();

    byte[] getRsidSect();

    CTOnOff getRtlGutter();

    CTTextDirection getTextDirection();

    CTOnOff getTitlePg();

    CTSectType getType();

    CTVerticalJc getVAlign();

    boolean isSetBidi();

    boolean isSetCols();

    boolean isSetDocGrid();

    boolean isSetEndnotePr();

    boolean isSetFootnotePr();

    boolean isSetFormProt();

    boolean isSetLnNumType();

    boolean isSetNoEndnote();

    boolean isSetPaperSrc();

    boolean isSetPgBorders();

    boolean isSetPgMar();

    boolean isSetPgNumType();

    boolean isSetPgSz();

    boolean isSetPrinterSettings();

    boolean isSetRsidDel();

    boolean isSetRsidR();

    boolean isSetRsidRPr();

    boolean isSetRsidSect();

    boolean isSetRtlGutter();

    boolean isSetTextDirection();

    boolean isSetTitlePg();

    boolean isSetType();

    boolean isSetVAlign();

    void setBidi(CTOnOff cTOnOff);

    void setCols(CTColumns cTColumns);

    void setDocGrid(CTDocGrid cTDocGrid);

    void setEndnotePr(CTEdnProps cTEdnProps);

    void setFootnotePr(CTFtnProps cTFtnProps);

    void setFormProt(CTOnOff cTOnOff);

    void setLnNumType(CTLineNumber cTLineNumber);

    void setNoEndnote(CTOnOff cTOnOff);

    void setPaperSrc(CTPaperSource cTPaperSource);

    void setPgBorders(CTPageBorders cTPageBorders);

    void setPgMar(CTPageMar cTPageMar);

    void setPgNumType(CTPageNumber cTPageNumber);

    void setPgSz(CTPageSz cTPageSz);

    void setPrinterSettings(CTRel cTRel);

    void setRsidDel(byte[] bArr);

    void setRsidR(byte[] bArr);

    void setRsidRPr(byte[] bArr);

    void setRsidSect(byte[] bArr);

    void setRtlGutter(CTOnOff cTOnOff);

    void setTextDirection(CTTextDirection cTTextDirection);

    void setTitlePg(CTOnOff cTOnOff);

    void setType(CTSectType cTSectType);

    void setVAlign(CTVerticalJc cTVerticalJc);

    void unsetBidi();

    void unsetCols();

    void unsetDocGrid();

    void unsetEndnotePr();

    void unsetFootnotePr();

    void unsetFormProt();

    void unsetLnNumType();

    void unsetNoEndnote();

    void unsetPaperSrc();

    void unsetPgBorders();

    void unsetPgMar();

    void unsetPgNumType();

    void unsetPgSz();

    void unsetPrinterSettings();

    void unsetRsidDel();

    void unsetRsidR();

    void unsetRsidRPr();

    void unsetRsidSect();

    void unsetRtlGutter();

    void unsetTextDirection();

    void unsetTitlePg();

    void unsetType();

    void unsetVAlign();

    STLongHexNumber xgetRsidDel();

    STLongHexNumber xgetRsidR();

    STLongHexNumber xgetRsidRPr();

    STLongHexNumber xgetRsidSect();

    void xsetRsidDel(STLongHexNumber sTLongHexNumber);

    void xsetRsidR(STLongHexNumber sTLongHexNumber);

    void xsetRsidRPr(STLongHexNumber sTLongHexNumber);

    void xsetRsidSect(STLongHexNumber sTLongHexNumber);
}
