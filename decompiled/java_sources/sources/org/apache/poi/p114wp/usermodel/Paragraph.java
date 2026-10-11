package org.apache.poi.p114wp.usermodel;

/* loaded from: classes13.dex */
public interface Paragraph {
    int getFirstLineIndent();

    int getFontAlignment();

    int getIndentFromLeft();

    int getIndentFromRight();

    boolean isWordWrapped();

    void setFirstLineIndent(int i);

    void setFontAlignment(int i);

    void setIndentFromLeft(int i);

    void setIndentFromRight(int i);

    void setWordWrapped(boolean z);
}
