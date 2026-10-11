package org.mortbay.jetty.security;

import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import org.mortbay.resource.Resource;

/* renamed from: org.mortbay.jetty.security.b */
/* loaded from: classes13.dex */
public class C20403b implements FilenameFilter {

    /* renamed from: e */
    public final /* synthetic */ HashUserRealm f115097e;

    public C20403b(HashUserRealm hashUserRealm) {
        this.f115097e = hashUserRealm;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        Resource resource;
        File file2 = new File(file, str);
        try {
            resource = this.f115097e.f115019g;
        } catch (IOException unused) {
        }
        return file2.compareTo(resource.getFile()) == 0;
    }
}
