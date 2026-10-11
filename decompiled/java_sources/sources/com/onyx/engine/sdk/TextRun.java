package com.onyx.engine.sdk;

import com.alibaba.fastjson2.TypeReference;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.util.Chars;

/* loaded from: classes8.dex */
public class TextRun {
    private boolean bidi;
    private List<CellOfScreen> cellOfScreenList;
    private FontEntry fontEntry;
    private float fontSize;
    private String lang;
    private int nodePosition;
    private int textColor;
    private String xpath;

    public static List<TextRun> parseList(String str) {
        List<TextRun> list = (List) JsonUtils.fromJson(str, new TypeReference<List<TextRun>>() { // from class: com.onyx.engine.sdk.TextRun.1
        }.getType());
        if (list == null) {
            return Collections.emptyList();
        }
        for (TextRun textRun : list) {
            Iterator<CellOfScreen> it2 = textRun.getCellOfScreenList().iterator();
            while (it2.hasNext()) {
                it2.next().setFontEntry(textRun.getFontEntry());
            }
        }
        return list;
    }

    public static void setTextRunPosition(List<TextRun> list, PinPosition pinPosition) {
        if (list == null || pinPosition == null) {
            return;
        }
        for (TextRun textRun : list) {
            for (CellOfScreen cellOfScreen : textRun.getCellOfScreenList()) {
                PinPosition copyChapterPosition = pinPosition.copyChapterPosition();
                copyChapterPosition.setXpath(textRun.getXpath());
                copyChapterPosition.setNodePosition(textRun.getNodePosition());
                copyChapterPosition.setTextOffset(cellOfScreen.getTextOffset());
                cellOfScreen.setPosition(copyChapterPosition);
                cellOfScreen.setBidi(textRun.isBidi());
                cellOfScreen.setLang(textRun.getLang());
                cellOfScreen.setFontEntry(textRun.getFontEntry());
            }
        }
    }

    public List<CellOfScreen> getCellOfScreenList() {
        return this.cellOfScreenList;
    }

    public FontEntry getFontEntry() {
        return this.fontEntry;
    }

    public float getFontSize() {
        return this.fontSize;
    }

    public String getLang() {
        return this.lang;
    }

    public int getNodePosition() {
        return this.nodePosition;
    }

    public int getTextColor() {
        return this.textColor;
    }

    public String getXpath() {
        return this.xpath;
    }

    public boolean isBidi() {
        return this.bidi;
    }

    public TextRun setBidi(boolean z) {
        this.bidi = z;
        return this;
    }

    public TextRun setCellOfScreenList(List<CellOfScreen> list) {
        this.cellOfScreenList = list;
        return this;
    }

    public TextRun setFontEntry(FontEntry fontEntry) {
        this.fontEntry = fontEntry;
        return this;
    }

    public TextRun setFontSize(float f) {
        this.fontSize = f;
        return this;
    }

    public TextRun setLang(String str) {
        this.lang = str;
        return this;
    }

    public TextRun setNodePosition(int i) {
        this.nodePosition = i;
        return this;
    }

    public TextRun setTextColor(int i) {
        this.textColor = i;
        return this;
    }

    public TextRun setXpath(String str) {
        this.xpath = str;
        return this;
    }

    public String toString() {
        return "TextRun{xpath='" + this.xpath + Chars.QUOTE + ", lang='" + this.lang + Chars.QUOTE + ", nodePosition=" + this.nodePosition + ", textColor=" + this.textColor + ", fontSize=" + this.fontSize + ", fontEntry=" + this.fontEntry + ", bidi=" + this.bidi + ", cellOfScreenList=" + this.cellOfScreenList + '}';
    }
}
