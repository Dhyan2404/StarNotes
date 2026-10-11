package org.apache.commons.compress.changes;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public class ChangeSetResults {

    /* renamed from: a */
    public final List<String> f105961a = new ArrayList();

    /* renamed from: b */
    public final List<String> f105962b = new ArrayList();

    /* renamed from: c */
    public final List<String> f105963c = new ArrayList();

    /* renamed from: a */
    public void m66587a(String str) {
        this.f105961a.add(str);
    }

    /* renamed from: b */
    public void m66588b(String str) {
        this.f105962b.add(str);
    }

    /* renamed from: c */
    public void m66589c(String str) {
        this.f105963c.add(str);
    }

    /* renamed from: d */
    public boolean m66590d(String str) {
        return this.f105961a.contains(str) || this.f105962b.contains(str);
    }

    public List<String> getAddedFromChangeSet() {
        return this.f105961a;
    }

    public List<String> getAddedFromStream() {
        return this.f105962b;
    }

    public List<String> getDeleted() {
        return this.f105963c;
    }
}
