package net.p110sf.saxon.p111z;

/* loaded from: classes11.dex */
public interface IntToIntMap {
    void clear();

    boolean contains(int i);

    int get(int i);

    int getDefaultValue();

    IntIterator keyIterator();

    void put(int i, int i2);

    boolean remove(int i);

    void setDefaultValue(int i);

    int size();
}
