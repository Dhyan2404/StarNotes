package com.sunia.HTREnginev2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import com.onyx.android.sdk.hwr.data.bean.HWRItem;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.graphics.IStyleSheet;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import com.sunia.calculatorv2.ink.model.C14802a;
import com.sunia.calculatorv2.ink.model.C14806e;
import com.sunia.calculatorv2.ink.model.C14810i;
import com.sunia.calculatorv2.ink.model.C14825x;
import com.sunia.calculatorv2.ink.model.MathElement;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: com.sunia.HTREnginev2.d1 */
/* loaded from: classes10.dex */
public class C13598d1 {
    /* renamed from: a */
    public static void m53566a(C14219p1 c14219p1, C14376s1 c14376s1, String str, Matrix matrix, float f, C13963k1 c13963k1, Canvas canvas) {
        C13858i1 m54665a = c13963k1.m55100a((f * 0.01968504f) / matrix.mapRadius(1.0f)).m54665a(str);
        canvas.drawPath(c14219p1.getPath(), m54665a.m54665a("stroke").m54666b());
        if (c14376s1 != null) {
            C14376s1 m56198a = c14219p1.m56198a();
            canvas.drawLine(m56198a.m57119b(), m56198a.m57120c(), c14376s1.m57119b(), c14376s1.m57120c(), m54665a.m54665a(IStyleSheet.CLASS_PREDICTION).m54666b());
        }
    }

    /* renamed from: b */
    public static void m53571b(AbstractC14807f<?> abstractC14807f, float f, Paint paint, Canvas canvas) {
        if (abstractC14807f instanceof C14810i) {
            BoundBox mo58857g = abstractC14807f.mo58857g();
            canvas.drawRect(mo58857g.getLeft() - f, mo58857g.getTop() - f, mo58857g.getRight() + f, mo58857g.getBottom() + f, paint);
        } else {
            Iterator<?> it2 = abstractC14807f.mo58831f().iterator();
            while (it2.hasNext()) {
                m53571b((AbstractC14807f) it2.next(), f, paint, canvas);
            }
        }
    }

    /* renamed from: a */
    public static void m53569a(AbstractC14807f abstractC14807f, List<C14219p1> list, boolean z, Matrix matrix, float f, C13963k1 c13963k1, Canvas canvas) {
        HashSet hashSet = new HashSet(list);
        float mapRadius = f / matrix.mapRadius(1.0f);
        C13858i1 m55100a = c13963k1.m55100a(0.01968504f * mapRadius);
        m53568a(abstractC14807f, m55100a.m54665a(z ? IStyleSheet.CLASS_CONVERTED : "model"), hashSet, z, canvas, mapRadius);
        C13858i1 m54665a = m55100a.m54665a(IStyleSheet.CLASS_PROCESSING);
        if (hashSet.isEmpty()) {
            return;
        }
        Paint m54666b = m54665a.m54665a("stroke").m54666b();
        if (m54666b.getColor() != 0) {
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                canvas.drawPath(((C14219p1) it2.next()).getPath(), m54666b);
            }
        }
    }

    /* renamed from: a */
    public static void m53568a(AbstractC14807f<? extends AbstractC14807f> abstractC14807f, C13858i1 c13858i1, Set<C14219p1> set, boolean z, Canvas canvas, float f) {
        float height;
        float left;
        float bottom;
        C13858i1 m54664a = c13858i1.m54664a(abstractC14807f);
        C13858i1 m54665a = m54664a.m54665a(IStyleSheet.CLASS_BOUNDING_BOX);
        Paint m54666b = m54665a.m54666b();
        Paint m54663a = m54665a.m54663a();
        if (abstractC14807f instanceof C14825x) {
            ((C14825x) abstractC14807f).m58904a(m54664a.m54665a(HWRItem.TYPE_GLYPH).m54666b());
        } else if (abstractC14807f instanceof MathElement) {
            ((MathElement) abstractC14807f).m58828a(m54664a.m54665a(IStyleSheet.CLASS_GENERATED).m54666b().getColor());
            abstractC14807f.m58858h();
        }
        if (m54666b.getColor() != 0 || m54663a.getColor() != 0) {
            BoundBox mo58857g = z ? abstractC14807f.mo58857g() : abstractC14807f.mo58856e();
            float left2 = mo58857g.getLeft();
            float right = mo58857g.getRight();
            float top = mo58857g.getTop();
            float bottom2 = mo58857g.getBottom();
            if (left2 <= right && top <= bottom2) {
                if (m54663a.getColor() != 0) {
                    canvas.drawRect(left2, top, right, bottom2, m54663a);
                }
                if (m54666b.getColor() != 0) {
                    canvas.drawRect(left2, top, right, bottom2, m54666b);
                }
            }
        }
        List<C14219p1> mo58830d = abstractC14807f.mo58830d();
        if (!mo58830d.isEmpty()) {
            Paint m54666b2 = m54664a.m54665a("stroke").m54666b();
            if (m54666b2.getColor() != 0) {
                for (C14219p1 c14219p1 : mo58830d) {
                    if (set.contains(c14219p1)) {
                        canvas.drawPath(c14219p1.getPath(), m54666b2);
                    }
                }
            }
            set.removeAll(mo58830d);
        }
        List<? extends AbstractC13961k> mo58829c = abstractC14807f.mo58829c();
        if (!mo58829c.isEmpty()) {
            for (AbstractC13961k abstractC13961k : mo58829c) {
                Paint m54666b3 = m54664a.m54665a(abstractC13961k.mo52911c()).m54666b();
                if (m54666b3.getColor() != 0) {
                    abstractC13961k.mo52910a(m54666b3, canvas, f);
                }
            }
        }
        if (abstractC14807f instanceof C14802a) {
            BoundBox mo58856e = abstractC14807f.mo58856e();
            String mo53565a = ((C14802a) abstractC14807f).mo53565a();
            Paint m54666b4 = m54664a.m54665a(HWRItem.TYPE_GLYPH).m54666b();
            m54666b4.getTextBounds(mo53565a, 0, mo53565a.length(), new Rect());
            if (r4.width() * mo58856e.getHeight() >= mo58856e.getWidth() * r4.height()) {
                height = mo58856e.getWidth() / (r4.width() + 1.0E-7f);
                left = mo58856e.getLeft() - (r4.left * height);
                bottom = (mo58856e.getBottom() - ((mo58856e.getHeight() - (r4.height() * height)) * 0.5f)) - (r4.bottom * height);
            } else {
                height = mo58856e.getHeight() / (r4.height() + 1.0E-7f);
                left = (mo58856e.getLeft() + ((mo58856e.getWidth() - (r4.width() * height)) * 0.5f)) - (r4.left * height);
                bottom = mo58856e.getBottom() - (r4.bottom * height);
            }
            Matrix matrix = new Matrix();
            Paint paint = new Paint(m54666b4);
            paint.setStrokeWidth(paint.getStrokeWidth() / height);
            matrix.postScale(height, height, left, bottom);
            canvas.save();
            canvas.concat(matrix);
            canvas.drawText(mo53565a, left, bottom, paint);
            canvas.restore();
        }
        Iterator<? extends AbstractC14807f> it2 = abstractC14807f.mo58831f().iterator();
        while (it2.hasNext()) {
            m53568a(it2.next(), m54664a, set, z, canvas, f);
        }
    }

    /* renamed from: a */
    public static void m53567a(C14219p1 c14219p1, List<C14219p1> list, C14806e c14806e, Matrix matrix, float f, C13963k1 c13963k1, Canvas canvas) {
        C13858i1 m54665a = c13963k1.m55100a((f * 0.01968504f) / matrix.mapRadius(1.0f)).m54665a(IStyleSheet.CLASS_CANVAS);
        BoundBox boundBox = c14219p1 != null ? new C14219p1(c14219p1.getPoints()).getBoundBox() : BoundBox.EMPTY;
        float top = boundBox.getTop();
        float bottom = boundBox.getBottom();
        Iterator<C14219p1> it2 = list.iterator();
        while (it2.hasNext()) {
            BoundBox boundBox2 = it2.next().getBoundBox();
            if (boundBox2.getTop() < top) {
                top = boundBox2.getTop();
            }
            if (boundBox2.getBottom() > bottom) {
                bottom = boundBox2.getBottom();
            }
        }
        Iterator<AbstractC14807f> it3 = c14806e.mo58831f().iterator();
        while (it3.hasNext()) {
            for (AbstractC14807f abstractC14807f : it3.next().mo58831f()) {
                if (abstractC14807f instanceof MathElement) {
                    BoundBox mo58857g = abstractC14807f.mo58857g();
                    if (mo58857g.getTop() <= bottom && top <= mo58857g.getBottom()) {
                        List<? extends AbstractC13961k> mo58829c = abstractC14807f.mo58829c();
                        m53571b(abstractC14807f, mo58829c.size() == 1 ? ((C14069m0) mo58829c.get(0)).m55527d() * 0.05f : 0.0f, m54665a.m54663a(), canvas);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static void m53570a(List<? extends AbstractC14807f> list, Matrix matrix, float f, C13963k1 c13963k1, Canvas canvas) {
        Paint paint = new Paint(c13963k1.m55100a((f * 0.01968504f) / matrix.mapRadius(1.0f)).m54665a(IStyleSheet.CLASS_CANVAS).m54665a(IStyleSheet.CLASS_HIGHLIGHTER).m54666b());
        paint.setStyle(Paint.Style.FILL);
        Iterator<? extends AbstractC14807f> it2 = list.iterator();
        while (it2.hasNext()) {
            BoundBox mo58857g = it2.next().mo58857g();
            canvas.drawRect(mo58857g.getLeft(), mo58857g.getTop(), mo58857g.getRight(), mo58857g.getBottom(), paint);
        }
    }
}
