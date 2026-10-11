package org.apache.commons.collections4.iterators;

import com.sunia.HTREnginev2.AbstractC13549c3;
import java.util.ListIterator;
import org.apache.commons.collections4.ResettableListIterator;

/* loaded from: classes11.dex */
public class EmptyListIterator<E> extends AbstractC13549c3<E> implements ResettableListIterator<E> {
    public static final ListIterator INSTANCE;
    public static final ResettableListIterator RESETTABLE_INSTANCE;

    static {
        EmptyListIterator emptyListIterator = new EmptyListIterator();
        RESETTABLE_INSTANCE = emptyListIterator;
        INSTANCE = emptyListIterator;
    }

    public static <E> ListIterator<E> emptyListIterator() {
        return INSTANCE;
    }

    public static <E> ResettableListIterator<E> resettableEmptyListIterator() {
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
