package org.apache.xerces.dom.events;

import org.w3c.dom.events.UIEvent;
import org.w3c.dom.views.AbstractView;

/* loaded from: classes13.dex */
public class UIEventImpl extends EventImpl implements UIEvent {

    /* renamed from: a */
    public AbstractView f111937a;

    /* renamed from: b */
    public int f111938b;

    @Override // org.w3c.dom.events.UIEvent
    public int getDetail() {
        return this.f111938b;
    }

    @Override // org.w3c.dom.events.UIEvent
    public AbstractView getView() {
        return this.f111937a;
    }

    @Override // org.w3c.dom.events.UIEvent
    public void initUIEvent(String str, boolean z, boolean z2, AbstractView abstractView, int i) {
        this.f111937a = abstractView;
        this.f111938b = i;
        super.initEvent(str, z, z2);
    }
}
