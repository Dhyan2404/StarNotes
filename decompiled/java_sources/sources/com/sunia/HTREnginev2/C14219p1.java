package com.sunia.HTREnginev2;

import android.graphics.Path;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.graphics.ITrace;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.stream.Collectors;

/* renamed from: com.sunia.HTREnginev2.p1 */
/* loaded from: classes10.dex */
public class C14219p1 implements ITrace {

    /* renamed from: e */
    public static long f80333e;

    /* renamed from: a */
    public final List<C14376s1> f80334a;

    /* renamed from: b */
    public Path f80335b;

    /* renamed from: c */
    public final long f80336c;

    /* renamed from: d */
    public BoundBox f80337d;

    public C14219p1() {
        this(new ArrayList());
    }

    /* renamed from: b */
    public C14376s1 m56200b() {
        return this.f80334a.get(0);
    }

    @Override // com.sunia.calculatorv2.ink.graphics.ITrace
    public BoundBox getBoundBox() {
        if (this.f80337d == null) {
            float f = Float.MAX_VALUE;
            float f2 = -3.4028235E38f;
            float f3 = -3.4028235E38f;
            float f4 = Float.MAX_VALUE;
            for (C14376s1 c14376s1 : getPoints()) {
                float m57119b = c14376s1.m57119b();
                float m57120c = c14376s1.m57120c();
                if (m57119b < f) {
                    f = m57119b;
                }
                if (m57120c < f4) {
                    f4 = m57120c;
                }
                if (m57119b > f2) {
                    f2 = m57119b;
                }
                if (m57120c > f3) {
                    f3 = m57120c;
                }
            }
            this.f80337d = new BoundBox(f, f2, f4, f3);
        }
        return this.f80337d;
    }

    @Override // com.sunia.calculatorv2.ink.graphics.ITrace
    public long getId() {
        return this.f80336c;
    }

    @Override // com.sunia.calculatorv2.ink.graphics.ITrace
    public Path getPath() {
        if (this.f80335b == null) {
            this.f80335b = new Path();
            Iterator<C14376s1> it2 = this.f80334a.iterator();
            if (it2.hasNext()) {
                C14376s1 next = it2.next();
                this.f80335b.moveTo(next.m57119b(), next.m57120c());
                while (it2.hasNext()) {
                    C14376s1 next2 = it2.next();
                    this.f80335b.lineTo(next2.m57119b(), next2.m57120c());
                }
            }
        }
        return this.f80335b;
    }

    @Override // com.sunia.calculatorv2.ink.graphics.ITrace
    public List<C14376s1> getPoints() {
        return this.f80334a;
    }

    public String toString() {
        return this.f80334a.toString();
    }

    public C14219p1(List<C14376s1> list) {
        this.f80334a = list;
        long j = f80333e;
        f80333e = 1 + j;
        this.f80336c = j;
    }

    /* renamed from: b */
    public static /* synthetic */ C14376s1 m56197b(BoundBox boundBox, float f, float f2, float f3, float f4, C14376s1 c14376s1) {
        return new C14376s1((((c14376s1.m57119b() - boundBox.getLeft()) * f) / f2) + f3, (((c14376s1.m57120c() - boundBox.getTop()) * f) / f2) + f4);
    }

    /* renamed from: a */
    public void m56199a(C14376s1 c14376s1) {
        if (this.f80335b != null) {
            float m57119b = c14376s1.m57119b();
            float m57120c = c14376s1.m57120c();
            if (this.f80334a.isEmpty()) {
                this.f80335b.moveTo(m57119b, m57120c);
            } else {
                this.f80335b.lineTo(m57119b, m57120c);
            }
        }
        this.f80334a.add(c14376s1);
    }

    public C14219p1(List<C14376s1> list, Path path) {
        this.f80334a = list;
        this.f80335b = path;
        long j = f80333e;
        f80333e = 1 + j;
        this.f80336c = j;
    }

    /* renamed from: a */
    public C14376s1 m56198a() {
        return this.f80334a.get(r1.size() - 1);
    }

    /* renamed from: a */
    public static BoundBox m56195a(List<C14219p1> list) {
        return BoundBox.union(list.stream().map(new Function() { // from class: com.sunia.HTREnginev2.pzo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((C14219p1) obj).getBoundBox();
            }
        }).iterator());
    }

    /* renamed from: a */
    public static List<C14219p1> m56196a(List<C14219p1> list, BoundBox boundBox) {
        float height;
        float height2;
        float left;
        float top;
        final BoundBox m56195a = m56195a(list);
        ArrayList arrayList = new ArrayList(list.size());
        if (m56195a.getWidth() * boundBox.getHeight() >= boundBox.getWidth() * m56195a.getHeight()) {
            height = m56195a.getWidth();
            height2 = boundBox.getWidth();
            left = boundBox.getLeft();
            top = (boundBox.getTop() + (boundBox.getHeight() / 2.0f)) - ((m56195a.getHeight() * height2) / (2.0f * height));
        } else {
            height = m56195a.getHeight();
            height2 = boundBox.getHeight();
            left = (boundBox.getLeft() + (boundBox.getWidth() / 2.0f)) - ((m56195a.getWidth() * height2) / (2.0f * height));
            top = boundBox.getTop();
        }
        final float f = height;
        final float f2 = height2;
        final float f3 = left;
        final float f4 = top;
        Iterator<C14219p1> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(new C14219p1((List) it2.next().getPoints().stream().map(new Function() { // from class: com.sunia.HTREnginev2.ozo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    C14376s1 m56197b;
                    m56197b = C14219p1.m56197b(BoundBox.this, f2, f, f3, f4, (C14376s1) obj);
                    return m56197b;
                }
            }).collect(Collectors.toList())));
        }
        return arrayList;
    }
}
