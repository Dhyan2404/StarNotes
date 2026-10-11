package com.onegravity.rteditor.converter;

import android.text.Layout;
import android.text.style.ParagraphStyle;
import com.onegravity.rteditor.spans.AlignmentSpan;
import com.onegravity.rteditor.spans.BulletSpan;
import com.onegravity.rteditor.spans.IndentationSpan;
import com.onegravity.rteditor.spans.NumberSpan;
import com.onyx.android.sdk.base.utils.HtmlUtils;

/* loaded from: classes7.dex */
public enum ParagraphType {
    NONE("", "", "", "", false, false),
    ALIGNMENT_LEFT("<div align=\"left\">", HtmlUtils.f40909e, "", "", true, true),
    ALIGNMENT_CENTER("<div align=\"center\">", HtmlUtils.f40909e, "", "", true, true),
    ALIGNMENT_RIGHT("<div align=\"right\">", HtmlUtils.f40909e, "", "", true, true),
    BULLET("<ul>", "</ul>", "<li>", "</li>", false, true),
    NUMBERING("<ol>", "</ol>", "<li>", "</li>", false, true),
    INDENTATION_UL("<ul style='list-style-type:none;'>", "</ul>", "<li style='list-style-type:none;'>", "</li>", false, true),
    INDENTATION_OL("<ol style='list-style-type:none;'>", "</ol>", "<li style='list-style-type:none;'>", "</li>", false, true);

    private final String mEndTag;
    private final boolean mEndTagAddsLineBreak;
    private final boolean mIsAlignment;
    private final String mListEndTag;
    private final String mListStartTag;
    private final String mStartTag;

    ParagraphType(String str, String str2, String str3, String str4, boolean z, boolean z2) {
        this.mStartTag = str;
        this.mEndTag = str2;
        this.mListStartTag = str3;
        this.mListEndTag = str4;
        this.mIsAlignment = z;
        this.mEndTagAddsLineBreak = z2;
    }

    public static ParagraphType getInstance(ParagraphStyle paragraphStyle) {
        if (paragraphStyle instanceof AlignmentSpan) {
            Layout.Alignment value = ((AlignmentSpan) paragraphStyle).getValue();
            return value == Layout.Alignment.ALIGN_NORMAL ? ALIGNMENT_LEFT : value == Layout.Alignment.ALIGN_CENTER ? ALIGNMENT_CENTER : ALIGNMENT_RIGHT;
        }
        if (paragraphStyle instanceof BulletSpan) {
            return BULLET;
        }
        if (paragraphStyle instanceof NumberSpan) {
            return NUMBERING;
        }
        if (paragraphStyle instanceof IndentationSpan) {
            return INDENTATION_UL;
        }
        return null;
    }

    public boolean endTagAddsLineBreak() {
        return this.mEndTagAddsLineBreak;
    }

    public String getEndTag() {
        return this.mEndTag;
    }

    public String getListEndTag() {
        return this.mListEndTag;
    }

    public String getListStartTag() {
        return this.mListStartTag;
    }

    public String getStartTag() {
        return this.mStartTag;
    }

    public boolean isAlignment() {
        return this.mIsAlignment;
    }

    public boolean isBullet() {
        return this == BULLET;
    }

    public boolean isIndentation() {
        return this == INDENTATION_UL || this == INDENTATION_OL;
    }

    public boolean isNumbering() {
        return this == NUMBERING;
    }

    public boolean isUndefined() {
        return this == NONE;
    }
}
