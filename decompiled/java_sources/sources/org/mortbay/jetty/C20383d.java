package org.mortbay.jetty;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;
import org.mortbay.jetty.HttpFields;

/* renamed from: org.mortbay.jetty.d */
/* loaded from: classes13.dex */
public class C20383d implements Iterator {

    /* renamed from: e */
    public int f114830e = 0;

    /* renamed from: f */
    public HttpFields.Field f114831f = null;

    /* renamed from: g */
    public final /* synthetic */ int f114832g;

    /* renamed from: h */
    public final /* synthetic */ HttpFields f114833h;

    public C20383d(HttpFields httpFields, int i) {
        this.f114833h = httpFields;
        this.f114832g = i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.f114831f != null) {
            return true;
        }
        while (this.f114830e < this.f114833h._fields.size()) {
            ArrayList arrayList = this.f114833h._fields;
            int i = this.f114830e;
            this.f114830e = i + 1;
            HttpFields.Field field = (HttpFields.Field) arrayList.get(i);
            if (field != null && field.f114623g == this.f114832g) {
                this.f114831f = field;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (this.f114831f == null && !hasNext()) {
            throw new NoSuchElementException();
        }
        HttpFields.Field field = this.f114831f;
        this.f114831f = null;
        return field;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
