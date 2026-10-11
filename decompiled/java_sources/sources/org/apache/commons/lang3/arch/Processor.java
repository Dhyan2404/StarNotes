package org.apache.commons.lang3.arch;

/* loaded from: classes12.dex */
public class Processor {

    /* renamed from: a */
    public final Arch f107448a;

    /* renamed from: b */
    public final Type f107449b;

    /* loaded from: classes12.dex */
    public enum Arch {
        BIT_32,
        BIT_64,
        UNKNOWN
    }

    /* loaded from: classes12.dex */
    public enum Type {
        X86,
        IA_64,
        PPC,
        UNKNOWN
    }

    public Processor(Arch arch, Type type) {
        this.f107448a = arch;
        this.f107449b = type;
    }

    public Arch getArch() {
        return this.f107448a;
    }

    public Type getType() {
        return this.f107449b;
    }

    public boolean is32Bit() {
        return Arch.BIT_32.equals(this.f107448a);
    }

    public boolean is64Bit() {
        return Arch.BIT_64.equals(this.f107448a);
    }

    public boolean isIA64() {
        return Type.IA_64.equals(this.f107449b);
    }

    public boolean isPPC() {
        return Type.PPC.equals(this.f107449b);
    }

    public boolean isX86() {
        return Type.X86.equals(this.f107449b);
    }
}
