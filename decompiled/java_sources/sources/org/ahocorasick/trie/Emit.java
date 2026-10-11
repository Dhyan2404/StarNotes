package org.ahocorasick.trie;

import org.ahocorasick.interval.Interval;
import org.ahocorasick.interval.Intervalable;

/* loaded from: classes11.dex */
public class Emit extends Interval implements Intervalable {

    /* renamed from: g */
    public final String f104546g;

    public Emit(int i, int i2, String str) {
        super(i, i2);
        this.f104546g = str;
    }

    public String getKeyword() {
        return this.f104546g;
    }

    @Override // org.ahocorasick.interval.Interval
    public String toString() {
        return super.toString() + "=" + this.f104546g;
    }
}
