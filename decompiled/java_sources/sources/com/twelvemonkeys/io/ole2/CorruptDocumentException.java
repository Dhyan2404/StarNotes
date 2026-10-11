package com.twelvemonkeys.io.ole2;

import java.io.IOException;

/* loaded from: classes10.dex */
public class CorruptDocumentException extends IOException {
    public CorruptDocumentException() {
        this("Corrupt OLE 2 Compound Document");
    }

    public CorruptDocumentException(String str) {
        super(str);
    }

    public CorruptDocumentException(Throwable th) {
        super(th.getMessage());
        initCause(th);
    }
}
