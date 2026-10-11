package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.jpeg.JPEG;
import java.io.DataInput;
import java.io.IOException;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public final class zbi extends C13767gd {
    public zbi(byte[] bArr) {
        super(JPEG.APP2, "ICC_PROFILE", bArr);
    }

    /* renamed from: d */
    public static zbi m58657d(DataInput dataInput, int i) throws IOException {
        byte[] bArr = new byte[i - 2];
        dataInput.readFully(bArr);
        return new zbi(bArr);
    }

    @Override // com.sunia.HTREnginev2.C13767gd
    public String toString() {
        return "ICC_PROFILE[" + ((int) this.f70918c[0]) + "/" + ((int) this.f70918c[1]) + " length: " + this.f70918c.length + IteratorUtils.f104924b;
    }
}
