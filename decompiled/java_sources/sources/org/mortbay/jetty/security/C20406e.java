package org.mortbay.jetty.security;

import java.security.Principal;

/* renamed from: org.mortbay.jetty.security.e */
/* loaded from: classes13.dex */
public final class C20406e implements Principal {
    @Override // java.security.Principal
    public String getName() {
        return "Nobody";
    }

    @Override // java.security.Principal
    public String toString() {
        return getName();
    }
}
