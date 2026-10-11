package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes12.dex */
public final class CharRange implements Iterable<Character>, Serializable {
    private static final long serialVersionUID = 8270183163158333422L;
    private final char end;
    private transient String iToString;
    private final boolean negated;
    private final char start;

    /* renamed from: org.apache.commons.lang3.CharRange$b */
    /* loaded from: classes12.dex */
    public static class C18915b implements Iterator<Character> {

        /* renamed from: e */
        public char f107359e;

        /* renamed from: f */
        public final CharRange f107360f;

        /* renamed from: g */
        public boolean f107361g;

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Character next() {
            if (!this.f107361g) {
                throw new NoSuchElementException();
            }
            char c = this.f107359e;
            m67221b();
            return Character.valueOf(c);
        }

        /* renamed from: b */
        public final void m67221b() {
            if (!this.f107360f.negated) {
                if (this.f107359e < this.f107360f.end) {
                    this.f107359e = (char) (this.f107359e + 1);
                    return;
                } else {
                    this.f107361g = false;
                    return;
                }
            }
            char c = this.f107359e;
            if (c == 65535) {
                this.f107361g = false;
                return;
            }
            if (c + 1 != this.f107360f.start) {
                this.f107359e = (char) (this.f107359e + 1);
            } else if (this.f107360f.end == 65535) {
                this.f107361g = false;
            } else {
                this.f107359e = (char) (this.f107360f.end + 1);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f107361g;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public C18915b(CharRange charRange) {
            this.f107360f = charRange;
            this.f107361g = true;
            if (charRange.negated) {
                if (charRange.start == 0) {
                    if (charRange.end == 65535) {
                        this.f107361g = false;
                        return;
                    } else {
                        this.f107359e = (char) (charRange.end + 1);
                        return;
                    }
                }
                this.f107359e = (char) 0;
                return;
            }
            this.f107359e = charRange.start;
        }
    }

    private CharRange(char c, char c2, boolean z) {
        if (c > c2) {
            c2 = c;
            c = c2;
        }
        this.start = c;
        this.end = c2;
        this.negated = z;
    }

    /* renamed from: is */
    public static CharRange m67219is(char c) {
        return new CharRange(c, c, false);
    }

    public static CharRange isIn(char c, char c2) {
        return new CharRange(c, c2, false);
    }

    public static CharRange isNot(char c) {
        return new CharRange(c, c, true);
    }

    public static CharRange isNotIn(char c, char c2) {
        return new CharRange(c, c2, true);
    }

    public boolean contains(char c) {
        return (c >= this.start && c <= this.end) != this.negated;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CharRange)) {
            return false;
        }
        CharRange charRange = (CharRange) obj;
        return this.start == charRange.start && this.end == charRange.end && this.negated == charRange.negated;
    }

    public char getEnd() {
        return this.end;
    }

    public char getStart() {
        return this.start;
    }

    public int hashCode() {
        return this.start + 'S' + (this.end * 7) + (this.negated ? 1 : 0);
    }

    public boolean isNegated() {
        return this.negated;
    }

    @Override // java.lang.Iterable
    public Iterator<Character> iterator() {
        return new C18915b();
    }

    public String toString() {
        if (this.iToString == null) {
            StringBuilder sb = new StringBuilder(4);
            if (isNegated()) {
                sb.append('^');
            }
            sb.append(this.start);
            if (this.start != this.end) {
                sb.append('-');
                sb.append(this.end);
            }
            this.iToString = sb.toString();
        }
        return this.iToString;
    }

    public boolean contains(CharRange charRange) {
        Validate.isTrue(charRange != null, "The Range must not be null", new Object[0]);
        return this.negated ? charRange.negated ? this.start >= charRange.start && this.end <= charRange.end : charRange.end < this.start || charRange.start > this.end : charRange.negated ? this.start == 0 && this.end == 65535 : this.start <= charRange.start && this.end >= charRange.end;
    }
}
