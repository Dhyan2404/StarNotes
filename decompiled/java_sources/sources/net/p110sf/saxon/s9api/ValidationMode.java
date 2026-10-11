package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public enum ValidationMode {
    STRICT(1),
    LAX(2),
    PRESERVE(3),
    STRIP(4),
    DEFAULT(0);

    private final int number;

    ValidationMode(int i) {
        this.number = i;
    }

    public static ValidationMode get(int i) {
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? DEFAULT : STRIP : PRESERVE : LAX : STRICT;
    }

    public int getNumber() {
        return this.number;
    }
}
