package org.apache.xerces.util;

import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import org.apache.xerces.xni.Augmentations;

/* loaded from: classes13.dex */
public class AugmentationsImpl implements Augmentations {

    /* renamed from: a */
    public AbstractC20082a f113475a = new C20084c();

    /* renamed from: org.apache.xerces.util.AugmentationsImpl$a */
    /* loaded from: classes13.dex */
    public static abstract class AbstractC20082a {
        /* renamed from: a */
        public abstract void mo70559a();

        /* renamed from: b */
        public abstract AbstractC20082a mo70560b();

        /* renamed from: c */
        public abstract Object mo70561c(Object obj);

        /* renamed from: d */
        public abstract boolean mo70562d();

        /* renamed from: e */
        public abstract Enumeration mo70563e();

        /* renamed from: f */
        public abstract Object mo70564f(Object obj, Object obj2);

        /* renamed from: g */
        public abstract Object mo70565g(Object obj);
    }

    /* renamed from: org.apache.xerces.util.AugmentationsImpl$b */
    /* loaded from: classes13.dex */
    public static final class C20083b extends AbstractC20082a {

        /* renamed from: a */
        public final HashMap f113476a = new HashMap();

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: a */
        public void mo70559a() {
            this.f113476a.clear();
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: b */
        public AbstractC20082a mo70560b() {
            return this;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: c */
        public Object mo70561c(Object obj) {
            return this.f113476a.get(obj);
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: d */
        public boolean mo70562d() {
            return false;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: e */
        public Enumeration mo70563e() {
            return Collections.enumeration(this.f113476a.keySet());
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: f */
        public Object mo70564f(Object obj, Object obj2) {
            return this.f113476a.put(obj, obj2);
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: g */
        public Object mo70565g(Object obj) {
            return this.f113476a.remove(obj);
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("LargeContainer");
            for (Map.Entry entry : this.f113476a.entrySet()) {
                stringBuffer.append("\nkey == ");
                stringBuffer.append(entry.getKey());
                stringBuffer.append("; value == ");
                stringBuffer.append(entry.getValue());
            }
            return stringBuffer.toString();
        }
    }

    /* renamed from: org.apache.xerces.util.AugmentationsImpl$c */
    /* loaded from: classes13.dex */
    public static final class C20084c extends AbstractC20082a {

        /* renamed from: c */
        public static final int f113477c = 10;

        /* renamed from: a */
        public final Object[] f113478a = new Object[20];

        /* renamed from: b */
        public int f113479b = 0;

        /* renamed from: org.apache.xerces.util.AugmentationsImpl$c$a */
        /* loaded from: classes13.dex */
        public final class a implements Enumeration {

            /* renamed from: e */
            public Object[] f113480e;

            /* renamed from: f */
            public int f113481f = 0;

            public a() {
                this.f113480e = new Object[C20084c.this.f113479b];
                for (int i = 0; i < C20084c.this.f113479b; i++) {
                    this.f113480e[i] = C20084c.this.f113478a[i * 2];
                }
            }

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.f113481f < this.f113480e.length;
            }

            @Override // java.util.Enumeration
            public Object nextElement() {
                int i = this.f113481f;
                Object[] objArr = this.f113480e;
                if (i >= objArr.length) {
                    throw new NoSuchElementException();
                }
                Object obj = objArr[i];
                objArr[i] = null;
                this.f113481f = i + 1;
                return obj;
            }
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: a */
        public void mo70559a() {
            for (int i = 0; i < this.f113479b * 2; i += 2) {
                Object[] objArr = this.f113478a;
                objArr[i] = null;
                objArr[i + 1] = null;
            }
            this.f113479b = 0;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: b */
        public AbstractC20082a mo70560b() {
            C20083b c20083b = new C20083b();
            for (int i = 0; i < this.f113479b * 2; i += 2) {
                Object[] objArr = this.f113478a;
                c20083b.mo70564f(objArr[i], objArr[i + 1]);
            }
            return c20083b;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: c */
        public Object mo70561c(Object obj) {
            for (int i = 0; i < this.f113479b * 2; i += 2) {
                if (this.f113478a[i].equals(obj)) {
                    return this.f113478a[i + 1];
                }
            }
            return null;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: d */
        public boolean mo70562d() {
            return this.f113479b == 10;
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: e */
        public Enumeration mo70563e() {
            return new a();
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: f */
        public Object mo70564f(Object obj, Object obj2) {
            int i = 0;
            while (true) {
                int i2 = this.f113479b;
                if (i >= i2 * 2) {
                    Object[] objArr = this.f113478a;
                    objArr[i2 * 2] = obj;
                    objArr[(i2 * 2) + 1] = obj2;
                    this.f113479b = i2 + 1;
                    return null;
                }
                if (this.f113478a[i].equals(obj)) {
                    Object[] objArr2 = this.f113478a;
                    int i3 = i + 1;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = obj2;
                    return obj3;
                }
                i += 2;
            }
        }

        @Override // org.apache.xerces.util.AugmentationsImpl.AbstractC20082a
        /* renamed from: g */
        public Object mo70565g(Object obj) {
            int i = 0;
            while (i < this.f113479b * 2) {
                if (this.f113478a[i].equals(obj)) {
                    Object obj2 = this.f113478a[i + 1];
                    while (true) {
                        int i2 = this.f113479b;
                        if (i >= (i2 * 2) - 2) {
                            Object[] objArr = this.f113478a;
                            objArr[(i2 * 2) - 2] = null;
                            objArr[(i2 * 2) - 1] = null;
                            this.f113479b = i2 - 1;
                            return obj2;
                        }
                        Object[] objArr2 = this.f113478a;
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
            stringBuffer.append("SmallContainer - fNumEntries == ");
            stringBuffer.append(this.f113479b);
            for (int i = 0; i < 20; i += 2) {
                stringBuffer.append("\nfAugmentations[");
                stringBuffer.append(i);
                stringBuffer.append("] == ");
                stringBuffer.append(this.f113478a[i]);
                stringBuffer.append("; fAugmentations[");
                int i2 = i + 1;
                stringBuffer.append(i2);
                stringBuffer.append("] == ");
                stringBuffer.append(this.f113478a[i2]);
            }
            return stringBuffer.toString();
        }
    }

    @Override // org.apache.xerces.xni.Augmentations
    public Object getItem(String str) {
        return this.f113475a.mo70561c(str);
    }

    @Override // org.apache.xerces.xni.Augmentations
    public Enumeration keys() {
        return this.f113475a.mo70563e();
    }

    @Override // org.apache.xerces.xni.Augmentations
    public Object putItem(String str, Object obj) {
        Object mo70564f = this.f113475a.mo70564f(str, obj);
        if (mo70564f == null && this.f113475a.mo70562d()) {
            this.f113475a = this.f113475a.mo70560b();
        }
        return mo70564f;
    }

    @Override // org.apache.xerces.xni.Augmentations
    public void removeAllItems() {
        this.f113475a.mo70559a();
    }

    @Override // org.apache.xerces.xni.Augmentations
    public Object removeItem(String str) {
        return this.f113475a.mo70565g(str);
    }

    public String toString() {
        return this.f113475a.toString();
    }
}
