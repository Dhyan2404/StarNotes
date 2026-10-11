package com.onegravity.rteditor.converter;

/* loaded from: classes7.dex */
public class AccumulatedParagraphStyle {

    /* renamed from: a */
    public final ParagraphType f40142a;

    /* renamed from: b */
    public int f40143b;

    /* renamed from: c */
    public int f40144c;

    public AccumulatedParagraphStyle(ParagraphType paragraphType, int i, int i2) {
        this.f40142a = paragraphType;
        this.f40143b = i;
        this.f40144c = i2;
    }

    public int getAbsoluteIndent() {
        return this.f40143b;
    }

    public int getRelativeIndent() {
        return this.f40144c;
    }

    public ParagraphType getType() {
        return this.f40142a;
    }

    public void setAbsoluteIndent(int i) {
        this.f40143b = i;
    }

    public void setRelativeIndent(int i) {
        this.f40144c = i;
    }

    public String toString() {
        return this.f40142a.name() + " - " + this.f40143b + "/" + this.f40144c;
    }
}
