package com.onegravity.rteditor.effects;

import com.onegravity.rteditor.RTEditText;
import com.onegravity.rteditor.fonts.RTTypeface;
import com.onegravity.rteditor.spans.AbsoluteSizeSpan;
import com.onegravity.rteditor.spans.BackgroundColorSpan;
import com.onegravity.rteditor.spans.BoldSpan;
import com.onegravity.rteditor.spans.ForegroundColorSpan;
import com.onegravity.rteditor.spans.ItalicSpan;
import com.onegravity.rteditor.spans.LinkSpan;
import com.onegravity.rteditor.spans.StrikethroughSpan;
import com.onegravity.rteditor.spans.SubscriptSpan;
import com.onegravity.rteditor.spans.SuperscriptSpan;
import com.onegravity.rteditor.spans.TypefaceSpan;
import com.onegravity.rteditor.spans.UnderlineSpan;
import com.sunia.HTREnginev2.xuk;
import java.util.ArrayList;

/* loaded from: classes7.dex */
public class Effects {
    public static final AlignmentEffect ALIGNMENT;
    public static final ArrayList<Effect> ALL_EFFECTS;
    public static final Effect<Integer, BackgroundColorSpan> BGCOLOR;
    public static final Effect<Boolean, BoldSpan> BOLD;
    public static final BulletEffect BULLET;
    public static final Effect<Integer, ForegroundColorSpan> FONTCOLOR;
    public static final Effect<Integer, AbsoluteSizeSpan> FONTSIZE;
    public static final ArrayList<Effect> FORMATTING_EFFECTS;
    public static final IndentationEffect INDENTATION;
    public static final Effect<Boolean, ItalicSpan> ITALIC;
    public static final Effect<String, LinkSpan> LINK;
    public static final NumberEffect NUMBER;
    public static final Effect<Boolean, StrikethroughSpan> STRIKETHROUGH;
    public static final Effect<Boolean, SubscriptSpan> SUBSCRIPT;
    public static final Effect<Boolean, SuperscriptSpan> SUPERSCRIPT;
    public static final Effect<RTTypeface, TypefaceSpan> TYPEFACE;
    public static final Effect<Boolean, UnderlineSpan> UNDERLINE;

    static {
        BoldEffect boldEffect = new BoldEffect();
        BOLD = boldEffect;
        ItalicEffect italicEffect = new ItalicEffect();
        ITALIC = italicEffect;
        UnderlineEffect underlineEffect = new UnderlineEffect();
        UNDERLINE = underlineEffect;
        StrikethroughEffect strikethroughEffect = new StrikethroughEffect();
        STRIKETHROUGH = strikethroughEffect;
        SuperscriptEffect superscriptEffect = new SuperscriptEffect();
        SUPERSCRIPT = superscriptEffect;
        SubscriptEffect subscriptEffect = new SubscriptEffect();
        SUBSCRIPT = subscriptEffect;
        AbsoluteSizeEffect absoluteSizeEffect = new AbsoluteSizeEffect();
        FONTSIZE = absoluteSizeEffect;
        ForegroundColorEffect foregroundColorEffect = new ForegroundColorEffect();
        FONTCOLOR = foregroundColorEffect;
        BackgroundColorEffect backgroundColorEffect = new BackgroundColorEffect();
        BGCOLOR = backgroundColorEffect;
        TypefaceEffect typefaceEffect = new TypefaceEffect();
        TYPEFACE = typefaceEffect;
        LinkEffect linkEffect = new LinkEffect();
        LINK = linkEffect;
        BulletEffect bulletEffect = new BulletEffect();
        BULLET = bulletEffect;
        NumberEffect numberEffect = new NumberEffect();
        NUMBER = numberEffect;
        IndentationEffect indentationEffect = new IndentationEffect();
        INDENTATION = indentationEffect;
        AlignmentEffect alignmentEffect = new AlignmentEffect();
        ALIGNMENT = alignmentEffect;
        ArrayList<Effect> arrayList = new ArrayList<>();
        ALL_EFFECTS = arrayList;
        arrayList.add(boldEffect);
        arrayList.add(italicEffect);
        arrayList.add(underlineEffect);
        arrayList.add(strikethroughEffect);
        arrayList.add(superscriptEffect);
        arrayList.add(subscriptEffect);
        arrayList.add(absoluteSizeEffect);
        arrayList.add(foregroundColorEffect);
        arrayList.add(backgroundColorEffect);
        arrayList.add(typefaceEffect);
        arrayList.add(linkEffect);
        arrayList.add(bulletEffect);
        arrayList.add(numberEffect);
        arrayList.add(indentationEffect);
        arrayList.add(alignmentEffect);
        ArrayList<Effect> arrayList2 = new ArrayList<>();
        FORMATTING_EFFECTS = arrayList2;
        arrayList2.add(boldEffect);
        arrayList2.add(italicEffect);
        arrayList2.add(underlineEffect);
        arrayList2.add(strikethroughEffect);
        arrayList2.add(superscriptEffect);
        arrayList2.add(subscriptEffect);
        arrayList2.add(absoluteSizeEffect);
        arrayList2.add(foregroundColorEffect);
        arrayList2.add(backgroundColorEffect);
        arrayList2.add(typefaceEffect);
        arrayList2.add(linkEffect);
        arrayList2.add(bulletEffect);
        arrayList2.add(numberEffect);
        arrayList2.add(indentationEffect);
        arrayList2.add(alignmentEffect);
    }

    /* renamed from: a */
    public static void m31666a(RTEditText rTEditText, xuk xukVar, Effect... effectArr) {
        for (Effect effect : effectArr) {
            if (xukVar == effect) {
                return;
            }
        }
        xukVar.applyToSelection(rTEditText, null, null);
    }

    public static void cleanupParagraphs(RTEditText rTEditText, Effect... effectArr) {
        m31666a(rTEditText, ALIGNMENT, effectArr);
        m31666a(rTEditText, INDENTATION, effectArr);
        m31666a(rTEditText, BULLET, effectArr);
        m31666a(rTEditText, NUMBER, effectArr);
    }
}
