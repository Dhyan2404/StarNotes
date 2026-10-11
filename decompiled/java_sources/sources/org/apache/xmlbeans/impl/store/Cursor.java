package org.apache.xmlbeans.impl.store;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.Reader;
import java.io.Writer;
import java.util.Collection;
import java.util.Map;
import java.util.function.Supplier;
import javax.xml.namespace.QName;
import javax.xml.stream.XMLStreamReader;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlDocumentProperties;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.GlobalLock;
import org.apache.xmlbeans.impl.common.XMLChar;
import org.apache.xmlbeans.impl.store.Cursor;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.store.Saver;
import org.apache.xmlbeans.impl.xpath.XPathEngine;
import org.apache.xmlbeans.impl.xpath.XPathFactory;
import org.w3c.dom.Node;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;

/* loaded from: classes13.dex */
public final class Cursor implements XmlCursor, Locale.ChangeListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ATTR = 3;
    static final int COMMENT = 4;
    private static final int COPY_CHARS = 5;
    private static final int COPY_XML = 1;
    private static final int COPY_XML_CONTENTS = 3;
    static final int ELEM = 2;
    private static final int MOVE_CHARS = 4;
    private static final int MOVE_XML = 0;
    private static final int MOVE_XML_CONTENTS = 2;
    static final int PROCINST = 5;
    static final int ROOT = 1;
    static final int TEXT = 0;
    private Cur _cur;
    private int _currentSelection;
    private Locale.ChangeListener _nextChangeListener;
    private XPathEngine _pathEngine;

    /* loaded from: classes13.dex */
    public static final class ChangeStampImpl implements XmlCursor.ChangeStamp {
        private final Locale _locale;
        private final long _versionStamp;

        public ChangeStampImpl(Locale locale) {
            this._locale = locale;
            this._versionStamp = locale.version();
        }

        @Override // org.apache.xmlbeans.XmlCursor.ChangeStamp
        public boolean hasChanged() {
            return this._versionStamp != this._locale.version();
        }
    }

    /* loaded from: classes13.dex */
    public interface WrapIOEx {
        void run() throws IOException;
    }

    /* loaded from: classes13.dex */
    public interface WrapSAXEx {
        void run() throws SAXException;
    }

    public Cursor(Xobj xobj, int i) {
        Cur weakCur = xobj._locale.weakCur(this);
        this._cur = weakCur;
        weakCur.moveTo(xobj, i);
        this._currentSelection = -1;
    }

    private boolean checkContentInsertionValidity(Cursor cursor) {
        this._cur.push();
        this._cur.next();
        if (this._cur.isFinish()) {
            this._cur.pop();
            return false;
        }
        try {
            cursor.checkInsertionValidity(this._cur);
            this._cur.pop();
            return true;
        } catch (IllegalArgumentException e) {
            this._cur.pop();
            throw e;
        }
    }

    private Cursor checkCursors(XmlCursor xmlCursor) {
        checkThisCursor();
        if (xmlCursor == null) {
            throw new IllegalArgumentException("Other cursor is <null>");
        }
        if (xmlCursor instanceof Cursor) {
            Cursor cursor = (Cursor) xmlCursor;
            if (cursor._cur != null) {
                return cursor;
            }
            throw new IllegalStateException("Other cursor has been disposed");
        }
        throw new IllegalArgumentException("Incompatible cursors: " + xmlCursor);
    }

    private void checkInsertionValidity(Cur cur) {
        int kind = cur.kind();
        if (kind < 0) {
            complain("Can't move/copy/insert an end token.");
        }
        if (kind == 1) {
            complain("Can't move/copy/insert a whole document.");
        }
        int kind2 = this._cur.kind();
        if (kind2 == 1) {
            complain("Can't insert before the start of the document.");
        }
        if (kind == 3) {
            this._cur.push();
            this._cur.prevWithAttrs();
            int kind3 = this._cur.kind();
            this._cur.pop();
            if (kind3 != 2 && kind3 != 1 && kind3 != -3) {
                complain("Can only insert attributes before other attributes or after containers.");
            }
        }
        if (kind2 != 3 || kind == 3) {
            return;
        }
        complain("Can only insert attributes before other attributes or after containers.");
    }

    private void checkThisCursor() {
        if (this._cur == null) {
            throw new IllegalStateException("This cursor has been disposed");
        }
    }

    private static void complain(String str) {
        throw new IllegalArgumentException(str);
    }

    public static XmlCursor.XmlBookmark getBookmark(Object obj, Cur cur) {
        if (obj == null) {
            return null;
        }
        Object bookmark = cur.getBookmark(obj);
        if (bookmark instanceof XmlCursor.XmlBookmark) {
            return (XmlCursor.XmlBookmark) bookmark;
        }
        return null;
    }

    private void insertNode(Cur cur, String str) {
        if (str != null && str.length() > 0) {
            cur.next();
            cur.insertString(str);
            cur.toParent();
        }
        checkInsertionValidity(cur);
        cur.moveNode(this._cur);
        this._cur.toEnd();
        this._cur.nextWithAttrs();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0015. Please report as an issue. */
    private boolean isDomFragment() {
        if (!isStartdoc()) {
            return true;
        }
        XmlCursor newCursor = newCursor();
        try {
            int intValue = newCursor.toNextToken().intValue();
            boolean z = false;
            while (true) {
                switch (intValue) {
                    case 0:
                    case 1:
                    case 2:
                        newCursor.close();
                        return !z;
                    case 3:
                        if (z) {
                            newCursor.close();
                            return true;
                        }
                        intValue = newCursor.toEndToken().intValue();
                        z = true;
                    case 4:
                    case 8:
                    case 9:
                        intValue = newCursor.toNextToken().intValue();
                    case 5:
                        if (!Locale.isWhiteSpace(newCursor.getChars())) {
                            newCursor.close();
                            return true;
                        }
                        intValue = newCursor.toNextToken().intValue();
                    case 6:
                    case 7:
                        newCursor.close();
                        return true;
                }
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (newCursor != null) {
                    try {
                        newCursor.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    private static boolean isValid(Cur cur) {
        int kind;
        if (cur.kind() > 0) {
            return true;
        }
        cur.push();
        if (cur.toParentRaw() && ((kind = cur.kind()) == 4 || kind == 5 || kind == 3)) {
            return false;
        }
        cur.pop();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$comparePosition$2(Cursor cursor) {
        return Integer.valueOf(_comparePosition(cursor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$getChars$45(char[] cArr, int i, int i2) {
        return Integer.valueOf(_getChars(cArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$getTextValue$42(char[] cArr, int i, int i2) {
        return Integer.valueOf(_getTextValue(cArr, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$isAtSamePositionAs$4(Cursor cursor) {
        return Boolean.valueOf(_isAtSamePositionAs(cursor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$isLeftOf$3(Cursor cursor) {
        return Boolean.valueOf(_isLeftOf(cursor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$isRightOf$5(Cursor cursor) {
        return Boolean.valueOf(_isRightOf(cursor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$removeAttribute$41(QName qName) {
        return Boolean.valueOf(_removeAttribute(qName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$removeChars$52(int i) {
        return Integer.valueOf(_removeChars(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$setAttributeText$40(QName qName, String str) {
        return Boolean.valueOf(_setAttributeText(qName, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toBookmark$22(XmlCursor.XmlBookmark xmlBookmark) {
        return Boolean.valueOf(_toBookmark(xmlBookmark));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toChild$31(String str) {
        return Boolean.valueOf(_toChild(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toChild$32(String str, String str2) {
        return Boolean.valueOf(_toChild(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toChild$33(QName qName) {
        return Boolean.valueOf(_toChild(qName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toChild$34(int i) {
        return Boolean.valueOf(_toChild(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toChild$35(QName qName, int i) {
        return Boolean.valueOf(_toChild(qName, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toCursor$1(Cursor cursor) {
        return Boolean.valueOf(_toCursor(cursor));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$toNextChar$29(int i) {
        return Integer.valueOf(_toNextChar(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toNextSibling$36(String str) {
        return Boolean.valueOf(_toNextSibling(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toNextSibling$37(String str, String str2) {
        return Boolean.valueOf(_toNextSibling(str, str2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toNextSibling$38(QName qName) {
        return Boolean.valueOf(_toNextSibling(qName));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$toPrevChar$30(int i) {
        return Integer.valueOf(_toPrevChar(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean lambda$toSelection$21(int i) {
        return Boolean.valueOf(_toSelection(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$twoLocaleOp$0(Cursor cursor, int i, int i2) {
        return Integer.valueOf(twoLocaleOp(cursor, i, i2));
    }

    public static XmlCursor newCursor(Xobj xobj, int i) {
        Cursor cursor;
        Locale locale = xobj._locale;
        if (locale.noSync()) {
            locale.enter();
            try {
                return new Cursor(xobj, i);
            } finally {
            }
        }
        synchronized (locale) {
            locale.enter();
            try {
                cursor = new Cursor(xobj, i);
            } finally {
            }
        }
        return cursor;
    }

    private Cursor preCheck(XmlCursor xmlCursor) {
        Cursor checkCursors = checkCursors(xmlCursor);
        if (this._cur._locale == checkCursors._cur._locale) {
            return checkCursors;
        }
        throw new IllegalArgumentException("Cursors not in same document");
    }

    private void setTextValue(Object obj, int i, int i2) {
        if (this._cur.isNode()) {
            this._cur.moveNodeContents(null, false);
            this._cur.next();
            this._cur.insertChars(obj, i, i2);
            this._cur.toParent();
            return;
        }
        throw new IllegalStateException("Can't set text value, current token can have no text value");
    }

    private void syncWrap(Runnable runnable) {
        if (preCheck()) {
            syncWrapHelper(runnable, true);
            return;
        }
        synchronized (this._cur._locale) {
            syncWrapHelper(runnable, true);
        }
    }

    private void syncWrapHelper(Runnable runnable, boolean z) {
        Locale locale = this._cur._locale;
        if (z) {
            locale.enter();
        }
        try {
            runnable.run();
        } finally {
            if (z) {
                locale.exit();
            }
        }
    }

    private void syncWrapIOEx(WrapIOEx wrapIOEx) throws IOException {
        if (preCheck()) {
            syncWrapHelper(wrapIOEx);
            return;
        }
        synchronized (this._cur._locale) {
            syncWrapHelper(wrapIOEx);
        }
    }

    private <T> T syncWrapNoEnter(Supplier<T> supplier) {
        T t;
        if (preCheck()) {
            return (T) syncWrapHelper((Supplier) supplier, false);
        }
        synchronized (this._cur._locale) {
            t = (T) syncWrapHelper((Supplier) supplier, false);
        }
        return t;
    }

    private void syncWrapSAXEx(WrapSAXEx wrapSAXEx) throws SAXException {
        if (preCheck()) {
            syncWrapHelper(wrapSAXEx);
            return;
        }
        synchronized (this._cur._locale) {
            syncWrapHelper(wrapSAXEx);
        }
    }

    private int twoLocaleOp(XmlCursor xmlCursor, final int i, final int i2) {
        int twoLocaleOp;
        int twoLocaleOp2;
        final Cursor checkCursors = checkCursors(xmlCursor);
        Locale locale = this._cur._locale;
        Locale locale2 = checkCursors._cur._locale;
        if (locale == locale2) {
            return ((Integer) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.ble
                @Override // java.util.function.Supplier
                public final Object get() {
                    Integer lambda$twoLocaleOp$0;
                    lambda$twoLocaleOp$0 = Cursor.this.lambda$twoLocaleOp$0(checkCursors, i, i2);
                    return lambda$twoLocaleOp$0;
                }
            })).intValue();
        }
        if (locale.noSync()) {
            if (locale2.noSync()) {
                return twoLocaleOp(checkCursors, i, i2);
            }
            synchronized (locale2) {
                twoLocaleOp2 = twoLocaleOp(checkCursors, i, i2);
            }
            return twoLocaleOp2;
        }
        if (locale2.noSync()) {
            synchronized (locale) {
                twoLocaleOp = twoLocaleOp(checkCursors, i, i2);
            }
            return twoLocaleOp;
        }
        boolean z = false;
        try {
            try {
                GlobalLock.acquire();
            } catch (InterruptedException e) {
                e = e;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            try {
                synchronized (locale) {
                    try {
                        try {
                            synchronized (locale2) {
                                try {
                                    GlobalLock.release();
                                    return twoLocaleOp(checkCursors, i, i2);
                                } catch (Throwable th2) {
                                    th = th2;
                                    throw th;
                                }
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            z = true;
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            } catch (Throwable th5) {
                th = th5;
            }
        } catch (InterruptedException e2) {
            e = e2;
            z = true;
            throw new RuntimeException(e.getMessage(), e);
        } catch (Throwable th6) {
            th = th6;
            z = true;
            if (z) {
                GlobalLock.release();
            }
            throw th;
        }
    }

    public static void validateLocalName(QName qName) {
        if (qName != null) {
            validateLocalName(qName.getLocalPart());
            return;
        }
        throw new IllegalArgumentException("QName is null");
    }

    public static void validatePrefix(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Prefix is null");
        }
        if (str.length() == 0) {
            throw new IllegalArgumentException("Prefix is empty");
        }
        if (Locale.beginsWithXml(str)) {
            throw new IllegalArgumentException("Prefix begins with 'xml'");
        }
        if (!XMLChar.isValidNCName(str)) {
            throw new IllegalArgumentException("Prefix is not valid");
        }
    }

    public boolean ___toNextSibling() {
        if (!this._cur.hasParent()) {
            return false;
        }
        Xobj parentNoRoot = this._cur.getParentNoRoot();
        if (parentNoRoot == null) {
            this._cur._locale.enter();
            try {
                parentNoRoot = this._cur.getParent();
            } finally {
                this._cur._locale.exit();
            }
        }
        return Locale.toNextSiblingElement(this._cur, parentNoRoot);
    }

    public void _addToSelection() {
        _toSelection(Integer.MAX_VALUE);
        this._cur.addToSelection();
    }

    /* renamed from: _beginElement, reason: merged with bridge method [inline-methods] */
    public void lambda$beginElement$58(String str) {
        lambda$insertElementWithText$62(str, null, null);
        _toPrevToken();
    }

    /* renamed from: _clearBookmark, reason: merged with bridge method [inline-methods] */
    public void lambda$clearBookmark$50(Object obj) {
        if (obj != null) {
            this._cur.setBookmark(obj, null);
        }
    }

    public void _clearSelections() {
        XPathEngine xPathEngine = this._pathEngine;
        if (xPathEngine != null) {
            xPathEngine.release();
            this._pathEngine = null;
        }
        this._cur.clearSelection();
        this._currentSelection = -1;
    }

    public int _comparePosition(Cursor cursor) {
        int comparePosition = this._cur.comparePosition(cursor._cur);
        if (comparePosition != 2) {
            return comparePosition;
        }
        throw new IllegalArgumentException("Cursors not in same document");
    }

    public int _copyChars(int i, Cursor cursor) {
        int cchRight = this._cur.cchRight();
        if (cchRight <= 0 || i == 0) {
            return 0;
        }
        if (i < 0 || i > cchRight) {
            i = cchRight;
        }
        cursor.checkInsertionValidity(this._cur);
        Cur cur = cursor._cur;
        Object chars = this._cur.getChars(i);
        Cur cur2 = this._cur;
        cur.insertChars(chars, cur2._offSrc, cur2._cchSrc);
        cursor._cur.nextChars(this._cur._cchSrc);
        return this._cur._cchSrc;
    }

    public boolean _copyXml(Cursor cursor) {
        cursor.checkInsertionValidity(this._cur);
        Cur tempCur = cursor.tempCur();
        if (this._cur.isText()) {
            Cur cur = cursor._cur;
            Object chars = this._cur.getChars(-1);
            Cur cur2 = this._cur;
            cur.insertChars(chars, cur2._offSrc, cur2._cchSrc);
        } else {
            this._cur.copyNode(cursor._cur);
        }
        cursor._cur.moveToCur(tempCur);
        tempCur.release();
        return true;
    }

    public boolean _copyXmlContents(Cursor cursor) {
        if (!this._cur.isContainer() || this._cur.contains(cursor._cur) || !checkContentInsertionValidity(cursor)) {
            return false;
        }
        Cur tempCur = this._cur._locale.tempCur();
        this._cur.copyNode(tempCur);
        Cur tempCur2 = cursor._cur.tempCur();
        tempCur.moveNodeContents(cursor._cur, false);
        tempCur.release();
        cursor._cur.moveToCur(tempCur2);
        tempCur2.release();
        return true;
    }

    public XmlCursor.TokenType _currentTokenType() {
        switch (this._cur.kind()) {
            case -2:
                return XmlCursor.TokenType.END;
            case -1:
                return XmlCursor.TokenType.ENDDOC;
            case 0:
                return XmlCursor.TokenType.TEXT;
            case 1:
                return XmlCursor.TokenType.STARTDOC;
            case 2:
                return XmlCursor.TokenType.START;
            case 3:
                return this._cur.isXmlns() ? XmlCursor.TokenType.NAMESPACE : XmlCursor.TokenType.ATTR;
            case 4:
                return XmlCursor.TokenType.COMMENT;
            case 5:
                return XmlCursor.TokenType.PROCINST;
            default:
                throw new IllegalStateException();
        }
    }

    public void _dispose() {
        this._cur.release();
        this._cur = null;
    }

    public XmlDocumentProperties _documentProperties() {
        return Locale.getDocProps(this._cur, true);
    }

    public void _dump() {
        this._cur.dump();
    }

    /* renamed from: _execQuery, reason: merged with bridge method [inline-methods] */
    public XmlCursor lambda$execQuery$46(String str) {
        return lambda$execQuery$47(str, null);
    }

    /* renamed from: _getAllBookmarkRefs, reason: merged with bridge method [inline-methods] */
    public void lambda$getAllBookmarkRefs$51(Collection<Object> collection) {
        if (collection != null) {
            for (Bookmark bookmark = this._cur._xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
                Object obj = bookmark._value;
                if (obj instanceof XmlCursor.XmlBookmark) {
                    collection.add(obj);
                }
            }
        }
    }

    /* renamed from: _getAllNamespaces, reason: merged with bridge method [inline-methods] */
    public void lambda$getAllNamespaces$28(Map<String, String> map) {
        if (!this._cur.isContainer()) {
            throw new IllegalStateException("Not on a container");
        }
        if (map != null) {
            Locale.getAllNamespaces(this._cur, map);
        }
    }

    /* renamed from: _getAttributeText, reason: merged with bridge method [inline-methods] */
    public String lambda$getAttributeText$39(QName qName) {
        if (qName == null) {
            throw new IllegalArgumentException("Attr name is null");
        }
        if (this._cur.isContainer()) {
            return this._cur.getAttrValue(qName);
        }
        return null;
    }

    /* renamed from: _getBookmark, reason: merged with bridge method [inline-methods] */
    public XmlCursor.XmlBookmark lambda$getBookmark$49(Object obj) {
        if (obj == null) {
            return null;
        }
        return getBookmark(obj, this._cur);
    }

    public String _getChars() {
        return this._cur.getCharsAsString();
    }

    public XmlCursor.ChangeStamp _getDocChangeStamp() {
        return new ChangeStampImpl(this._cur._locale);
    }

    public Node _getDomNode() {
        return (Node) this._cur.getDom();
    }

    public QName _getName() {
        int kind = this._cur.kind();
        if (kind != 2) {
            if (kind != 3) {
                if (kind != 5) {
                    return null;
                }
            } else if (this._cur.isXmlns()) {
                Cur cur = this._cur;
                return cur._locale.makeQNameNoCheck(cur.getXmlnsUri(), this._cur.getXmlnsPrefix());
            }
        }
        return this._cur.getName();
    }

    public XmlObject _getObject() {
        return this._cur.getObject();
    }

    public int _getSelectionCount() {
        _toSelection(Integer.MAX_VALUE);
        return this._cur.selectionCount();
    }

    public String _getTextValue() {
        if (this._cur.isText()) {
            return _getChars();
        }
        if (this._cur.isNode()) {
            boolean hasChildren = this._cur.hasChildren();
            Cur cur = this._cur;
            return hasChildren ? Locale.getTextValue(cur) : cur.getValueAsString();
        }
        throw new IllegalStateException("Can't get text value, current token can have no text value");
    }

    public boolean _hasNextSelection() {
        int i = this._currentSelection;
        push();
        try {
            return _toNextSelection();
        } finally {
            this._currentSelection = i;
            pop();
        }
    }

    public boolean _hasNextToken() {
        Cur cur = this._cur;
        return (cur._pos == -1 && cur._xobj.kind() == 1) ? false : true;
    }

    public boolean _hasPrevToken() {
        return this._cur.kind() != 1;
    }

    /* renamed from: _insertAttribute, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttribute$63(String str) {
        lambda$insertAttributeWithValue$66(str, (String) null);
    }

    /* renamed from: _insertAttributeWithValue, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttributeWithValue$66(String str, String str2) {
        lambda$insertAttributeWithValue$67(str, null, str2);
    }

    /* renamed from: _insertChars, reason: merged with bridge method [inline-methods] */
    public void lambda$insertChars$53(String str) {
        int length = str == null ? 0 : str.length();
        if (length > 0) {
            if (this._cur.isRoot() || this._cur.isAttr()) {
                throw new IllegalStateException("Can't insert before the document or an attribute.");
            }
            this._cur.insertChars(str, 0, length);
            this._cur.nextChars(length);
        }
    }

    /* renamed from: _insertComment, reason: merged with bridge method [inline-methods] */
    public void lambda$insertComment$70(String str) {
        Cur tempCur = this._cur._locale.tempCur();
        tempCur.createComment();
        insertNode(tempCur, str);
        tempCur.release();
    }

    /* renamed from: _insertElement, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElement$55(String str) {
        lambda$insertElementWithText$62(str, null, null);
    }

    /* renamed from: _insertElementWithText, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElementWithText$61(String str, String str2) {
        lambda$insertElementWithText$62(str, null, str2);
    }

    /* renamed from: _insertNamespace, reason: merged with bridge method [inline-methods] */
    public void lambda$insertNamespace$69(String str, String str2) {
        lambda$insertAttributeWithValue$68(this._cur._locale.createXmlns(str), str2);
    }

    /* renamed from: _insertProcInst, reason: merged with bridge method [inline-methods] */
    public void lambda$insertProcInst$71(String str, String str2) {
        validateLocalName(str);
        if (Locale.beginsWithXml(str) && str.length() == 3) {
            throw new IllegalArgumentException("Target is 'xml'");
        }
        Cur tempCur = this._cur._locale.tempCur();
        tempCur.createProcinst(str);
        insertNode(tempCur, str2);
        tempCur.release();
    }

    public boolean _isAnyAttr() {
        return this._cur.isAttr();
    }

    public boolean _isAtSamePositionAs(Cursor cursor) {
        return this._cur.isSamePos(cursor._cur);
    }

    public boolean _isAttr() {
        return this._cur.isNormalAttr();
    }

    public boolean _isComment() {
        return this._cur.isComment();
    }

    public boolean _isContainer() {
        return this._cur.isContainer();
    }

    public boolean _isEnd() {
        return this._cur.isEnd();
    }

    public boolean _isEnddoc() {
        return this._cur.isEndRoot();
    }

    public boolean _isFinish() {
        return this._cur.isFinish();
    }

    public boolean _isLeftOf(Cursor cursor) {
        return _comparePosition(cursor) < 0;
    }

    public boolean _isNamespace() {
        return this._cur.isXmlns();
    }

    public boolean _isProcinst() {
        return this._cur.isProcinst();
    }

    public boolean _isRightOf(Cursor cursor) {
        return _comparePosition(cursor) > 0;
    }

    public boolean _isStart() {
        return this._cur.isElem();
    }

    public boolean _isStartdoc() {
        return this._cur.isRoot();
    }

    public boolean _isText() {
        return this._cur.isText();
    }

    public Object _monitor() {
        return this._cur._locale;
    }

    public int _moveChars(int i, Cursor cursor) {
        int cchRight = this._cur.cchRight();
        if (cchRight <= 0 || i == 0) {
            return 0;
        }
        if (i < 0 || i > cchRight) {
            i = cchRight;
        }
        cursor.checkInsertionValidity(this._cur);
        this._cur.moveChars(cursor._cur, i);
        cursor._cur.nextChars(this._cur._cchSrc);
        return this._cur._cchSrc;
    }

    public boolean _moveXml(Cursor cursor) {
        cursor.checkInsertionValidity(this._cur);
        if (this._cur.isText()) {
            int cchRight = this._cur.cchRight();
            if (this._cur.inChars(cursor._cur, cchRight, true)) {
                return false;
            }
            this._cur.moveChars(cursor._cur, cchRight);
            cursor._cur.nextChars(cchRight);
            return true;
        }
        if (this._cur.contains(cursor._cur)) {
            return false;
        }
        Cur tempCur = cursor.tempCur();
        this._cur.moveNode(cursor._cur);
        cursor._cur.moveToCur(tempCur);
        tempCur.release();
        return true;
    }

    public boolean _moveXmlContents(Cursor cursor) {
        if (!this._cur.isContainer() || this._cur.contains(cursor._cur) || !checkContentInsertionValidity(cursor)) {
            return false;
        }
        Cur tempCur = cursor.tempCur();
        this._cur.moveNodeContents(cursor._cur, false);
        cursor._cur.moveToCur(tempCur);
        tempCur.release();
        return true;
    }

    /* renamed from: _namespaceForPrefix, reason: merged with bridge method [inline-methods] */
    public String lambda$namespaceForPrefix$26(String str) {
        if (this._cur.isContainer()) {
            return this._cur.namespaceForPrefix(str, true);
        }
        throw new IllegalStateException("Not on a container");
    }

    public XmlCursor _newCursor() {
        return new Cursor(this._cur);
    }

    public Node _newDomNode() {
        return lambda$newDomNode$14(null);
    }

    public InputStream _newInputStream() {
        return lambda$newInputStream$12(null);
    }

    public Reader _newReader() {
        return lambda$newReader$13(null);
    }

    public XMLStreamReader _newXMLStreamReader() {
        return lambda$newXMLStreamReader$6(null);
    }

    public boolean _pop() {
        return this._cur.pop();
    }

    /* renamed from: _prefixForNamespace, reason: merged with bridge method [inline-methods] */
    public String lambda$prefixForNamespace$27(String str) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("Must specify a namespace");
        }
        return this._cur.prefixForNamespace(str, null, true);
    }

    public XmlCursor.TokenType _prevTokenType() {
        this._cur.push();
        XmlCursor.TokenType _toPrevToken = _toPrevToken();
        this._cur.pop();
        return _toPrevToken;
    }

    public void _push() {
        this._cur.push();
    }

    public boolean _removeAttribute(QName qName) {
        if (qName == null) {
            throw new IllegalArgumentException("Attr name is null");
        }
        if (this._cur.isContainer()) {
            return this._cur.removeAttr(qName);
        }
        return false;
    }

    public int _removeChars(int i) {
        int cchRight = this._cur.cchRight();
        if (cchRight == 0 || i == 0) {
            return 0;
        }
        if (i < 0 || i > cchRight) {
            i = cchRight;
        }
        this._cur.moveChars(null, i);
        return this._cur._cchSrc;
    }

    public boolean _removeXml() {
        if (this._cur.isRoot()) {
            throw new IllegalStateException("Can't remove a whole document.");
        }
        if (this._cur.isFinish()) {
            return false;
        }
        if (this._cur.isText()) {
            this._cur.moveChars(null, -1);
            return true;
        }
        this._cur.moveNode(null);
        return true;
    }

    public boolean _removeXmlContents() {
        if (!this._cur.isContainer()) {
            return false;
        }
        this._cur.moveNodeContents(null, false);
        return true;
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$8(File file) throws IOException {
        lambda$save$16(file, (XmlOptions) null);
    }

    /* renamed from: _selectPath, reason: merged with bridge method [inline-methods] */
    public void lambda$selectPath$19(String str) {
        lambda$selectPath$20(str, null);
    }

    public boolean _setAttributeText(QName qName, String str) {
        if (qName == null) {
            throw new IllegalArgumentException("Attr name is null");
        }
        validateLocalName(qName.getLocalPart());
        if (!this._cur.isContainer()) {
            return false;
        }
        this._cur.setAttrValue(qName, str);
        return true;
    }

    /* renamed from: _setBookmark, reason: merged with bridge method [inline-methods] */
    public void lambda$setBookmark$48(XmlCursor.XmlBookmark xmlBookmark) {
        if (xmlBookmark != null) {
            if (xmlBookmark.getKey() == null) {
                throw new IllegalArgumentException("Annotation key is null");
            }
            xmlBookmark._currentMark = this._cur.setBookmark(xmlBookmark.getKey(), xmlBookmark);
        }
    }

    /* renamed from: _setName, reason: merged with bridge method [inline-methods] */
    public void lambda$setName$25(QName qName) {
        if (qName == null) {
            throw new IllegalArgumentException("Name is null");
        }
        int kind = this._cur.kind();
        if (kind == 2 || kind == 3) {
            validateLocalName(qName.getLocalPart());
        } else {
            if (kind != 5) {
                throw new IllegalStateException("Can set name on element, atrtribute and procinst only");
            }
            validatePrefix(qName.getLocalPart());
            if (qName.getNamespaceURI().length() > 0) {
                throw new IllegalArgumentException("Procinst name must have no URI");
            }
            if (qName.getPrefix().length() > 0) {
                throw new IllegalArgumentException("Procinst name must have no prefix");
            }
        }
        this._cur.setName(qName);
    }

    /* renamed from: _setTextValue, reason: merged with bridge method [inline-methods] */
    public void lambda$setTextValue$43(String str) {
        if (str == null) {
            str = "";
        }
        setTextValue(str, 0, str.length());
    }

    public boolean _toBookmark(XmlCursor.XmlBookmark xmlBookmark) {
        Bookmark bookmark;
        Xobj xobj;
        if (xmlBookmark != null) {
            XmlCursor.XmlMark xmlMark = xmlBookmark._currentMark;
            if ((xmlMark instanceof Bookmark) && (xobj = (bookmark = (Bookmark) xmlMark)._xobj) != null) {
                Locale locale = xobj._locale;
                Cur cur = this._cur;
                if (locale == cur._locale) {
                    cur.moveTo(xobj, bookmark._pos);
                    return true;
                }
            }
        }
        return false;
    }

    public boolean _toChild(String str) {
        return _toChild((String) null, str);
    }

    public boolean _toCursor(Cursor cursor) {
        this._cur.moveToCur(cursor._cur);
        return true;
    }

    public void _toEndDoc() {
        _toStartDoc();
        this._cur.toEnd();
    }

    public XmlCursor.TokenType _toEndToken() {
        if (!this._cur.isContainer()) {
            return XmlCursor.TokenType.NONE;
        }
        this._cur.toEnd();
        return currentTokenType();
    }

    public boolean _toFirstAttribute() {
        return this._cur.isContainer() && Locale.toFirstNormalAttr(this._cur);
    }

    public boolean _toFirstChild() {
        return Locale.toFirstChildElement(this._cur);
    }

    public XmlCursor.TokenType _toFirstContentToken() {
        if (!this._cur.isContainer()) {
            return XmlCursor.TokenType.NONE;
        }
        this._cur.next();
        return currentTokenType();
    }

    public boolean _toLastAttribute() {
        if (this._cur.isContainer()) {
            this._cur.push();
            this._cur.push();
            boolean z = false;
            while (this._cur.toNextAttr()) {
                if (this._cur.isNormalAttr()) {
                    this._cur.popButStay();
                    this._cur.push();
                    z = true;
                }
            }
            this._cur.pop();
            if (z) {
                this._cur.popButStay();
                return true;
            }
            this._cur.pop();
        }
        return false;
    }

    public boolean _toLastChild() {
        return Locale.toLastChildElement(this._cur);
    }

    public boolean _toNextAttribute() {
        return this._cur.isAttr() && Locale.toNextNormalAttr(this._cur);
    }

    /* renamed from: _toNextBookmark, reason: merged with bridge method [inline-methods] */
    public XmlCursor.XmlBookmark lambda$toNextBookmark$23(Object obj) {
        if (obj == null) {
            return null;
        }
        this._cur.push();
        do {
            int cchRight = this._cur.cchRight();
            if (cchRight > 1) {
                this._cur.nextChars(1);
                Cur cur = this._cur;
                int firstBookmarkInChars = cur.firstBookmarkInChars(obj, cchRight - 1);
                if (firstBookmarkInChars < 0) {
                    firstBookmarkInChars = -1;
                }
                cur.nextChars(firstBookmarkInChars);
            } else if (_toNextToken().isNone()) {
                this._cur.pop();
                return null;
            }
            XmlCursor.XmlBookmark bookmark = getBookmark(obj, this._cur);
            if (bookmark != null) {
                this._cur.popButStay();
                return bookmark;
            }
        } while (this._cur.kind() != -1);
        this._cur.pop();
        return null;
    }

    public int _toNextChar(int i) {
        return this._cur.nextChars(i);
    }

    public boolean _toNextSelection() {
        return _toSelection(this._currentSelection + 1);
    }

    public boolean _toNextSibling(String str) {
        return _toNextSibling(new QName(str));
    }

    public XmlCursor.TokenType _toNextToken() {
        int kind = this._cur.kind();
        if (kind == 1 || kind == 2) {
            if (!this._cur.toFirstAttr()) {
                this._cur.next();
            }
        } else if (kind != 3) {
            if (kind == 4 || kind == 5) {
                this._cur.skip();
            } else if (!this._cur.next()) {
                return XmlCursor.TokenType.NONE;
            }
        } else if (!this._cur.toNextSibling()) {
            this._cur.toParent();
            this._cur.next();
        }
        return _currentTokenType();
    }

    public boolean _toParent() {
        Cur tempCur = this._cur.tempCur();
        if (!tempCur.toParent()) {
            return false;
        }
        this._cur.moveToCur(tempCur);
        tempCur.release();
        return true;
    }

    public boolean _toPrevAttribute() {
        return this._cur.isAttr() && Locale.toPrevNormalAttr(this._cur);
    }

    /* renamed from: _toPrevBookmark, reason: merged with bridge method [inline-methods] */
    public XmlCursor.XmlBookmark lambda$toPrevBookmark$24(Object obj) {
        if (obj == null) {
            return null;
        }
        this._cur.push();
        do {
            int cchLeft = this._cur.cchLeft();
            if (cchLeft > 1) {
                this._cur.prevChars(1);
                Cur cur = this._cur;
                int firstBookmarkInCharsLeft = cur.firstBookmarkInCharsLeft(obj, cchLeft - 1);
                if (firstBookmarkInCharsLeft < 0) {
                    firstBookmarkInCharsLeft = -1;
                }
                cur.prevChars(firstBookmarkInCharsLeft);
            } else if (cchLeft == 1) {
                this._cur.prevChars(1);
            } else if (_toPrevToken().isNone()) {
                this._cur.pop();
                return null;
            }
            XmlCursor.XmlBookmark bookmark = getBookmark(obj, this._cur);
            if (bookmark != null) {
                this._cur.popButStay();
                return bookmark;
            }
        } while (this._cur.kind() != 1);
        this._cur.pop();
        return null;
    }

    public int _toPrevChar(int i) {
        return this._cur.prevChars(i);
    }

    public boolean _toPrevSibling() {
        return Locale.toPrevSiblingElement(this._cur);
    }

    public XmlCursor.TokenType _toPrevToken() {
        boolean isText = this._cur.isText();
        if (this._cur.prev()) {
            int kind = this._cur.kind();
            if (kind == -4 || kind == -5 || kind == -3) {
                this._cur.toParent();
            } else if (this._cur.isContainer()) {
                this._cur.toLastAttr();
            } else if (isText && this._cur.isText()) {
                return _toPrevToken();
            }
        } else {
            if (this._cur.isRoot()) {
                return XmlCursor.TokenType.NONE;
            }
            this._cur.toParent();
        }
        return _currentTokenType();
    }

    public boolean _toSelection(int i) {
        if (i < 0) {
            return false;
        }
        while (i >= this._cur.selectionCount()) {
            XPathEngine xPathEngine = this._pathEngine;
            if (xPathEngine == null) {
                return false;
            }
            if (!xPathEngine.next(this._cur)) {
                this._pathEngine.release();
                this._pathEngine = null;
                return false;
            }
        }
        Cur cur = this._cur;
        this._currentSelection = i;
        cur.moveToSelection(i);
        return true;
    }

    public void _toStartDoc() {
        this._cur.toRoot();
    }

    public String _xmlText() {
        return lambda$xmlText$11(null);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void addToSelection() {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.wje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._addToSelection();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void beginElement(final QName qName) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.tie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$beginElement$57(qName);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void clearBookmark(final Object obj) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.zje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$clearBookmark$50(obj);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void clearSelections() {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.wle
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._clearSelections();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor, java.lang.AutoCloseable
    public void close() {
        if (this._cur != null) {
            syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.tje
                @Override // java.lang.Runnable
                public final void run() {
                    Cursor.this._dispose();
                }
            });
        }
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int comparePosition(XmlCursor xmlCursor) {
        final Cursor preCheck = preCheck(xmlCursor);
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.qke
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$comparePosition$2;
                lambda$comparePosition$2 = Cursor.this.lambda$comparePosition$2(preCheck);
                return lambda$comparePosition$2;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int copyChars(int i, XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 5, i);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean copyXml(XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 1, 0) == 1;
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean copyXmlContents(XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 3, 0) == 1;
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType currentTokenType() {
        return (XmlCursor.TokenType) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.gje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._currentTokenType();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    @Deprecated
    public void dispose() {
        close();
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XmlDocumentProperties documentProperties() {
        return (XmlDocumentProperties) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.cke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._documentProperties();
            }
        });
    }

    public void dump(PrintStream printStream) {
        this._cur.dump(printStream);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor execQuery(final String str) {
        return (XmlCursor) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.zle
            @Override // java.util.function.Supplier
            public final Object get() {
                XmlCursor lambda$execQuery$46;
                lambda$execQuery$46 = Cursor.this.lambda$execQuery$46(str);
                return lambda$execQuery$46;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void getAllBookmarkRefs(final Collection<Object> collection) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.hje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$getAllBookmarkRefs$51(collection);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void getAllNamespaces(final Map<String, String> map) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.rje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$getAllNamespaces$28(map);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public String getAttributeText(final QName qName) {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.uje
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$getAttributeText$39;
                lambda$getAttributeText$39 = Cursor.this.lambda$getAttributeText$39(qName);
                return lambda$getAttributeText$39;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public String getChars() {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ume
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getChars();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.ChangeStamp getDocChangeStamp() {
        return (XmlCursor.ChangeStamp) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ome
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getDocChangeStamp();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node getDomNode() {
        return (Node) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ple
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getDomNode();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public QName getName() {
        return (QName) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.uie
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getName();
            }
        });
    }

    @Override // org.apache.xmlbeans.impl.store.Locale.ChangeListener
    public Locale.ChangeListener getNextChangeListener() {
        return this._nextChangeListener;
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlObject getObject() {
        return (XmlObject) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.jle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getObject();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int getSelectionCount() {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.rme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Integer.valueOf(Cursor.this._getSelectionCount());
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public String getTextValue() {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.oje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._getTextValue();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean hasNextSelection() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ime
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._hasNextSelection());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean hasNextToken() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.ole
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._hasNextToken());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean hasPrevToken() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.lme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._hasPrevToken());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttribute(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.wme
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttribute$63(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttributeWithValue(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.vje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttributeWithValue$66(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertChars(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.kle
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertChars$53(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertComment(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.xie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertComment$70(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElement(final QName qName) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.bne
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElement$54(qName);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElementWithText(final QName qName, final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.xke
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElementWithText$60(qName, str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertNamespace(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.sie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertNamespace$69(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertProcInst(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.fme
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertProcInst$71(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isAnyAttr() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.mle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isAnyAttr());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isAtSamePositionAs(XmlCursor xmlCursor) {
        final Cursor preCheck = preCheck(xmlCursor);
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.nje
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$isAtSamePositionAs$4;
                lambda$isAtSamePositionAs$4 = Cursor.this.lambda$isAtSamePositionAs$4(preCheck);
                return lambda$isAtSamePositionAs$4;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isAttr() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.vle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isAttr());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isComment() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.cme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isComment());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isContainer() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.yle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isContainer());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isEnd() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.wke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isEnd());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isEnddoc() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.qle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isEnddoc());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isFinish() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.cle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isFinish());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isInSameDocument(XmlCursor xmlCursor) {
        return xmlCursor != null && this._cur.isInSameTree(checkCursors(xmlCursor)._cur);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isLeftOf(XmlCursor xmlCursor) {
        final Cursor preCheck = preCheck(xmlCursor);
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.fke
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$isLeftOf$3;
                lambda$isLeftOf$3 = Cursor.this.lambda$isLeftOf$3(preCheck);
                return lambda$isLeftOf$3;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isNamespace() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.mme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isNamespace());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isProcinst() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.yke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isProcinst());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isRightOf(XmlCursor xmlCursor) {
        final Cursor preCheck = preCheck(xmlCursor);
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.xje
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$isRightOf$5;
                lambda$isRightOf$5 = Cursor.this.lambda$isRightOf$5(preCheck);
                return lambda$isRightOf$5;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isStart() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.sme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isStart());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isStartdoc() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.bke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isStartdoc());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean isText() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.jje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._isText());
            }
        })).booleanValue();
    }

    public Locale locale() {
        return this._cur._locale;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Object monitor() {
        return syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.lke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._monitor();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int moveChars(int i, XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 4, i);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean moveXml(XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 0, 0) == 1;
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean moveXmlContents(XmlCursor xmlCursor) {
        return twoLocaleOp(xmlCursor, 2, 0) == 1;
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public String namespaceForPrefix(final String str) {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.sle
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$namespaceForPrefix$26;
                lambda$namespaceForPrefix$26 = Cursor.this.lambda$namespaceForPrefix$26(str);
                return lambda$namespaceForPrefix$26;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node newDomNode() {
        return (Node) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.pke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._newDomNode();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public InputStream newInputStream() {
        return (InputStream) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ane
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._newInputStream();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Reader newReader() {
        return (Reader) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.aje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._newReader();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XMLStreamReader newXMLStreamReader() {
        return (XMLStreamReader) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.jme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._newXMLStreamReader();
            }
        });
    }

    @Override // org.apache.xmlbeans.impl.store.Locale.ChangeListener
    public void notifyChange() {
        if (this._cur != null) {
            _getSelectionCount();
        }
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean pop() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.xme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._pop());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public String prefixForNamespace(final String str) {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.eke
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$prefixForNamespace$27;
                lambda$prefixForNamespace$27 = Cursor.this.lambda$prefixForNamespace$27(str);
                return lambda$prefixForNamespace$27;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType prevTokenType() {
        return (XmlCursor.TokenType) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.uke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._prevTokenType();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void push() {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.dle
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._push();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean removeAttribute(final QName qName) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.yme
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$removeAttribute$41;
                lambda$removeAttribute$41 = Cursor.this.lambda$removeAttribute$41(qName);
                return lambda$removeAttribute$41;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int removeChars(final int i) {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ske
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$removeChars$52;
                lambda$removeChars$52 = Cursor.this.lambda$removeChars$52(i);
                return lambda$removeChars$52;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean removeXml() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ele
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._removeXml());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean removeXmlContents() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.lle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._removeXmlContents());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final ContentHandler contentHandler, final LexicalHandler lexicalHandler) throws SAXException {
        syncWrapSAXEx(new WrapSAXEx() { // from class: org.apache.xmlbeans.impl.store.b
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapSAXEx
            public final void run() {
                Cursor.this.lambda$save$7(contentHandler, lexicalHandler);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void selectPath(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.nle
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$selectPath$19(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean setAttributeText(final QName qName, final String str) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.wie
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$setAttributeText$40;
                lambda$setAttributeText$40 = Cursor.this.lambda$setAttributeText$40(qName, str);
                return lambda$setAttributeText$40;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void setBookmark(final XmlCursor.XmlBookmark xmlBookmark) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.vie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$setBookmark$48(xmlBookmark);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void setName(final QName qName) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.tme
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$setName$25(qName);
            }
        });
    }

    @Override // org.apache.xmlbeans.impl.store.Locale.ChangeListener
    public void setNextChangeListener(Locale.ChangeListener changeListener) {
        this._nextChangeListener = changeListener;
    }

    public Cur tempCur() {
        return this._cur.tempCur();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toBookmark(final XmlCursor.XmlBookmark xmlBookmark) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.vme
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toBookmark$22;
                lambda$toBookmark$22 = Cursor.this.lambda$toBookmark$22(xmlBookmark);
                return lambda$toBookmark$22;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toChild(final String str) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.kme
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toChild$31;
                lambda$toChild$31 = Cursor.this.lambda$toChild$31(str);
                return lambda$toChild$31;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toCursor(XmlCursor xmlCursor) {
        final Cursor checkCursors = checkCursors(xmlCursor);
        return this._cur._locale == checkCursors._cur._locale && ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.gle
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toCursor$1;
                lambda$toCursor$1 = Cursor.this.lambda$toCursor$1(checkCursors);
                return lambda$toCursor$1;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void toEndDoc() {
        syncWrapNoEnter(new Runnable() { // from class: com.sunia.HTREnginev2.pie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._toEndDoc();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType toEndToken() {
        return (XmlCursor.TokenType) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.zme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._toEndToken();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toFirstAttribute() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.rle
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toFirstAttribute());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toFirstChild() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.dje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toFirstChild());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType toFirstContentToken() {
        return (XmlCursor.TokenType) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.eme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._toFirstContentToken();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toLastAttribute() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.qje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toLastAttribute());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toLastChild() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.jke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toLastChild());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextAttribute() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.ene
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toNextAttribute());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.XmlBookmark toNextBookmark(final Object obj) {
        return (XmlCursor.XmlBookmark) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.hme
            @Override // java.util.function.Supplier
            public final Object get() {
                XmlCursor.XmlBookmark lambda$toNextBookmark$23;
                lambda$toNextBookmark$23 = Cursor.this.lambda$toNextBookmark$23(obj);
                return lambda$toNextBookmark$23;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int toNextChar(final int i) {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.qie
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$toNextChar$29;
                lambda$toNextChar$29 = Cursor.this.lambda$toNextChar$29(i);
                return lambda$toNextChar$29;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextSelection() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.kke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toNextSelection());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextSibling() {
        return ((Boolean) syncWrapNoEnter(new Supplier() { // from class: com.sunia.HTREnginev2.dme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this.___toNextSibling());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType toNextToken() {
        return (XmlCursor.TokenType) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.mke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._toNextToken();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toParent() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.kje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toParent());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toPrevAttribute() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.yje
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toPrevAttribute());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.XmlBookmark toPrevBookmark(final Object obj) {
        return (XmlCursor.XmlBookmark) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.qme
            @Override // java.util.function.Supplier
            public final Object get() {
                XmlCursor.XmlBookmark lambda$toPrevBookmark$24;
                lambda$toPrevBookmark$24 = Cursor.this.lambda$toPrevBookmark$24(obj);
                return lambda$toPrevBookmark$24;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int toPrevChar(final int i) {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.gke
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$toPrevChar$30;
                lambda$toPrevChar$30 = Cursor.this.lambda$toPrevChar$30(i);
                return lambda$toPrevChar$30;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toPrevSibling() {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.zie
            @Override // java.util.function.Supplier
            public final Object get() {
                return Boolean.valueOf(Cursor.this._toPrevSibling());
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.TokenType toPrevToken() {
        return (XmlCursor.TokenType) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.rke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._toPrevToken();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toSelection(final int i) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.cne
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toSelection$21;
                lambda$toSelection$21 = Cursor.this.lambda$toSelection$21(i);
                return lambda$toSelection$21;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void toStartDoc() {
        syncWrapNoEnter(new Runnable() { // from class: com.sunia.HTREnginev2.mje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._toStartDoc();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public String xmlText() {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.vke
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._xmlText();
            }
        });
    }

    /* renamed from: _execQuery, reason: merged with bridge method [inline-methods] */
    public XmlCursor lambda$execQuery$47(String str, XmlOptions xmlOptions) {
        checkThisCursor();
        return XPathFactory.cursorExecQuery(this._cur, str, xmlOptions);
    }

    public int _getChars(char[] cArr, int i, int i2) {
        int cchRight = this._cur.cchRight();
        if (i2 < 0 || i2 > cchRight) {
            i2 = cchRight;
        }
        if (cArr == null || i >= cArr.length) {
            return 0;
        }
        if (cArr.length - i < i2) {
            i2 = cArr.length - i;
        }
        Object chars = this._cur.getChars(i2);
        Cur cur = this._cur;
        CharUtil.getChars(cArr, i, chars, cur._offSrc, cur._cchSrc);
        return this._cur._cchSrc;
    }

    /* renamed from: _insertAttribute, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttribute$64(String str, String str2) {
        lambda$insertAttributeWithValue$67(str, str2, null);
    }

    /* renamed from: _insertAttributeWithValue, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttributeWithValue$67(String str, String str2, String str3) {
        validateLocalName(str);
        lambda$insertAttributeWithValue$68(this._cur._locale.makeQName(str2, str), str3);
    }

    /* renamed from: _insertElement, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElement$56(String str, String str2) {
        lambda$insertElementWithText$62(str, str2, null);
    }

    /* renamed from: _insertElementWithText, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElementWithText$62(String str, String str2, String str3) {
        validateLocalName(str);
        lambda$insertElementWithText$60(this._cur._locale.makeQName(str2, str), str3);
    }

    /* renamed from: _newDomNode, reason: merged with bridge method [inline-methods] */
    public Node lambda$newDomNode$14(XmlOptions xmlOptions) {
        if (xmlOptions != null && xmlOptions.isSaveInner()) {
            XmlOptions xmlOptions2 = new XmlOptions(xmlOptions);
            xmlOptions2.setSaveInner(false);
            xmlOptions = xmlOptions2;
        }
        return new DomSaver(this._cur, isDomFragment(), xmlOptions).saveDom();
    }

    /* renamed from: _newInputStream, reason: merged with bridge method [inline-methods] */
    public InputStream lambda$newInputStream$12(XmlOptions xmlOptions) {
        return new Saver.InputStreamSaver(this._cur, xmlOptions);
    }

    /* renamed from: _newReader, reason: merged with bridge method [inline-methods] */
    public Reader lambda$newReader$13(XmlOptions xmlOptions) {
        return new Saver.TextReader(this._cur, xmlOptions);
    }

    /* renamed from: _newXMLStreamReader, reason: merged with bridge method [inline-methods] */
    public XMLStreamReader lambda$newXMLStreamReader$6(XmlOptions xmlOptions) {
        return Jsr173.newXmlStreamReader(this._cur, xmlOptions);
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$9(OutputStream outputStream) throws IOException {
        lambda$save$17(outputStream, (XmlOptions) null);
    }

    /* renamed from: _selectPath, reason: merged with bridge method [inline-methods] */
    public void lambda$selectPath$20(String str, XmlOptions xmlOptions) {
        _clearSelections();
        this._pathEngine = XPathFactory.getCompiledPath(str, xmlOptions).execute(this._cur, xmlOptions);
        this._cur._locale.registerForChange(this);
    }

    /* renamed from: _setTextValue, reason: merged with bridge method [inline-methods] */
    public void lambda$setTextValue$44(char[] cArr, int i, int i2) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("setTextValue: length < 0");
        }
        if (cArr == null) {
            if (i2 <= 0) {
                setTextValue((char[]) null, 0, 0);
                return;
            }
            throw new IllegalArgumentException("setTextValue: sourceChars == null");
        }
        if (i >= 0 && i < cArr.length) {
            if (i + i2 > cArr.length) {
                i2 = cArr.length - i;
            }
            CharUtil charUtil = this._cur._locale.getCharUtil();
            setTextValue(charUtil.saveChars(cArr, i, i2), charUtil._offSrc, charUtil._cchSrc);
            return;
        }
        throw new IndexOutOfBoundsException("setTextValue: offset out of bounds");
    }

    public boolean _toChild(QName qName) {
        return _toChild(qName, 0);
    }

    public boolean _toNextSibling(String str, String str2) {
        validateLocalName(str2);
        return _toNextSibling(this._cur._locale._qnameFactory.getQName(str, str2));
    }

    /* renamed from: _xmlText, reason: merged with bridge method [inline-methods] */
    public String lambda$xmlText$11(XmlOptions xmlOptions) {
        return new Saver.TextSaver(this._cur, xmlOptions, null).saveToString();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void beginElement(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.nme
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$beginElement$58(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void dump() {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ije
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this._dump();
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor execQuery(final String str, final XmlOptions xmlOptions) {
        return (XmlCursor) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.tke
            @Override // java.util.function.Supplier
            public final Object get() {
                XmlCursor lambda$execQuery$47;
                lambda$execQuery$47 = Cursor.this.lambda$execQuery$47(str, xmlOptions);
                return lambda$execQuery$47;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int getChars(final char[] cArr, final int i, final int i2) {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.fle
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$getChars$45;
                lambda$getChars$45 = Cursor.this.lambda$getChars$45(cArr, i, i2);
                return lambda$getChars$45;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public int getTextValue(final char[] cArr, final int i, final int i2) {
        return ((Integer) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.sje
            @Override // java.util.function.Supplier
            public final Object get() {
                Integer lambda$getTextValue$42;
                lambda$getTextValue$42 = Cursor.this.lambda$getTextValue$42(cArr, i, i2);
                return lambda$getTextValue$42;
            }
        })).intValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttribute(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.dke
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttribute$64(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttributeWithValue(final String str, final String str2, final String str3) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.eje
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttributeWithValue$67(str, str2, str3);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElement(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ale
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElement$55(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElementWithText(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ule
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElementWithText$61(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Node newDomNode(final XmlOptions xmlOptions) {
        return (Node) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.fje
            @Override // java.util.function.Supplier
            public final Object get() {
                Node lambda$newDomNode$14;
                lambda$newDomNode$14 = Cursor.this.lambda$newDomNode$14(xmlOptions);
                return lambda$newDomNode$14;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public InputStream newInputStream(final XmlOptions xmlOptions) {
        return (InputStream) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.pme
            @Override // java.util.function.Supplier
            public final Object get() {
                InputStream lambda$newInputStream$12;
                lambda$newInputStream$12 = Cursor.this.lambda$newInputStream$12(xmlOptions);
                return lambda$newInputStream$12;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public Reader newReader(final XmlOptions xmlOptions) {
        return (Reader) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.bje
            @Override // java.util.function.Supplier
            public final Object get() {
                Reader lambda$newReader$13;
                lambda$newReader$13 = Cursor.this.lambda$newReader$13(xmlOptions);
                return lambda$newReader$13;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XMLStreamReader newXMLStreamReader(final XmlOptions xmlOptions) {
        return (XMLStreamReader) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.bme
            @Override // java.util.function.Supplier
            public final Object get() {
                XMLStreamReader lambda$newXMLStreamReader$6;
                lambda$newXMLStreamReader$6 = Cursor.this.lambda$newXMLStreamReader$6(xmlOptions);
                return lambda$newXMLStreamReader$6;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final File file) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.c
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$8(file);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void selectPath(final String str, final XmlOptions xmlOptions) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.oke
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$selectPath$20(str, xmlOptions);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toChild(final String str, final String str2) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.nke
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toChild$32;
                lambda$toChild$32 = Cursor.this.lambda$toChild$32(str, str2);
                return lambda$toChild$32;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextSibling(final String str) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.cje
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toNextSibling$36;
                lambda$toNextSibling$36 = Cursor.this.lambda$toNextSibling$36(str);
                return lambda$toNextSibling$36;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public String xmlText(final XmlOptions xmlOptions) {
        return (String) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.lje
            @Override // java.util.function.Supplier
            public final Object get() {
                String lambda$xmlText$11;
                lambda$xmlText$11 = Cursor.this.lambda$xmlText$11(xmlOptions);
                return lambda$xmlText$11;
            }
        });
    }

    public static void validateLocalName(String str) {
        if (str != null) {
            if (str.length() != 0) {
                if (!XMLChar.isValidNCName(str)) {
                    throw new IllegalArgumentException("Name is not valid");
                }
                return;
            }
            throw new IllegalArgumentException("Name is empty");
        }
        throw new IllegalArgumentException("Name is null");
    }

    /* renamed from: _beginElement, reason: merged with bridge method [inline-methods] */
    public void lambda$beginElement$59(String str, String str2) {
        lambda$insertElementWithText$62(str, str2, null);
        _toPrevToken();
    }

    /* renamed from: _insertAttribute, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttribute$65(QName qName) {
        lambda$insertAttributeWithValue$68(qName, (String) null);
    }

    /* renamed from: _insertElement, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElement$54(QName qName) {
        lambda$insertElementWithText$60(qName, (String) null);
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$10(Writer writer) throws IOException {
        lambda$save$18(writer, (XmlOptions) null);
    }

    public boolean _toChild(int i) {
        return _toChild((QName) null, i);
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void beginElement(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.rie
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$beginElement$59(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public XmlCursor.XmlBookmark getBookmark(final Object obj) {
        return (XmlCursor.XmlBookmark) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.yie
            @Override // java.util.function.Supplier
            public final Object get() {
                XmlCursor.XmlBookmark lambda$getBookmark$49;
                lambda$getBookmark$49 = Cursor.this.lambda$getBookmark$49(obj);
                return lambda$getBookmark$49;
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttribute(final QName qName) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ake
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttribute$65(qName);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertAttributeWithValue(final QName qName, final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ile
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertAttributeWithValue$68(qName, str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElement(final String str, final String str2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ike
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElement$56(str, str2);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void insertElementWithText(final String str, final String str2, final String str3) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.dne
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$insertElementWithText$62(str, str2, str3);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final OutputStream outputStream) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.a
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$9(outputStream);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toChild(final QName qName) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.hle
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toChild$33;
                lambda$toChild$33 = Cursor.this.lambda$toChild$33(qName);
                return lambda$toChild$33;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextSibling(final String str, final String str2) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.zke
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toNextSibling$37;
                lambda$toNextSibling$37 = Cursor.this.lambda$toNextSibling$37(str, str2);
                return lambda$toNextSibling$37;
            }
        })).booleanValue();
    }

    private boolean preCheck() {
        checkThisCursor();
        return this._cur._locale.noSync();
    }

    /* renamed from: _insertAttributeWithValue, reason: merged with bridge method [inline-methods] */
    public void lambda$insertAttributeWithValue$68(QName qName, String str) {
        if (qName != null) {
            validateLocalName(qName.getLocalPart());
            Cur tempCur = this._cur._locale.tempCur();
            tempCur.createAttr(qName);
            insertNode(tempCur, str);
            tempCur.release();
            return;
        }
        throw new IllegalArgumentException("QName must not be null");
    }

    /* renamed from: _insertElementWithText, reason: merged with bridge method [inline-methods] */
    public void lambda$insertElementWithText$60(QName qName, String str) {
        validateLocalName(qName.getLocalPart());
        Cur tempCur = this._cur._locale.tempCur();
        tempCur.createElement(qName);
        insertNode(tempCur, str);
        tempCur.release();
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$7(ContentHandler contentHandler, LexicalHandler lexicalHandler) throws SAXException {
        lambda$save$15(contentHandler, lexicalHandler, null);
    }

    public boolean _toChild(String str, String str2) {
        validateLocalName(str2);
        return _toChild(this._cur._locale.makeQName(str, str2), 0);
    }

    public boolean _toNextSibling(QName qName) {
        this._cur.push();
        while (___toNextSibling()) {
            if (this._cur.getName().equals(qName)) {
                this._cur.popButStay();
                return true;
            }
        }
        this._cur.pop();
        return false;
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final Writer writer) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.d
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$10(writer);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toChild(final int i) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.pje
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toChild$34;
                lambda$toChild$34 = Cursor.this.lambda$toChild$34(i);
                return lambda$toChild$34;
            }
        })).booleanValue();
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toNextSibling(final QName qName) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.xle
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toNextSibling$38;
                lambda$toNextSibling$38 = Cursor.this.lambda$toNextSibling$38(qName);
                return lambda$toNextSibling$38;
            }
        })).booleanValue();
    }

    public Cursor(Cur cur) {
        this(cur._xobj, cur._pos);
    }

    /* renamed from: _beginElement, reason: merged with bridge method [inline-methods] */
    public void lambda$beginElement$57(QName qName) {
        lambda$insertElementWithText$60(qName, (String) null);
        _toPrevToken();
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$15(ContentHandler contentHandler, LexicalHandler lexicalHandler, XmlOptions xmlOptions) throws SAXException {
        new Saver.SaxSaver(this._cur, xmlOptions, contentHandler, lexicalHandler);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final ContentHandler contentHandler, final LexicalHandler lexicalHandler, final XmlOptions xmlOptions) throws SAXException {
        syncWrapSAXEx(new WrapSAXEx() { // from class: org.apache.xmlbeans.impl.store.h
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapSAXEx
            public final void run() {
                Cursor.this.lambda$save$15(contentHandler, lexicalHandler, xmlOptions);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public boolean toChild(final QName qName, final int i) {
        return ((Boolean) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.hke
            @Override // java.util.function.Supplier
            public final Object get() {
                Boolean lambda$toChild$35;
                lambda$toChild$35 = Cursor.this.lambda$toChild$35(qName, i);
                return lambda$toChild$35;
            }
        })).booleanValue();
    }

    private boolean isValid() {
        return isValid(this._cur);
    }

    private <T> T syncWrap(Supplier<T> supplier) {
        T t;
        if (preCheck()) {
            return (T) syncWrapHelper((Supplier) supplier, true);
        }
        synchronized (this._cur._locale) {
            t = (T) syncWrapHelper((Supplier) supplier, true);
        }
        return t;
    }

    private <T> T syncWrapHelper(Supplier<T> supplier, boolean z) {
        Locale locale = this._cur._locale;
        if (z) {
            locale.enter();
        }
        try {
            return supplier.get();
        } finally {
            if (z) {
                locale.exit();
            }
        }
    }

    private void syncWrapNoEnter(Runnable runnable) {
        if (preCheck()) {
            syncWrapHelper(runnable, false);
            return;
        }
        synchronized (this._cur._locale) {
            syncWrapHelper(runnable, false);
        }
    }

    public int _getTextValue(char[] cArr, int i, int i2) {
        if (this._cur.isText()) {
            return _getChars(cArr, i, i2);
        }
        if (cArr == null) {
            throw new IllegalArgumentException("char buffer is null");
        }
        if (i >= 0) {
            if (i < cArr.length) {
                if (i2 < 0) {
                    i2 = Integer.MAX_VALUE;
                }
                if (i + i2 > cArr.length) {
                    i2 = cArr.length - i;
                }
                if (this._cur.isNode()) {
                    if (this._cur.hasChildren()) {
                        return Locale.getTextValue(this._cur, cArr, i, i2);
                    }
                    Object firstChars = this._cur.getFirstChars();
                    Cur cur = this._cur;
                    if (cur._cchSrc > i2) {
                        cur._cchSrc = i2;
                    }
                    int i3 = cur._cchSrc;
                    if (i3 <= 0) {
                        return 0;
                    }
                    CharUtil.getChars(cArr, i, firstChars, cur._offSrc, i3);
                    return this._cur._cchSrc;
                }
                throw new IllegalStateException("Can't get text value, current token can have no text value");
            }
            throw new IllegalArgumentException("offset off end");
        }
        throw new IllegalArgumentException("offset < 0");
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$16(File file, XmlOptions xmlOptions) throws IOException {
        if (file != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                lambda$save$17(fileOutputStream, xmlOptions);
                fileOutputStream.close();
                return;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileOutputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        }
        throw new IllegalArgumentException("Null file specified");
    }

    public boolean _toChild(QName qName, int i) {
        return Locale.toChild(this._cur, qName, i);
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final File file, final XmlOptions xmlOptions) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.f
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$16(file, xmlOptions);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final OutputStream outputStream, final XmlOptions xmlOptions) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.e
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$17(outputStream, xmlOptions);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void setTextValue(final String str) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.ame
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$setTextValue$43(str);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public void save(final Writer writer, final XmlOptions xmlOptions) throws IOException {
        syncWrapIOEx(new WrapIOEx() { // from class: org.apache.xmlbeans.impl.store.g
            @Override // org.apache.xmlbeans.impl.store.Cursor.WrapIOEx
            public final void run() {
                Cursor.this.lambda$save$18(writer, xmlOptions);
            }
        });
    }

    @Override // org.apache.xmlbeans.XmlCursor
    public void setTextValue(final char[] cArr, final int i, final int i2) {
        syncWrap(new Runnable() { // from class: com.sunia.HTREnginev2.tle
            @Override // java.lang.Runnable
            public final void run() {
                Cursor.this.lambda$setTextValue$44(cArr, i, i2);
            }
        });
    }

    private void syncWrapHelper(WrapSAXEx wrapSAXEx) throws SAXException {
        Locale locale = this._cur._locale;
        locale.enter();
        try {
            wrapSAXEx.run();
        } finally {
            locale.exit();
        }
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$17(OutputStream outputStream, XmlOptions xmlOptions) throws IOException {
        if (outputStream != null) {
            InputStream lambda$newInputStream$12 = lambda$newInputStream$12(xmlOptions);
            try {
                byte[] bArr = new byte[8192];
                while (true) {
                    int read = lambda$newInputStream$12.read(bArr);
                    if (read < 0) {
                        lambda$newInputStream$12.close();
                        return;
                    }
                    outputStream.write(bArr, 0, read);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (lambda$newInputStream$12 != null) {
                        try {
                            lambda$newInputStream$12.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } else {
            throw new IllegalArgumentException("Null OutputStream specified");
        }
    }

    @Override // org.apache.xmlbeans.XmlTokenSource
    public XmlCursor newCursor() {
        return (XmlCursor) syncWrap(new Supplier() { // from class: com.sunia.HTREnginev2.gme
            @Override // java.util.function.Supplier
            public final Object get() {
                return Cursor.this._newCursor();
            }
        });
    }

    private void syncWrapHelper(WrapIOEx wrapIOEx) throws IOException {
        Locale locale = this._cur._locale;
        locale.enter();
        try {
            wrapIOEx.run();
        } finally {
            locale.exit();
        }
    }

    /* renamed from: _save, reason: merged with bridge method [inline-methods] */
    public void lambda$save$18(Writer writer, XmlOptions xmlOptions) throws IOException {
        if (writer != null) {
            if (xmlOptions != null && xmlOptions.isSaveOptimizeForSpeed()) {
                Saver.OptimizedForSpeedSaver.save(this._cur, writer);
                return;
            }
            Reader lambda$newReader$13 = lambda$newReader$13(xmlOptions);
            try {
                char[] cArr = new char[8192];
                while (true) {
                    int read = lambda$newReader$13.read(cArr);
                    if (read < 0) {
                        lambda$newReader$13.close();
                        return;
                    }
                    writer.write(cArr, 0, read);
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (lambda$newReader$13 != null) {
                        try {
                            lambda$newReader$13.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } else {
            throw new IllegalArgumentException("Null Writer specified");
        }
    }

    private int twoLocaleOp(Cursor cursor, int i, int i2) {
        Locale locale = this._cur._locale;
        Locale locale2 = cursor._cur._locale;
        locale.enter(locale2);
        try {
            if (i == 0) {
                return _moveXml(cursor) ? 1 : 0;
            }
            if (i == 1) {
                return _copyXml(cursor) ? 1 : 0;
            }
            if (i == 2) {
                return _moveXmlContents(cursor) ? 1 : 0;
            }
            if (i == 3) {
                return _copyXmlContents(cursor) ? 1 : 0;
            }
            if (i == 4) {
                return _moveChars(i2, cursor);
            }
            if (i == 5) {
                return _copyChars(i2, cursor);
            }
            throw new RuntimeException("Unknown operation: " + i);
        } finally {
            locale.exit(locale2);
        }
    }
}
