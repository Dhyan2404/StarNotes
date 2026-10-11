package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@snf
@GwtIncompatible
/* loaded from: classes6.dex */
public class ImmutableMapEntry<K, V> extends ImmutableEntry<K, V> {

    /* loaded from: classes6.dex */
    public static final class NonTerminalImmutableBiMapEntry<K, V> extends NonTerminalImmutableMapEntry<K, V> {

        @CheckForNull
        private final transient ImmutableMapEntry<K, V> nextInValueBucket;

        public NonTerminalImmutableBiMapEntry(K k, V v, @CheckForNull ImmutableMapEntry<K, V> immutableMapEntry, @CheckForNull ImmutableMapEntry<K, V> immutableMapEntry2) {
            super(k, v, immutableMapEntry);
            this.nextInValueBucket = immutableMapEntry2;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @CheckForNull
        public ImmutableMapEntry<K, V> getNextInValueBucket() {
            return this.nextInValueBucket;
        }
    }

    /* loaded from: classes6.dex */
    public static class NonTerminalImmutableMapEntry<K, V> extends ImmutableMapEntry<K, V> {

        @CheckForNull
        private final transient ImmutableMapEntry<K, V> nextInKeyBucket;

        public NonTerminalImmutableMapEntry(K k, V v, @CheckForNull ImmutableMapEntry<K, V> immutableMapEntry) {
            super(k, v);
            this.nextInKeyBucket = immutableMapEntry;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        @CheckForNull
        public final ImmutableMapEntry<K, V> getNextInKeyBucket() {
            return this.nextInKeyBucket;
        }

        @Override // com.google.common.collect.ImmutableMapEntry
        public final boolean isReusable() {
            return false;
        }
    }

    public ImmutableMapEntry(K k, V v) {
        super(k, v);
        szd.m57278a(k, v);
    }

    public static <K, V> ImmutableMapEntry<K, V>[] createEntryArray(int i) {
        return new ImmutableMapEntry[i];
    }

    @CheckForNull
    public ImmutableMapEntry<K, V> getNextInKeyBucket() {
        return null;
    }

    @CheckForNull
    public ImmutableMapEntry<K, V> getNextInValueBucket() {
        return null;
    }

    public boolean isReusable() {
        return true;
    }

    public ImmutableMapEntry(ImmutableMapEntry<K, V> immutableMapEntry) {
        super(immutableMapEntry.getKey(), immutableMapEntry.getValue());
    }
}
