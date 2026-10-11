package org.mortbay.jetty;

import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.mortbay.jetty.HttpFields;

/* renamed from: org.mortbay.jetty.e */
/* loaded from: classes13.dex */
public class C20385e implements Enumeration {

    /* renamed from: e */
    public HttpFields.Field f114856e;

    /* renamed from: f */
    public final /* synthetic */ HttpFields.Field f114857f;

    /* renamed from: g */
    public final /* synthetic */ int f114858g;

    /* renamed from: h */
    public final /* synthetic */ HttpFields f114859h;

    public C20385e(HttpFields httpFields, HttpFields.Field field, int i) {
        this.f114859h = httpFields;
        this.f114857f = field;
        this.f114858g = i;
        this.f114856e = field;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        while (true) {
            HttpFields.Field field = this.f114856e;
            if (field == null || field.f114623g == this.f114858g) {
                break;
            }
            this.f114856e = this.f114856e.f114621e;
        }
        return this.f114856e != null;
    }

    @Override // java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        HttpFields.Field field;
        HttpFields.Field field2 = this.f114856e;
        if (field2 == null) {
            throw new NoSuchElementException();
        }
        do {
            field = this.f114856e.f114621e;
            this.f114856e = field;
            if (field == null) {
                break;
            }
        } while (field.f114623g != this.f114858g);
        return field2.getValue();
    }
}
