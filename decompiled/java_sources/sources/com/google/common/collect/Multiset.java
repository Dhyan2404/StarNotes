package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Multiset;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.CompatibleWith;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.ObjIntConsumer;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public interface Multiset<E> extends Collection<E> {

    /* loaded from: classes6.dex */
    public interface Entry<E> {
        boolean equals(@CheckForNull Object obj);

        int getCount();

        @xvk
        E getElement();

        int hashCode();

        String toString();
    }

    /* renamed from: H */
    static /* synthetic */ void m26627H(ObjIntConsumer objIntConsumer, Entry entry) {
        objIntConsumer.accept(entry.getElement(), entry.getCount());
    }

    /* renamed from: f */
    static /* synthetic */ void m26629f(Consumer consumer, Entry entry) {
        Object element = entry.getElement();
        int count = entry.getCount();
        for (int i = 0; i < count; i++) {
            consumer.accept(element);
        }
    }

    @CanIgnoreReturnValue
    int add(@xvk E e, int i);

    @Override // java.util.Collection
    @CanIgnoreReturnValue
    boolean add(@xvk E e);

    boolean contains(@CheckForNull Object obj);

    @Override // java.util.Collection
    boolean containsAll(Collection<?> collection);

    int count(@CheckForNull @CompatibleWith("E") Object obj);

    Set<E> elementSet();

    Set<Entry<E>> entrySet();

    boolean equals(@CheckForNull Object obj);

    default void forEach(final Consumer<? super E> consumer) {
        Preconditions.checkNotNull(consumer);
        entrySet().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.oqj
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Multiset.m26629f(consumer, (Multiset.Entry) obj);
            }
        });
    }

    @Beta
    default void forEachEntry(final ObjIntConsumer<? super E> objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        entrySet().forEach(new Consumer() { // from class: com.sunia.HTREnginev2.nqj
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                Multiset.m26627H(objIntConsumer, (Multiset.Entry) obj);
            }
        });
    }

    int hashCode();

    Iterator<E> iterator();

    @CanIgnoreReturnValue
    int remove(@CheckForNull @CompatibleWith("E") Object obj, int i);

    @Override // java.util.Collection
    @CanIgnoreReturnValue
    boolean remove(@CheckForNull Object obj);

    @Override // java.util.Collection
    @CanIgnoreReturnValue
    boolean removeAll(Collection<?> collection);

    @Override // java.util.Collection
    @CanIgnoreReturnValue
    boolean retainAll(Collection<?> collection);

    @CanIgnoreReturnValue
    int setCount(@xvk E e, int i);

    @CanIgnoreReturnValue
    boolean setCount(@xvk E e, int i, int i2);

    int size();

    default Spliterator<E> spliterator() {
        return Multisets.m26646p(this);
    }

    String toString();
}
