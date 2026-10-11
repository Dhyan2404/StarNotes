package org.apache.logging.log4j.spi;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.logging.log4j.ThreadContext;
import org.apache.logging.log4j.util.StringBuilderFormattable;
import org.apache.logging.log4j.util.StringBuilders;
import org.apache.logging.log4j.util.Strings;

/* loaded from: classes12.dex */
public class DefaultThreadContextStack implements ThreadContextStack, StringBuilderFormattable {
    private static final ThreadLocal<MutableThreadContextStack> STACK = new ThreadLocal<>();
    private static final long serialVersionUID = 5050501;
    private final boolean useStack;

    public DefaultThreadContextStack(final boolean useStack) {
        this.useStack = useStack;
    }

    private MutableThreadContextStack getNonNullStackCopy() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return (MutableThreadContextStack) (mutableThreadContextStack == null ? new MutableThreadContextStack() : mutableThreadContextStack.copy());
    }

    @Override // java.util.Collection
    public boolean addAll(final Collection<? extends String> strings) {
        if (!this.useStack || strings.isEmpty()) {
            return false;
        }
        MutableThreadContextStack nonNullStackCopy = getNonNullStackCopy();
        nonNullStackCopy.addAll(strings);
        nonNullStackCopy.freeze();
        STACK.set(nonNullStackCopy);
        return true;
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public List<String> asList() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack == null ? Collections.emptyList() : mutableThreadContextStack.asList();
    }

    @Override // java.util.Collection
    public void clear() {
        STACK.remove();
    }

    @Override // java.util.Collection
    public boolean contains(final Object o) {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack != null && mutableThreadContextStack.contains(o);
    }

    @Override // java.util.Collection
    public boolean containsAll(final Collection<?> objects) {
        if (objects.isEmpty()) {
            return true;
        }
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack != null && mutableThreadContextStack.containsAll(objects);
    }

    @Override // java.util.Collection
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (((obj instanceof DefaultThreadContextStack) && this.useStack != ((DefaultThreadContextStack) obj).useStack) || !(obj instanceof ThreadContextStack)) {
            return false;
        }
        ThreadContextStack threadContextStack = (ThreadContextStack) obj;
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            return false;
        }
        return mutableThreadContextStack.equals(threadContextStack);
    }

    @Override // org.apache.logging.log4j.util.StringBuilderFormattable
    public void formatTo(final StringBuilder buffer) {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            buffer.append("[]");
        } else {
            StringBuilders.appendValue(buffer, mutableThreadContextStack);
        }
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public int getDepth() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            return 0;
        }
        return mutableThreadContextStack.getDepth();
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public ThreadContext.ContextStack getImmutableStackOrNull() {
        return STACK.get();
    }

    @Override // java.util.Collection
    public int hashCode() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return 31 + (mutableThreadContextStack == null ? 0 : mutableThreadContextStack.hashCode());
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack == null || mutableThreadContextStack.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<String> iterator() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack == null ? Collections.emptyList().iterator() : mutableThreadContextStack.iterator();
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public String peek() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return (mutableThreadContextStack == null || mutableThreadContextStack.isEmpty()) ? "" : mutableThreadContextStack.peek();
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public String pop() {
        ThreadLocal<MutableThreadContextStack> threadLocal;
        MutableThreadContextStack mutableThreadContextStack;
        if (!this.useStack || (mutableThreadContextStack = (threadLocal = STACK).get()) == null || mutableThreadContextStack.isEmpty()) {
            return "";
        }
        MutableThreadContextStack mutableThreadContextStack2 = (MutableThreadContextStack) mutableThreadContextStack.copy();
        String pop = mutableThreadContextStack2.pop();
        mutableThreadContextStack2.freeze();
        threadLocal.set(mutableThreadContextStack2);
        return pop;
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public void push(final String message) {
        if (this.useStack) {
            add(message);
        }
    }

    @Override // java.util.Collection
    public boolean remove(final Object o) {
        ThreadLocal<MutableThreadContextStack> threadLocal;
        MutableThreadContextStack mutableThreadContextStack;
        if (!this.useStack || (mutableThreadContextStack = (threadLocal = STACK).get()) == null || mutableThreadContextStack.isEmpty()) {
            return false;
        }
        MutableThreadContextStack mutableThreadContextStack2 = (MutableThreadContextStack) mutableThreadContextStack.copy();
        boolean remove = mutableThreadContextStack2.remove(o);
        mutableThreadContextStack2.freeze();
        threadLocal.set(mutableThreadContextStack2);
        return remove;
    }

    @Override // java.util.Collection
    public boolean removeAll(final Collection<?> objects) {
        ThreadLocal<MutableThreadContextStack> threadLocal;
        MutableThreadContextStack mutableThreadContextStack;
        if (!this.useStack || objects.isEmpty() || (mutableThreadContextStack = (threadLocal = STACK).get()) == null || mutableThreadContextStack.isEmpty()) {
            return false;
        }
        MutableThreadContextStack mutableThreadContextStack2 = (MutableThreadContextStack) mutableThreadContextStack.copy();
        boolean removeAll = mutableThreadContextStack2.removeAll(objects);
        mutableThreadContextStack2.freeze();
        threadLocal.set(mutableThreadContextStack2);
        return removeAll;
    }

    @Override // java.util.Collection
    public boolean retainAll(final Collection<?> objects) {
        ThreadLocal<MutableThreadContextStack> threadLocal;
        MutableThreadContextStack mutableThreadContextStack;
        if (!this.useStack || objects.isEmpty() || (mutableThreadContextStack = (threadLocal = STACK).get()) == null || mutableThreadContextStack.isEmpty()) {
            return false;
        }
        MutableThreadContextStack mutableThreadContextStack2 = (MutableThreadContextStack) mutableThreadContextStack.copy();
        boolean retainAll = mutableThreadContextStack2.retainAll(objects);
        mutableThreadContextStack2.freeze();
        threadLocal.set(mutableThreadContextStack2);
        return retainAll;
    }

    @Override // java.util.Collection
    public int size() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            return 0;
        }
        return mutableThreadContextStack.size();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            return Strings.EMPTY_ARRAY;
        }
        return mutableThreadContextStack.toArray(new Object[mutableThreadContextStack.size()]);
    }

    public String toString() {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        return mutableThreadContextStack == null ? "[]" : mutableThreadContextStack.toString();
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public void trim(final int depth) {
        if (depth < 0) {
            throw new IllegalArgumentException("Maximum stack depth cannot be negative");
        }
        ThreadLocal<MutableThreadContextStack> threadLocal = STACK;
        MutableThreadContextStack mutableThreadContextStack = threadLocal.get();
        if (mutableThreadContextStack == null) {
            return;
        }
        MutableThreadContextStack mutableThreadContextStack2 = (MutableThreadContextStack) mutableThreadContextStack.copy();
        mutableThreadContextStack2.trim(depth);
        mutableThreadContextStack2.freeze();
        threadLocal.set(mutableThreadContextStack2);
    }

    @Override // java.util.Collection
    public boolean add(final String s) {
        if (!this.useStack) {
            return false;
        }
        MutableThreadContextStack nonNullStackCopy = getNonNullStackCopy();
        nonNullStackCopy.add(s);
        nonNullStackCopy.freeze();
        STACK.set(nonNullStackCopy);
        return true;
    }

    @Override // org.apache.logging.log4j.ThreadContext.ContextStack
    public ThreadContextStack copy() {
        MutableThreadContextStack mutableThreadContextStack;
        if (this.useStack && (mutableThreadContextStack = STACK.get()) != null) {
            return mutableThreadContextStack.copy();
        }
        return new MutableThreadContextStack();
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        MutableThreadContextStack mutableThreadContextStack = STACK.get();
        if (mutableThreadContextStack == null) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        return (T[]) mutableThreadContextStack.toArray(tArr);
    }
}
