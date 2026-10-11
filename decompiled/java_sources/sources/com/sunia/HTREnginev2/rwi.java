package com.sunia.HTREnginev2;

import java.io.ByteArrayOutputStream;

/* loaded from: classes4.dex */
public class rwi extends ByteArrayOutputStream {
    @Override // java.io.ByteArrayOutputStream
    public synchronized byte[] toByteArray() {
        return ((ByteArrayOutputStream) this).buf;
    }
}
