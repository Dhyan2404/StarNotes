package org.apache.commons.compress.archivers.tar;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes12.dex */
public class TarArchiveSparseEntry implements TarConstants {

    /* renamed from: e */
    public final boolean f105741e;

    /* renamed from: f */
    public final List<TarArchiveStructSparse> f105742f;

    public TarArchiveSparseEntry(byte[] bArr) throws IOException {
        this.f105742f = new ArrayList(TarUtils.m66394g(bArr, 0, 21));
        this.f105741e = TarUtils.parseBoolean(bArr, 504);
    }

    public List<TarArchiveStructSparse> getSparseHeaders() {
        return this.f105742f;
    }

    public boolean isExtended() {
        return this.f105741e;
    }
}
