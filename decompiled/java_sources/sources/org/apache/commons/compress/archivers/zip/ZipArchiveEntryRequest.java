package org.apache.commons.compress.archivers.zip;

import java.io.InputStream;
import org.apache.commons.compress.parallel.InputStreamSupplier;

/* loaded from: classes12.dex */
public class ZipArchiveEntryRequest {

    /* renamed from: a */
    public final ZipArchiveEntry f105879a;

    /* renamed from: b */
    public final InputStreamSupplier f105880b;

    /* renamed from: c */
    public final int f105881c;

    public ZipArchiveEntryRequest(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        this.f105879a = zipArchiveEntry;
        this.f105880b = inputStreamSupplier;
        this.f105881c = zipArchiveEntry.getMethod();
    }

    public static ZipArchiveEntryRequest createZipArchiveEntryRequest(ZipArchiveEntry zipArchiveEntry, InputStreamSupplier inputStreamSupplier) {
        return new ZipArchiveEntryRequest(zipArchiveEntry, inputStreamSupplier);
    }

    /* renamed from: a */
    public ZipArchiveEntry m66440a() {
        return this.f105879a;
    }

    public int getMethod() {
        return this.f105881c;
    }

    public InputStream getPayloadStream() {
        return this.f105880b.get();
    }
}
