package org.apache.html.dom;

import com.sunia.HTREnginev2.w0e;
import java.io.Serializable;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.html.HTMLCollection;
import org.w3c.dom.html.HTMLElement;

/* loaded from: classes12.dex */
class HTMLCollectionImpl implements HTMLCollection, Serializable {
    static final short ANCHOR = 1;
    static final short APPLET = 4;
    static final short AREA = -1;
    static final short CELL = -3;
    static final short ELEMENT = 8;
    static final short FORM = 2;
    static final short IMAGE = 3;
    static final short LINK = 5;
    static final short OPTION = 6;
    static final short ROW = 7;
    static final short TBODY = -2;
    private static final long serialVersionUID = 9112122196669185082L;
    private short _lookingFor;
    private Element _topLevel;

    public HTMLCollectionImpl(HTMLElement hTMLElement, short s) {
        if (hTMLElement == null) {
            throw new NullPointerException("HTM011 Argument 'topLevel' is null.");
        }
        this._topLevel = hTMLElement;
        this._lookingFor = s;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x001c, code lost:
    
        if ((r4 instanceof org.w3c.dom.html.HTMLAreaElement) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0028, code lost:
    
        if (r4.getAttribute("href").length() <= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean collectionMatch(org.w3c.dom.Element r4, java.lang.String r5) {
        /*
            r3 = this;
            monitor-enter(r4)
            short r3 = r3._lookingFor     // Catch: java.lang.Throwable -> La0
            r0 = 1
            r1 = 0
            switch(r3) {
                case -3: goto L7c;
                case -2: goto L6b;
                case -1: goto L68;
                case 0: goto L8;
                case 1: goto L57;
                case 2: goto L54;
                case 3: goto L51;
                case 4: goto L2c;
                case 5: goto L16;
                case 6: goto L12;
                case 7: goto Le;
                case 8: goto La;
                default: goto L8;
            }     // Catch: java.lang.Throwable -> La0
        L8:
            goto L7e
        La:
            boolean r1 = r4 instanceof org.apache.html.dom.HTMLFormControl     // Catch: java.lang.Throwable -> La0
            goto L7e
        Le:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLTableRowElement     // Catch: java.lang.Throwable -> La0
            goto L7e
        L12:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLOptionElement     // Catch: java.lang.Throwable -> La0
            goto L7e
        L16:
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLAnchorElement     // Catch: java.lang.Throwable -> La0
            if (r3 != 0) goto L1e
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLAreaElement     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
        L1e:
            java.lang.String r3 = "href"
            java.lang.String r3 = r4.getAttribute(r3)     // Catch: java.lang.Throwable -> La0
            int r3 = r3.length()     // Catch: java.lang.Throwable -> La0
            if (r3 <= 0) goto L7e
        L2a:
            r1 = r0
            goto L7e
        L2c:
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLAppletElement     // Catch: java.lang.Throwable -> La0
            if (r3 != 0) goto L2a
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLObjectElement     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
            java.lang.String r3 = "application/java"
            java.lang.String r2 = "codetype"
            java.lang.String r2 = r4.getAttribute(r2)     // Catch: java.lang.Throwable -> La0
            boolean r3 = r3.equals(r2)     // Catch: java.lang.Throwable -> La0
            if (r3 != 0) goto L2a
            java.lang.String r3 = "classid"
            java.lang.String r3 = r4.getAttribute(r3)     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = "java:"
            boolean r3 = r3.startsWith(r2)     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
            goto L2a
        L51:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLImageElement     // Catch: java.lang.Throwable -> La0
            goto L7e
        L54:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLFormElement     // Catch: java.lang.Throwable -> La0
            goto L7e
        L57:
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLAnchorElement     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
            java.lang.String r3 = "name"
            java.lang.String r3 = r4.getAttribute(r3)     // Catch: java.lang.Throwable -> La0
            int r3 = r3.length()     // Catch: java.lang.Throwable -> La0
            if (r3 <= 0) goto L7e
            goto L2a
        L68:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLAreaElement     // Catch: java.lang.Throwable -> La0
            goto L7e
        L6b:
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLTableSectionElement     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
            java.lang.String r3 = r4.getTagName()     // Catch: java.lang.Throwable -> La0
            java.lang.String r2 = "TBODY"
            boolean r3 = r3.equals(r2)     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L7e
            goto L2a
        L7c:
            boolean r1 = r4 instanceof org.w3c.dom.html.HTMLTableCellElement     // Catch: java.lang.Throwable -> La0
        L7e:
            if (r1 == 0) goto L9e
            if (r5 == 0) goto L9e
            boolean r3 = r4 instanceof org.w3c.dom.html.HTMLAnchorElement     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L94
            java.lang.String r3 = "name"
            java.lang.String r3 = r4.getAttribute(r3)     // Catch: java.lang.Throwable -> La0
            boolean r3 = r5.equals(r3)     // Catch: java.lang.Throwable -> La0
            if (r3 == 0) goto L94
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La0
            return r0
        L94:
            java.lang.String r3 = "id"
            java.lang.String r3 = r4.getAttribute(r3)     // Catch: java.lang.Throwable -> La0
            boolean r1 = r5.equals(r3)     // Catch: java.lang.Throwable -> La0
        L9e:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> La0
            return r1
        La0:
            r3 = move-exception
            monitor-exit(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.html.dom.HTMLCollectionImpl.collectionMatch(org.w3c.dom.Element, java.lang.String):boolean");
    }

    @Override // org.w3c.dom.html.HTMLCollection
    public final int getLength() {
        return getLength(this._topLevel);
    }

    @Override // org.w3c.dom.html.HTMLCollection
    public final Node item(int i) {
        if (i >= 0) {
            return item(this._topLevel, new w0e(i));
        }
        throw new IllegalArgumentException("HTM012 Argument 'index' is negative.");
    }

    @Override // org.w3c.dom.html.HTMLCollection
    public final Node namedItem(String str) {
        if (str != null) {
            return namedItem(this._topLevel, str);
        }
        throw new NullPointerException("HTM013 Argument 'name' is null.");
    }

    public boolean recurse() {
        return this._lookingFor > 0;
    }

    private int getLength(Element element) {
        int i;
        synchronized (element) {
            i = 0;
            for (Node firstChild = element.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild instanceof Element) {
                    if (collectionMatch((Element) firstChild, null)) {
                        i++;
                    } else if (recurse()) {
                        i += getLength((Element) firstChild);
                    }
                }
            }
        }
        return i;
    }

    private Node item(Element element, w0e w0eVar) {
        Node item;
        synchronized (element) {
            for (Node firstChild = element.getFirstChild(); firstChild != null; firstChild = firstChild.getNextSibling()) {
                if (firstChild instanceof Element) {
                    if (collectionMatch((Element) firstChild, null)) {
                        if (w0eVar.m57922c()) {
                            return firstChild;
                        }
                        w0eVar.m57920a();
                    } else if (recurse() && (item = item((Element) firstChild, w0eVar)) != null) {
                        return item;
                    }
                }
            }
            return null;
        }
    }

    private Node namedItem(Element element, String str) {
        Node namedItem;
        synchronized (element) {
            Node firstChild = element.getFirstChild();
            while (firstChild != null) {
                if (firstChild instanceof Element) {
                    if (collectionMatch((Element) firstChild, str)) {
                        return firstChild;
                    }
                    if (recurse() && (namedItem = namedItem((Element) firstChild, str)) != null) {
                        return namedItem;
                    }
                }
                firstChild = firstChild.getNextSibling();
            }
            return firstChild;
        }
    }
}
