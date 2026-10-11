package com.onegravity.rteditor.converter;

import android.text.style.ParagraphStyle;
import com.onegravity.rteditor.spans.IndentationSpan;
import com.onegravity.rteditor.utils.Helper;

/* loaded from: classes7.dex */
public class SingleParagraphStyle implements ParagraphStyle {

    /* renamed from: e */
    public final ParagraphType f40184e;

    /* renamed from: f */
    public final ParagraphStyle f40185f;

    public SingleParagraphStyle(ParagraphType paragraphType, ParagraphStyle paragraphStyle) {
        this.f40184e = paragraphType;
        this.f40185f = paragraphStyle;
    }

    public int getIndentation() {
        if (this.f40184e.isIndentation()) {
            return Math.round(((IndentationSpan) this.f40185f).getValue().intValue() / Helper.getLeadingMarging());
        }
        return (this.f40184e.isBullet() || this.f40184e.isNumbering()) ? 1 : 0;
    }

    public ParagraphStyle getStyle() {
        return this.f40185f;
    }

    public ParagraphType getType() {
        return this.f40184e;
    }

    public String toString() {
        return this.f40184e.name() + " - " + this.f40185f.getClass().getSimpleName();
    }
}
