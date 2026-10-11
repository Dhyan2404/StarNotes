package org.apache.commons.collections4.list;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.apache.commons.collections4.list.AbstractLinkedList;

/* loaded from: classes11.dex */
public class CursorableLinkedList<E> extends AbstractLinkedList<E> implements Serializable {
    private static final long serialVersionUID = 8836393098519411393L;
    private transient List<WeakReference<Cursor<E>>> cursors;

    /* loaded from: classes11.dex */
    public static class Cursor<E> extends AbstractLinkedList.LinkedListIterator<E> {

        /* renamed from: e */
        public boolean f105124e;

        /* renamed from: f */
        public boolean f105125f;

        /* renamed from: g */
        public boolean f105126g;

        public Cursor(CursorableLinkedList<E> cursorableLinkedList, int i) {
            super(cursorableLinkedList, i);
            this.f105125f = true;
            this.f105126g = false;
            this.f105124e = true;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public void add(E e) {
            super.add(e);
            this.next = this.next.next;
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator
        public void checkModCount() {
            if (!this.f105124e) {
                throw new ConcurrentModificationException("Cursor closed");
            }
        }

        public void close() {
            if (this.f105124e) {
                ((CursorableLinkedList) this.parent).unregisterCursor(this);
                this.f105124e = false;
            }
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ boolean hasNext() {
            return super.hasNext();
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public /* bridge */ /* synthetic */ boolean hasPrevious() {
            return super.hasPrevious();
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            return super.next();
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public int nextIndex() {
            if (!this.f105125f) {
                AbstractLinkedList.Node<E> node = this.next;
                AbstractLinkedList<E> abstractLinkedList = this.parent;
                AbstractLinkedList.Node<E> node2 = abstractLinkedList.header;
                if (node == node2) {
                    this.nextIndex = abstractLinkedList.size();
                } else {
                    int i = 0;
                    for (AbstractLinkedList.Node<E> node3 = node2.next; node3 != this.next; node3 = node3.next) {
                        i++;
                    }
                    this.nextIndex = i;
                }
                this.f105125f = true;
            }
            return this.nextIndex;
        }

        public void nodeChanged(AbstractLinkedList.Node<E> node) {
        }

        public void nodeInserted(AbstractLinkedList.Node<E> node) {
            if (node.previous == this.current) {
                this.next = node;
            } else if (this.next.previous == node) {
                this.next = node;
            } else {
                this.f105125f = false;
            }
        }

        public void nodeRemoved(AbstractLinkedList.Node<E> node) {
            AbstractLinkedList.Node<E> node2 = this.next;
            if (node == node2 && node == this.current) {
                this.next = node.next;
                this.current = null;
                this.f105126g = true;
            } else if (node == node2) {
                this.next = node.next;
                this.f105126g = false;
            } else if (node != this.current) {
                this.f105125f = false;
                this.f105126g = false;
            } else {
                this.current = null;
                this.f105126g = true;
                this.nextIndex--;
            }
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public /* bridge */ /* synthetic */ Object previous() {
            return super.previous();
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public /* bridge */ /* synthetic */ int previousIndex() {
            return super.previousIndex();
        }

        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public void remove() {
            if (this.current != null || !this.f105126g) {
                checkModCount();
                this.parent.removeNode(getLastNodeReturned());
            }
            this.f105126g = false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(Object obj) {
            super.set(obj);
        }
    }

    /* loaded from: classes11.dex */
    public static class SubCursor<E> extends Cursor<E> {
        protected final AbstractLinkedList.LinkedSubList<E> sub;

        public SubCursor(AbstractLinkedList.LinkedSubList<E> linkedSubList, int i) {
            super((CursorableLinkedList) linkedSubList.f105120e, i + linkedSubList.f105121f);
            this.sub = linkedSubList;
        }

        @Override // org.apache.commons.collections4.list.CursorableLinkedList.Cursor, org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public void add(E e) {
            super.add(e);
            AbstractLinkedList.LinkedSubList<E> linkedSubList = this.sub;
            linkedSubList.f105123h = this.parent.modCount;
            linkedSubList.f105122g++;
        }

        @Override // org.apache.commons.collections4.list.CursorableLinkedList.Cursor, org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return nextIndex() < this.sub.f105122g;
        }

        @Override // org.apache.commons.collections4.list.CursorableLinkedList.Cursor, org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return previousIndex() >= 0;
        }

        @Override // org.apache.commons.collections4.list.CursorableLinkedList.Cursor, org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator
        public int nextIndex() {
            return super.nextIndex() - this.sub.f105121f;
        }

        @Override // org.apache.commons.collections4.list.CursorableLinkedList.Cursor, org.apache.commons.collections4.list.AbstractLinkedList.LinkedListIterator, java.util.ListIterator, java.util.Iterator
        public void remove() {
            super.remove();
            this.sub.f105123h = this.parent.modCount;
            r0.f105122g--;
        }
    }

    public CursorableLinkedList() {
        init();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        doReadObject(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        doWriteObject(objectOutputStream);
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public void addNode(AbstractLinkedList.Node<E> node, AbstractLinkedList.Node<E> node2) {
        super.addNode(node, node2);
        broadcastNodeInserted(node);
    }

    public void broadcastNodeChanged(AbstractLinkedList.Node<E> node) {
        Iterator<WeakReference<Cursor<E>>> it2 = this.cursors.iterator();
        while (it2.hasNext()) {
            Cursor<E> cursor = it2.next().get();
            if (cursor == null) {
                it2.remove();
            } else {
                cursor.nodeChanged(node);
            }
        }
    }

    public void broadcastNodeInserted(AbstractLinkedList.Node<E> node) {
        Iterator<WeakReference<Cursor<E>>> it2 = this.cursors.iterator();
        while (it2.hasNext()) {
            Cursor<E> cursor = it2.next().get();
            if (cursor == null) {
                it2.remove();
            } else {
                cursor.nodeInserted(node);
            }
        }
    }

    public void broadcastNodeRemoved(AbstractLinkedList.Node<E> node) {
        Iterator<WeakReference<Cursor<E>>> it2 = this.cursors.iterator();
        while (it2.hasNext()) {
            Cursor<E> cursor = it2.next().get();
            if (cursor == null) {
                it2.remove();
            } else {
                cursor.nodeRemoved(node);
            }
        }
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public ListIterator<E> createSubListListIterator(AbstractLinkedList.LinkedSubList<E> linkedSubList, int i) {
        SubCursor subCursor = new SubCursor(linkedSubList, i);
        registerCursor(subCursor);
        return subCursor;
    }

    public Cursor<E> cursor() {
        return cursor(0);
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public void init() {
        super.init();
        this.cursors = new ArrayList();
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList, java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return super.listIterator(0);
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList, java.util.List
    public ListIterator<E> listIterator() {
        return cursor(0);
    }

    public void registerCursor(Cursor<E> cursor) {
        Iterator<WeakReference<Cursor<E>>> it2 = this.cursors.iterator();
        while (it2.hasNext()) {
            if (it2.next().get() == null) {
                it2.remove();
            }
        }
        this.cursors.add(new WeakReference<>(cursor));
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public void removeAllNodes() {
        if (size() > 0) {
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                it2.next();
                it2.remove();
            }
        }
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public void removeNode(AbstractLinkedList.Node<E> node) {
        super.removeNode(node);
        broadcastNodeRemoved(node);
    }

    public void unregisterCursor(Cursor<E> cursor) {
        Iterator<WeakReference<Cursor<E>>> it2 = this.cursors.iterator();
        while (it2.hasNext()) {
            WeakReference<Cursor<E>> next = it2.next();
            Cursor<E> cursor2 = next.get();
            if (cursor2 == null) {
                it2.remove();
            } else if (cursor2 == cursor) {
                next.clear();
                it2.remove();
                return;
            }
        }
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList
    public void updateNode(AbstractLinkedList.Node<E> node, E e) {
        super.updateNode(node, e);
        broadcastNodeChanged(node);
    }

    public Cursor<E> cursor(int i) {
        Cursor<E> cursor = new Cursor<>(this, i);
        registerCursor(cursor);
        return cursor;
    }

    @Override // org.apache.commons.collections4.list.AbstractLinkedList, java.util.List
    public ListIterator<E> listIterator(int i) {
        return cursor(i);
    }

    public CursorableLinkedList(Collection<? extends E> collection) {
        super(collection);
    }
}
