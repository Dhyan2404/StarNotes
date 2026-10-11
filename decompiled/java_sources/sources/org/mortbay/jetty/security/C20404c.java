package org.mortbay.jetty.security;

import java.util.List;
import org.mortbay.util.Scanner;

/* renamed from: org.mortbay.jetty.security.c */
/* loaded from: classes13.dex */
public class C20404c implements Scanner.BulkListener {

    /* renamed from: a */
    public final /* synthetic */ HashUserRealm f115098a;

    public C20404c(HashUserRealm hashUserRealm) {
        this.f115098a = hashUserRealm;
    }

    @Override // org.mortbay.util.Scanner.BulkListener
    public void filesChanged(List list) throws Exception {
        String str;
        if (list == null || list.isEmpty() || list.size() != 1) {
            return;
        }
        Object obj = list.get(0);
        str = this.f115098a.f115018f;
        if (obj.equals(str)) {
            this.f115098a.loadConfig();
        }
    }

    public String toString() {
        return "HashUserRealm$Scanner";
    }
}
