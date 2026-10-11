package org.apache.poi.xwpf.usermodel;

/* loaded from: classes13.dex */
public class TextSegment {
    private PositionInParagraph beginPos;
    private PositionInParagraph endPos;

    public TextSegment() {
        this.beginPos = new PositionInParagraph();
        this.endPos = new PositionInParagraph();
    }

    public int getBeginChar() {
        return this.beginPos.getChar();
    }

    public PositionInParagraph getBeginPos() {
        return this.beginPos;
    }

    public int getBeginRun() {
        return this.beginPos.getRun();
    }

    public int getBeginText() {
        return this.beginPos.getText();
    }

    public int getEndChar() {
        return this.endPos.getChar();
    }

    public PositionInParagraph getEndPos() {
        return this.endPos;
    }

    public int getEndRun() {
        return this.endPos.getRun();
    }

    public int getEndText() {
        return this.endPos.getText();
    }

    public void setBeginChar(int i) {
        this.beginPos.setChar(i);
    }

    public void setBeginRun(int i) {
        this.beginPos.setRun(i);
    }

    public void setBeginText(int i) {
        this.beginPos.setText(i);
    }

    public void setEndChar(int i) {
        this.endPos.setChar(i);
    }

    public void setEndRun(int i) {
        this.endPos.setRun(i);
    }

    public void setEndText(int i) {
        this.endPos.setText(i);
    }

    public TextSegment(int i, int i2, int i3, int i4, int i5, int i6) {
        PositionInParagraph positionInParagraph = new PositionInParagraph(i, i3, i5);
        PositionInParagraph positionInParagraph2 = new PositionInParagraph(i2, i4, i6);
        this.beginPos = positionInParagraph;
        this.endPos = positionInParagraph2;
    }

    public TextSegment(PositionInParagraph positionInParagraph, PositionInParagraph positionInParagraph2) {
        this.beginPos = positionInParagraph;
        this.endPos = positionInParagraph2;
    }
}
