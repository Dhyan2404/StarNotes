package com.twelvemonkeys.imageio.metadata;

/* loaded from: classes10.dex */
public interface Directory extends Iterable<Entry> {
    boolean add(Entry entry);

    Entry getEntryByFieldName(String str);

    Entry getEntryById(Object obj);

    boolean isReadOnly();

    boolean remove(Object obj);

    int size();
}
