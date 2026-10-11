package org.apache.poi.text;

import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes13.dex */
public class Selection {
    private List<Rectangle2D> displayRectangle = new ArrayList();
    private int endPosition;
    private String leftText;
    private String rightText;
    private int startPosition;
    private String text;

    public Selection(String str) {
        this.text = str;
    }

    public List<Rectangle2D> getDisplayRectangle() {
        return this.displayRectangle;
    }

    public int getEndPosition() {
        return this.endPosition;
    }

    public String getLeftText() {
        return this.leftText;
    }

    public String getRightText() {
        return this.rightText;
    }

    public int getStartPosition() {
        return this.startPosition;
    }

    public String getText() {
        return this.text;
    }

    public Selection setDisplayRectangle(List<Rectangle2D> list) {
        this.displayRectangle = list;
        return this;
    }

    public Selection setEndPosition(int i) {
        this.endPosition = i;
        return this;
    }

    public Selection setLeftText(String str) {
        this.leftText = str;
        return this;
    }

    public Selection setRightText(String str) {
        this.rightText = str;
        return this;
    }

    public Selection setStartPosition(int i) {
        this.startPosition = i;
        return this;
    }

    public Selection setText(String str) {
        this.text = str;
        return this;
    }
}
