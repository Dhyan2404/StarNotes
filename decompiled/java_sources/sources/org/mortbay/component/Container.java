package org.mortbay.component;

import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.util.EventListener;
import org.mortbay.log.Log;
import org.mortbay.util.LazyList;

/* loaded from: classes13.dex */
public class Container {

    /* renamed from: a */
    public Object f114446a;

    /* loaded from: classes13.dex */
    public interface Listener extends EventListener {
        void add(Relationship relationship);

        void addBean(Object obj);

        void remove(Relationship relationship);

        void removeBean(Object obj);
    }

    /* loaded from: classes13.dex */
    public static class Relationship {

        /* renamed from: a */
        public Object f114447a;

        /* renamed from: b */
        public Object f114448b;

        /* renamed from: c */
        public String f114449c;

        /* renamed from: d */
        public Container f114450d;

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof Relationship)) {
                return false;
            }
            Relationship relationship = (Relationship) obj;
            return relationship.f114447a == this.f114447a && relationship.f114448b == this.f114448b && relationship.f114449c.equals(this.f114449c);
        }

        public Object getChild() {
            return this.f114448b;
        }

        public Container getContainer() {
            return this.f114450d;
        }

        public Object getParent() {
            return this.f114447a;
        }

        public String getRelationship() {
            return this.f114449c;
        }

        public int hashCode() {
            return this.f114447a.hashCode() + this.f114448b.hashCode() + this.f114449c.hashCode();
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.f114447a);
            stringBuffer.append("---");
            stringBuffer.append(this.f114449c);
            stringBuffer.append(XMLStreamWriterImpl.END_COMMENT);
            stringBuffer.append(this.f114448b);
            return stringBuffer.toString();
        }

        public Relationship(Container container, Object obj, Object obj2, String str) {
            this.f114450d = container;
            this.f114447a = obj;
            this.f114448b = obj2;
            this.f114449c = str;
        }
    }

    /* renamed from: a */
    public final void m71458a(Object obj, Object obj2, String str) {
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Container ");
            stringBuffer.append(obj);
            stringBuffer.append(" + ");
            stringBuffer.append(obj2);
            stringBuffer.append(" as ");
            stringBuffer.append(str);
            Log.debug(stringBuffer.toString());
        }
        if (this.f114446a != null) {
            Relationship relationship = new Relationship(obj, obj2, str);
            for (int i = 0; i < LazyList.size(this.f114446a); i++) {
                ((Listener) LazyList.get(this.f114446a, i)).add(relationship);
            }
        }
    }

    public void addBean(Object obj) {
        if (this.f114446a != null) {
            for (int i = 0; i < LazyList.size(this.f114446a); i++) {
                ((Listener) LazyList.get(this.f114446a, i)).addBean(obj);
            }
        }
    }

    public synchronized void addEventListener(Listener listener) {
        this.f114446a = LazyList.add(this.f114446a, listener);
    }

    /* renamed from: b */
    public final void m71459b(Object obj, Object obj2, String str) {
        if (Log.isDebugEnabled()) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("Container ");
            stringBuffer.append(obj);
            stringBuffer.append(" - ");
            stringBuffer.append(obj2);
            stringBuffer.append(" as ");
            stringBuffer.append(str);
            Log.debug(stringBuffer.toString());
        }
        if (this.f114446a != null) {
            Relationship relationship = new Relationship(obj, obj2, str);
            for (int i = 0; i < LazyList.size(this.f114446a); i++) {
                ((Listener) LazyList.get(this.f114446a, i)).remove(relationship);
            }
        }
    }

    public void removeBean(Object obj) {
        if (this.f114446a != null) {
            for (int i = 0; i < LazyList.size(this.f114446a); i++) {
                ((Listener) LazyList.get(this.f114446a, i)).removeBean(obj);
            }
        }
    }

    public synchronized void removeEventListener(Listener listener) {
        this.f114446a = LazyList.remove(this.f114446a, listener);
    }

    public synchronized void update(Object obj, Object obj2, Object obj3, String str) {
        if (obj2 != null) {
            try {
                if (!obj2.equals(obj3)) {
                    m71459b(obj, obj2, str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj3 != null && !obj3.equals(obj2)) {
            m71458a(obj, obj3, str);
        }
    }

    public synchronized void update(Object obj, Object obj2, Object obj3, String str, boolean z) {
        if (obj2 != null) {
            try {
                if (!obj2.equals(obj3)) {
                    m71459b(obj, obj2, str);
                    if (z) {
                        removeBean(obj2);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj3 != null && !obj3.equals(obj2)) {
            if (z) {
                addBean(obj3);
            }
            m71458a(obj, obj3, str);
        }
    }

    public synchronized void update(Object obj, Object[] objArr, Object[] objArr2, String str) {
        update(obj, objArr, objArr2, str, false);
    }

    public synchronized void update(Object obj, Object[] objArr, Object[] objArr2, String str, boolean z) {
        Object[] objArr3 = null;
        if (objArr2 != null) {
            try {
                Object[] objArr4 = new Object[objArr2.length];
                int length = objArr2.length;
                while (true) {
                    int i = length - 1;
                    if (length <= 0) {
                        break;
                    }
                    boolean z2 = true;
                    if (objArr != null) {
                        int length2 = objArr.length;
                        while (true) {
                            int i2 = length2 - 1;
                            if (length2 <= 0) {
                                break;
                            }
                            Object obj2 = objArr2[i];
                            if (obj2 != null && obj2.equals(objArr[i2])) {
                                objArr[i2] = null;
                                z2 = false;
                            }
                            length2 = i2;
                        }
                    }
                    if (z2) {
                        objArr4[i] = objArr2[i];
                    }
                    length = i;
                }
                objArr3 = objArr4;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (objArr != null) {
            int length3 = objArr.length;
            while (true) {
                int i3 = length3 - 1;
                if (length3 <= 0) {
                    break;
                }
                Object obj3 = objArr[i3];
                if (obj3 != null) {
                    m71459b(obj, obj3, str);
                    if (z) {
                        removeBean(objArr[i3]);
                    }
                }
                length3 = i3;
            }
        }
        if (objArr3 != null) {
            for (int i4 = 0; i4 < objArr3.length; i4++) {
                Object obj4 = objArr3[i4];
                if (obj4 != null) {
                    if (z) {
                        addBean(obj4);
                    }
                    m71458a(obj, objArr3[i4], str);
                }
            }
        }
    }
}
