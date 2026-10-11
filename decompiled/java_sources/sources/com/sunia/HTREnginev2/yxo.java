package com.sunia.HTREnginev2;

import org.apache.commons.collections4.IteratorUtils;
import org.jsoup.nodes.TextNode;

/* loaded from: classes13.dex */
public class yxo {

    /* renamed from: a */
    public TextNode f91166a;

    /* renamed from: b */
    public int f91167b;

    /* renamed from: c */
    public int f91168c;

    public yxo(TextNode textNode, int i, int i2) {
        this.f91166a = textNode;
        this.f91167b = i;
        this.f91168c = i2;
    }

    /* renamed from: a */
    public boolean m58496a(int i, boolean z) {
        return z ? i >= this.f91167b && i < this.f91168c : i >= this.f91167b && i <= this.f91168c;
    }

    public String toString() {
        return IteratorUtils.f104923a + this.f91167b + "," + this.f91168c + IteratorUtils.f104924b;
    }
}
