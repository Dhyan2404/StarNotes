package org.apache.poi.xwpf.usermodel;

/* loaded from: classes13.dex */
public class PositionInParagraph {
    private int posChar;
    private int posRun;
    private int posText;

    public PositionInParagraph() {
    }

    public int getChar() {
        return this.posChar;
    }

    public int getRun() {
        return this.posRun;
    }

    public int getText() {
        return this.posText;
    }

    public void setChar(int i) {
        this.posChar = i;
    }

    public void setRun(int i) {
        this.posRun = i;
    }

    public void setText(int i) {
        this.posText = i;
    }

    public PositionInParagraph(int i, int i2, int i3) {
        this.posRun = i;
        this.posChar = i3;
        this.posText = i2;
    }
}
