package org.apache.commons.compress.harmony.pack200;

import org.apache.commons.compress.harmony.pack200.Segment;
import org.objectweb.asm.Attribute;
import org.objectweb.asm.ClassReader;
import org.objectweb.asm.Label;

/* loaded from: classes12.dex */
public class NewAttribute extends Attribute {

    /* renamed from: a */
    public boolean f106660a;

    /* renamed from: b */
    public boolean f106661b;

    /* renamed from: c */
    public boolean f106662c;

    /* renamed from: d */
    public boolean f106663d;

    /* renamed from: e */
    public final String f106664e;

    /* renamed from: f */
    public byte[] f106665f;

    /* renamed from: g */
    public int f106666g;

    /* renamed from: h */
    public Label[] f106667h;

    /* renamed from: i */
    public ClassReader f106668i;

    /* renamed from: j */
    public char[] f106669j;

    /* loaded from: classes12.dex */
    public static class ErrorAttribute extends NewAttribute {
        public ErrorAttribute(String str, int i) {
            super(str, "", i);
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttribute
        public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
            throw new Error("Attribute " + this.type + " was found");
        }
    }

    /* loaded from: classes12.dex */
    public static class PassAttribute extends NewAttribute {
        public PassAttribute(String str, int i) {
            super(str, "", i);
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttribute
        public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
            throw new Segment.PassException();
        }
    }

    /* loaded from: classes12.dex */
    public static class StripAttribute extends NewAttribute {
        public StripAttribute(String str, int i) {
            super(str, "", i);
        }

        @Override // org.apache.commons.compress.harmony.pack200.NewAttribute
        public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
            return null;
        }
    }

    public NewAttribute(String str, String str2, int i) {
        super(str);
        this.f106660a = false;
        this.f106661b = false;
        this.f106662c = false;
        this.f106663d = false;
        this.f106664e = str2;
        addContext(i);
    }

    public void addContext(int i) {
        if (i == 0) {
            this.f106660a = true;
            return;
        }
        if (i == 1) {
            this.f106662c = true;
        } else if (i == 2) {
            this.f106661b = true;
        } else {
            if (i != 3) {
                return;
            }
            this.f106663d = true;
        }
    }

    public byte[] getBytes() {
        return this.f106665f;
    }

    public Label getLabel(int i) {
        return this.f106667h[i];
    }

    public String getLayout() {
        return this.f106664e;
    }

    public boolean isCodeAttribute() {
        return this.f106666g != -1;
    }

    public boolean isContextClass() {
        return this.f106660a;
    }

    public boolean isContextCode() {
        return this.f106663d;
    }

    public boolean isContextField() {
        return this.f106662c;
    }

    public boolean isContextMethod() {
        return this.f106661b;
    }

    public boolean isUnknown() {
        return false;
    }

    public Attribute read(ClassReader classReader, int i, int i2, char[] cArr, int i3, Label[] labelArr) {
        byte[] bArr = new byte[i2];
        System.arraycopy(classReader.b, i, bArr, 0, i2);
        return new NewAttribute(classReader, this.type, this.f106664e, bArr, cArr, i3, labelArr);
    }

    public String readClass(int i) {
        return this.f106668i.readClass(i, this.f106669j);
    }

    public Object readConst(int i) {
        return this.f106668i.readConst(i, this.f106669j);
    }

    public String readUTF8(int i) {
        return this.f106668i.readUTF8(i, this.f106669j);
    }

    public boolean isUnknown(int i) {
        if (i == 0) {
            return !this.f106660a;
        }
        if (i == 1) {
            return !this.f106662c;
        }
        if (i == 2) {
            return !this.f106661b;
        }
        if (i != 3) {
            return false;
        }
        return !this.f106663d;
    }

    public NewAttribute(ClassReader classReader, String str, String str2, byte[] bArr, char[] cArr, int i, Label[] labelArr) {
        super(str);
        this.f106660a = false;
        this.f106661b = false;
        this.f106662c = false;
        this.f106663d = false;
        this.f106668i = classReader;
        this.f106665f = bArr;
        this.f106664e = str2;
        this.f106666g = i;
        this.f106667h = labelArr;
        this.f106669j = cArr;
    }
}
