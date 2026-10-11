package org.apache.commons.compress.changes;

import com.sunia.HTREnginev2.lqd;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.compress.archivers.ArchiveEntry;

/* loaded from: classes12.dex */
public final class ChangeSet {

    /* renamed from: a */
    public final Set<lqd> f105954a = new LinkedHashSet();

    /* renamed from: a */
    public final void m66581a(lqd lqdVar) {
        if (2 != lqdVar.m55499e() || lqdVar.m55496b() == null) {
            return;
        }
        if (!this.f105954a.isEmpty()) {
            Iterator<lqd> it2 = this.f105954a.iterator();
            while (it2.hasNext()) {
                lqd next = it2.next();
                if (next.m55499e() == 2 && next.m55495a() != null && next.m55495a().equals(lqdVar.m55495a())) {
                    if (lqdVar.m55497c()) {
                        it2.remove();
                        this.f105954a.add(lqdVar);
                        return;
                    }
                    return;
                }
            }
        }
        this.f105954a.add(lqdVar);
    }

    public void add(ArchiveEntry archiveEntry, InputStream inputStream) {
        add(archiveEntry, inputStream, true);
    }

    /* renamed from: b */
    public final void m66582b(lqd lqdVar) {
        String name;
        if ((1 == lqdVar.m55499e() || 4 == lqdVar.m55499e()) && lqdVar.m55498d() != null) {
            String m55498d = lqdVar.m55498d();
            if (m55498d != null && !this.f105954a.isEmpty()) {
                Iterator<lqd> it2 = this.f105954a.iterator();
                while (it2.hasNext()) {
                    lqd next = it2.next();
                    if (next.m55499e() == 2 && next.m55495a() != null && (name = next.m55495a().getName()) != null) {
                        if (1 != lqdVar.m55499e() || !m55498d.equals(name)) {
                            if (4 == lqdVar.m55499e()) {
                                if (name.matches(m55498d + "/.*")) {
                                }
                            }
                        }
                        it2.remove();
                    }
                }
            }
            this.f105954a.add(lqdVar);
        }
    }

    /* renamed from: c */
    public Set<lqd> m66583c() {
        return new LinkedHashSet(this.f105954a);
    }

    public void delete(String str) {
        m66582b(new lqd(str, 1));
    }

    public void deleteDir(String str) {
        m66582b(new lqd(str, 4));
    }

    public void add(ArchiveEntry archiveEntry, InputStream inputStream, boolean z) {
        m66581a(new lqd(archiveEntry, inputStream, z));
    }
}
