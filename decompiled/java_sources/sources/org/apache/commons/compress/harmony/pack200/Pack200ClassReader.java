package org.apache.commons.compress.harmony.pack200;

import com.fasterxml.jackson.core.JsonParser;
import org.objectweb.asm.ClassReader;

/* loaded from: classes12.dex */
public class Pack200ClassReader extends ClassReader {

    /* renamed from: a */
    public boolean f106705a;

    /* renamed from: b */
    public int f106706b;

    /* renamed from: c */
    public boolean f106707c;

    /* renamed from: d */
    public String f106708d;

    public Pack200ClassReader(byte[] bArr) {
        super(bArr);
    }

    public String getFileName() {
        return this.f106708d;
    }

    public boolean hasSyntheticAttributes() {
        return this.f106707c;
    }

    public boolean lastConstantHadWideIndex() {
        return this.f106705a;
    }

    public Object readConst(int i, char[] cArr) {
        this.f106705a = i == this.f106706b;
        return super.readConst(i, cArr);
    }

    public String readUTF8(int i, char[] cArr) {
        String readUTF8 = super.readUTF8(i, cArr);
        if (!this.f106707c && "Synthetic".equals(readUTF8)) {
            this.f106707c = true;
        }
        return readUTF8;
    }

    public int readUnsignedShort(int i) {
        int readUnsignedShort = super.readUnsignedShort(i);
        if (i <= 0 || this.b[i - 1] != 19) {
            this.f106706b = JsonParser.f21215g;
        } else {
            this.f106706b = readUnsignedShort;
        }
        return readUnsignedShort;
    }

    public void setFileName(String str) {
        this.f106708d = str;
    }
}
