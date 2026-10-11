package net.p110sf.saxon.ma.trie;

import java.util.Iterator;

/* loaded from: classes11.dex */
public interface ImmutableMap<K, V> extends Iterable<TrieKVP<K, V>> {
    V get(K k);

    @Override // java.lang.Iterable
    Iterator<TrieKVP<K, V>> iterator();

    ImmutableMap<K, V> put(K k, V v);

    ImmutableMap<K, V> remove(K k);
}
