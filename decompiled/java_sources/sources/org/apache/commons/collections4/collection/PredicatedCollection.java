package org.apache.commons.collections4.collection;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import org.apache.commons.collections4.Bag;
import org.apache.commons.collections4.MultiSet;
import org.apache.commons.collections4.Predicate;
import org.apache.commons.collections4.bag.HashBag;
import org.apache.commons.collections4.bag.PredicatedBag;
import org.apache.commons.collections4.functors.NotNullPredicate;
import org.apache.commons.collections4.list.PredicatedList;
import org.apache.commons.collections4.multiset.HashMultiSet;
import org.apache.commons.collections4.multiset.PredicatedMultiSet;
import org.apache.commons.collections4.queue.PredicatedQueue;
import org.apache.commons.collections4.set.PredicatedSet;

/* loaded from: classes11.dex */
public class PredicatedCollection<E> extends AbstractCollectionDecorator<E> {
    private static final long serialVersionUID = -5259182142076705162L;
    protected final Predicate<? super E> predicate;

    /* loaded from: classes11.dex */
    public static class Builder<E> {

        /* renamed from: a */
        public final Predicate<? super E> f104989a;

        /* renamed from: b */
        public final List<E> f104990b = new ArrayList();

        /* renamed from: c */
        public final List<E> f104991c = new ArrayList();

        public Builder(Predicate<? super E> predicate) {
            if (predicate == null) {
                throw new NullPointerException("Predicate must not be null");
            }
            this.f104989a = predicate;
        }

        public Builder<E> add(E e) {
            if (this.f104989a.evaluate(e)) {
                this.f104990b.add(e);
            } else {
                this.f104991c.add(e);
            }
            return this;
        }

        public Builder<E> addAll(Collection<? extends E> collection) {
            if (collection != null) {
                Iterator<? extends E> it2 = collection.iterator();
                while (it2.hasNext()) {
                    add(it2.next());
                }
            }
            return this;
        }

        public Bag<E> createPredicatedBag() {
            return createPredicatedBag(new HashBag());
        }

        public List<E> createPredicatedList() {
            return createPredicatedList(new ArrayList());
        }

        public MultiSet<E> createPredicatedMultiSet() {
            return createPredicatedMultiSet(new HashMultiSet());
        }

        public Queue<E> createPredicatedQueue() {
            return createPredicatedQueue(new LinkedList());
        }

        public Set<E> createPredicatedSet() {
            return createPredicatedSet(new HashSet());
        }

        public Collection<E> rejectedElements() {
            return Collections.unmodifiableCollection(this.f104991c);
        }

        public Bag<E> createPredicatedBag(Bag<E> bag) {
            if (bag != null) {
                PredicatedBag predicatedBag = PredicatedBag.predicatedBag(bag, this.f104989a);
                predicatedBag.addAll(this.f104990b);
                return predicatedBag;
            }
            throw new NullPointerException("Bag must not be null.");
        }

        public List<E> createPredicatedList(List<E> list) {
            if (list != null) {
                PredicatedList predicatedList = PredicatedList.predicatedList(list, this.f104989a);
                predicatedList.addAll(this.f104990b);
                return predicatedList;
            }
            throw new NullPointerException("List must not be null.");
        }

        public MultiSet<E> createPredicatedMultiSet(MultiSet<E> multiSet) {
            if (multiSet != null) {
                PredicatedMultiSet predicatedMultiSet = PredicatedMultiSet.predicatedMultiSet(multiSet, this.f104989a);
                predicatedMultiSet.addAll(this.f104990b);
                return predicatedMultiSet;
            }
            throw new NullPointerException("MultiSet must not be null.");
        }

        public Queue<E> createPredicatedQueue(Queue<E> queue) {
            if (queue != null) {
                PredicatedQueue predicatedQueue = PredicatedQueue.predicatedQueue(queue, this.f104989a);
                predicatedQueue.addAll(this.f104990b);
                return predicatedQueue;
            }
            throw new NullPointerException("queue must not be null");
        }

        public Set<E> createPredicatedSet(Set<E> set) {
            if (set != null) {
                PredicatedSet predicatedSet = PredicatedSet.predicatedSet(set, this.f104989a);
                predicatedSet.addAll(this.f104990b);
                return predicatedSet;
            }
            throw new NullPointerException("Set must not be null.");
        }
    }

    public PredicatedCollection(Collection<E> collection, Predicate<? super E> predicate) {
        super(collection);
        if (predicate == null) {
            throw new NullPointerException("Predicate must not be null.");
        }
        this.predicate = predicate;
        Iterator<E> it2 = collection.iterator();
        while (it2.hasNext()) {
            validate(it2.next());
        }
    }

    public static <E> Builder<E> builder(Predicate<? super E> predicate) {
        return new Builder<>(predicate);
    }

    public static <E> Builder<E> notNullBuilder() {
        return new Builder<>(NotNullPredicate.notNullPredicate());
    }

    public static <T> PredicatedCollection<T> predicatedCollection(Collection<T> collection, Predicate<? super T> predicate) {
        return new PredicatedCollection<>(collection, predicate);
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections4.Bag
    public boolean add(E e) {
        validate(e);
        return decorated().add(e);
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        while (it2.hasNext()) {
            validate(it2.next());
        }
        return decorated().addAll(collection);
    }

    public void validate(E e) {
        if (this.predicate.evaluate(e)) {
            return;
        }
        throw new IllegalArgumentException("Cannot add Object '" + e + "' - Predicate '" + this.predicate + "' rejected it");
    }
}
