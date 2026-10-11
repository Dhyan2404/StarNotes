package org.apache.xmlbeans.impl.store;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.io.PrintStream;
import java.util.Map;
import javax.xml.namespace.QName;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.xmlbeans.CDataBookmark;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlLineNumber;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.soap.Detail;
import org.apache.xmlbeans.impl.soap.DetailEntry;
import org.apache.xmlbeans.impl.soap.SOAPBody;
import org.apache.xmlbeans.impl.soap.SOAPBodyElement;
import org.apache.xmlbeans.impl.soap.SOAPElement;
import org.apache.xmlbeans.impl.soap.SOAPEnvelope;
import org.apache.xmlbeans.impl.soap.SOAPFault;
import org.apache.xmlbeans.impl.soap.SOAPFaultElement;
import org.apache.xmlbeans.impl.soap.SOAPHeader;
import org.apache.xmlbeans.impl.soap.SOAPHeaderElement;
import org.apache.xmlbeans.impl.store.DomImpl;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.values.TypeStoreUser;
import org.slf4j.Logger;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;

/* loaded from: classes13.dex */
public final class Cur {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ATTR = 3;
    static final int COMMENT = 4;
    static final int DISPOSED = 3;
    static final int ELEM = 2;
    static final int EMBEDDED = 2;
    static final int END_POS = -1;
    static final int NO_POS = -2;
    static final int POOLED = 0;
    static final int PROCINST = 5;
    static final int REGISTERED = 1;
    static final int ROOT = 1;
    static final int TEXT = 0;
    int _cchSrc;
    String _id;
    Locale _locale;
    Cur _next;
    Cur _nextTemp;
    int _offSrc;
    private int _posTemp;
    Cur _prev;
    Cur _prevTemp;
    Locale.Ref _ref;
    Xobj _xobj;
    int _pos = -2;
    int _tempFrame = -1;
    int _state = 0;
    int _stackTop = -1;
    int _selectionFirst = -1;
    int _selectionN = -1;
    int _selectionLoc = -1;
    int _selectionCount = 0;

    /* loaded from: classes13.dex */
    public static final class Locations {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int NULL = -1;
        private static final int _initialSize = 32;
        private int _free;
        private final Locale _locale;
        private int _naked;
        private Xobj[] _xobjs = new Xobj[32];
        private int[] _poses = new int[32];
        private Cur[] _curs = new Cur[32];
        private int[] _next = new int[32];
        private int[] _prev = new int[32];
        private int[] _nextN = new int[32];
        private int[] _prevN = new int[32];

        public Locations(Locale locale) {
            this._locale = locale;
            for (int i = 31; i >= 0; i--) {
                this._poses[i] = -2;
                this._next[i] = i + 1;
                this._prev[i] = -1;
                this._nextN[i] = -1;
                this._prevN[i] = -1;
            }
            this._next[31] = -1;
            this._free = 0;
            this._naked = -1;
        }

        private void makeRoom() {
            Xobj[] xobjArr = this._xobjs;
            int length = xobjArr.length;
            int[] iArr = this._poses;
            Cur[] curArr = this._curs;
            int[] iArr2 = this._next;
            int[] iArr3 = this._prev;
            int[] iArr4 = this._nextN;
            int[] iArr5 = this._prevN;
            int i = length * 2;
            Xobj[] xobjArr2 = new Xobj[i];
            this._xobjs = xobjArr2;
            this._poses = new int[i];
            this._curs = new Cur[i];
            this._next = new int[i];
            this._prev = new int[i];
            this._nextN = new int[i];
            this._prevN = new int[i];
            System.arraycopy(xobjArr, 0, xobjArr2, 0, length);
            System.arraycopy(iArr, 0, this._poses, 0, length);
            System.arraycopy(curArr, 0, this._curs, 0, length);
            System.arraycopy(iArr2, 0, this._next, 0, length);
            System.arraycopy(iArr3, 0, this._prev, 0, length);
            System.arraycopy(iArr4, 0, this._nextN, 0, length);
            System.arraycopy(iArr5, 0, this._prevN, 0, length);
            int i2 = i - 1;
            for (int i3 = i2; i3 >= length; i3--) {
                this._next[i3] = i3 + 1;
                this._prev[i3] = -1;
                this._nextN[i3] = -1;
                this._prevN[i3] = -1;
                this._poses[i3] = -2;
            }
            this._next[i2] = -1;
            this._free = length;
        }

        public int allocate(Cur cur) {
            if (this._free == -1) {
                makeRoom();
            }
            int i = this._free;
            int[] iArr = this._next;
            this._free = iArr[i];
            iArr[i] = -1;
            this._xobjs[i] = cur._xobj;
            this._poses[i] = cur._pos;
            this._naked = insert(this._naked, -1, i, this._nextN, this._prevN);
            return i;
        }

        public int insert(int i, int i2, int i3) {
            return insert(i, i2, i3, this._next, this._prev);
        }

        public boolean isAtEndOf(int i, Cur cur) {
            Cur cur2 = this._curs[i];
            return cur2 == null ? cur._xobj == this._xobjs[i] && cur._pos == -1 : cur.isAtEndOf(cur2);
        }

        public boolean isSamePos(int i, Cur cur) {
            Cur cur2 = this._curs[i];
            return cur2 == null ? cur._xobj == this._xobjs[i] && cur._pos == this._poses[i] : cur.isSamePos(cur2);
        }

        public void moveTo(int i, Cur cur) {
            Cur cur2 = this._curs[i];
            if (cur2 == null) {
                cur.moveTo(this._xobjs[i], this._poses[i]);
            } else {
                cur.moveToCur(cur2);
            }
        }

        public int next(int i) {
            return this._next[i];
        }

        public void notifyChange() {
            while (true) {
                int i = this._naked;
                if (i == -1) {
                    return;
                }
                this._naked = remove(i, i, this._nextN, this._prevN);
                this._curs[i] = this._locale.getCur();
                this._curs[i].moveTo(this._xobjs[i], this._poses[i]);
                this._xobjs[i] = null;
                this._poses[i] = -2;
            }
        }

        public int prev(int i) {
            return this._prev[i];
        }

        public int remove(int i, int i2) {
            Cur cur = this._curs[i2];
            if (cur != null) {
                cur.release();
                this._curs[i2] = null;
            } else {
                this._xobjs[i2] = null;
                this._poses[i2] = -2;
                this._naked = remove(this._naked, i2, this._nextN, this._prevN);
            }
            int remove = remove(i, i2, this._next, this._prev);
            this._next[i2] = this._free;
            this._free = i2;
            return remove;
        }

        private static int insert(int i, int i2, int i3, int[] iArr, int[] iArr2) {
            if (i == -1) {
                iArr2[i3] = i3;
            } else if (i2 != -1) {
                iArr2[i3] = iArr2[i2];
                iArr[i3] = i2;
                iArr2[i2] = i3;
                if (i != i2) {
                    return i;
                }
            } else {
                iArr2[i3] = iArr2[i];
                iArr[iArr2[i]] = i3;
                iArr2[i] = i3;
                return i;
            }
            return i3;
        }

        private static int remove(int i, int i2, int[] iArr, int[] iArr2) {
            int i3 = iArr2[i2];
            if (i3 == i2) {
                i = -1;
            } else {
                if (i == i2) {
                    i = iArr[i2];
                } else {
                    iArr[i3] = iArr[i2];
                }
                int i4 = iArr[i2];
                if (i4 == -1) {
                    iArr2[i] = iArr2[i2];
                } else {
                    iArr2[i4] = iArr2[i2];
                    iArr[i2] = -1;
                }
            }
            iArr2[i2] = -1;
            return i;
        }
    }

    public Cur(Locale locale) {
        this._locale = locale;
    }

    public static Xobj createDomDocumentRootXobj(Locale locale) {
        return createDomDocumentRootXobj(locale, false);
    }

    public static Xobj createElementXobj(Locale locale, QName qName, QName qName2) {
        Saaj saaj = locale._saaj;
        if (saaj == null) {
            return new ElementXobj(locale, qName);
        }
        Class identifyElement = saaj.identifyElement(qName, qName2);
        if (identifyElement == SOAPElement.class) {
            return new SoapElementXobj(locale, qName);
        }
        if (identifyElement == SOAPBody.class) {
            return new SoapBodyXobj(locale, qName);
        }
        if (identifyElement == SOAPBodyElement.class) {
            return new SoapBodyElementXobj(locale, qName);
        }
        if (identifyElement == SOAPEnvelope.class) {
            return new SoapEnvelopeXobj(locale, qName);
        }
        if (identifyElement == SOAPHeader.class) {
            return new SoapHeaderXobj(locale, qName);
        }
        if (identifyElement == SOAPHeaderElement.class) {
            return new SoapHeaderElementXobj(locale, qName);
        }
        if (identifyElement == SOAPFaultElement.class) {
            return new SoapFaultElementXobj(locale, qName);
        }
        if (identifyElement == Detail.class) {
            return new DetailXobj(locale, qName);
        }
        if (identifyElement == DetailEntry.class) {
            return new DetailEntryXobj(locale, qName);
        }
        if (identifyElement == SOAPFault.class) {
            return new SoapFaultXobj(locale, qName);
        }
        throw new IllegalStateException("Unknown SAAJ element class: " + identifyElement);
    }

    private void createHelper(Xobj xobj) {
        if (isPositioned()) {
            Cur tempCur = tempCur(xobj, 0);
            tempCur.moveNode(this);
            tempCur.release();
        }
        moveTo(xobj);
    }

    private static void dumpBookmarks(PrintStream printStream, Xobj xobj, Object obj) {
        for (Bookmark bookmark = xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
            printStream.print(" ");
            if (obj == bookmark) {
                printStream.print("*:");
            }
            Object obj2 = bookmark._value;
            if (obj2 instanceof XmlLineNumber) {
                printStream.print("<line:" + ((XmlLineNumber) obj2).getLine() + ">[" + bookmark._pos + IteratorUtils.f104924b);
            } else {
                printStream.print("<mark>[" + bookmark._pos + IteratorUtils.f104924b);
            }
        }
    }

    private static void dumpCharNodes(PrintStream printStream, CharNode charNode, Object obj) {
        while (charNode != null) {
            printStream.print(" ");
            if (charNode == obj) {
                printStream.print("*");
            }
            StringBuilder sb = new StringBuilder();
            sb.append(charNode instanceof TextNode ? "TEXT" : "CDATA");
            sb.append(IteratorUtils.f104923a);
            sb.append(charNode._cch);
            sb.append(IteratorUtils.f104924b);
            printStream.print(sb.toString());
            charNode = charNode._next;
        }
    }

    private static void dumpChars(PrintStream printStream, Object obj, int i, int i2) {
        printStream.print("\"");
        String string = CharUtil.getString(obj, i, i2);
        int i3 = 0;
        while (true) {
            if (i3 >= string.length()) {
                break;
            }
            if (i3 == 36) {
                printStream.print(RemoveAudioAction.f58149k);
                break;
            }
            int codePointAt = string.codePointAt(i3);
            char[] chars = Character.toChars(codePointAt);
            if (chars.length == 1) {
                char c = chars[0];
                if (c >= ' ' && c < 127 && c != '\"') {
                    printStream.print(c);
                } else if (c == '\n') {
                    printStream.print("\\n");
                } else if (c == '\r') {
                    printStream.print("\\r");
                } else if (c == '\t') {
                    printStream.print("\\t");
                } else if (c == '\"') {
                    printStream.print("\\\"");
                } else {
                    printStream.print("<#" + ((int) c) + ">");
                }
            } else {
                printStream.print("<#" + codePointAt + ">");
            }
            i3 += Character.charCount(codePointAt);
        }
        printStream.print("\"");
    }

    private static void dumpCur(PrintStream printStream, String str, Cur cur, Object obj) {
        printStream.print(" ");
        if (obj == cur) {
            printStream.print("*:");
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = cur._id;
        if (str2 == null) {
            str2 = "<cur>";
        }
        sb.append(str2);
        sb.append(IteratorUtils.f104923a);
        sb.append(cur._pos);
        sb.append(IteratorUtils.f104924b);
        printStream.print(sb.toString());
    }

    private static void dumpCurs(PrintStream printStream, Xobj xobj, Object obj) {
        for (Cur cur = xobj._embedded; cur != null; cur = cur._next) {
            dumpCur(printStream, "E:", cur, obj);
        }
        for (Cur cur2 = xobj._locale._registered; cur2 != null; cur2 = cur2._next) {
            if (cur2._xobj == xobj) {
                dumpCur(printStream, "R:", cur2, obj);
            }
        }
    }

    private static void dumpXobj(PrintStream printStream, Xobj xobj, int i, Object obj) {
        int lastIndexOf;
        if (xobj == null) {
            return;
        }
        if (xobj == obj) {
            printStream.print("* ");
        } else {
            printStream.print(GlideException.C1935a.f14609h);
        }
        for (int i2 = 0; i2 < i; i2++) {
            printStream.print(GlideException.C1935a.f14609h);
        }
        printStream.print(kindName(xobj.kind()));
        if (xobj._name != null) {
            printStream.print(" ");
            if (xobj._name.getPrefix().length() > 0) {
                printStream.print(xobj._name.getPrefix() + ":");
            }
            printStream.print(xobj._name.getLocalPart());
            if (xobj._name.getNamespaceURI().length() > 0) {
                printStream.print("@" + xobj._name.getNamespaceURI());
            }
        }
        if (xobj._srcValue != null || xobj._charNodesValue != null) {
            printStream.print(" Value( ");
            dumpChars(printStream, xobj._srcValue, xobj._offValue, xobj._cchValue);
            dumpCharNodes(printStream, xobj._charNodesValue, obj);
            printStream.print(" )");
        }
        if (xobj._user != null) {
            printStream.print(" (USER)");
        }
        if (xobj.isVacant()) {
            printStream.print(" (VACANT)");
        }
        if (xobj._srcAfter != null || xobj._charNodesAfter != null) {
            printStream.print(" After( ");
            dumpChars(printStream, xobj._srcAfter, xobj._offAfter, xobj._cchAfter);
            dumpCharNodes(printStream, xobj._charNodesAfter, obj);
            printStream.print(" )");
        }
        dumpCurs(printStream, xobj, obj);
        dumpBookmarks(printStream, xobj, obj);
        String name = xobj.getClass().getName();
        int lastIndexOf2 = name.lastIndexOf(46);
        if (lastIndexOf2 > 0 && (lastIndexOf = (name = name.substring(lastIndexOf2 + 1)).lastIndexOf(36)) > 0) {
            name = name.substring(lastIndexOf + 1);
        }
        printStream.print(" (");
        printStream.print(name);
        printStream.print(MotionUtils.f31762d);
        printStream.println();
        for (Xobj xobj2 = xobj._firstChild; xobj2 != null; xobj2 = xobj2._nextSibling) {
            dumpXobj(printStream, xobj2, i + 1, obj);
        }
    }

    private Xobj getDenormal() {
        return getDenormal(this._xobj, this._pos);
    }

    private Xobj getNormal(Xobj xobj, int i) {
        Xobj normal = xobj.getNormal(i);
        this._posTemp = xobj._locale._posTemp;
        return normal;
    }

    public static boolean kindIsContainer(int i) {
        return i == 2 || i == 1;
    }

    public static boolean kindIsFinish(int i) {
        return i == -2 || i == -1;
    }

    public static String kindName(int i) {
        if (i == 0) {
            return "TEXT";
        }
        if (i == 1) {
            return Logger.ROOT_LOGGER_NAME;
        }
        if (i == 2) {
            return "ELEM";
        }
        if (i == 3) {
            return "ATTR";
        }
        if (i == 4) {
            return "COMMENT";
        }
        if (i == 5) {
            return "PROCINST";
        }
        return "<< Unknown Kind (" + i + ") >>";
    }

    private int selectionIndex(int i) {
        if (this._selectionN == -1) {
            this._selectionN = 0;
            this._selectionLoc = this._selectionFirst;
        }
        while (this._selectionN < i) {
            this._selectionLoc = this._locale._locations.next(this._selectionLoc);
            this._selectionN++;
        }
        while (this._selectionN > i) {
            this._selectionLoc = this._locale._locations.prev(this._selectionLoc);
            this._selectionN--;
        }
        return this._selectionLoc;
    }

    private static void transferChars(Xobj xobj, int i, Xobj xobj2, int i2, int i3) {
        Object charsHelper = xobj.getCharsHelper(i, i3);
        Locale locale = xobj._locale;
        xobj2.insertCharsHelper(i2, charsHelper, locale._offSrc, locale._cchSrc, false);
        xobj.removeCharsHelper(i, i3, xobj2, i2, true, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static CharNode updateCharNodes(Locale locale, Xobj xobj, CharNode charNode, int i) {
        CharNode charNode2 = charNode;
        int i2 = 0;
        while (charNode2 != null && i > 0) {
            if (charNode2._cch > i) {
                charNode2._cch = i;
            }
            charNode2._off = i2;
            int i3 = charNode2._cch;
            i2 += i3;
            i -= i3;
            charNode2 = charNode2._next;
        }
        if (i > 0) {
            TextNode createTextNode = locale.createTextNode();
            createTextNode.setDom((DomImpl.Dom) xobj);
            createTextNode._cch = i;
            createTextNode._off = i2;
            return CharNode.appendNode(charNode, createTextNode);
        }
        while (charNode2 != null) {
            if (charNode2._cch != 0) {
                charNode2._cch = 0;
            }
            charNode2._off = i2;
            charNode2 = charNode2._next;
        }
        return charNode;
    }

    public void addToSelection(Cur cur) {
        this._selectionFirst = this._locale._locations.insert(this._selectionFirst, -1, this._locale._locations.allocate(cur));
        this._selectionCount++;
    }

    public int cchLeft() {
        return this._xobj.cchLeft(this._pos);
    }

    public int cchRight() {
        return this._xobj.cchRight(this._pos);
    }

    public void clearSelection() {
        while (this._selectionCount > 0) {
            removeFirstSelection();
        }
    }

    public int comparePosition(Cur cur) {
        if (this._locale != cur._locale) {
            return 2;
        }
        Xobj xobj = this._xobj;
        int i = this._pos;
        if (i == -1) {
            i = xobj.posAfter() - 1;
        }
        Xobj xobj2 = cur._xobj;
        int i2 = cur._pos;
        if (i2 == -1) {
            i2 = xobj2.posAfter() - 1;
        }
        if (xobj == xobj2) {
            return Integer.compare(i, i2);
        }
        int i3 = 0;
        int i4 = 0;
        for (Xobj xobj3 = xobj._parent; xobj3 != null; xobj3 = xobj3._parent) {
            i4++;
            if (xobj3 == xobj2) {
                return i2 < xobj2.posAfter() - 1 ? 1 : -1;
            }
        }
        for (Xobj xobj4 = xobj2._parent; xobj4 != null; xobj4 = xobj4._parent) {
            i3++;
            if (xobj4 == xobj) {
                return i < xobj.posAfter() - 1 ? -1 : 1;
            }
        }
        while (i4 > i3) {
            i4--;
            xobj = xobj._parent;
        }
        while (i3 > i4) {
            i3--;
            xobj2 = xobj2._parent;
        }
        if (i3 == 0) {
            return 2;
        }
        while (true) {
            Xobj xobj5 = xobj._parent;
            Xobj xobj6 = xobj2._parent;
            if (xobj5 == xobj6) {
                if (xobj._prevSibling == null || xobj2._nextSibling == null) {
                    return -1;
                }
                if (xobj._nextSibling == null || xobj2._prevSibling == null) {
                    return 1;
                }
                while (xobj != null) {
                    xobj = xobj._prevSibling;
                    if (xobj == xobj2) {
                        return 1;
                    }
                }
                return -1;
            }
            if (xobj5 == null) {
                return 2;
            }
            xobj = xobj5;
            xobj2 = xobj6;
        }
    }

    public boolean contains(Cur cur) {
        return this._xobj.contains(cur);
    }

    public void copyNode(Cur cur) {
        Xobj copyNode = this._xobj.copyNode(cur._locale);
        if (cur.isPositioned()) {
            moveNode(copyNode, cur);
        } else {
            cur.moveTo(copyNode);
        }
    }

    public void createAttr(QName qName) {
        createHelper(new AttrXobj(this._locale, qName));
    }

    public void createComment() {
        createHelper(new CommentXobj(this._locale));
    }

    public void createDomDocFragRoot() {
        moveTo(new DocumentFragXobj(this._locale));
    }

    public void createDomDocumentRoot() {
        moveTo(createDomDocumentRootXobj(this._locale));
    }

    public void createElement(QName qName) {
        createElement(qName, null);
    }

    public void createProcinst(String str) {
        createHelper(new ProcInstXobj(this._locale, str));
    }

    public void createRoot() {
        createDomDocFragRoot();
    }

    public void dump() {
        dump(System.out, this._xobj, this);
    }

    public int firstBookmarkInChars(Object obj, int i) {
        if (!isText()) {
            return -1;
        }
        int i2 = -1;
        for (Bookmark bookmark = this._xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
            if (bookmark._key == obj && inChars(bookmark, i, false) && (i2 == -1 || bookmark._pos - this._pos < i2)) {
                i2 = bookmark._pos - this._pos;
            }
        }
        return i2;
    }

    public int firstBookmarkInCharsLeft(Object obj, int i) {
        if (cchLeft() <= 0) {
            return -1;
        }
        Xobj denormal = getDenormal();
        int i2 = this._posTemp - i;
        int i3 = -1;
        for (Bookmark bookmark = denormal._bookmarks; bookmark != null; bookmark = bookmark._next) {
            if (bookmark._key == obj && denormal.inChars(i2, bookmark._xobj, bookmark._pos, i, false) && (i3 == -1 || bookmark._pos - i2 < i3)) {
                i3 = bookmark._pos - i2;
            }
        }
        return i3;
    }

    public String getAttrValue(QName qName) {
        push();
        String valueAsString = toAttr(qName) ? getValueAsString() : null;
        pop();
        return valueAsString;
    }

    public Object getBookmark(Object obj) {
        for (Bookmark bookmark = this._xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
            if (bookmark._pos == this._pos && bookmark._key == obj) {
                return bookmark._value;
            }
        }
        return null;
    }

    public CharNode getCharNodes() {
        Xobj denormal = getDenormal();
        if (this._posTemp >= denormal.posAfter()) {
            CharNode updateCharNodes = updateCharNodes(this._locale, denormal, denormal._charNodesAfter, denormal._cchAfter);
            denormal._charNodesAfter = updateCharNodes;
            return updateCharNodes;
        }
        denormal.ensureOccupancy();
        CharNode updateCharNodes2 = updateCharNodes(this._locale, denormal, denormal._charNodesValue, denormal._cchValue);
        denormal._charNodesValue = updateCharNodes2;
        return updateCharNodes2;
    }

    public Object getChars(int i) {
        return this._xobj.getChars(this._pos, i, this);
    }

    public String getCharsAsString() {
        return getCharsAsString(1);
    }

    public DomImpl.Dom getDom() {
        if (!isText()) {
            return this._xobj.getDom();
        }
        int cchLeft = cchLeft();
        CharNode charNodes = getCharNodes();
        while (true) {
            cchLeft -= charNodes._cch;
            if (cchLeft < 0) {
                return charNodes;
            }
            charNodes = charNodes._next;
        }
    }

    public Object getFirstChars() {
        Object firstChars = this._xobj.getFirstChars();
        Locale locale = this._locale;
        this._offSrc = locale._offSrc;
        this._cchSrc = locale._cchSrc;
        return firstChars;
    }

    public String getLocal() {
        return getName().getLocalPart();
    }

    public Locale getLocale() {
        return this._locale;
    }

    public QName getName() {
        return this._xobj._name;
    }

    public XmlObject getObject() {
        if (isUserNode()) {
            return (XmlObject) getUser();
        }
        return null;
    }

    public Xobj getParent() {
        return getParent(false);
    }

    public Xobj getParentNoRoot() {
        int i = this._pos;
        if (i == -1 || (i >= 1 && i < this._xobj.posAfter())) {
            return this._xobj;
        }
        Xobj xobj = this._xobj._parent;
        if (xobj != null) {
            return xobj;
        }
        return null;
    }

    public Xobj getParentRaw() {
        return getParent(true);
    }

    public String getUri() {
        return getName().getNamespaceURI();
    }

    public TypeStoreUser getUser() {
        return this._xobj.getUser();
    }

    public String getValueAsString(int i) {
        return this._xobj.getValueAsString(i);
    }

    public String getXmlnsPrefix() {
        return this._xobj.getXmlnsPrefix();
    }

    public String getXmlnsUri() {
        return this._xobj.getXmlnsUri();
    }

    public final QName getXsiTypeName() {
        return this._xobj.getXsiTypeName();
    }

    public boolean hasAttrs() {
        return this._xobj.hasAttrs();
    }

    public boolean hasChildren() {
        return this._xobj.hasChildren();
    }

    public boolean hasParent() {
        int i = this._pos;
        if (i != -1) {
            return (i >= 1 && i < this._xobj.posAfter()) || this._xobj._parent != null;
        }
        return true;
    }

    public boolean hasText() {
        return this._xobj.hasTextEnsureOccupancy();
    }

    public boolean inChars(Cur cur, int i, boolean z) {
        return this._xobj.inChars(this._pos, cur._xobj, cur._pos, i, z);
    }

    public void insertChars(Object obj, int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        this._locale.notifyChange();
        if (this._pos == -1) {
            this._xobj.ensureOccupancy();
        }
        Xobj denormal = getDenormal();
        int i3 = this._posTemp;
        denormal.insertCharsHelper(i3, obj, i, i2, true);
        moveTo(denormal, i3);
        this._locale._versionAll++;
    }

    public void insertString(String str) {
        if (str != null) {
            insertChars(str, 0, str.length());
        }
    }

    public boolean isAtEndOf(Cur cur) {
        return this._xobj == cur._xobj && this._pos == -1;
    }

    public boolean isAtEndOfLastPush() {
        return this._locale._locations.isAtEndOf(this._stackTop, this);
    }

    public boolean isAtLastPush() {
        return this._locale._locations.isSamePos(this._stackTop, this);
    }

    public boolean isAttr() {
        return this._pos == 0 && this._xobj.kind() == 3;
    }

    public boolean isComment() {
        return this._pos == 0 && this._xobj.kind() == 4;
    }

    public boolean isContainer() {
        return this._pos == 0 && kindIsContainer(this._xobj.kind());
    }

    public boolean isContainerOrFinish() {
        int i = this._pos;
        if (i != 0 && i != -1) {
            return false;
        }
        int kind = this._xobj.kind();
        return kind == 2 || kind == -2 || kind == 1 || kind == -1;
    }

    public boolean isDomDocRoot() {
        return isRoot() && (this._xobj.getDom() instanceof Document);
    }

    public boolean isDomFragRoot() {
        return isRoot() && (this._xobj.getDom() instanceof DocumentFragment);
    }

    public boolean isElem() {
        return this._pos == 0 && this._xobj.kind() == 2;
    }

    public boolean isEnd() {
        return this._pos == -1 && this._xobj.kind() == 2;
    }

    public boolean isEndRoot() {
        return this._pos == -1 && this._xobj.kind() == 1;
    }

    public boolean isFinish() {
        return this._pos == -1 && kindIsContainer(this._xobj.kind());
    }

    public boolean isInSameTree(Cur cur) {
        return this._xobj.isInSameTree(cur._xobj);
    }

    public boolean isJustAfterEnd(Cur cur) {
        return cur._xobj.isJustAfterEnd(this._xobj, this._pos);
    }

    public boolean isNode() {
        return this._pos == 0;
    }

    public boolean isNormal() {
        int i = this._state;
        if (i == 0 || i == 3) {
            return false;
        }
        Xobj xobj = this._xobj;
        if (xobj == null) {
            return this._pos == -2;
        }
        if (xobj.isNormal(this._pos)) {
            return this._state == 2 ? isOnList(this._xobj._embedded) : isOnList(this._locale._registered);
        }
        return false;
    }

    public boolean isNormalAttr() {
        return isNode() && this._xobj.isNormalAttr();
    }

    public boolean isOnList(Cur cur) {
        while (cur != null) {
            if (cur == this) {
                return true;
            }
            cur = cur._next;
        }
        return false;
    }

    public boolean isPositioned() {
        return this._xobj != null;
    }

    public boolean isProcinst() {
        return this._pos == 0 && this._xobj.kind() == 5;
    }

    public boolean isRoot() {
        return this._pos == 0 && this._xobj.kind() == 1;
    }

    public boolean isSamePos(Cur cur) {
        return this._xobj == cur._xobj && this._pos == cur._pos;
    }

    public boolean isText() {
        return this._pos > 0;
    }

    public boolean isTextCData() {
        return this._xobj.hasBookmark(CDataBookmark.class, this._pos);
    }

    public boolean isUserNode() {
        int kind = kind();
        if (kind == 2 || kind == 1) {
            return true;
        }
        return kind == 3 && !isXmlns();
    }

    public boolean isXmlns() {
        return isNode() && this._xobj.isXmlns();
    }

    public int kind() {
        int kind = this._xobj.kind();
        int i = this._pos;
        if (i == 0) {
            return kind;
        }
        if (i == -1) {
            return -kind;
        }
        return 0;
    }

    public Cur listInsert(Cur cur) {
        if (cur == null) {
            this._prev = this;
            return this;
        }
        this._prev = cur._prev;
        cur._prev._next = this;
        cur._prev = this;
        return cur;
    }

    public Cur listRemove(Cur cur) {
        Cur cur2 = this._prev;
        if (cur2 == this) {
            cur = null;
        } else {
            if (cur == this) {
                cur = this._next;
            } else {
                cur2._next = this._next;
            }
            Cur cur3 = this._next;
            if (cur3 != null) {
                cur3._prev = cur2;
                this._next = null;
            } else if (cur != null) {
                cur._prev = cur2;
            }
        }
        this._prev = null;
        return cur;
    }

    public Object moveChars(Cur cur, int i) {
        if (i < 0) {
            i = cchRight();
        }
        if (i == 0) {
            this._offSrc = 0;
            this._cchSrc = 0;
            return null;
        }
        Object chars = getChars(i);
        int i2 = this._offSrc;
        if (cur == null) {
            for (Bookmark bookmark = this._xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
                if (inChars(bookmark, i, false)) {
                    Cur tempCur = this._locale.tempCur();
                    tempCur.createRoot();
                    tempCur.next();
                    Object moveChars = moveChars(tempCur, i);
                    tempCur.release();
                    return moveChars;
                }
            }
        } else {
            if (inChars(cur, i, true)) {
                cur.moveToCur(this);
                nextChars(i);
                this._offSrc = i2;
                this._cchSrc = i;
                return chars;
            }
            cur.insertChars(chars, i2, i);
        }
        this._locale.notifyChange();
        if (cur == null) {
            this._xobj.removeCharsHelper(this._pos, i, null, -2, false, true);
        } else {
            this._xobj.removeCharsHelper(this._pos, i, cur._xobj, cur._pos, false, true);
        }
        this._locale._versionAll++;
        this._offSrc = i2;
        this._cchSrc = i;
        return chars;
    }

    public void moveNode(Cur cur) {
        Xobj xobj = this._xobj;
        skip();
        moveNode(xobj, cur);
    }

    public void moveNodeContents(Cur cur, boolean z) {
        moveNodeContents(this._xobj, cur, z);
    }

    public void moveTo(Xobj xobj) {
        moveTo(xobj, 0);
    }

    public void moveToCharNode(CharNode charNode) {
        moveToDom(charNode.getDom());
        this._xobj.ensureOccupancy();
        Xobj xobj = this._xobj;
        CharNode updateCharNodes = updateCharNodes(this._locale, xobj, xobj._charNodesValue, xobj._cchValue);
        xobj._charNodesValue = updateCharNodes;
        while (updateCharNodes != null) {
            if (charNode == updateCharNodes) {
                moveTo(getNormal(this._xobj, updateCharNodes._off + 1), this._posTemp);
                return;
            }
            updateCharNodes = updateCharNodes._next;
        }
        Xobj xobj2 = this._xobj;
        CharNode updateCharNodes2 = updateCharNodes(this._locale, xobj2, xobj2._charNodesAfter, xobj2._cchAfter);
        xobj2._charNodesAfter = updateCharNodes2;
        while (updateCharNodes2 != null) {
            if (charNode == updateCharNodes2) {
                Xobj xobj3 = this._xobj;
                moveTo(getNormal(xobj3, updateCharNodes2._off + xobj3._cchValue + 2), this._posTemp);
                return;
            }
            updateCharNodes2 = updateCharNodes2._next;
        }
    }

    public void moveToCur(Cur cur) {
        if (cur == null) {
            moveTo(null, -2);
        } else {
            moveTo(cur._xobj, cur._pos);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void moveToDom(DomImpl.Dom dom) {
        moveTo(dom instanceof Xobj ? (Xobj) dom : ((SoapPartDom) dom)._docXobj);
    }

    public void moveToNoCheck(Xobj xobj, int i) {
        Xobj xobj2;
        if (this._state == 2 && xobj != (xobj2 = this._xobj)) {
            xobj2._embedded = listRemove(xobj2._embedded);
            Locale locale = this._locale;
            locale._registered = listInsert(locale._registered);
            this._state = 1;
        }
        this._xobj = xobj;
        this._pos = i;
    }

    public void moveToSelection(int i) {
        this._locale._locations.moveTo(selectionIndex(i), this);
    }

    public final String namespaceForPrefix(String str, boolean z) {
        return this._xobj.namespaceForPrefix(str, z);
    }

    public boolean next(boolean z) {
        return z ? nextWithAttrs() : next();
    }

    public int nextChars(int i) {
        int cchRight = cchRight();
        if (cchRight == 0) {
            return 0;
        }
        if (i < 0 || i >= cchRight) {
            next();
            return cchRight;
        }
        moveTo(getNormal(this._xobj, this._pos + i), this._posTemp);
        return i;
    }

    public boolean nextWithAttrs() {
        int kind = kind();
        if (kindIsContainer(kind)) {
            if (toFirstAttr()) {
                return true;
            }
        } else if (kind == -3) {
            if (next()) {
                return true;
            }
            toParent();
            if (!toParentRaw()) {
                return false;
            }
        }
        return next();
    }

    public TypeStoreUser peekUser() {
        return this._xobj._user;
    }

    public boolean pop() {
        int i = this._stackTop;
        if (i == -1) {
            return false;
        }
        this._locale._locations.moveTo(i, this);
        Locations locations = this._locale._locations;
        int i2 = this._stackTop;
        this._stackTop = locations.remove(i2, i2);
        return true;
    }

    public void popButStay() {
        int i = this._stackTop;
        if (i != -1) {
            this._stackTop = this._locale._locations.remove(i, i);
        }
    }

    public final String prefixForNamespace(String str, String str2, boolean z) {
        return (isContainer() ? this._xobj : getParent()).prefixForNamespace(str, str2, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        if (r0._cchValue > 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x005b, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0059, code lost:
    
        if (r2 > 1) goto L34;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean prev() {
        /*
            r5 = this;
            org.apache.xmlbeans.impl.store.Xobj r0 = r5._xobj
            boolean r0 = r0.isRoot()
            r1 = 0
            if (r0 == 0) goto Le
            int r0 = r5._pos
            if (r0 != 0) goto Le
            return r1
        Le:
            org.apache.xmlbeans.impl.store.Xobj r0 = r5._xobj
            boolean r0 = r0.isAttr()
            if (r0 == 0) goto L21
            int r0 = r5._pos
            if (r0 != 0) goto L21
            org.apache.xmlbeans.impl.store.Xobj r0 = r5._xobj
            org.apache.xmlbeans.impl.store.Xobj r0 = r0._prevSibling
            if (r0 != 0) goto L21
            return r1
        L21:
            org.apache.xmlbeans.impl.store.Xobj r0 = r5.getDenormal()
            int r2 = r5._posTemp
            int r3 = r0.posAfter()
            r4 = 1
            if (r2 <= r3) goto L30
            r1 = r3
            goto L5c
        L30:
            if (r2 != r3) goto L4d
            boolean r2 = r0.isAttr()
            if (r2 == 0) goto L4b
            int r2 = r0._cchAfter
            if (r2 > 0) goto L46
            org.apache.xmlbeans.impl.store.Xobj r2 = r0._nextSibling
            if (r2 == 0) goto L46
            boolean r2 = r2.isAttr()
            if (r2 != 0) goto L4b
        L46:
            org.apache.xmlbeans.impl.store.Xobj r0 = r0.ensureParent()
            goto L5c
        L4b:
            r1 = -1
            goto L5c
        L4d:
            int r3 = r3 + (-1)
            if (r2 != r3) goto L59
            r0.ensureOccupancy()
            int r2 = r0._cchValue
            if (r2 <= 0) goto L5c
            goto L5b
        L59:
            if (r2 <= r4) goto L5c
        L5b:
            r1 = r4
        L5c:
            org.apache.xmlbeans.impl.store.Xobj r0 = r5.getNormal(r0, r1)
            int r1 = r5._posTemp
            r5.moveTo(r0, r1)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Cur.prev():boolean");
    }

    public int prevChars(int i) {
        int cchLeft = cchLeft();
        if (i < 0 || i > cchLeft) {
            i = cchLeft;
        }
        if (i != 0) {
            moveTo(getNormal(getDenormal(), this._posTemp - i), this._posTemp);
        }
        return i;
    }

    public boolean prevWithAttrs() {
        if (prev()) {
            return true;
        }
        if (!isAttr()) {
            return false;
        }
        toParent();
        return true;
    }

    public void push() {
        int allocate = this._locale._locations.allocate(this);
        Locations locations = this._locale._locations;
        int i = this._stackTop;
        this._stackTop = locations.insert(i, i, allocate);
    }

    public void release() {
        int i = this._tempFrame;
        if (i >= 0) {
            Cur cur = this._nextTemp;
            if (cur != null) {
                cur._prevTemp = this._prevTemp;
            }
            Cur cur2 = this._prevTemp;
            if (cur2 == null) {
                this._locale._tempFrames[i] = cur;
            } else {
                cur2._nextTemp = cur;
            }
            this._nextTemp = null;
            this._prevTemp = null;
            this._tempFrame = -1;
        }
        int i2 = this._state;
        if (i2 == 0 || i2 == 3) {
            return;
        }
        while (this._stackTop != -1) {
            popButStay();
        }
        clearSelection();
        this._id = null;
        moveToCur(null);
        Locale.Ref ref = this._ref;
        if (ref != null) {
            ref.clear();
            this._ref._cur = null;
        }
        this._ref = null;
        Locale locale = this._locale;
        locale._registered = listRemove(locale._registered);
        Locale locale2 = this._locale;
        if (locale2._curPoolCount >= 16) {
            this._locale = null;
            this._state = 3;
        } else {
            locale2._curPool = listInsert(locale2._curPool);
            this._state = 0;
            this._locale._curPoolCount++;
        }
    }

    public boolean removeAttr(QName qName) {
        return this._xobj.removeAttr(qName);
    }

    public void removeFirstSelection() {
        int selectionIndex = selectionIndex(0);
        int i = this._selectionN;
        if (i > 0) {
            this._selectionN = i - 1;
        } else if (i == 0) {
            this._selectionN = i - 1;
            this._selectionLoc = -1;
        }
        this._selectionFirst = this._locale._locations.remove(this._selectionFirst, selectionIndex);
        this._selectionCount--;
    }

    public void removeFollowingAttrs() {
        QName name = getName();
        push();
        if (toNextAttr()) {
            while (isAttr()) {
                if (getName().equals(name)) {
                    moveNode(null);
                } else if (!toNextAttr()) {
                    break;
                }
            }
        }
        pop();
    }

    public int selectionCount() {
        return this._selectionCount;
    }

    public void setAttrValue(QName qName, String str) {
        this._xobj.setAttr(qName, str);
    }

    public void setAttrValueAsQName(QName qName) {
        QName qName2 = Locale._xsiType;
        if (qName == null) {
            this._xobj.removeAttr(qName2);
            return;
        }
        if (toAttr(qName2)) {
            removeFollowingAttrs();
        } else {
            next();
            createAttr(qName2);
        }
        setValueAsQName(qName);
        toParent();
    }

    public final Bookmark setBookmark(Object obj, Object obj2) {
        return this._xobj.setBookmark(this._pos, obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setCharNodes(CharNode charNode) {
        Xobj denormal = getDenormal();
        if (this._posTemp >= denormal.posAfter()) {
            denormal._charNodesAfter = charNode;
        } else {
            denormal._charNodesValue = charNode;
        }
        while (charNode != null) {
            charNode.setDom((DomImpl.Dom) denormal);
            charNode = charNode._next;
        }
    }

    public void setId(String str) {
        this._id = str;
    }

    public void setName(QName qName) {
        this._xobj.setName(qName);
    }

    public void setSubstitution(QName qName, SchemaType schemaType) {
        TypeStoreUser peekUser = peekUser();
        if ((peekUser != null && peekUser.get_schema_type() == schemaType && qName.equals(getName())) || isRoot()) {
            return;
        }
        TypeStoreUser user = this._xobj.ensureParent().getUser();
        if (isAttr()) {
            return;
        }
        if (user.get_element_type(qName, null) == schemaType) {
            setName(qName);
            removeAttr(Locale._xsiType);
            return;
        }
        QName name = schemaType.getName();
        if (name != null && user.get_element_type(qName, name) == schemaType) {
            setName(qName);
            setAttrValueAsQName(name);
        }
    }

    public void setType(SchemaType schemaType) {
        setType(schemaType, true);
    }

    public void setValue(String str) {
        moveNodeContents(null, false);
        next();
        insertString(str);
        toParent();
    }

    public void setValueAsQName(QName qName) {
        String localPart = qName.getLocalPart();
        String prefixForNamespace = prefixForNamespace(qName.getNamespaceURI(), qName.getPrefix().length() > 0 ? qName.getPrefix() : null, true);
        if (prefixForNamespace.length() > 0) {
            localPart = prefixForNamespace + ":" + localPart;
        }
        setValue(localPart);
    }

    public final void setXsiType(QName qName) {
        setAttrValueAsQName(qName);
    }

    public boolean skip() {
        if (this._xobj.isRoot()) {
            return false;
        }
        if (!this._xobj.isAttr()) {
            Xobj xobj = this._xobj;
            moveTo(getNormal(xobj, xobj.posAfter()), this._posTemp);
            return true;
        }
        Xobj xobj2 = this._xobj._nextSibling;
        if (xobj2 == null || !xobj2.isAttr()) {
            return false;
        }
        moveTo(this._xobj._nextSibling, 0);
        return true;
    }

    public boolean skipWithAttrs() {
        if (skip()) {
            return true;
        }
        if (this._xobj.isRoot()) {
            return false;
        }
        toParent();
        next();
        return true;
    }

    public Cur tempCur() {
        Cur tempCur = this._locale.tempCur(null);
        tempCur.moveToCur(this);
        return tempCur;
    }

    public boolean toAttr(QName qName) {
        Xobj attr = this._xobj.getAttr(qName);
        if (attr == null) {
            return false;
        }
        moveTo(attr);
        return true;
    }

    public void toEnd() {
        moveTo(this._xobj, -1);
    }

    public boolean toFirstAttr() {
        Xobj firstAttr = this._xobj.firstAttr();
        if (firstAttr == null) {
            return false;
        }
        moveTo(firstAttr);
        return true;
    }

    public boolean toFirstChild() {
        if (!this._xobj.hasChildren()) {
            return false;
        }
        Xobj xobj = this._xobj._firstChild;
        while (xobj.isAttr()) {
            xobj = xobj._nextSibling;
        }
        moveTo(xobj);
        return true;
    }

    public boolean toLastAttr() {
        if (!toFirstAttr()) {
            return false;
        }
        do {
        } while (toNextAttr());
        return true;
    }

    public boolean toLastChild() {
        if (!this._xobj.hasChildren()) {
            return false;
        }
        moveTo(this._xobj._lastChild);
        return true;
    }

    public boolean toNextAttr() {
        Xobj nextAttr = this._xobj.nextAttr();
        if (nextAttr == null) {
            return false;
        }
        moveTo(nextAttr);
        return true;
    }

    public boolean toNextSibling() {
        if (!this._xobj.isAttr()) {
            Xobj xobj = this._xobj._nextSibling;
            if (xobj == null) {
                return false;
            }
            moveTo(xobj);
            return true;
        }
        Xobj xobj2 = this._xobj._nextSibling;
        if (xobj2 == null || !xobj2.isAttr()) {
            return false;
        }
        moveTo(this._xobj._nextSibling);
        return true;
    }

    public boolean toParent() {
        return toParent(false);
    }

    public boolean toParentRaw() {
        return toParent(true);
    }

    public boolean toPrevAttr() {
        if (!isAttr()) {
            prev();
            if (isContainer()) {
                return toLastAttr();
            }
            next();
            return false;
        }
        Xobj xobj = this._xobj;
        Xobj xobj2 = xobj._prevSibling;
        if (xobj2 == null) {
            moveTo(xobj.ensureParent());
            return true;
        }
        moveTo(xobj2);
        return true;
    }

    public void toRoot() {
        Xobj xobj = this._xobj;
        while (true) {
            if (xobj.isRoot()) {
                break;
            }
            xobj = xobj._parent;
            if (xobj == null) {
                Cur tempCur = this._locale.tempCur();
                tempCur.createRoot();
                Xobj xobj2 = tempCur._xobj;
                tempCur.next();
                moveNode(tempCur);
                tempCur.release();
                xobj = xobj2;
                break;
            }
        }
        moveTo(xobj);
    }

    public Cur weakCur(Object obj) {
        Cur weakCur = this._locale.weakCur(obj);
        weakCur.moveToCur(this);
        return weakCur;
    }

    public static Xobj createDomDocumentRootXobj(Locale locale, boolean z) {
        Xobj soapPartDocXobj;
        if (locale._saaj != null) {
            soapPartDocXobj = new SoapPartDocXobj(locale);
        } else if (z) {
            soapPartDocXobj = new DocumentFragXobj(locale);
        } else {
            soapPartDocXobj = new DocumentXobj(locale);
        }
        if (locale._ownerDoc == null) {
            locale._ownerDoc = soapPartDocXobj.getDom();
        }
        return soapPartDocXobj;
    }

    private Xobj getDenormal(Xobj xobj, int i) {
        Xobj denormal = xobj.getDenormal(i);
        this._posTemp = xobj._locale._posTemp;
        return denormal;
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0128  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void moveNodeContents(org.apache.xmlbeans.impl.store.Xobj r11, org.apache.xmlbeans.impl.store.Cur r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 428
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Cur.moveNodeContents(org.apache.xmlbeans.impl.store.Xobj, org.apache.xmlbeans.impl.store.Cur, boolean):void");
    }

    public void createElement(QName qName, QName qName2) {
        createHelper(createElementXobj(this._locale, qName, qName2));
    }

    public void dump(PrintStream printStream) {
        Xobj xobj = this._xobj;
        if (xobj == null) {
            printStream.println("Unpositioned xptr");
        } else {
            dump(printStream, xobj, this);
        }
    }

    public String getCharsAsString(int i) {
        return this._xobj.getCharsAsString(this._pos, -1, i);
    }

    public Xobj getParent(boolean z) {
        int i = this._pos;
        if (i != -1 && (i < 1 || i >= this._xobj.posAfter())) {
            Xobj xobj = this._xobj;
            Xobj xobj2 = xobj._parent;
            if (xobj2 != null) {
                return xobj2;
            }
            if (z || xobj.isRoot()) {
                return null;
            }
            Cur tempCur = this._locale.tempCur();
            tempCur.createRoot();
            Xobj xobj3 = tempCur._xobj;
            tempCur.next();
            moveNode(tempCur);
            tempCur.release();
            return xobj3;
        }
        return this._xobj;
    }

    public String getValueAsString() {
        return this._xobj.getValueAsString();
    }

    public boolean inChars(Bookmark bookmark, int i, boolean z) {
        return this._xobj.inChars(this._pos, bookmark._xobj, bookmark._pos, i, z);
    }

    public boolean isJustAfterEnd(Xobj xobj) {
        return xobj.isJustAfterEnd(this._xobj, this._pos);
    }

    public void moveTo(Xobj xobj, int i) {
        moveToNoCheck(xobj, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0066, code lost:
    
        if (r1 != null) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean next() {
        /*
            r6 = this;
            org.apache.xmlbeans.impl.store.Xobj r0 = r6._xobj
            int r1 = r6._pos
            int r2 = r0.posAfter()
            r3 = 1
            if (r1 < r2) goto L13
            org.apache.xmlbeans.impl.store.Xobj r1 = r6._xobj
            int r2 = r1.posMax()
            goto L6d
        L13:
            r4 = -1
            r5 = 0
            if (r1 != r4) goto L2e
            boolean r1 = r0.isRoot()
            if (r1 != 0) goto L2d
            boolean r1 = r0.isAttr()
            if (r1 == 0) goto L6d
            org.apache.xmlbeans.impl.store.Xobj r1 = r0._nextSibling
            if (r1 == 0) goto L2d
            boolean r1 = r1.isAttr()
            if (r1 != 0) goto L6d
        L2d:
            return r5
        L2e:
            if (r1 <= 0) goto L39
            org.apache.xmlbeans.impl.store.Xobj r1 = r0._firstChild
            if (r1 == 0) goto L37
        L34:
            r0 = r1
        L35:
            r2 = r5
            goto L6d
        L37:
            r2 = r4
            goto L6d
        L39:
            r0.ensureOccupancy()
            int r1 = r0._cchValue
            if (r1 != 0) goto L6c
            org.apache.xmlbeans.impl.store.Xobj r1 = r0._firstChild
            if (r1 == 0) goto L6c
            boolean r1 = r1.isAttr()
            if (r1 == 0) goto L69
            org.apache.xmlbeans.impl.store.Xobj r1 = r0._firstChild
        L4c:
            org.apache.xmlbeans.impl.store.Xobj r2 = r1._nextSibling
            if (r2 == 0) goto L59
            boolean r2 = r2.isAttr()
            if (r2 == 0) goto L59
            org.apache.xmlbeans.impl.store.Xobj r1 = r1._nextSibling
            goto L4c
        L59:
            int r2 = r1._cchAfter
            if (r2 <= 0) goto L64
            int r0 = r1.posAfter()
            r2 = r0
            r0 = r1
            goto L6d
        L64:
            org.apache.xmlbeans.impl.store.Xobj r1 = r1._nextSibling
            if (r1 == 0) goto L6c
            goto L34
        L69:
            org.apache.xmlbeans.impl.store.Xobj r0 = r0._firstChild
            goto L35
        L6c:
            r2 = r3
        L6d:
            org.apache.xmlbeans.impl.store.Xobj r0 = r6.getNormal(r0, r2)
            int r1 = r6._posTemp
            r6.moveTo(r0, r1)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Cur.next():boolean");
    }

    public void setType(SchemaType schemaType, boolean z) {
        TypeStoreUser peekUser = peekUser();
        if (peekUser == null || peekUser.get_schema_type() != schemaType) {
            if (isRoot()) {
                this._xobj.setStableType(schemaType);
                return;
            }
            TypeStoreUser user = this._xobj.ensureParent().getUser();
            if (isAttr()) {
                if (!z || user.get_attribute_type(getName()) == schemaType) {
                    return;
                }
                throw new IllegalArgumentException("Can't set type of attribute to " + schemaType.toString());
            }
            if (user.get_element_type(getName(), null) == schemaType) {
                removeAttr(Locale._xsiType);
                return;
            }
            QName name = schemaType.getName();
            if (name == null) {
                if (z) {
                    throw new IllegalArgumentException("Can't set type of element, type is un-named");
                }
            } else if (user.get_element_type(getName(), name) == schemaType) {
                setAttrValueAsQName(name);
            } else if (z) {
                throw new IllegalArgumentException("Can't set type of element, invalid type");
            }
        }
    }

    public boolean toParent(boolean z) {
        Xobj parent = getParent(z);
        if (parent == null) {
            return false;
        }
        moveTo(parent);
        return true;
    }

    /* loaded from: classes13.dex */
    public static final class CurLoadContext extends Locale.LoadContext {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final Map<String, String> _additionalNamespaces;
        private boolean _after;
        private final CharUtil _charUtil;
        private final boolean _discardDocElem;
        private String _doctypeName;
        private String _doctypePublicId;
        private String _doctypeSystemId;
        private Xobj _frontier;
        private int _lastPos;
        private Xobj _lastXobj;
        private final Locale _locale;
        private final QName _replaceDocElem;
        private final boolean _stripComments;
        private boolean _stripLeft = true;
        private final boolean _stripProcinsts;
        private final boolean _stripWhitespace;
        private final Map<String, String> _substituteNamespaces;

        public CurLoadContext(Locale locale, XmlOptions xmlOptions) {
            XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
            this._locale = locale;
            this._charUtil = maskNull.isLoadUseLocaleCharUtil() ? locale.getCharUtil() : CharUtil.getThreadLocalCharUtil();
            Xobj createDomDocumentRootXobj = Cur.createDomDocumentRootXobj(locale);
            this._frontier = createDomDocumentRootXobj;
            this._after = false;
            this._lastXobj = createDomDocumentRootXobj;
            this._lastPos = 0;
            this._replaceDocElem = maskNull.getLoadReplaceDocumentElement();
            this._discardDocElem = maskNull.hasOption(XmlOptions.XmlOptionsKeys.LOAD_REPLACE_DOCUMENT_ELEMENT);
            this._stripWhitespace = maskNull.isSetLoadStripWhitespace();
            this._stripComments = maskNull.isLoadStripComments();
            this._stripProcinsts = maskNull.isLoadStripProcinsts();
            this._substituteNamespaces = maskNull.getLoadSubstituteNamespaces();
            this._additionalNamespaces = maskNull.getLoadAdditionalNamespaces();
            locale._versionAll++;
            locale._versionSansText++;
        }

        private QName checkName(QName qName, boolean z) {
            String str;
            return this._substituteNamespaces != null ? ((!z || qName.getNamespaceURI().length() > 0) && (str = this._substituteNamespaces.get(qName.getNamespaceURI())) != null) ? this._locale.makeQName(str, qName.getLocalPart(), qName.getPrefix()) : qName : qName;
        }

        private void end() {
            flushText();
            if (this._after) {
                this._frontier = this._frontier._parent;
            } else {
                this._after = true;
            }
            this._lastXobj = this._frontier;
            this._lastPos = -1;
        }

        private void flushText() {
            if (this._stripWhitespace) {
                if (this._after) {
                    Xobj xobj = this._frontier;
                    xobj._srcAfter = this._charUtil.stripRight(xobj._srcAfter, xobj._offAfter, xobj._cchAfter);
                    Xobj xobj2 = this._frontier;
                    CharUtil charUtil = this._charUtil;
                    xobj2._offAfter = charUtil._offSrc;
                    xobj2._cchAfter = charUtil._cchSrc;
                    return;
                }
                Xobj xobj3 = this._frontier;
                xobj3._srcValue = this._charUtil.stripRight(xobj3._srcValue, xobj3._offValue, xobj3._cchValue);
                Xobj xobj4 = this._frontier;
                CharUtil charUtil2 = this._charUtil;
                xobj4._offValue = charUtil2._offSrc;
                xobj4._cchValue = charUtil2._cchSrc;
            }
        }

        private Xobj parent() {
            boolean z = this._after;
            Xobj xobj = this._frontier;
            return z ? xobj._parent : xobj;
        }

        private void start(Xobj xobj) {
            flushText();
            if (this._after) {
                this._frontier = this._frontier._parent;
                this._after = false;
            }
            this._frontier.appendXobj(xobj);
            this._frontier = xobj;
            this._lastXobj = xobj;
            this._lastPos = 0;
        }

        private void stripText(Object obj, int i, int i2) {
            if (this._stripWhitespace && this._stripLeft) {
                obj = this._charUtil.stripLeft(obj, i, i2);
                this._stripLeft = false;
                CharUtil charUtil = this._charUtil;
                int i3 = charUtil._offSrc;
                i2 = charUtil._cchSrc;
                i = i3;
            }
            text(obj, i, i2);
        }

        private void text(Object obj, int i, int i2) {
            if (i2 <= 0) {
                return;
            }
            Xobj xobj = this._frontier;
            this._lastXobj = xobj;
            int i3 = xobj._cchValue;
            int i4 = i3 + 1;
            this._lastPos = i4;
            if (this._after) {
                int i5 = xobj._cchAfter;
                this._lastPos = i4 + i5 + 1;
                xobj._srcAfter = this._charUtil.saveChars(obj, i, i2, xobj._srcAfter, xobj._offAfter, i5);
                Xobj xobj2 = this._frontier;
                CharUtil charUtil = this._charUtil;
                xobj2._offAfter = charUtil._offSrc;
                xobj2._cchAfter = charUtil._cchSrc;
                return;
            }
            xobj._srcValue = this._charUtil.saveChars(obj, i, i2, xobj._srcValue, xobj._offValue, i3);
            Xobj xobj3 = this._frontier;
            CharUtil charUtil2 = this._charUtil;
            xobj3._offValue = charUtil2._offSrc;
            xobj3._cchValue = charUtil2._cchSrc;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void abort() {
            this._stripLeft = true;
            while (!parent().isRoot()) {
                end();
            }
            finish().release();
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void attr(QName qName, String str) {
            Xobj attrXobj;
            boolean isAttrOfTypeId = isAttrOfTypeId(qName, (this._after ? this._lastXobj._parent : this._lastXobj).getQName());
            if (isAttrOfTypeId) {
                attrXobj = new AttrIdXobj(this._locale, checkName(qName, true));
            } else {
                attrXobj = new AttrXobj(this._locale, checkName(qName, true));
            }
            start(attrXobj);
            text(str, 0, str.length());
            end();
            if (isAttrOfTypeId) {
                Cur tempCur = attrXobj.tempCur();
                tempCur.toRoot();
                Xobj xobj = tempCur._xobj;
                tempCur.release();
                if (xobj instanceof DocumentXobj) {
                    ((DocumentXobj) xobj).addIdElement(str, attrXobj._parent.getDom());
                }
            }
            this._lastXobj = attrXobj;
            this._lastPos = 0;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void bookmark(XmlCursor.XmlBookmark xmlBookmark) {
            this._lastXobj.setBookmark(this._lastPos, xmlBookmark.getKey(), xmlBookmark);
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void bookmarkLastAttr(QName qName, XmlCursor.XmlBookmark xmlBookmark) {
            Xobj attr;
            if (this._lastPos == 0 && this._lastXobj.isAttr() && (attr = this._lastXobj._parent.getAttr(qName)) != null) {
                attr.setBookmark(0, xmlBookmark.getKey(), xmlBookmark);
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void bookmarkLastNonAttr(XmlCursor.XmlBookmark xmlBookmark) {
            if (this._lastPos > 0 || !this._lastXobj.isAttr()) {
                this._lastXobj.setBookmark(this._lastPos, xmlBookmark.getKey(), xmlBookmark);
            } else {
                this._lastXobj._parent.setBookmark(0, xmlBookmark.getKey(), xmlBookmark);
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void comment(String str) {
            if (!this._stripComments) {
                comment(str, 0, str.length());
            }
            this._stripLeft = true;
        }

        public void dump() {
            this._frontier.dump();
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void endDTD() {
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void endElement() {
            end();
            this._stripLeft = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:32:0x0080  */
        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public org.apache.xmlbeans.impl.store.Cur finish() {
            /*
                Method dump skipped, instructions count: 262
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Cur.CurLoadContext.finish():org.apache.xmlbeans.impl.store.Cur");
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void lineNumber(int i, int i2, int i3) {
            this._lastXobj.setBookmark(this._lastPos, XmlLineNumber.class, new XmlLineNumber(i, i2, i3));
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void procInst(String str, String str2) {
            if (!this._stripProcinsts) {
                ProcInstXobj procInstXobj = new ProcInstXobj(this._locale, str);
                start(procInstXobj);
                text(str2, 0, str2.length());
                end();
                this._lastXobj = procInstXobj;
                this._lastPos = 0;
            }
            this._stripLeft = true;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void startDTD(String str, String str2, String str3) {
            this._doctypeName = str;
            this._doctypePublicId = str2;
            this._doctypeSystemId = str3;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void startElement(QName qName) {
            start(Cur.createElementXobj(this._locale, checkName(qName, false), parent()._name));
            this._stripLeft = true;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void xmlns(String str, String str2) {
            String str3;
            Map<String, String> map = this._substituteNamespaces;
            if (map != null && (str3 = map.get(str2)) != null) {
                str2 = str3;
            }
            Locale locale = this._locale;
            AttrXobj attrXobj = new AttrXobj(locale, locale.createXmlns(str));
            start(attrXobj);
            text(str2, 0, str2.length());
            end();
            this._lastXobj = attrXobj;
            this._lastPos = 0;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void comment(char[] cArr, int i, int i2) {
            if (!this._stripComments) {
                Object saveChars = this._charUtil.saveChars(cArr, i, i2);
                CharUtil charUtil = this._charUtil;
                comment(saveChars, charUtil._offSrc, charUtil._cchSrc);
            }
            this._stripLeft = true;
        }

        private void comment(Object obj, int i, int i2) {
            CommentXobj commentXobj = new CommentXobj(this._locale);
            start(commentXobj);
            text(obj, i, i2);
            end();
            this._lastXobj = commentXobj;
            this._lastPos = 0;
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void text(String str) {
            if (str == null) {
                return;
            }
            stripText(str, 0, str.length());
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void text(char[] cArr, int i, int i2) {
            stripText(cArr, i, i2);
        }

        @Override // org.apache.xmlbeans.impl.store.Locale.LoadContext
        public void attr(String str, String str2, String str3, String str4) {
            attr(this._locale.makeQName(str2, str, str3), str4);
        }
    }

    private Cur tempCur(Xobj xobj, int i) {
        Cur tempCur = this._locale.tempCur();
        if (xobj != null) {
            tempCur.moveTo(getNormal(xobj, i), this._posTemp);
        }
        return tempCur;
    }

    public static void moveNode(Xobj xobj, Cur cur) {
        Locale locale;
        if (cur != null) {
            if (cur._pos == -1) {
                cur._xobj.ensureOccupancy();
            }
            if ((cur._pos == 0 && cur._xobj == xobj) || cur.isJustAfterEnd(xobj)) {
                cur.moveTo(xobj);
                return;
            }
        }
        xobj._locale.notifyChange();
        Locale locale2 = xobj._locale;
        locale2._versionAll++;
        locale2._versionSansText++;
        if (cur != null && (locale = cur._locale) != locale2) {
            locale.notifyChange();
            Locale locale3 = cur._locale;
            locale3._versionAll++;
            locale3._versionSansText++;
        }
        if (xobj.isAttr()) {
            xobj.invalidateSpecialAttr(cur == null ? null : cur.getParentRaw());
        } else {
            Xobj xobj2 = xobj._parent;
            if (xobj2 != null) {
                xobj2.invalidateUser();
            }
            if (cur != null && cur.hasParent()) {
                cur.getParent().invalidateUser();
            }
        }
        if (xobj._cchAfter > 0) {
            transferChars(xobj, xobj.posAfter(), xobj.getDenormal(0), xobj.posTemp(), xobj._cchAfter);
        }
        xobj._locale.embedCurs();
        Xobj xobj3 = xobj;
        while (xobj3 != null) {
            while (true) {
                Cur cur2 = xobj3._embedded;
                if (cur2 == null) {
                    break;
                } else {
                    cur2.moveTo(xobj.getNormal(xobj.posAfter()));
                }
            }
            xobj3.disconnectUser();
            if (cur != null) {
                xobj3._locale = cur._locale;
            }
            xobj3 = xobj3.walk(xobj, true);
        }
        xobj.removeXobj();
        if (cur != null) {
            Xobj xobj4 = cur._xobj;
            boolean z = cur._pos != 0;
            int cchRight = cur.cchRight();
            if (cchRight > 0) {
                cur.push();
                cur.next();
                xobj4 = cur._xobj;
                boolean z2 = cur._pos != 0;
                cur.pop();
                z = z2;
            }
            if (z) {
                xobj4.appendXobj(xobj);
            } else {
                xobj4.insertXobj(xobj);
            }
            if (cchRight > 0) {
                transferChars(cur._xobj, cur._pos, xobj, xobj.posAfter(), cchRight);
            }
            cur.moveTo(xobj);
        }
    }

    public void addToSelection() {
        this._selectionFirst = this._locale._locations.insert(this._selectionFirst, -1, this._locale._locations.allocate(this));
        this._selectionCount++;
    }

    public static void dump(PrintStream printStream, Xobj xobj, Object obj) {
        if (obj == null) {
            obj = xobj;
        }
        while (true) {
            Xobj xobj2 = xobj._parent;
            if (xobj2 == null) {
                dumpXobj(printStream, xobj, 0, obj);
                printStream.println();
                return;
            }
            xobj = xobj2;
        }
    }
}
