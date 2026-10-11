package org.apache.xerces.dom.events;

import org.w3c.dom.events.EventTarget;
import org.w3c.dom.events.MouseEvent;
import org.w3c.dom.views.AbstractView;

/* loaded from: classes13.dex */
public class MouseEventImpl extends UIEventImpl implements MouseEvent {

    /* renamed from: c */
    public int f111923c;

    /* renamed from: d */
    public int f111924d;

    /* renamed from: e */
    public int f111925e;

    /* renamed from: f */
    public int f111926f;

    /* renamed from: g */
    public boolean f111927g;

    /* renamed from: h */
    public boolean f111928h;

    /* renamed from: i */
    public boolean f111929i;

    /* renamed from: j */
    public boolean f111930j;

    /* renamed from: k */
    public short f111931k;

    /* renamed from: l */
    public EventTarget f111932l;

    @Override // org.w3c.dom.events.MouseEvent
    public boolean getAltKey() {
        return this.f111928h;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public short getButton() {
        return this.f111931k;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public int getClientX() {
        return this.f111925e;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public int getClientY() {
        return this.f111926f;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public boolean getCtrlKey() {
        return this.f111927g;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public boolean getMetaKey() {
        return this.f111930j;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public EventTarget getRelatedTarget() {
        return this.f111932l;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public int getScreenX() {
        return this.f111923c;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public int getScreenY() {
        return this.f111924d;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public boolean getShiftKey() {
        return this.f111929i;
    }

    @Override // org.w3c.dom.events.MouseEvent
    public void initMouseEvent(String str, boolean z, boolean z2, AbstractView abstractView, int i, int i2, int i3, int i4, int i5, boolean z3, boolean z4, boolean z5, boolean z6, short s, EventTarget eventTarget) {
        this.f111923c = i2;
        this.f111924d = i3;
        this.f111925e = i4;
        this.f111926f = i5;
        this.f111927g = z3;
        this.f111928h = z4;
        this.f111929i = z5;
        this.f111930j = z6;
        this.f111931k = s;
        this.f111932l = eventTarget;
        super.initUIEvent(str, z, z2, abstractView, i);
    }
}
