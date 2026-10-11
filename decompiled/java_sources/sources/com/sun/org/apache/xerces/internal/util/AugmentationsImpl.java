package com.sun.org.apache.xerces.internal.util;

import com.sun.org.apache.xerces.internal.xni.Augmentations;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.NoSuchElementException;

/* loaded from: classes10.dex */
public class AugmentationsImpl implements Augmentations {
    private AugmentationsItemsContainer fAugmentationsContainer = new SmallContainer();

    /* loaded from: classes10.dex */
    public abstract class AugmentationsItemsContainer {
        public AugmentationsItemsContainer() {
        }

        public abstract void clear();

        public abstract AugmentationsItemsContainer expand();

        public abstract Object getItem(Object obj);

        public abstract boolean isFull();

        public abstract Enumeration keys();

        public abstract Object putItem(Object obj, Object obj2);

        public abstract Object removeItem(Object obj);
    }

    /* loaded from: classes10.dex */
    public class LargeContainer extends AugmentationsItemsContainer {
        final Hashtable fAugmentations;

        public LargeContainer() {
            super();
            this.fAugmentations = new Hashtable();
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public void clear() {
            this.fAugmentations.clear();
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public AugmentationsItemsContainer expand() {
            return this;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object getItem(Object obj) {
            return this.fAugmentations.get(obj);
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public boolean isFull() {
            return false;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Enumeration keys() {
            return this.fAugmentations.keys();
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object putItem(Object obj, Object obj2) {
            return this.fAugmentations.put(obj, obj2);
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object removeItem(Object obj) {
            return this.fAugmentations.remove(obj);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("LargeContainer");
            Enumeration keys = this.fAugmentations.keys();
            while (keys.hasMoreElements()) {
                Object nextElement = keys.nextElement();
                stringBuffer.append("\nkey == ");
                stringBuffer.append(nextElement);
                stringBuffer.append("; value == ");
                stringBuffer.append(this.fAugmentations.get(nextElement));
            }
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes10.dex */
    public class SmallContainer extends AugmentationsItemsContainer {
        static final int SIZE_LIMIT = 10;
        final Object[] fAugmentations;
        int fNumEntries;

        /* loaded from: classes10.dex */
        public class SmallContainerKeyEnumeration implements Enumeration {
            Object[] enumArray;
            int next = 0;

            public SmallContainerKeyEnumeration() {
                this.enumArray = new Object[SmallContainer.this.fNumEntries];
                for (int i = 0; i < SmallContainer.this.fNumEntries; i++) {
                    this.enumArray[i] = SmallContainer.this.fAugmentations[i * 2];
                }
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.next < this.enumArray.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int i = this.next;
                Object[] objArr = this.enumArray;
                if (i >= objArr.length) {
                    throw new NoSuchElementException();
                }
                Object obj = objArr[i];
                objArr[i] = null;
                this.next = i + 1;
                return obj;
            }
        }

        public SmallContainer() {
            super();
            this.fAugmentations = new Object[20];
            this.fNumEntries = 0;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public void clear() {
            for (int i = 0; i < this.fNumEntries * 2; i += 2) {
                Object[] objArr = this.fAugmentations;
                objArr[i] = null;
                objArr[i + 1] = null;
            }
            this.fNumEntries = 0;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public AugmentationsItemsContainer expand() {
            LargeContainer largeContainer = new LargeContainer();
            for (int i = 0; i < this.fNumEntries * 2; i += 2) {
                Object[] objArr = this.fAugmentations;
                largeContainer.putItem(objArr[i], objArr[i + 1]);
            }
            return largeContainer;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object getItem(Object obj) {
            for (int i = 0; i < this.fNumEntries * 2; i += 2) {
                if (this.fAugmentations[i].equals(obj)) {
                    return this.fAugmentations[i + 1];
                }
            }
            return null;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public boolean isFull() {
            return this.fNumEntries == 10;
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Enumeration keys() {
            return new SmallContainerKeyEnumeration();
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object putItem(Object obj, Object obj2) {
            int i = 0;
            while (true) {
                int i2 = this.fNumEntries;
                if (i >= i2 * 2) {
                    Object[] objArr = this.fAugmentations;
                    objArr[i2 * 2] = obj;
                    objArr[(i2 * 2) + 1] = obj2;
                    this.fNumEntries = i2 + 1;
                    return null;
                }
                if (this.fAugmentations[i].equals(obj)) {
                    Object[] objArr2 = this.fAugmentations;
                    int i3 = i + 1;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = obj2;
                    return obj3;
                }
                i += 2;
            }
        }

        @Override // com.sun.org.apache.xerces.internal.util.AugmentationsImpl.AugmentationsItemsContainer
        public Object removeItem(Object obj) {
            int i = 0;
            while (i < this.fNumEntries * 2) {
                if (this.fAugmentations[i].equals(obj)) {
                    Object obj2 = this.fAugmentations[i + 1];
                    while (true) {
                        int i2 = this.fNumEntries;
                        if (i >= (i2 * 2) - 2) {
                            Object[] objArr = this.fAugmentations;
                            objArr[(i2 * 2) - 2] = null;
                            objArr[(i2 * 2) - 1] = null;
                            this.fNumEntries = i2 - 1;
                            return obj2;
                        }
                        Object[] objArr2 = this.fAugmentations;
                        int i3 = i + 2;
                        objArr2[i] = objArr2[i3];
                        objArr2[i + 1] = objArr2[i + 3];
                        i = i3;
                    }
                } else {
                    i += 2;
                }
            }
            return null;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("SmallContainer - fNumEntries == " + this.fNumEntries);
            for (int i = 0; i < 20; i += 2) {
                stringBuffer.append("\nfAugmentations[");
                stringBuffer.append(i);
                stringBuffer.append("] == ");
                stringBuffer.append(this.fAugmentations[i]);
                stringBuffer.append("; fAugmentations[");
                int i2 = i + 1;
                stringBuffer.append(i2);
                stringBuffer.append("] == ");
                stringBuffer.append(this.fAugmentations[i2]);
            }
            return stringBuffer.toString();
        }
    }

    @Override // com.sun.org.apache.xerces.internal.xni.Augmentations
    public Object getItem(String str) {
        return this.fAugmentationsContainer.getItem(str);
    }

    @Override // com.sun.org.apache.xerces.internal.xni.Augmentations
    public Enumeration keys() {
        return this.fAugmentationsContainer.keys();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.Augmentations
    public Object putItem(String str, Object obj) {
        Object putItem = this.fAugmentationsContainer.putItem(str, obj);
        if (putItem == null && this.fAugmentationsContainer.isFull()) {
            this.fAugmentationsContainer = this.fAugmentationsContainer.expand();
        }
        return putItem;
    }

    @Override // com.sun.org.apache.xerces.internal.xni.Augmentations
    public void removeAllItems() {
        this.fAugmentationsContainer.clear();
    }

    @Override // com.sun.org.apache.xerces.internal.xni.Augmentations
    public Object removeItem(String str) {
        return this.fAugmentationsContainer.removeItem(str);
    }

    public String toString() {
        return this.fAugmentationsContainer.toString();
    }
}
