package com.sunia.HTREnginev2;

import org.apache.xerces.impl.p117xs.opti.ElementImpl;
import org.w3c.dom.Element;

/* loaded from: classes13.dex */
public final class mmo {

    /* renamed from: a */
    public String f77781a;

    /* renamed from: b */
    public int f77782b;

    /* renamed from: c */
    public int f77783c;

    /* renamed from: d */
    public int f77784d;

    /* renamed from: e */
    public mmo f77785e;

    public mmo(String str, int i, int i2, int i3) {
        this.f77781a = str;
        this.f77782b = i;
        this.f77783c = i2;
        this.f77784d = i3;
    }

    public mmo(String str, Element element) {
        int i;
        this.f77781a = str;
        if (element instanceof ElementImpl) {
            ElementImpl elementImpl = (ElementImpl) element;
            this.f77782b = elementImpl.getLineNumber();
            this.f77783c = elementImpl.getColumnNumber();
            i = elementImpl.getCharacterOffset();
        } else {
            i = -1;
            this.f77782b = -1;
            this.f77783c = -1;
        }
        this.f77784d = i;
    }
}
