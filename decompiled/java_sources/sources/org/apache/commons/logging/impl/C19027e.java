package org.apache.commons.logging.impl;

import java.util.Enumeration;
import org.apache.commons.logging.impl.WeakHashtable;

/* renamed from: org.apache.commons.logging.impl.e */
/* loaded from: classes12.dex */
public class C19027e implements Enumeration {

    /* renamed from: e */
    public final /* synthetic */ Enumeration f107738e;

    /* renamed from: f */
    public final /* synthetic */ WeakHashtable f107739f;

    public C19027e(WeakHashtable weakHashtable, Enumeration enumeration) {
        this.f107739f = weakHashtable;
        this.f107738e = enumeration;
    }

    @Override // java.util.Enumeration
    public boolean hasMoreElements() {
        return this.f107738e.hasMoreElements();
    }

    @Override // java.util.Enumeration
    public Object nextElement() {
        return ((WeakHashtable.C19021b) this.f107738e.nextElement()).m67456b();
    }
}
