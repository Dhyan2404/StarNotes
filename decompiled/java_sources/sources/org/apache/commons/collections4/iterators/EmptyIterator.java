package org.apache.commons.collections4.iterators;

import com.sunia.HTREnginev2.AbstractC13549c3;
import java.util.Iterator;
import org.apache.commons.collections4.ResettableIterator;

/* loaded from: classes11.dex */
public class EmptyIterator<E> extends AbstractC13549c3<E> implements ResettableIterator<E> {
    public static final Iterator INSTANCE;
    public static final ResettableIterator RESETTABLE_INSTANCE;

    static {
        EmptyIterator emptyIterator = new EmptyIterator();
        RESETTABLE_INSTANCE = emptyIterator;
        INSTANCE = emptyIterator;
    }

    public static <E> Iterator<E> emptyIterator() {
        return INSTANCE;
    }

    public static <E> ResettableIterator<E> resettableEmptyIterator() {
        return RESETTABLE_INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void add(Object obj) {
        super.add(obj);
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ boolean hasNext() {
        return super.hasNext();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ boolean hasPrevious() {
        return super.hasPrevious();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ Object next() {
        return super.next();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ int nextIndex() {
        return super.nextIndex();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ Object previous() {
        return super.previous();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ int previousIndex() {
        return super.previousIndex();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void remove() {
        super.remove();
    }

    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void reset() {
        super.reset();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.sunia.HTREnginev2.AbstractC13549c3
    public /* bridge */ /* synthetic */ void set(Object obj) {
        super.set(obj);
    }
}
