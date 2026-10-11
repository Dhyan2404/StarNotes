package org.apache.poi.common.usermodel.fonts;

/* loaded from: classes12.dex */
public interface FontFacet {
    default Object getFontData() {
        return null;
    }

    default int getWeight() {
        return 400;
    }

    default boolean isItalic() {
        return false;
    }

    default void setItalic(boolean z) {
        throw new UnsupportedOperationException("FontFacet is read-only.");
    }

    default void setWeight(int i) {
        throw new UnsupportedOperationException("FontFacet is read-only.");
    }
}
