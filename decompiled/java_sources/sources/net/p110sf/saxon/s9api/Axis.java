package net.p110sf.saxon.s9api;

/* loaded from: classes11.dex */
public enum Axis {
    ANCESTOR(0),
    ANCESTOR_OR_SELF(1),
    ATTRIBUTE(2),
    CHILD(3),
    DESCENDANT(4),
    DESCENDANT_OR_SELF(5),
    FOLLOWING(6),
    FOLLOWING_SIBLING(7),
    PARENT(9),
    PRECEDING(10),
    PRECEDING_SIBLING(11),
    SELF(12),
    NAMESPACE(8);

    private final int axisNumber;

    Axis(int i) {
        this.axisNumber = i;
    }

    public int getAxisNumber() {
        return this.axisNumber;
    }
}
