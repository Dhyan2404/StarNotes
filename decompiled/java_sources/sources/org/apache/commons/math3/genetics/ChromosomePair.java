package org.apache.commons.math3.genetics;

/* loaded from: classes12.dex */
public class ChromosomePair {

    /* renamed from: a */
    public final Chromosome f108200a;

    /* renamed from: b */
    public final Chromosome f108201b;

    public ChromosomePair(Chromosome chromosome, Chromosome chromosome2) {
        this.f108200a = chromosome;
        this.f108201b = chromosome2;
    }

    public Chromosome getFirst() {
        return this.f108200a;
    }

    public Chromosome getSecond() {
        return this.f108201b;
    }

    public String toString() {
        return String.format("(%s,%s)", getFirst(), getSecond());
    }
}
