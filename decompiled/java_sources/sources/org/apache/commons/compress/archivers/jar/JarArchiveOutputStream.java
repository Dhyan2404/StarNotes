package org.apache.commons.compress.archivers.jar;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.zip.JarMarker;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream;

/* loaded from: classes12.dex */
public class JarArchiveOutputStream extends ZipArchiveOutputStream {

    /* renamed from: e */
    public boolean f105596e;

    public JarArchiveOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    @Override // org.apache.commons.compress.archivers.zip.ZipArchiveOutputStream, org.apache.commons.compress.archivers.ArchiveOutputStream
    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        if (!this.f105596e) {
            ((ZipArchiveEntry) archiveEntry).addAsFirstExtraField(JarMarker.getInstance());
            this.f105596e = true;
        }
        super.putArchiveEntry(archiveEntry);
    }

    public JarArchiveOutputStream(OutputStream outputStream, String str) {
        super(outputStream);
        setEncoding(str);
    }
}
