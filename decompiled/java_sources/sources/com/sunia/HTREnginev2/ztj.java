package com.sunia.HTREnginev2;

import java.io.IOException;
import java.util.ResourceBundle;
import javax.servlet.ServletOutputStream;

/* loaded from: classes5.dex */
public class ztj extends ServletOutputStream {

    /* renamed from: h */
    public static final String f92191h = "javax.servlet.http.LocalStrings";

    /* renamed from: i */
    public static ResourceBundle f92192i = ResourceBundle.getBundle("javax.servlet.http.LocalStrings");

    /* renamed from: g */
    public int f92193g = 0;

    /* renamed from: f */
    public int m58753f() {
        return this.f92193g;
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        this.f92193g++;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 >= 0) {
            this.f92193g += i2;
        } else {
            f92192i.getString("err.io.negativelength");
            throw new IOException("negative length");
        }
    }
}
