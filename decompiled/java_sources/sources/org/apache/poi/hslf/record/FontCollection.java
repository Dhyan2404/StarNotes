package org.apache.poi.hslf.record;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.Predicate;
import java.util.function.Supplier;
import org.apache.poi.common.usermodel.fonts.FontCharset;
import org.apache.poi.common.usermodel.fonts.FontHeader;
import org.apache.poi.common.usermodel.fonts.FontInfo;
import org.apache.poi.common.usermodel.fonts.FontPitch;
import org.apache.poi.hslf.record.FontCollection;
import org.apache.poi.hslf.usermodel.HSLFFontInfo;
import org.apache.poi.util.IOUtils;

/* loaded from: classes12.dex */
public final class FontCollection extends RecordContainer {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private byte[] _header;
    private final Map<Integer, HSLFFontInfo> fonts = new LinkedHashMap();

    public FontCollection(byte[] bArr, int i, int i2) {
        int i3 = i + 8;
        this._header = Arrays.copyOfRange(bArr, i, i3);
        Record[] findChildRecords = Record.findChildRecords(bArr, i3, i2 - 8);
        this._children = findChildRecords;
        for (Record record : findChildRecords) {
            if (record instanceof FontEntityAtom) {
                HSLFFontInfo hSLFFontInfo = new HSLFFontInfo((FontEntityAtom) record);
                this.fonts.put(hSLFFontInfo.getIndex(), hSLFFontInfo);
            } else if (record instanceof FontEmbeddedData) {
                FontEmbeddedData fontEmbeddedData = (FontEmbeddedData) record;
                addFont(fontEmbeddedData.getFontHeader()).addFacet(fontEmbeddedData);
            } else {
                Record.LOG.atWarn().log("FontCollection child wasn't a FontEntityAtom, was {}", record.getClass().getSimpleName());
            }
        }
    }

    private static Predicate<HSLFFontInfo> findFont(final String str, final FontCharset fontCharset) {
        return new Predicate() { // from class: com.sunia.HTREnginev2.gpg
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$findFont$0;
                lambda$findFont$0 = FontCollection.lambda$findFont$0(str, fontCharset, (HSLFFontInfo) obj);
                return lambda$findFont$0;
            }
        };
    }

    private static int getFacetIndex(boolean z, boolean z2) {
        return (z ? 2 : 0) | (z2 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$findFont$0(String str, FontCharset fontCharset, HSLFFontInfo hSLFFontInfo) {
        return str.equals(hSLFFontInfo.getTypeface()) && (fontCharset == null || fontCharset.equals(hSLFFontInfo.getCharset()));
    }

    public HSLFFontInfo addFont(FontInfo fontInfo) {
        HSLFFontInfo fontInfo2 = getFontInfo(fontInfo.getTypeface(), fontInfo.getCharset());
        if (fontInfo2 != null) {
            return fontInfo2;
        }
        HSLFFontInfo hSLFFontInfo = new HSLFFontInfo(fontInfo);
        hSLFFontInfo.setIndex(this.fonts.size());
        this.fonts.put(hSLFFontInfo.getIndex(), hSLFFontInfo);
        appendChildRecord(hSLFFontInfo.createRecord());
        return hSLFFontInfo;
    }

    public HSLFFontInfo getFontInfo(String str) {
        return getFontInfo(str, null);
    }

    public List<HSLFFontInfo> getFonts() {
        return new ArrayList(this.fonts.values());
    }

    @Override // org.apache.poi.hslf.record.RecordContainer, org.apache.poi.common.usermodel.GenericRecord
    public Map<String, Supplier<?>> getGenericProperties() {
        return null;
    }

    public int getNumberOfFonts() {
        return this.fonts.size();
    }

    @Override // org.apache.poi.hslf.record.Record
    public long getRecordType() {
        return RecordTypes.FontCollection.typeID;
    }

    @Override // org.apache.poi.hslf.record.Record
    public void writeOut(OutputStream outputStream) throws IOException {
        byte[] bArr = this._header;
        writeOut(bArr[0], bArr[1], getRecordType(), this._children, outputStream);
    }

    public HSLFFontInfo getFontInfo(String str, FontCharset fontCharset) {
        return this.fonts.values().stream().filter(findFont(str, fontCharset)).findFirst().orElse(null);
    }

    public HSLFFontInfo getFontInfo(int i) {
        for (HSLFFontInfo hSLFFontInfo : this.fonts.values()) {
            if (hSLFFontInfo.getIndex().intValue() == i) {
                return hSLFFontInfo;
            }
        }
        return null;
    }

    public HSLFFontInfo addFont(InputStream inputStream) throws IOException {
        FontEmbeddedData fontEmbeddedData;
        FontHeader fontHeader = new FontHeader();
        InputStream bufferInit = fontHeader.bufferInit(inputStream);
        HSLFFontInfo addFont = addFont(fontHeader);
        FontEntityAtom fontEntityAtom = addFont.getFontEntityAtom();
        fontEntityAtom.setCharSet(fontHeader.getCharsetByte());
        fontEntityAtom.setPitchAndFamily(FontPitch.getNativeId(fontHeader.getPitch(), fontHeader.getFamily()));
        fontEntityAtom.setFontFlags(1);
        fontEntityAtom.setFontType(12);
        int facetIndex = getFacetIndex(fontHeader.isItalic(), fontHeader.isBold());
        Iterator<FontEmbeddedData> it2 = addFont.getFacets().iterator();
        while (it2.hasNext()) {
            fontEmbeddedData = it2.next();
            FontHeader fontHeader2 = fontEmbeddedData.getFontHeader();
            int facetIndex2 = getFacetIndex(fontHeader2.isItalic(), fontHeader2.isBold());
            if (facetIndex2 == facetIndex) {
                break;
            }
            if (facetIndex2 > facetIndex) {
                break;
            }
            fontEntityAtom = fontEmbeddedData;
        }
        fontEmbeddedData = null;
        if (fontEmbeddedData == null) {
            fontEmbeddedData = new FontEmbeddedData();
            addChildAfter(fontEmbeddedData, fontEntityAtom);
            addFont.addFacet(fontEmbeddedData);
        }
        fontEmbeddedData.setFontData(IOUtils.toByteArray(bufferInit));
        return addFont;
    }
}
