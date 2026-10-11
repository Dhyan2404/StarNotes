package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* loaded from: classes3.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    /* renamed from: androidx.constraintlayout.core.parser.CLObject$a */
    /* loaded from: classes3.dex */
    public class C0406a implements Iterator {

        /* renamed from: e */
        public CLObject f3083e;

        /* renamed from: f */
        public int f3084f = 0;

        public C0406a(CLObject cLObject) {
            this.f3083e = cLObject;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3084f < this.f3083e.size();
        }

        @Override // java.util.Iterator
        public Object next() {
            CLKey cLKey = (CLKey) this.f3083e.f3078g.get(this.f3084f);
            this.f3084f++;
            return cLKey;
        }
    }

    public CLObject(char[] cArr) {
        super(cArr);
    }

    public static CLObject allocate(char[] cArr) {
        return new CLObject(cArr);
    }

    @Override // java.lang.Iterable
    public Iterator<CLKey> iterator() {
        return new C0406a(this);
    }

    public String toFormattedJSON() {
        return toFormattedJSON(0, 0);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + "{ ");
        Iterator<CLElement> it2 = this.f3078g.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            CLElement next = it2.next();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(next.toJSON());
        }
        sb.append(" }");
        return sb.toString();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i, int i2) {
        StringBuilder sb = new StringBuilder(getDebugName());
        sb.append("{\n");
        Iterator<CLElement> it2 = this.f3078g.iterator();
        boolean z = true;
        while (it2.hasNext()) {
            CLElement next = it2.next();
            if (z) {
                z = false;
            } else {
                sb.append(",\n");
            }
            sb.append(next.toFormattedJSON(CLElement.BASE_INDENT + i, i2 - 1));
        }
        sb.append("\n");
        addIndent(sb, i);
        sb.append("}");
        return sb.toString();
    }
}
