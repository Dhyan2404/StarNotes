package com.twelvemonkeys.util;

import java.util.Map;

/* loaded from: classes10.dex */
public interface ExpiringMap<K, V> extends Map<K, V> {
    void processRemoved(Map.Entry<K, V> entry);
}
