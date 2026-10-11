package com.sunia.calculatorv2.ink.model;

import com.sunia.HTREnginev2.AbstractC13961k;
import com.sunia.HTREnginev2.C14219p1;
import com.sunia.calculatorv2.ink.graphics.BoundBox;
import com.sunia.calculatorv2.ink.model.AbstractC14807f;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/* renamed from: com.sunia.calculatorv2.ink.model.f */
/* loaded from: classes10.dex */
public abstract class AbstractC14807f<C extends AbstractC14807f> implements IElement {

    /* renamed from: d */
    public static final AtomicInteger f92424d = new AtomicInteger();

    /* renamed from: a */
    public final String f92425a = Integer.toString(f92424d.getAndIncrement());

    /* renamed from: b */
    public BoundBox f92426b;

    /* renamed from: c */
    public BoundBox f92427c;

    /* renamed from: l */
    public static /* synthetic */ Stream m58850l(Stream stream) {
        return stream;
    }

    /* renamed from: n */
    public static /* synthetic */ Stream m58852n(Stream stream) {
        return stream;
    }

    /* renamed from: o */
    public static /* synthetic */ Stream m58853o(AbstractC14807f abstractC14807f) {
        return abstractC14807f.m58858h().stream();
    }

    /* renamed from: p */
    public static /* synthetic */ Stream m58854p(AbstractC14807f abstractC14807f) {
        return abstractC14807f.mo58838i().stream();
    }

    @Override // com.sunia.calculatorv2.ink.model.IElement
    public List<IElement> getChildrenElement() {
        return new ArrayList(mo58831f());
    }

    /* renamed from: j */
    public abstract String mo54389j();

    /* renamed from: k */
    public void m58859k() {
        this.f92427c = null;
        Iterator<C> it2 = mo58831f().iterator();
        while (it2.hasNext()) {
            it2.next().m58859k();
        }
    }

    /* renamed from: a */
    public void m58855a(BoundBox boundBox) {
        this.f92426b = boundBox;
    }

    /* renamed from: c */
    public List<? extends AbstractC13961k> mo58829c() {
        return Collections.emptyList();
    }

    /* renamed from: d */
    public List<C14219p1> mo58830d() {
        return Collections.emptyList();
    }

    /* renamed from: e */
    public BoundBox mo58856e() {
        if (this.f92426b == null) {
            BoundBox union = BoundBox.union(BoundBox.union(mo58830d().stream().map(new Function() { // from class: com.sunia.HTREnginev2.zyo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BoundBox boundBox;
                    boundBox = ((C14219p1) obj).getBoundBox();
                    return boundBox;
                }
            }).iterator()), BoundBox.union(mo58831f().stream().map(new Function() { // from class: com.sunia.HTREnginev2.azo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BoundBox mo58856e;
                    mo58856e = ((AbstractC14807f) obj).mo58856e();
                    return mo58856e;
                }
            }).iterator()));
            this.f92426b = union;
            if (!union.isNonempty()) {
                BoundBox mo58857g = mo58857g();
                this.f92426b = mo58857g;
                if (!mo58857g.isNonempty()) {
                    this.f92426b = null;
                    return BoundBox.EMPTY;
                }
            }
        }
        return this.f92426b;
    }

    /* renamed from: f */
    public List<C> mo58831f() {
        return Collections.emptyList();
    }

    /* renamed from: g */
    public BoundBox mo58857g() {
        if (this.f92427c == null) {
            BoundBox union = BoundBox.union(BoundBox.union(mo58829c().stream().map(new Function() { // from class: com.sunia.HTREnginev2.vyo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BoundBox m55095b;
                    m55095b = ((AbstractC13961k) obj).m55095b();
                    return m55095b;
                }
            }).iterator()), BoundBox.union(mo58831f().stream().map(new Function() { // from class: com.sunia.HTREnginev2.wyo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    BoundBox mo58857g;
                    mo58857g = ((AbstractC14807f) obj).mo58857g();
                    return mo58857g;
                }
            }).iterator()));
            this.f92427c = union;
            if (!union.isNonempty()) {
                this.f92427c = null;
                return BoundBox.EMPTY;
            }
        }
        return this.f92427c;
    }

    /* renamed from: h */
    public List<? extends AbstractC13961k> m58858h() {
        return mo58831f().isEmpty() ? mo58829c() : (List) Stream.of((Object[]) new Stream[]{mo58829c().stream(), mo58831f().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.xyo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m58853o;
                m58853o = AbstractC14807f.m58853o((AbstractC14807f) obj);
                return m58853o;
            }
        })}).flatMap(new Function() { // from class: com.sunia.HTREnginev2.yyo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m58850l;
                m58850l = AbstractC14807f.m58850l((Stream) obj);
                return m58850l;
            }
        }).collect(Collectors.toList());
    }

    /* renamed from: i */
    public List<C14219p1> mo58838i() {
        return mo58831f().isEmpty() ? mo58830d() : (List) Stream.of((Object[]) new Stream[]{mo58830d().stream(), mo58831f().stream().flatMap(new Function() { // from class: com.sunia.HTREnginev2.tyo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m58854p;
                m58854p = AbstractC14807f.m58854p((AbstractC14807f) obj);
                return m58854p;
            }
        })}).flatMap(new Function() { // from class: com.sunia.HTREnginev2.uyo
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Stream m58852n;
                m58852n = AbstractC14807f.m58852n((Stream) obj);
                return m58852n;
            }
        }).collect(Collectors.toList());
    }
}
