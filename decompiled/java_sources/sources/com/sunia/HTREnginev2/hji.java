package com.sunia.HTREnginev2;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes12.dex */
public class hji extends a0n {
    public hji() {
        super(new ByteArrayOutputStream());
    }

    @Override // com.sunia.HTREnginev2.a0n
    /* renamed from: j */
    public InputStream mo52926j() throws IOException {
        return new ByteArrayInputStream(((ByteArrayOutputStream) ((FilterOutputStream) this).out).toByteArray());
    }
}
