package org.apache.poi.xwpf.usermodel;

import java.io.IOException;
import java.math.BigInteger;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTMarkupRange;

/* loaded from: classes13.dex */
public abstract class XWPFMarkupRun implements IRunElement {

    /* renamed from: id */
    private int f111842id;

    public XWPFMarkupRun(CTMarkupRange cTMarkupRange) {
        BigInteger id = cTMarkupRange.getId();
        this.f111842id = id == null ? -1 : id.intValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    public int getID() {
        return this.f111842id;
    }

    public String getText() {
        return null;
    }
}
