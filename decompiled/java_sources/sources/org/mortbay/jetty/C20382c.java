package org.mortbay.jetty;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.mortbay.io.Buffer;
import org.mortbay.io.BufferUtil;
import org.mortbay.jetty.HttpFields;

/* renamed from: org.mortbay.jetty.c */
/* loaded from: classes13.dex */
public class C20382c implements Enumeration {

    /* renamed from: e */
    public int f114826e = 0;

    /* renamed from: f */
    public HttpFields.Field f114827f = null;

    /* renamed from: g */
    public final /* synthetic */ int f114828g;

    /* renamed from: h */
    public final /* synthetic */ HttpFields f114829h;

    public C20382c(HttpFields httpFields, int i) {
        this.f114829h = httpFields;
        this.f114828g = i;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        HttpFields.Field field;
        if (this.f114827f != null) {
            return true;
        }
        while (this.f114826e < this.f114829h._fields.size()) {
            ArrayList arrayList = this.f114829h._fields;
            int i = this.f114826e;
            this.f114826e = i + 1;
            HttpFields.Field field2 = (HttpFields.Field) arrayList.get(i);
            if (field2 != null) {
                field = field2.f114622f;
                if (field == null && field2.f114623g == this.f114828g) {
                    this.f114827f = field2;
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Enumeration
    public Object nextElement() throws NoSuchElementException {
        Buffer buffer;
        if (this.f114827f == null && !hasMoreElements()) {
            throw new NoSuchElementException();
        }
        buffer = this.f114827f.f114617a;
        String str = BufferUtil.to8859_1_String(buffer);
        this.f114827f = null;
        return str;
    }
}
