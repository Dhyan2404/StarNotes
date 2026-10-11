package com.onegravity.rteditor.converter;

import android.text.Spanned;
import android.text.style.CharacterStyle;
import android.text.style.ParagraphStyle;
import com.onegravity.rteditor.api.format.RTFormat;
import com.onegravity.rteditor.api.format.RTHtml;
import com.onegravity.rteditor.api.media.RTAudio;
import com.onegravity.rteditor.api.media.RTImage;
import com.onegravity.rteditor.api.media.RTVideo;
import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.onegravity.rteditor.converter.html.ISpannedToHtmlConverter;
import com.onegravity.rteditor.converter.html.SpannedToHtmlConverterV2;
import com.onegravity.rteditor.extension.RTRichTextExtKt;
import com.onegravity.rteditor.utils.Paragraph;
import com.onegravity.rteditor.utils.RTLayout;
import com.onegravity.rteditor.utils.Selection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.Stack;
import java.util.TreeSet;

/* loaded from: classes7.dex */
public class ConverterSpannedToHtml {
    public static final String AMP = "&amp;";

    /* renamed from: BR */
    public static final String f40174BR = "<br/>\n";

    /* renamed from: GT */
    public static final String f40175GT = "&gt;";

    /* renamed from: LT */
    public static final String f40176LT = "&lt;";
    public static final String NBSP = "&nbsp;";

    /* renamed from: a */
    public StringBuilder f40177a;

    /* renamed from: b */
    public Spanned f40178b;

    /* renamed from: c */
    public Stack<AccumulatedParagraphStyle> f40179c = new Stack<>();

    /* renamed from: d */
    public ISpannedToHtmlConverter f40180d;

    /* renamed from: e */
    public static /* synthetic */ int m31605e(Spanned spanned, CharacterStyle characterStyle, CharacterStyle characterStyle2) {
        int spanStart = spanned.getSpanStart(characterStyle);
        int spanStart2 = spanned.getSpanStart(characterStyle2);
        if (spanStart != spanStart2) {
            return spanStart - spanStart2;
        }
        int spanEnd = spanned.getSpanEnd(characterStyle);
        int spanEnd2 = spanned.getSpanEnd(characterStyle2);
        return spanEnd != spanEnd2 ? spanEnd2 - spanEnd : characterStyle.getClass().getName().compareTo(characterStyle2.getClass().getName());
    }

    /* renamed from: b */
    public final void m31606b(AccumulatedParagraphStyle accumulatedParagraphStyle) {
        String startTag = accumulatedParagraphStyle.getType().getStartTag();
        int relativeIndent = accumulatedParagraphStyle.getRelativeIndent();
        for (int i = 0; i < relativeIndent; i++) {
            this.f40177a.append(startTag);
        }
        this.f40179c.push(accumulatedParagraphStyle);
    }

    /* renamed from: c */
    public final void m31607c() {
        ParagraphType paragraphType;
        ArrayList<Paragraph> paragraphs = new RTLayout(this.f40178b).getParagraphs();
        int size = paragraphs.size();
        for (int i = 0; i < size; i++) {
            Paragraph paragraph = paragraphs.get(i);
            Set<SingleParagraphStyle> m31608d = m31608d(this.f40178b, paragraph);
            Iterator<SingleParagraphStyle> it2 = m31608d.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    paragraphType = null;
                    break;
                }
                SingleParagraphStyle next = it2.next();
                if (next.getType().isAlignment()) {
                    paragraphType = next.getType();
                    break;
                }
            }
            ParagraphType paragraphType2 = ParagraphType.NONE;
            int i2 = 0;
            for (SingleParagraphStyle singleParagraphStyle : m31608d) {
                i2 += singleParagraphStyle.getIndentation();
                ParagraphType type = singleParagraphStyle.getType();
                if (type.isBullet()) {
                    paragraphType2 = ParagraphType.BULLET;
                } else if (type.isNumbering()) {
                    paragraphType2 = ParagraphType.NUMBERING;
                } else if (type.isIndentation() && paragraphType2.isUndefined()) {
                    paragraphType2 = ParagraphType.INDENTATION_UL;
                }
            }
            m31609f(new AccumulatedParagraphStyle(paragraphType2, i2, 0));
            this.f40177a.append(paragraphType2.getListStartTag());
            if (paragraphType != null) {
                this.f40177a.append(paragraphType.getStartTag());
            }
            m31613j(this.f40178b, paragraph.start(), paragraph.end());
            if (paragraphType != null) {
                m31611h(paragraphType);
                this.f40177a.append(paragraphType.getEndTag());
            }
            m31611h(paragraphType2);
            this.f40177a.append(paragraphType2.getListEndTag());
        }
        while (!this.f40179c.isEmpty()) {
            m31610g();
        }
    }

    public RTHtml<RTImage, RTAudio, RTVideo> convert(Spanned spanned, RTFormat.Html html) {
        this.f40178b = html.removeTrailingWhiteSpace ? m31612i(spanned) : spanned;
        this.f40177a = new StringBuilder(RTRichTextExtKt.getVersionStr());
        this.f40179c.clear();
        this.f40180d = new SpannedToHtmlConverterV2(spanned, html, this.f40177a);
        m31607c();
        return new RTHtml<>(html, this.f40177a.toString(), this.f40180d.getImageList());
    }

    /* renamed from: d */
    public final Set<SingleParagraphStyle> m31608d(Spanned spanned, Selection selection) {
        HashSet hashSet = new HashSet();
        for (ParagraphStyle paragraphStyle : (ParagraphStyle[]) spanned.getSpans(selection.start(), selection.end(), ParagraphStyle.class)) {
            ParagraphType paragraphType = ParagraphType.getInstance(paragraphStyle);
            if (paragraphType != null) {
                hashSet.add(new SingleParagraphStyle(paragraphType, paragraphStyle));
            }
        }
        return hashSet;
    }

    /* renamed from: f */
    public final void m31609f(AccumulatedParagraphStyle accumulatedParagraphStyle) {
        int i;
        ParagraphType paragraphType = ParagraphType.NONE;
        if (this.f40179c.isEmpty()) {
            i = 0;
        } else {
            AccumulatedParagraphStyle peek = this.f40179c.peek();
            i = peek.getAbsoluteIndent();
            paragraphType = peek.getType();
        }
        if (accumulatedParagraphStyle.getAbsoluteIndent() > i) {
            accumulatedParagraphStyle.setRelativeIndent(accumulatedParagraphStyle.getAbsoluteIndent() - i);
            m31606b(accumulatedParagraphStyle);
        } else if (accumulatedParagraphStyle.getAbsoluteIndent() < i) {
            m31610g();
            m31609f(accumulatedParagraphStyle);
        } else if (accumulatedParagraphStyle.getType() != paragraphType) {
            accumulatedParagraphStyle.setRelativeIndent(m31610g());
            m31606b(accumulatedParagraphStyle);
        }
    }

    /* renamed from: g */
    public final int m31610g() {
        if (this.f40179c.isEmpty()) {
            return 0;
        }
        AccumulatedParagraphStyle pop = this.f40179c.pop();
        String endTag = pop.getType().getEndTag();
        int relativeIndent = pop.getRelativeIndent();
        for (int i = 0; i < relativeIndent; i++) {
            this.f40177a.append(endTag);
        }
        return pop.getRelativeIndent();
    }

    /* renamed from: h */
    public final void m31611h(ParagraphType paragraphType) {
        if (!paragraphType.endTagAddsLineBreak() || this.f40177a.length() < 6) {
            return;
        }
        int length = this.f40177a.length() - 6;
        int length2 = this.f40177a.length();
        if (this.f40177a.subSequence(length, length2).equals(f40174BR)) {
            this.f40177a.delete(length, length2);
        }
    }

    /* renamed from: i */
    public final Spanned m31612i(Spanned spanned) {
        int length = spanned.length();
        for (int i = length - 1; i >= 0; i--) {
            char charAt = spanned.charAt(i);
            if (!Character.isWhitespace(charAt) && charAt != 8203) {
                break;
            }
            length--;
        }
        return (Spanned) spanned.subSequence(0, length);
    }

    /* renamed from: j */
    public final void m31613j(final Spanned spanned, int i, int i2) {
        TreeSet treeSet = new TreeSet(new Comparator() { // from class: com.sunia.HTREnginev2.ece
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int m31605e;
                m31605e = ConverterSpannedToHtml.m31605e(spanned, (CharacterStyle) obj, (CharacterStyle) obj2);
                return m31605e;
            }
        });
        treeSet.addAll(Arrays.asList((CharacterStyle[]) spanned.getSpans(i, i2, CharacterStyle.class)));
        this.f40180d.convertText(treeSet, i, i2);
    }
}
