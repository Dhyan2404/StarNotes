package org.apache.poi.xslf.usermodel;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontFacet;
import org.apache.poi.common.usermodel.fonts.FontFamily;
import org.apache.poi.common.usermodel.fonts.FontHeader;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.ooxml.POIXMLDocumentPart;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xslf.usermodel.XMLSlideShow;
import org.apache.poi.xslf.usermodel.XSLFFontInfo;
import org.openxmlformats.schemas.drawingml.x2006.main.CTTextFont;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontDataId;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontList;
import org.openxmlformats.schemas.presentationml.x2006.main.CTEmbeddedFontListEntry;
import org.openxmlformats.schemas.presentationml.x2006.main.CTPresentation;

/* loaded from: classes13.dex */
public class XSLFFontInfo implements FontInfo {
    final CTEmbeddedFontListEntry fontListEntry;
    final XMLSlideShow ppt;
    final String typeface;

    /* loaded from: classes13.dex */
    public final class XSLFFontFacet implements FontFacet {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final CTEmbeddedFontDataId fontEntry;
        private final FontHeader header;

        private void init() {
            if (this.header.getFamilyName() != null) {
                return;
            }
            try {
                InputStream inputStream = getFontData().getInputStream();
                try {
                    byte[] byteArray = IOUtils.toByteArray(inputStream, 1000);
                    this.header.init(byteArray, 0, byteArray.length);
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } finally {
                }
            } catch (IOException e) {
                throw new IllegalStateException(e);
            }
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontFacet
        public int getWeight() {
            init();
            return this.header.getWeight();
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontFacet
        public boolean isItalic() {
            init();
            return this.header.isItalic();
        }

        public void setFontData(InputStream inputStream) throws IOException {
            XSLFFontData xSLFFontData;
            XSLFRelation xSLFRelation = XSLFRelation.FONT;
            String id = this.fontEntry.getId();
            if (id == null || id.isEmpty()) {
                try {
                    POIXMLDocumentPart.RelationPart createRelationship = XSLFFontInfo.this.ppt.createRelationship(xSLFRelation, XSLFFactory.getInstance(), XSLFFontInfo.this.ppt.getPackage().getUnusedPartIndex(xSLFRelation.getDefaultFileName()), false);
                    XSLFFontData xSLFFontData2 = (XSLFFontData) createRelationship.getDocumentPart();
                    this.fontEntry.setId(createRelationship.getRelationship().getId());
                    xSLFFontData = xSLFFontData2;
                } catch (InvalidFormatException e) {
                    throw new IOException(e);
                }
            } else {
                xSLFFontData = (XSLFFontData) XSLFFontInfo.this.ppt.getRelationById(id);
            }
            OutputStream outputStream = xSLFFontData.getOutputStream();
            try {
                IOUtils.copy(inputStream, outputStream);
                if (outputStream != null) {
                    outputStream.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (outputStream != null) {
                        try {
                            outputStream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }

        private XSLFFontFacet(CTEmbeddedFontDataId cTEmbeddedFontDataId) {
            this.header = new FontHeader();
            this.fontEntry = cTEmbeddedFontDataId;
        }

        @Override // org.apache.poi.common.usermodel.fonts.FontFacet
        public XSLFFontData getFontData() {
            return (XSLFFontData) XSLFFontInfo.this.ppt.getRelationPartById(this.fontEntry.getId()).getDocumentPart();
        }
    }

    public XSLFFontInfo(XMLSlideShow xMLSlideShow, String str) {
        this.ppt = xMLSlideShow;
        this.typeface = str;
        CTPresentation cTPresentation = xMLSlideShow.getCTPresentation();
        CTEmbeddedFontList embeddedFontLst = cTPresentation.isSetEmbeddedFontLst() ? cTPresentation.getEmbeddedFontLst() : cTPresentation.addNewEmbeddedFontLst();
        for (CTEmbeddedFontListEntry cTEmbeddedFontListEntry : embeddedFontLst.getEmbeddedFontArray()) {
            if (str.equalsIgnoreCase(cTEmbeddedFontListEntry.getFont().getTypeface())) {
                this.fontListEntry = cTEmbeddedFontListEntry;
                return;
            }
        }
        CTEmbeddedFontListEntry addNewEmbeddedFont = embeddedFontLst.addNewEmbeddedFont();
        this.fontListEntry = addNewEmbeddedFont;
        addNewEmbeddedFont.addNewFont().setTypeface(str);
    }

    public static XSLFFontInfo addFontToSlideShow(XMLSlideShow xMLSlideShow, InputStream inputStream) throws IOException {
        FontHeader fontHeader = new FontHeader();
        InputStream bufferInit = fontHeader.bufferInit(inputStream);
        XSLFFontInfo xSLFFontInfo = new XSLFFontInfo(xMLSlideShow, fontHeader.getFamilyName());
        xSLFFontInfo.addFacet(bufferInit);
        return xSLFFontInfo;
    }

    private CTTextFont getFont() {
        return this.fontListEntry.getFont();
    }

    public static List<XSLFFontInfo> getFonts(final XMLSlideShow xMLSlideShow) {
        CTPresentation cTPresentation = xMLSlideShow.getCTPresentation();
        return cTPresentation.isSetEmbeddedFontLst() ? (List) Stream.of((Object[]) cTPresentation.getEmbeddedFontLst().getEmbeddedFontArray()).map(new Function() { // from class: com.sunia.HTREnginev2.xmo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                XSLFFontInfo lambda$getFonts$0;
                lambda$getFonts$0 = XSLFFontInfo.lambda$getFonts$0(XMLSlideShow.this, (CTEmbeddedFontListEntry) obj);
                return lambda$getFonts$0;
            }
        }).collect(Collectors.toList()) : Collections.emptyList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ XSLFFontInfo lambda$getFonts$0(XMLSlideShow xMLSlideShow, CTEmbeddedFontListEntry cTEmbeddedFontListEntry) {
        return new XSLFFontInfo(xMLSlideShow, cTEmbeddedFontListEntry);
    }

    public FontFacet addFacet(InputStream inputStream) throws IOException {
        FontHeader fontHeader = new FontHeader();
        InputStream bufferInit = fontHeader.bufferInit(inputStream);
        CTPresentation cTPresentation = this.ppt.getCTPresentation();
        cTPresentation.setEmbedTrueTypeFonts(true);
        cTPresentation.setSaveSubsetFonts(true);
        int i = (fontHeader.getWeight() > 400 ? (char) 1 : (char) 0) | (fontHeader.isItalic() ? (char) 2 : (char) 0);
        XSLFFontFacet xSLFFontFacet = new XSLFFontFacet(i != 0 ? i != 1 ? i != 2 ? this.fontListEntry.isSetBoldItalic() ? this.fontListEntry.getBoldItalic() : this.fontListEntry.addNewBoldItalic() : this.fontListEntry.isSetItalic() ? this.fontListEntry.getItalic() : this.fontListEntry.addNewItalic() : this.fontListEntry.isSetBold() ? this.fontListEntry.getBold() : this.fontListEntry.addNewBold() : this.fontListEntry.isSetRegular() ? this.fontListEntry.getRegular() : this.fontListEntry.addNewRegular());
        xSLFFontFacet.setFontData(bufferInit);
        return xSLFFontFacet;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontCharset getCharset() {
        return FontCharset.valueOf(getFont().getCharset());
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public List<FontFacet> getFacets() {
        ArrayList arrayList = new ArrayList();
        if (this.fontListEntry.isSetRegular()) {
            arrayList.add(new XSLFFontFacet(this.fontListEntry.getRegular()));
        }
        if (this.fontListEntry.isSetItalic()) {
            arrayList.add(new XSLFFontFacet(this.fontListEntry.getItalic()));
        }
        if (this.fontListEntry.isSetBold()) {
            arrayList.add(new XSLFFontFacet(this.fontListEntry.getBold()));
        }
        if (this.fontListEntry.isSetBoldItalic()) {
            arrayList.add(new XSLFFontFacet(this.fontListEntry.getBoldItalic()));
        }
        return arrayList;
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontFamily getFamily() {
        return FontFamily.valueOfPitchFamily(getFont().getPitchFamily());
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public byte[] getPanose() {
        return getFont().getPanose();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public FontPitch getPitch() {
        return FontPitch.valueOfPitchFamily(getFont().getPitchFamily());
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public String getTypeface() {
        return getFont().getTypeface();
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setCharset(FontCharset fontCharset) {
        getFont().setCharset((byte) fontCharset.getNativeId());
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setFamily(FontFamily fontFamily) {
        getFont().setPitchFamily(FontPitch.getNativeId(FontPitch.valueOfPitchFamily(getFont().getPitchFamily()), fontFamily));
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setPitch(FontPitch fontPitch) {
        getFont().setPitchFamily(FontPitch.getNativeId(fontPitch, FontFamily.valueOfPitchFamily(getFont().getPitchFamily())));
    }

    @Override // org.apache.poi.common.usermodel.fonts.FontInfo
    public void setTypeface(String str) {
        getFont().setTypeface(str);
    }

    public XSLFFontInfo(XMLSlideShow xMLSlideShow, CTEmbeddedFontListEntry cTEmbeddedFontListEntry) {
        this.ppt = xMLSlideShow;
        this.typeface = cTEmbeddedFontListEntry.getFont().getTypeface();
        this.fontListEntry = cTEmbeddedFontListEntry;
    }
}
