package com.sunia.HTREnginev2;

import java.io.DataInput;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes10.dex */
public class d4e extends sdm {

    /* renamed from: b */
    public final String f67477b;

    public d4e(String str) {
        super(65534);
        this.f67477b = str;
    }

    /* renamed from: b */
    public static sdm m53578b(DataInput dataInput, int i) throws IOException {
        byte[] bArr = new byte[i - 2];
        dataInput.readFully(bArr);
        return new d4e(new String(bArr, StandardCharsets.UTF_8));
    }

    public String toString() {
        return "COM[" + this.f67477b + IteratorUtils.f104924b;
    }
}
