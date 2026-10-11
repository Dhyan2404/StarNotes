package org.apache.xmlbeans.impl.soap;

import java.util.Iterator;
import java.util.Vector;

/* loaded from: classes13.dex */
public class MimeHeaders {
    protected Vector<MimeHeader> headers = new Vector<>();

    /* loaded from: classes13.dex */
    public class MatchingIterator implements Iterator<MimeHeader> {
        private final Iterator<MimeHeader> iterator;
        private final boolean match;
        private final String[] names;
        private MimeHeader nextHeader;

        public MatchingIterator(String[] strArr, boolean z) {
            this.match = z;
            this.names = strArr;
            this.iterator = MimeHeaders.this.headers.iterator();
        }

        private MimeHeader nextMatch() {
            while (this.iterator.hasNext()) {
                MimeHeader next = this.iterator.next();
                String[] strArr = this.names;
                if (strArr == null) {
                    if (this.match) {
                        return null;
                    }
                    return next;
                }
                int length = strArr.length;
                int i = 0;
                while (true) {
                    if (i < length) {
                        if (!next.getName().equalsIgnoreCase(strArr[i])) {
                            i++;
                        } else if (this.match) {
                            return next;
                        }
                    } else if (!this.match) {
                        return next;
                    }
                }
            }
            return null;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.nextHeader == null) {
                this.nextHeader = nextMatch();
            }
            return this.nextHeader != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }

        @Override // java.util.Iterator
        public MimeHeader next() {
            MimeHeader mimeHeader = this.nextHeader;
            if (mimeHeader != null) {
                this.nextHeader = null;
                return mimeHeader;
            }
            if (hasNext()) {
                return this.nextHeader;
            }
            return null;
        }
    }

    public void addHeader(String str, String str2) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Illegal MimeHeader name");
        }
        for (int size = this.headers.size() - 1; size >= 0; size--) {
            if (this.headers.elementAt(size).getName().equalsIgnoreCase(str)) {
                this.headers.insertElementAt(new MimeHeader(str, str2), size + 1);
                return;
            }
        }
        this.headers.addElement(new MimeHeader(str, str2));
    }

    public Iterator<MimeHeader> getAllHeaders() {
        return this.headers.iterator();
    }

    public String[] getHeader(String str) {
        Vector vector = new Vector();
        for (int i = 0; i < this.headers.size(); i++) {
            MimeHeader elementAt = this.headers.elementAt(i);
            if (elementAt.getName().equalsIgnoreCase(str) && elementAt.getValue() != null) {
                vector.addElement(elementAt.getValue());
            }
        }
        if (vector.size() == 0) {
            return null;
        }
        String[] strArr = new String[vector.size()];
        vector.copyInto(strArr);
        return strArr;
    }

    public Iterator<MimeHeader> getMatchingHeaders(String[] strArr) {
        return new MatchingIterator(strArr, true);
    }

    public Iterator<MimeHeader> getNonMatchingHeaders(String[] strArr) {
        return new MatchingIterator(strArr, false);
    }

    public void removeAllHeaders() {
        this.headers.removeAllElements();
    }

    public void removeHeader(String str) {
        int i = 0;
        while (i < this.headers.size()) {
            if (this.headers.elementAt(i).getName().equalsIgnoreCase(str)) {
                this.headers.removeElementAt(i);
                i--;
            }
            i++;
        }
    }

    public void setHeader(String str, String str2) {
        if (str == null || str.equals("")) {
            throw new IllegalArgumentException("Illegal MimeHeader name");
        }
        int i = 0;
        boolean z = false;
        while (i < this.headers.size()) {
            MimeHeader elementAt = this.headers.elementAt(i);
            if (elementAt.getName().equalsIgnoreCase(str)) {
                if (z) {
                    this.headers.removeElementAt(i);
                    i--;
                } else {
                    this.headers.setElementAt(new MimeHeader(elementAt.getName(), str2), i);
                    z = true;
                }
            }
            i++;
        }
        if (z) {
            return;
        }
        addHeader(str, str2);
    }
}
