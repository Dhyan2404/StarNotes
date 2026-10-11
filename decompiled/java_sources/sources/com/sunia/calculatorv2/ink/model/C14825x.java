package com.sunia.calculatorv2.ink.model;

import android.graphics.Paint;
import android.graphics.Rect;
import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C13462a0;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.HTREnginev2.C14376s1;
import com.sunia.HTREnginev2.C14482u0;
import com.sunia.HTREnginev2.InterfaceC13597d0;
import com.sunia.HTREnginev2.InterfaceC13856i;
import com.sunia.HTREnginev2.utils.LogUtil;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.C14826y;
import com.sunia.calculatorv2.ink.util.Alternative;
import com.sunia.calculatorv2.ink.util.Pair;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/* renamed from: com.sunia.calculatorv2.ink.model.x */
/* loaded from: classes10.dex */
public class C14825x extends AbstractC14807f<C14826y> implements InterfaceC13597d0, InterfaceC13856i {

    /* renamed from: l */
    public static final Pattern f92471l = Pattern.compile("^.*[\\p{Script=Arab}\\p{Script=Hebr}].*$");

    /* renamed from: e */
    public final List<Alternative<List<C14826y>>> f92472e;

    /* renamed from: f */
    public final List<C14219p1> f92473f;

    /* renamed from: h */
    public String f92474h;

    /* renamed from: i */
    public boolean f92475i = false;

    /* renamed from: j */
    public boolean f92476j = false;

    /* renamed from: k */
    public C13462a0 f92477k;

    public C14825x(List<Alternative<List<C14826y>>> list, List<C14219p1> list2, BoundBox boundBox) {
        this.f92472e = list;
        this.f92473f = list2;
        m58855a(boundBox);
        m58859k();
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13597d0
    /* renamed from: a */
    public String mo53565a() {
        if (this.f92474h == null) {
            if (this.f92472e.isEmpty()) {
                return "";
            }
            this.f92474h = (String) this.f92472e.get(0).getContent().stream().map(new Function() { // from class: com.sunia.HTREnginev2.s8p
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((C14826y) obj).m58905a();
                }
            }).collect(Collectors.joining());
        }
        return this.f92474h;
    }

    @Override // com.sunia.HTREnginev2.InterfaceC13856i
    /* renamed from: b */
    public void mo54662b() {
        this.f92476j = false;
        m58859k();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: c */
    public List<? extends AbstractC13961k> mo58829c() {
        C13462a0 c13462a0 = this.f92477k;
        return c13462a0 != null ? Collections.singletonList(c13462a0) : Collections.emptyList();
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: d */
    public List<C14219p1> mo58830d() {
        return this.f92473f;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: f */
    public List<C14826y> mo58831f() {
        return this.f92472e.isEmpty() ? Collections.emptyList() : this.f92472e.get(0).getContent();
    }

    public List<Alternative<List<C14826y>>> getCandidates() {
        return this.f92472e;
    }

    @Override // com.sunia.calculatorv2.ink.model.AbstractC14807f
    /* renamed from: j */
    public String mo54389j() {
        return "text-line";
    }

    /* renamed from: a */
    public void m58904a(Paint paint) {
        C14825x c14825x;
        float height;
        float left;
        float bottom;
        int i;
        boolean z;
        float height2;
        if (this.f92476j || this.f92472e.isEmpty()) {
            return;
        }
        BoundBox mo58856e = mo58856e();
        String str = "text-line";
        LogUtil.m57656i("text-line", "Target bound:" + mo58856e);
        int i2 = 0;
        if (this.f92475i) {
            ArrayList arrayList = new ArrayList();
            Rect rect = new Rect();
            Iterator<C14826y> it2 = this.f92472e.get(0).getContent().iterator();
            float f = 0.0f;
            while (it2.hasNext()) {
                for (C14824w c14824w : it2.next().mo58831f()) {
                    String m58902a = c14824w.m58902a();
                    paint.getTextBounds(m58902a, 0, m58902a.length(), rect);
                    if (rect.width() > f) {
                        f = rect.width();
                    }
                    arrayList.add(new Pair(c14824w, rect));
                }
            }
            ArrayList<Pair> arrayList2 = new ArrayList(arrayList.size());
            float f2 = -paint.ascent();
            float descent = paint.descent();
            Iterator it3 = arrayList.iterator();
            int i3 = Integer.MIN_VALUE;
            int i4 = Integer.MAX_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            while (it3.hasNext()) {
                Pair pair = (Pair) it3.next();
                Rect rect2 = (Rect) pair.getValue();
                int width = rect2.width();
                Iterator it4 = it3;
                int i7 = (-width) / 2;
                int i8 = width / 2;
                int i9 = rect2.top + i2;
                String str2 = str;
                int i10 = rect2.bottom + i2;
                if (i7 < i4) {
                    i4 = i7;
                }
                if (i8 > i3) {
                    i3 = i8;
                }
                if (i9 < i5) {
                    i5 = i9;
                }
                if (i10 > i6) {
                    i6 = i10;
                }
                arrayList2.add(new Pair((C14824w) pair.getKey(), new Pair(new C14376s1(i7 - rect2.left, i2), rect2)));
                i2 = (int) (i2 + f2 + descent);
                it3 = it4;
                str = str2;
                i3 = i3;
            }
            String str3 = str;
            int max = Math.max(i3 - i4, 1);
            int max2 = Math.max(i6 - i5, 1);
            float centerX = mo58856e.getCenterX();
            float centerY = mo58856e.getCenterY();
            float f3 = (-(i4 + i3)) * 0.5f;
            float f4 = (-(i5 + i6)) * 0.5f;
            float f5 = max;
            float f6 = max2;
            if (mo58856e.getHeight() * f5 >= mo58856e.getWidth() * f6) {
                height2 = mo58856e.getWidth() / f5;
            } else {
                height2 = mo58856e.getHeight() / f6;
            }
            for (Pair pair2 : arrayList2) {
                C14824w c14824w2 = (C14824w) pair2.getKey();
                C14376s1 c14376s1 = (C14376s1) ((Pair) pair2.getValue()).getKey();
                Rect rect3 = (Rect) ((Pair) pair2.getValue()).getValue();
                float m57119b = c14376s1.m57119b();
                float m57120c = c14376s1.m57120c();
                BoundBox boundBox = new BoundBox(((rect3.left + m57119b + f3) * height2) + centerX, ((rect3.right + m57119b + f3) * height2) + centerX, ((rect3.top + m57120c + f4) * height2) + centerY, ((rect3.bottom + m57120c + f4) * height2) + centerY);
                c14824w2.m58903q(new C13462a0(c14824w2.m58902a(), new C14376s1(((m57119b + f3) * height2) + centerX, ((m57120c + f4) * height2) + centerY), height2, boundBox));
                LogUtil.m57656i(str3, ((C14824w) pair2.getKey()).m58902a() + ":" + boundBox + ":" + rect);
            }
            z = true;
            c14825x = this;
        } else {
            ArrayList arrayList3 = new ArrayList();
            StringBuilder sb = new StringBuilder();
            c14825x = this;
            Iterator<C14826y> it5 = c14825x.f92472e.get(0).getContent().iterator();
            while (it5.hasNext()) {
                for (C14824w c14824w3 : it5.next().mo58831f()) {
                    sb.append(c14824w3.m58902a());
                    arrayList3.add(new Pair(c14824w3, Integer.valueOf(sb.length())));
                }
            }
            String sb2 = sb.toString();
            Rect rect4 = new Rect();
            paint.getTextBounds(sb2, 0, sb2.length(), rect4);
            if (rect4.width() * mo58856e.getHeight() >= mo58856e.getWidth() * rect4.height()) {
                height = mo58856e.getWidth() / (rect4.width() + 1.0E-7f);
                left = mo58856e.getLeft() - (rect4.left * height);
                bottom = mo58856e.getBottom() - ((mo58856e.getHeight() - (rect4.height() * height)) * 0.5f);
                i = rect4.bottom;
            } else {
                height = mo58856e.getHeight() / (rect4.height() + 1.0E-7f);
                left = (mo58856e.getLeft() + ((mo58856e.getWidth() - (rect4.width() * height)) * 0.5f)) - (rect4.left * height);
                bottom = mo58856e.getBottom();
                i = rect4.bottom;
            }
            float f7 = bottom - (i * height);
            float centerX2 = mo58856e.getCenterX();
            float centerY2 = mo58856e.getCenterY();
            float f8 = (-(rect4.left + rect4.right)) * 0.5f;
            float f9 = (-(rect4.top + rect4.bottom)) * 0.5f;
            c14825x.f92477k = new C13462a0(sb2, new C14376s1(left, f7), height, new BoundBox(((rect4.left + f8) * height) + centerX2, ((rect4.right + f8) * height) + centerX2, ((rect4.top + f9) * height) + centerY2, ((rect4.bottom + f9) * height) + centerY2));
            if (!f92471l.matcher(sb2).matches()) {
                Iterator it6 = arrayList3.iterator();
                float f10 = 0.0f;
                int i11 = 0;
                while (it6.hasNext()) {
                    Pair pair3 = (Pair) it6.next();
                    int intValue = ((Integer) pair3.getValue()).intValue();
                    paint.getTextBounds(sb2, i11, intValue, new Rect());
                    ((C14824w) pair3.getKey()).m58903q(new C14482u0(new BoundBox(((r10.left + f10 + f8) * height) + centerX2, ((r10.right + f10 + f8) * height) + centerX2, ((r10.top + f9) * height) + centerY2, ((r10.bottom + f9) * height) + centerY2)));
                    f10 += paint.measureText(sb2, i11, intValue);
                    i11 = intValue;
                    it6 = it6;
                    centerX2 = centerX2;
                }
            }
            z = true;
        }
        c14825x.f92476j = z;
    }
}
