package com.sunia.HTREnginev2;

import java.io.File;
import java.io.FilterInputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;

/* loaded from: classes12.dex */
public class ran extends a0n {

    /* renamed from: g */
    public final File f82928g;

    /* renamed from: com.sunia.HTREnginev2.ran$a */
    /* loaded from: classes12.dex */
    public class C14342a extends FilterInputStream {
        public C14342a(InputStream inputStream) {
            super(inputStream);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            try {
                super.close();
            } finally {
                ran.this.f82928g.delete();
            }
        }
    }

    public ran() throws IOException {
        File createTempFile = File.createTempFile("commons-compress", "packtemp");
        this.f82928g = createTempFile;
        createTempFile.deleteOnExit();
        ((FilterOutputStream) this).out = Files.newOutputStream(createTempFile.toPath(), new OpenOption[0]);
    }

    @Override // com.sunia.HTREnginev2.a0n
    /* renamed from: j */
    public InputStream mo52926j() throws IOException {
        ((FilterOutputStream) this).out.close();
        return new C14342a(Files.newInputStream(this.f82928g.toPath(), new OpenOption[0]));
    }
}
