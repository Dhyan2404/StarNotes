package com.sunia.HTREnginev2;

import android.graphics.Paint;
import com.onyx.android.sdk.hwr.data.bean.HWRItem;
import com.onyx.android.sdk.hwr.data.constant.HWRValues;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.calculatorv2.ink.graphics.Style;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;

/* renamed from: com.sunia.HTREnginev2.k1 */
/* loaded from: classes10.dex */
public class C13963k1 implements IStyleSheet {

    /* renamed from: a */
    public final Map<String, Style> f74893a = new HashMap();

    /* renamed from: b */
    public final Map<String, Pair<Pattern, Style>> f74894b = new HashMap();

    /* renamed from: c */
    public final Map<String, C13858i1> f74895c = new HashMap();

    /* renamed from: d */
    public float f74896d = -1.0f;

    public C13963k1() {
        addRuleForClass("Text", Style.createBackgroundColorProperty(0));
        addRuleForClass(HWRValues.PART_TYPE_DIAGRAM, Style.createBackgroundColorProperty(520093951));
        addRuleForClass("Table", Style.createBackgroundColorProperty(520158976));
        addRuleForClass("Listing", Style.createBackgroundColorProperty(536805631));
        addRuleForClass("text-line", Style.createBackgroundColorProperty(0));
        addRuleForClass("Math", Style.createBackgroundColorProperty(0));
        addRuleForClass("Chemical", Style.createBackgroundColorProperty(0));
        addRuleForClass(HWRValues.PART_TYPE_DRAW, Style.createBackgroundColorProperty(0));
        addRuleForClass("Structure", Style.createBackgroundColorProperty(0));
        addRuleForClass("Text", Style.createForegroundColorProperty(-8355840));
        addRuleForClass(HWRValues.PART_TYPE_DIAGRAM, Style.createForegroundColorProperty(-16776961));
        addRuleForClass("Table", Style.createForegroundColorProperty(-16711936));
        addRuleForClass("Listing", Style.createForegroundColorProperty(-65281));
        addRuleForClass("Marking", Style.createForegroundColorProperty(-65536));
        addRuleForClass("text-line", Style.createForegroundColorProperty(-16777216));
        addRuleForClass("Math", Style.createForegroundColorProperty(-8388480));
        addRuleForClass("Chemical", Style.createForegroundColorProperty(-16744320));
        addRuleForClass(HWRValues.PART_TYPE_DRAW, Style.createForegroundColorProperty(-16777088));
        addRuleForClass("Structure", Style.createForegroundColorProperty(-16744448));
        addRuleForClass("garbage", Style.createForegroundColorProperty(-23296));
        addRuleForClass(HWRItem.TYPE_GLYPH, Style.createStrokeFillProperty(Paint.Style.FILL));
        addRuleForClass(IStyleSheet.CLASS_CANVAS, Style.createBackgroundColorProperty(-1));
        addRuleForClass(IStyleSheet.CLASS_GENERATED, Style.createForegroundColorProperty(-16744193));
        addRuleForClass(IStyleSheet.CLASS_BOUNDING_BOX, Style.createForegroundColorProperty(0));
        addRuleForClass(IStyleSheet.CLASS_ERASER, Style.createForegroundColorProperty(-1));
        addRuleForClass(IStyleSheet.CLASS_HAND, Style.createForegroundColorProperty(0));
        addRuleForClass(IStyleSheet.CLASS_HIGHLIGHTER, Style.createForegroundColorProperty(-256));
        addRuleForClass(IStyleSheet.CLASS_HIGHLIGHTER, Style.createStrokeWidthProperty(8.0f));
        addRuleForClass(IStyleSheet.CLASS_PLACEHOLDER, Style.createForegroundColorProperty(0));
        addRuleForPathPattern("/selector/stroke", Style.createStrokeDashProperty(new float[]{10.0f, 10.0f}, 0.0f));
        addRuleForPathPattern("/selector/prediction", Style.createForegroundColorProperty(0));
        addRuleForPathPattern("/wet/prediction", Style.createForegroundColorProperty(-3355444));
        addRuleForPathPattern("/converted/.*/stroke", Style.createForegroundColorProperty(0));
        addRuleForPathPattern("/model/.*/math", Style.createForegroundColorProperty(0));
    }

    /* renamed from: a */
    public C13858i1 m55100a(float f) {
        if (Math.abs(f - this.f74896d) > 1.0E-18f) {
            this.f74895c.clear();
            this.f74896d = f;
        }
        C13858i1 c13858i1 = this.f74895c.get("");
        if (c13858i1 != null) {
            return c13858i1;
        }
        C13858i1 c13858i12 = new C13858i1(f, this);
        this.f74895c.put("", c13858i12);
        return c13858i12;
    }

    @Override // com.sunia.calculatorv2.ink.graphics.IStyleSheet
    public void addRuleForClass(String str, InterfaceC13903j1 interfaceC13903j1) {
        Style style = this.f74893a.get(str);
        if (style == null) {
            style = new Style();
            this.f74893a.put(str, style);
        }
        style.addProperty(interfaceC13903j1);
        this.f74895c.clear();
    }

    @Override // com.sunia.calculatorv2.ink.graphics.IStyleSheet
    public void addRuleForPathPattern(String str, InterfaceC13903j1 interfaceC13903j1) {
        Pair<Pattern, Style> pair = this.f74894b.get(str);
        if (pair == null) {
            pair = new Pair<>(Pattern.compile(str), new Style());
            this.f74894b.put(str, pair);
        }
        pair.getValue().addProperty(interfaceC13903j1);
        this.f74895c.clear();
    }

    /* renamed from: b */
    public C13858i1 m55101b(String str, C13858i1 c13858i1) {
        String str2 = c13858i1.m54667c() + "/" + str;
        C13858i1 c13858i12 = this.f74895c.get(str2);
        if (c13858i12 == null) {
            Style style = this.f74893a.get(str);
            c13858i12 = new C13858i1(new Paint(c13858i1.m54663a()), new Paint(c13858i1.m54666b()), str2, this);
            if (style != null) {
                Iterator<InterfaceC13903j1> it2 = style.getProperties().iterator();
                while (it2.hasNext()) {
                    it2.next().mo54851a(c13858i12);
                }
            }
            for (Map.Entry<String, Pair<Pattern, Style>> entry : this.f74894b.entrySet()) {
                if (entry.getValue().getKey().matcher(str2).matches()) {
                    Iterator<InterfaceC13903j1> it3 = entry.getValue().getValue().getProperties().iterator();
                    while (it3.hasNext()) {
                        it3.next().mo54851a(c13858i12);
                    }
                }
            }
            this.f74895c.put(str2, c13858i12);
        }
        return c13858i12;
    }
}
