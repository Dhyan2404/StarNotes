package org.apache.poi.common.usermodel.fonts;

import java.util.Collections;
import java.util.List;

/* loaded from: classes12.dex */
public interface FontInfo {
    default FontCharset getCharset() {
        return FontCharset.ANSI;
    }

    default List<? extends FontFacet> getFacets() {
        return Collections.emptyList();
    }

    default FontFamily getFamily() {
        return FontFamily.FF_DONTCARE;
    }

    default Integer getIndex() {
        return null;
    }

    default byte[] getPanose() {
        return null;
    }

    default FontPitch getPitch() {
        return null;
    }

    String getTypeface();

    default void setCharset(FontCharset fontCharset) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }

    default void setFamily(FontFamily fontFamily) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }

    default void setIndex(int i) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }

    default void setPanose(byte[] bArr) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }

    default void setPitch(FontPitch fontPitch) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }

    default void setTypeface(String str) {
        throw new UnsupportedOperationException("FontInfo is read-only.");
    }
}
