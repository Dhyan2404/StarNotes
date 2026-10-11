package net.p110sf.saxon.regex;

/* loaded from: classes11.dex */
public class RegexPrecondition {
    public int fixedPosition;
    public int minPosition;
    public Operation operation;

    public RegexPrecondition(Operation operation, int i, int i2) {
        this.operation = operation;
        this.fixedPosition = i;
        this.minPosition = i2;
    }
}
