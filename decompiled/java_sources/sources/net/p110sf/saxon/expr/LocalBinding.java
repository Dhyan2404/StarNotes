package net.p110sf.saxon.expr;

/* loaded from: classes11.dex */
public interface LocalBinding extends Binding {
    int getLocalSlotNumber();

    boolean isIndexedVariable();

    void setIndexedVariable();
}
