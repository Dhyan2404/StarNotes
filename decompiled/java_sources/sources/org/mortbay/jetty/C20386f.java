package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.mortbay.jetty.HttpFields;

/* renamed from: org.mortbay.jetty.f */
/* loaded from: classes13.dex */
public class C20386f implements Enumeration {

    /* renamed from: e */
    public HttpFields.Field f114860e;

    /* renamed from: f */
    public final /* synthetic */ HttpFields.Field f114861f;

    /* renamed from: g */
    public final /* synthetic */ int f114862g;

    /* renamed from: h */
    public final /* synthetic */ HttpFields f114863h;

    public C20386f(HttpFields httpFields, HttpFields.Field field, int i) {
        this.f114863h = httpFields;
        this.f114861f = field;
        this.f114862g = i;
        this.f114860e = field;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        while (true) {
            HttpFields.Field field = this.f114860e;
            if (field == null || field.f114623g == this.f114862g) {
                break;
            }
            this.f114860e = this.f114860e.f114621e;
        }
        return this.f114860e != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        HttpFields.Field field = this.f114860e;
        if (field == null) {
            throw new NoSuchElementException();
        }
        this.f114860e = field.f114621e;
        while (true) {
            HttpFields.Field field2 = this.f114860e;
            if (field2 == null || field2.f114623g == this.f114862g) {
                break;
            }
            this.f114860e = this.f114860e.f114621e;
        }
        return field.getValue();
    }
}
