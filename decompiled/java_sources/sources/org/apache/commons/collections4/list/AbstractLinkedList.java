package org.apache.commons.collections4.list;

import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.apache.commons.collections4.OrderedIterator;

/* loaded from: classes11.dex */
public abstract class AbstractLinkedList<E> implements List<E> {
    transient Node<E> header;
    transient int modCount;
    transient int size;

    /* loaded from: classes11.dex */
    public static class LinkedListIterator<E> implements ListIterator<E>, OrderedIterator<E> {
        protected Node<E> current;
        protected int expectedModCount;
        protected Node<E> next;
        protected int nextIndex;
        protected final AbstractLinkedList<E> parent;

        public LinkedListIterator(AbstractLinkedList<E> abstractLinkedList, int i) throws IndexOutOfBoundsException {
            this.parent = abstractLinkedList;
            this.expectedModCount = abstractLinkedList.modCount;
            this.next = abstractLinkedList.getNode(i, true);
            this.nextIndex = i;
        }

        @Override // java.util.ListIterator
        public void add(E e) {
            checkModCount();
            this.parent.addNodeBefore(this.next, e);
            this.current = null;
            this.nextIndex++;
            this.expectedModCount++;
        }

        public void checkModCount() {
            if (this.parent.modCount != this.expectedModCount) {
                throw new ConcurrentModificationException();
            }
        }

        public Node<E> getLastNodeReturned() throws IllegalStateException {
            Node<E> node = this.current;
            if (node != null) {
                return node;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.next != this.parent.header;
        }

        @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return this.next.previous != this.parent.header;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public E next() {
            checkModCount();
            if (!hasNext()) {
                throw new NoSuchElementException("No element at index " + this.nextIndex + ".");
            }
            E value = this.next.getValue();
            Node<E> node = this.next;
            this.current = node;
            this.next = node.next;
            this.nextIndex++;
            return value;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.nextIndex;
        }

        @Override // java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public E previous() {
            checkModCount();
            if (!hasPrevious()) {
                throw new NoSuchElementException("Already at start of list.");
            }
            Node<E> node = this.next.previous;
            this.next = node;
            E value = node.getValue();
            this.current = this.next;
            this.nextIndex--;
            return value;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return nextIndex() - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            checkModCount();
            Node<E> node = this.current;
            Node<E> node2 = this.next;
            if (node == node2) {
                this.next = node2.next;
                this.parent.removeNode(getLastNodeReturned());
            } else {
                this.parent.removeNode(getLastNodeReturned());
                this.nextIndex--;
            }
            this.current = null;
            this.expectedModCount++;
        }

        @Override // java.util.ListIterator
        public void set(E e) {
            checkModCount();
            getLastNodeReturned().setValue(e);
        }
    }

    /* loaded from: classes11.dex */
    public static class LinkedSubList<E> extends AbstractList<E> {

        /* renamed from: e */
        public AbstractLinkedList<E> f105120e;

        /* renamed from: f */
        public int f105121f;

        /* renamed from: g */
        public int f105122g;

        /* renamed from: h */
        public int f105123h;

        public LinkedSubList(AbstractLinkedList<E> abstractLinkedList, int i, int i2) {
            if (i < 0) {
                throw new IndexOutOfBoundsException("fromIndex = " + i);
            }
            if (i2 > abstractLinkedList.size()) {
                throw new IndexOutOfBoundsException("toIndex = " + i2);
            }
            if (i <= i2) {
                this.f105120e = abstractLinkedList;
                this.f105121f = i;
                this.f105122g = i2 - i;
                this.f105123h = abstractLinkedList.modCount;
                return;
            }
            throw new IllegalArgumentException("fromIndex(" + i + ") > toIndex(" + i2 + MotionUtils.f31762d);
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int i, E e) {
            rangeCheck(i, this.f105122g + 1);
            checkModCount();
            this.f105120e.add(i + this.f105121f, e);
            this.f105123h = this.f105120e.modCount;
            this.f105122g++;
            ((AbstractList) this).modCount++;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean addAll(Collection<? extends E> collection) {
            return addAll(this.f105122g, collection);
        }

        public void checkModCount() {
            if (this.f105120e.modCount != this.f105123h) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            checkModCount();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public E get(int i) {
            rangeCheck(i, this.f105122g);
            checkModCount();
            return this.f105120e.get(i + this.f105121f);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<E> iterator() {
            checkModCount();
            return this.f105120e.createSubListIterator(this);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<E> listIterator(int i) {
            rangeCheck(i, this.f105122g + 1);
            checkModCount();
            return this.f105120e.createSubListListIterator(this, i);
        }

        public void rangeCheck(int i, int i2) {
            if (i < 0 || i >= i2) {
                throw new IndexOutOfBoundsException("Index '" + i + "' out of bounds for size '" + this.f105122g + CloudStorageConstants.SINGLE_QUOTES);
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public E remove(int i) {
            rangeCheck(i, this.f105122g);
            checkModCount();
            E remove = this.f105120e.remove(i + this.f105121f);
            this.f105123h = this.f105120e.modCount;
            this.f105122g--;
            ((AbstractList) this).modCount++;
            return remove;
        }

        @Override // java.util.AbstractList, java.util.List
        public E set(int i, E e) {
            rangeCheck(i, this.f105122g);
            checkModCount();
            return this.f105120e.set(i + this.f105121f, e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            checkModCount();
            return this.f105122g;
        }

        @Override // java.util.AbstractList, java.util.List
        public List<E> subList(int i, int i2) {
            AbstractLinkedList<E> abstractLinkedList = this.f105120e;
            int i3 = this.f105121f;
            return new LinkedSubList(abstractLinkedList, i + i3, i2 + i3);
        }

        @Override // java.util.AbstractList, java.util.List
        public boolean addAll(int i, Collection<? extends E> collection) {
            rangeCheck(i, this.f105122g + 1);
            int size = collection.size();
            if (size == 0) {
                return false;
            }
            checkModCount();
            this.f105120e.addAll(this.f105121f + i, collection);
            this.f105123h = this.f105120e.modCount;
            this.f105122g += size;
            ((AbstractList) this).modCount++;
            return true;
        }
    }

    /* loaded from: classes11.dex */
    public static class LinkedSubListIterator<E> extends LinkedListIterator<E> {
        protected final LinkedSubList<E> sub;

        public LinkedSubListIterator(LinkedSubList<E> linkedSubList, int i) {
            super(linkedSubList.f105120e, i + linkedSubList.f105121f);
            this.sub = linkedSubList;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public void add(E e) {
            super.add(e);
            LinkedSubList<E> linkedSubList = this.sub;
            linkedSubList.f105123h = this.parent.modCount;
            linkedSubList.f105122g++;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return nextIndex() < this.sub.f105122g;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return previousIndex() >= 0;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public int nextIndex() {
            return super.nextIndex() - this.sub.f105121f;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public void remove() {
            super.remove();
            this.sub.f105123h = this.parent.modCount;
            r0.f105122g--;
        }
    }

    public AbstractLinkedList() {
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(E e) {
        addLast(e);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        return addAll(this.size, collection);
    }

    public boolean addFirst(E e) {
        addNodeAfter(this.header, e);
        return true;
    }

    public boolean addLast(E e) {
        addNodeBefore(this.header, e);
        return true;
    }

    public void addNode(Node<E> node, Node<E> node2) {
        node.next = node2;
        node.previous = node2.previous;
        node2.previous.next = node;
        node2.previous = node;
        this.size++;
        this.modCount++;
    }

    public void addNodeAfter(Node<E> node, E e) {
        addNode(createNode(e), node.next);
    }

    public void addNodeBefore(Node<E> node, E e) {
        addNode(createNode(e), node);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        removeAllNodes();
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public Node<E> createHeaderNode() {
        return new Node<>();
    }

    public Node<E> createNode(E e) {
        return new Node<>(e);
    }

    public Iterator<E> createSubListIterator(LinkedSubList<E> linkedSubList) {
        return createSubListListIterator(linkedSubList, 0);
    }

    public ListIterator<E> createSubListListIterator(LinkedSubList<E> linkedSubList, int i) {
        return new LinkedSubListIterator(linkedSubList, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        init();
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            add(objectInputStream.readObject());
        }
    }

    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(size());
        Iterator<E> it2 = iterator();
        while (it2.hasNext()) {
            objectOutputStream.writeObject(it2.next());
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        if (list.size() != size()) {
            return false;
        }
        ListIterator<E> listIterator = listIterator();
        ListIterator<E> listIterator2 = list.listIterator();
        while (listIterator.hasNext() && listIterator2.hasNext()) {
            E next = listIterator.next();
            E next2 = listIterator2.next();
            if (next == null) {
                if (next2 != null) {
                    return false;
                }
            } else if (!next.equals(next2)) {
                return false;
            }
        }
        return (listIterator.hasNext() || listIterator2.hasNext()) ? false : true;
    }

    @Override // java.util.List
    public E get(int i) {
        return getNode(i, false).getValue();
    }

    public E getFirst() {
        Node<E> node = this.header;
        Node<E> node2 = node.next;
        if (node2 != node) {
            return node2.getValue();
        }
        throw new NoSuchElementException();
    }

    public E getLast() {
        Node<E> node = this.header;
        Node<E> node2 = node.previous;
        if (node2 != node) {
            return node2.getValue();
        }
        throw new NoSuchElementException();
    }

    public Node<E> getNode(int i, boolean z) throws IndexOutOfBoundsException {
        Node<E> node;
        if (i < 0) {
            throw new IndexOutOfBoundsException("Couldn't get the node: index (" + i + ") less than zero.");
        }
        if (!z && i == this.size) {
            throw new IndexOutOfBoundsException("Couldn't get the node: index (" + i + ") is the size of the list.");
        }
        int i2 = this.size;
        if (i > i2) {
            throw new IndexOutOfBoundsException("Couldn't get the node: index (" + i + ") greater than the size of the list (" + this.size + ").");
        }
        if (i < i2 / 2) {
            node = this.header.next;
            for (int i3 = 0; i3 < i; i3++) {
                node = node.next;
            }
        } else {
            node = this.header;
            while (i2 > i) {
                node = node.previous;
                i2--;
            }
        }
        return node;
    }

    @Override // java.util.List, java.util.Collection
    public int hashCode() {
        Iterator<E> it2 = iterator();
        int i = 1;
        while (it2.hasNext()) {
            E next = it2.next();
            i = (i * 31) + (next == null ? 0 : next.hashCode());
        }
        return i;
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        int i = 0;
        for (Node<E> node = this.header.next; node != this.header; node = node.next) {
            if (isEqualValue(node.getValue(), obj)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public void init() {
        this.header = createHeaderNode();
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    public boolean isEqualValue(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        int i = this.size - 1;
        Node<E> node = this.header;
        while (true) {
            node = node.previous;
            if (node == this.header) {
                return -1;
            }
            if (isEqualValue(node.getValue(), obj)) {
                return i;
            }
            i--;
        }
    }

    @Override // java.util.List
    public ListIterator<E> listIterator() {
        return new LinkedListIterator(this, 0);
    }

    @Override // java.util.List
    public E remove(int i) {
        Node<E> node = getNode(i, false);
        E value = node.getValue();
        removeNode(node);
        return value;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        Iterator<E> it2 = iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    public void removeAllNodes() {
        Node<E> node = this.header;
        node.next = node;
        node.previous = node;
        this.size = 0;
        this.modCount++;
    }

    public E removeFirst() {
        Node<E> node = this.header;
        Node<E> node2 = node.next;
        if (node2 == node) {
            throw new NoSuchElementException();
        }
        E value = node2.getValue();
        removeNode(node2);
        return value;
    }

    public E removeLast() {
        Node<E> node = this.header;
        Node<E> node2 = node.previous;
        if (node2 == node) {
            throw new NoSuchElementException();
        }
        E value = node2.getValue();
        removeNode(node2);
        return value;
    }

    public void removeNode(Node<E> node) {
        Node<E> node2 = node.previous;
        node2.next = node.next;
        node.next.previous = node2;
        this.size--;
        this.modCount++;
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        Iterator<E> it2 = iterator();
        boolean z = false;
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.List
    public E set(int i, E e) {
        Node<E> node = getNode(i, false);
        E value = node.getValue();
        updateNode(node, e);
        return value;
    }

    @Override // java.util.List, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // java.util.List
    public List<E> subList(int i, int i2) {
        return new LinkedSubList(this, i, i2);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return toArray(new Object[this.size]);
    }

    public String toString() {
        if (size() == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(size() * 16);
        sb.append('[');
        Iterator<E> it2 = iterator();
        boolean hasNext = it2.hasNext();
        while (hasNext) {
            Object next = it2.next();
            if (next == this) {
                next = "(this Collection)";
            }
            sb.append(next);
            hasNext = it2.hasNext();
            if (hasNext) {
                sb.append(", ");
            }
        }
        sb.append(']');
        return sb.toString();
    }

    public void updateNode(Node<E> node, E e) {
        node.setValue(e);
    }

    public AbstractLinkedList(Collection<? extends E> collection) {
        init();
        addAll(collection);
    }

    @Override // java.util.List
    public void add(int i, E e) {
        addNodeBefore(getNode(i, true), e);
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends E> collection) {
        Node<E> node = getNode(i, true);
        Iterator<? extends E> it2 = collection.iterator();
        while (it2.hasNext()) {
            addNodeBefore(node, it2.next());
        }
        return true;
    }

    @Override // java.util.List
    public ListIterator<E> listIterator(int i) {
        return new LinkedListIterator(this, i);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.size));
        }
        Node<E> node = this.header.next;
        int i = 0;
        while (node != this.header) {
            tArr[i] = node.getValue();
            node = node.next;
            i++;
        }
        int length = tArr.length;
        int i2 = this.size;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    /* loaded from: classes11.dex */
    public static class Node<E> {
        protected Node<E> next;
        protected Node<E> previous;
        protected E value;

        public Node() {
            this.previous = this;
            this.next = this;
        }

        public Node<E> getNextNode() {
            return this.next;
        }

        public Node<E> getPreviousNode() {
            return this.previous;
        }

        public E getValue() {
            return this.value;
        }

        public void setNextNode(Node<E> node) {
            this.next = node;
        }

        public void setPreviousNode(Node<E> node) {
            this.previous = node;
        }

        public void setValue(E e) {
            this.value = e;
        }

        public Node(E e) {
            this.value = e;
        }

        public Node(Node<E> node, Node<E> node2, E e) {
            this.previous = node;
            this.next = node2;
            this.value = e;
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        Node<E> node = this.header;
        do {
            node = node.next;
            if (node == this.header) {
                return false;
            }
        } while (!isEqualValue(node.getValue(), obj));
        removeNode(node);
        return true;
    }
}
