package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import com.twelvemonkeys.lang.Validate;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import org.apache.commons.collections4.IteratorUtils;

/* renamed from: com.sunia.HTREnginev2.gd */
/* loaded from: classes10.dex */
public class C13767gd extends sdm {

    /* renamed from: b */
    public final String f70917b;

    /* renamed from: c */
    public final byte[] f70918c;

    public C13767gd(int i, String str, byte[] bArr) {
        super(i);
        this.f70917b = (String) Validate.notEmpty(str, "identifier");
        this.f70918c = bArr;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0005. Please report as an issue. */
    /* renamed from: c */
    public static C13767gd m54259c(int i, String str, DataInput dataInput, int i2) throws IOException {
        if (i != 65518) {
            switch (i) {
                case 65504:
                    if ("JFIF".equals(str)) {
                        return tqi.m57440e(dataInput, i2);
                    }
                case 65505:
                    if ("JFXX".equals(str)) {
                        return vqi.m57869e(dataInput, i2);
                    }
                case JPEG.APP2 /* 65506 */:
                    if ("ICC_PROFILE".equals(str)) {
                        return zbi.m58657d(dataInput, i2);
                    }
                    break;
                default:
                    byte[] bArr = new byte[i2 - 2];
                    dataInput.readFully(bArr);
                    return new C13767gd(i, str, bArr);
            }
        }
        if ("Adobe".equals(str)) {
            return C13607d9.m53607d(dataInput, i2);
        }
        byte[] bArr2 = new byte[i2 - 2];
        dataInput.readFully(bArr2);
        return new C13767gd(i, str, bArr2);
    }

    /* renamed from: b */
    public InputStream m54260b() {
        int length = this.f70917b.length() + 1;
        byte[] bArr = this.f70918c;
        return new ByteArrayInputStream(bArr, length, bArr.length - length);
    }

    public String toString() {
        return "APP" + (this.f84044a & 15) + "/" + this.f70917b + "[length: " + this.f70918c.length + IteratorUtils.f104924b;
    }
}
