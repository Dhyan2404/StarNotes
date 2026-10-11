package org.apache.commons.compress.changes;

import com.sunia.HTREnginev2.lqd;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes12.dex */
public class ChangeSetPerformer {

    /* renamed from: a */
    public final Set<lqd> f105955a;

    /* renamed from: org.apache.commons.compress.changes.ChangeSetPerformer$a */
    /* loaded from: classes12.dex */
    public interface InterfaceC18875a {
        InputStream getInputStream() throws IOException;

        boolean hasNext() throws IOException;

        ArchiveEntry next();
    }

    /* renamed from: org.apache.commons.compress.changes.ChangeSetPerformer$b */
    /* loaded from: classes12.dex */
    public static class C18876b implements InterfaceC18875a {

        /* renamed from: a */
        public final ArchiveInputStream f105956a;

        /* renamed from: b */
        public ArchiveEntry f105957b;

        public C18876b(ArchiveInputStream archiveInputStream) {
            this.f105956a = archiveInputStream;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public InputStream getInputStream() {
            return this.f105956a;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public boolean hasNext() throws IOException {
            ArchiveEntry nextEntry = this.f105956a.getNextEntry();
            this.f105957b = nextEntry;
            return nextEntry != null;
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public ArchiveEntry next() {
            return this.f105957b;
        }
    }

    /* renamed from: org.apache.commons.compress.changes.ChangeSetPerformer$c */
    /* loaded from: classes12.dex */
    public static class C18877c implements InterfaceC18875a {

        /* renamed from: a */
        public final ZipFile f105958a;

        /* renamed from: b */
        public final Enumeration<ZipArchiveEntry> f105959b;

        /* renamed from: c */
        public ZipArchiveEntry f105960c;

        public C18877c(ZipFile zipFile) {
            this.f105958a = zipFile;
            this.f105959b = zipFile.getEntriesInPhysicalOrder();
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public InputStream getInputStream() throws IOException {
            return this.f105958a.getInputStream(this.f105960c);
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public boolean hasNext() {
            return this.f105959b.hasMoreElements();
        }

        @Override // org.apache.commons.compress.changes.ChangeSetPerformer.InterfaceC18875a
        public ArchiveEntry next() {
            ZipArchiveEntry nextElement = this.f105959b.nextElement();
            this.f105960c = nextElement;
            return nextElement;
        }
    }

    public ChangeSetPerformer(ChangeSet changeSet) {
        this.f105955a = changeSet.m66583c();
    }

    /* renamed from: a */
    public final void m66584a(InputStream inputStream, ArchiveOutputStream archiveOutputStream, ArchiveEntry archiveEntry) throws IOException {
        archiveOutputStream.putArchiveEntry(archiveEntry);
        IOUtils.copy(inputStream, archiveOutputStream);
        archiveOutputStream.closeArchiveEntry();
    }

    /* renamed from: b */
    public final boolean m66585b(Set<lqd> set, ArchiveEntry archiveEntry) {
        String name = archiveEntry.getName();
        if (set.isEmpty()) {
            return false;
        }
        for (lqd lqdVar : set) {
            int m55499e = lqdVar.m55499e();
            String m55498d = lqdVar.m55498d();
            if (m55499e == 1 && name.equals(m55498d)) {
                return true;
            }
            if (m55499e == 4) {
                if (name.startsWith(m55498d + "/")) {
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: c */
    public final ChangeSetResults m66586c(InterfaceC18875a interfaceC18875a, ArchiveOutputStream archiveOutputStream) throws IOException {
        boolean z;
        ChangeSetResults changeSetResults = new ChangeSetResults();
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f105955a);
        Iterator<lqd> it2 = linkedHashSet.iterator();
        while (it2.hasNext()) {
            lqd next = it2.next();
            if (next.m55499e() == 2 && next.m55497c()) {
                m66584a(next.m55496b(), archiveOutputStream, next.m55495a());
                it2.remove();
                changeSetResults.m66587a(next.m55495a().getName());
            }
        }
        while (interfaceC18875a.hasNext()) {
            ArchiveEntry next2 = interfaceC18875a.next();
            Iterator<lqd> it3 = linkedHashSet.iterator();
            while (true) {
                z = true;
                if (!it3.hasNext()) {
                    break;
                }
                lqd next3 = it3.next();
                int m55499e = next3.m55499e();
                String name = next2.getName();
                if (m55499e != 1 || name == null) {
                    if (m55499e == 4 && name != null) {
                        if (name.startsWith(next3.m55498d() + "/")) {
                            changeSetResults.m66589c(name);
                            break;
                        }
                    }
                } else if (name.equals(next3.m55498d())) {
                    it3.remove();
                    changeSetResults.m66589c(name);
                    break;
                }
            }
            z = false;
            if (z && !m66585b(linkedHashSet, next2) && !changeSetResults.m66590d(next2.getName())) {
                m66584a(interfaceC18875a.getInputStream(), archiveOutputStream, next2);
                changeSetResults.m66588b(next2.getName());
            }
        }
        Iterator<lqd> it4 = linkedHashSet.iterator();
        while (it4.hasNext()) {
            lqd next4 = it4.next();
            if (next4.m55499e() == 2 && !next4.m55497c() && !changeSetResults.m66590d(next4.m55495a().getName())) {
                m66584a(next4.m55496b(), archiveOutputStream, next4.m55495a());
                it4.remove();
                changeSetResults.m66587a(next4.m55495a().getName());
            }
        }
        archiveOutputStream.finish();
        return changeSetResults;
    }

    public ChangeSetResults perform(ArchiveInputStream archiveInputStream, ArchiveOutputStream archiveOutputStream) throws IOException {
        return m66586c(new C18876b(archiveInputStream), archiveOutputStream);
    }

    public ChangeSetResults perform(ZipFile zipFile, ArchiveOutputStream archiveOutputStream) throws IOException {
        return m66586c(new C18877c(zipFile), archiveOutputStream);
    }
}
