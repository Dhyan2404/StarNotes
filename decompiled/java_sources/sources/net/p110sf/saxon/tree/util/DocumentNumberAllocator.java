package net.p110sf.saxon.tree.util;

/* loaded from: classes11.dex */
public class DocumentNumberAllocator {

    /* renamed from: a */
    public long f102668a = 0;

    /* renamed from: b */
    public long f102669b = -2;

    public synchronized long allocateDocumentNumber() {
        long j;
        j = this.f102668a;
        this.f102668a = 1 + j;
        return j;
    }

    public synchronized long allocateStreamedDocumentNumber() {
        long j;
        j = this.f102669b;
        this.f102669b = j - 1;
        return j;
    }
}
