package com.google.common.cache;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.cache.LocalCache;
import com.sunia.HTREnginev2.rnf;
import javax.annotation.CheckForNull;

@rnf
@GwtIncompatible
/* renamed from: com.google.common.cache.a */
/* loaded from: classes6.dex */
public interface InterfaceC5747a<K, V> {
    long getAccessTime();

    int getHash();

    @CheckForNull
    K getKey();

    @CheckForNull
    InterfaceC5747a<K, V> getNext();

    InterfaceC5747a<K, V> getNextInAccessQueue();

    InterfaceC5747a<K, V> getNextInWriteQueue();

    InterfaceC5747a<K, V> getPreviousInAccessQueue();

    InterfaceC5747a<K, V> getPreviousInWriteQueue();

    @CheckForNull
    LocalCache.InterfaceC5731t<K, V> getValueReference();

    long getWriteTime();

    void setAccessTime(long j);

    void setNextInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a);

    void setNextInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a);

    void setPreviousInAccessQueue(InterfaceC5747a<K, V> interfaceC5747a);

    void setPreviousInWriteQueue(InterfaceC5747a<K, V> interfaceC5747a);

    void setValueReference(LocalCache.InterfaceC5731t<K, V> interfaceC5731t);

    void setWriteTime(long j);
}
