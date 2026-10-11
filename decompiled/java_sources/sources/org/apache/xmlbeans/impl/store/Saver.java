package org.apache.xmlbeans.impl.store;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.xml.namespace.QName;
import org.apache.logging.log4j.util.Chars;
import org.apache.xmlbeans.SystemProperties;
import org.apache.xmlbeans.XmlDocumentProperties;
import org.apache.xmlbeans.XmlOptionCharEscapeMap;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.EncodingMap;
import org.apache.xmlbeans.impl.store.Saver;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public abstract class Saver {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int ATTR = 3;
    static final int COMMENT = 4;
    static final int ELEM = 2;
    static final int PROCINST = 5;
    static final int ROOT = 1;
    static final int TEXT = 0;
    static final String _newLine = SystemProperties.getProperty("line.separator", "\n");
    private List<String> _ancestorNamespaces;
    private SaveCur _cur;
    private int _currentMapping;
    private String _initialDefaultUri;
    private final Locale _locale;
    private Map<String, String> _preComputedNamespaces;
    protected XmlOptionCharEscapeMap _replaceChar;
    private final boolean _saveNamespacesFirst;
    private final Map<String, String> _suggestedPrefixes;
    private final boolean _useDefaultNamespace;
    private final long _version;
    private final ArrayList<QName> _attrNames = new ArrayList<>();
    private final ArrayList<String> _attrValues = new ArrayList<>();
    private final ArrayList<String> _namespaceStack = new ArrayList<>();
    private final HashMap<String, String> _uriMap = new HashMap<>();
    private final HashMap<String, String> _prefixMap = new HashMap<>();

    /* loaded from: classes13.dex */
    public static final class DocSaveCur extends SaveCur {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private Cur _cur;

        public DocSaveCur(Cur cur) {
            this._cur = cur.weakCur(this);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public List<String> getAncestorNamespaces() {
            return null;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getAttrValue() {
            return this._cur.getValueAsString();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public Object getChars() {
            Object chars = this._cur.getChars(-1);
            Cur cur = this._cur;
            this._offSrc = cur._offSrc;
            this._cchSrc = cur._cchSrc;
            return chars;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public XmlDocumentProperties getDocProps() {
            return Locale.getDocProps(this._cur, false);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public QName getName() {
            return this._cur.getName();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsPrefix() {
            return this._cur.getXmlnsPrefix();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsUri() {
            return this._cur.getXmlnsUri();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasChildren() {
            return this._cur.hasChildren();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasText() {
            return this._cur.hasText();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isTextCData() {
            return this._cur.isTextCData();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isXmlns() {
            return this._cur.isXmlns();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public int kind() {
            return this._cur.kind();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean next() {
            return this._cur.next();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void pop() {
            this._cur.pop();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void push() {
            this._cur.push();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void release() {
            this._cur.release();
            this._cur = null;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void toEnd() {
            this._cur.toEnd();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toFirstAttr() {
            return this._cur.toFirstAttr();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toNextAttr() {
            return this._cur.toNextAttr();
        }
    }

    /* loaded from: classes13.dex */
    public static final class FilterPiSaveCur extends FilterSaveCur {
        private final String _piTarget;

        public FilterPiSaveCur(SaveCur saveCur, String str) {
            super(saveCur);
            this._piTarget = str;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.FilterSaveCur
        public boolean filter() {
            return kind() == 5 && getName().getLocalPart().equals(this._piTarget);
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class FilterSaveCur extends SaveCur {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private SaveCur _cur;

        public FilterSaveCur(SaveCur saveCur) {
            this._cur = saveCur;
        }

        public abstract boolean filter();

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public List<String> getAncestorNamespaces() {
            return this._cur.getAncestorNamespaces();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getAttrValue() {
            return this._cur.getAttrValue();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public Object getChars() {
            Object chars = this._cur.getChars();
            SaveCur saveCur = this._cur;
            this._offSrc = saveCur._offSrc;
            this._cchSrc = saveCur._cchSrc;
            return chars;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public XmlDocumentProperties getDocProps() {
            return this._cur.getDocProps();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public QName getName() {
            return this._cur.getName();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsPrefix() {
            return this._cur.getXmlnsPrefix();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsUri() {
            return this._cur.getXmlnsUri();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasChildren() {
            return this._cur.hasChildren();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasText() {
            return this._cur.hasText();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isTextCData() {
            return this._cur.isTextCData();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isXmlns() {
            return this._cur.isXmlns();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public int kind() {
            return this._cur.kind();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean next() {
            if (!this._cur.next()) {
                return false;
            }
            if (!filter()) {
                return true;
            }
            toEnd();
            return next();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void pop() {
            this._cur.pop();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void push() {
            this._cur.push();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void release() {
            this._cur.release();
            this._cur = null;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void toEnd() {
            this._cur.toEnd();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toFirstAttr() {
            return this._cur.toFirstAttr();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toNextAttr() {
            return this._cur.toNextAttr();
        }
    }

    /* loaded from: classes13.dex */
    public static final class FragSaveCur extends SaveCur {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int CUR = 5;
        private static final int ELEM_END = 4;
        private static final int ELEM_START = 2;
        private static final int ROOT_END = 3;
        private static final int ROOT_START = 1;
        private ArrayList<String> _ancestorNamespaces;
        private Cur _cur;
        private final QName _elem;
        private Cur _end;
        private final boolean _saveAttr;
        private int _state;
        private int[] _stateStack;
        private int _stateStackSize;

        public FragSaveCur(Cur cur, Cur cur2, QName qName) {
            this._saveAttr = cur.isAttr() && cur.isSamePos(cur2);
            this._cur = cur.weakCur(this);
            this._end = cur2.weakCur(this);
            this._elem = qName;
            this._state = 1;
            this._stateStack = new int[8];
            cur.push();
            computeAncestorNamespaces(cur);
            cur.pop();
        }

        private void computeAncestorNamespaces(Cur cur) {
            this._ancestorNamespaces = new ArrayList<>();
            while (cur.toParentRaw()) {
                if (cur.toFirstAttr()) {
                    do {
                        if (cur.isXmlns()) {
                            String xmlnsPrefix = cur.getXmlnsPrefix();
                            if (cur.getXmlnsUri().length() > 0 || xmlnsPrefix.length() == 0) {
                                this._ancestorNamespaces.add(cur.getXmlnsPrefix());
                                this._ancestorNamespaces.add(cur.getXmlnsUri());
                            }
                        }
                    } while (cur.toNextAttr());
                    cur.toParent();
                }
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public List<String> getAncestorNamespaces() {
            return this._ancestorNamespaces;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getAttrValue() {
            return this._cur.getValueAsString();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public Object getChars() {
            Object chars = this._cur.getChars(-1);
            Cur cur = this._cur;
            this._offSrc = cur._offSrc;
            this._cchSrc = cur._cchSrc;
            return chars;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public XmlDocumentProperties getDocProps() {
            return Locale.getDocProps(this._cur, false);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public QName getName() {
            int i = this._state;
            if (i == 1) {
                return null;
            }
            if (i != 2) {
                if (i == 3) {
                    return null;
                }
                if (i != 4) {
                    return this._cur.getName();
                }
            }
            return this._elem;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsPrefix() {
            return this._cur.getXmlnsPrefix();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsUri() {
            return this._cur.getXmlnsUri();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasChildren() {
            boolean z = false;
            if (isContainer()) {
                push();
                next();
                if (!isText() && !isFinish()) {
                    z = true;
                }
                pop();
            }
            return z;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasText() {
            if (!isContainer()) {
                return false;
            }
            push();
            next();
            boolean isText = isText();
            pop();
            return isText;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isTextCData() {
            return this._cur.isTextCData();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isXmlns() {
            return this._cur.isXmlns();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public int kind() {
            int i = this._state;
            int i2 = 1;
            if (i != 1) {
                i2 = 2;
                if (i != 2) {
                    if (i == 3) {
                        return -1;
                    }
                    if (i != 4) {
                        return this._cur.kind();
                    }
                    return -2;
                }
            }
            return i2;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean next() {
            int i = this._state;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return false;
                    }
                    if (i == 4) {
                        this._state = 3;
                    } else if (i == 5) {
                        this._cur.next();
                        if (this._cur.isSamePos(this._end)) {
                            this._state = this._elem == null ? 3 : 4;
                        }
                    }
                } else if (this._saveAttr) {
                    this._state = 4;
                } else {
                    if (this._cur.isAttr()) {
                        this._cur.toParent();
                        this._cur.next();
                    }
                    if (this._cur.isSamePos(this._end)) {
                        this._state = 4;
                    } else {
                        this._state = 5;
                    }
                }
            } else {
                this._state = this._elem == null ? 5 : 2;
            }
            return true;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void pop() {
            this._cur.pop();
            int[] iArr = this._stateStack;
            int i = this._stateStackSize - 1;
            this._stateStackSize = i;
            this._state = iArr[i];
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void push() {
            int i = this._stateStackSize;
            int[] iArr = this._stateStack;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                this._stateStack = iArr2;
            }
            int[] iArr3 = this._stateStack;
            int i2 = this._stateStackSize;
            this._stateStackSize = i2 + 1;
            iArr3[i2] = this._state;
            this._cur.push();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void release() {
            this._cur.release();
            this._cur = null;
            this._end.release();
            this._end = null;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void toEnd() {
            int i = this._state;
            if (i == 1) {
                this._state = 3;
                return;
            }
            if (i == 2) {
                this._state = 4;
            } else {
                if (i == 3 || i == 4) {
                    return;
                }
                this._cur.toEnd();
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toFirstAttr() {
            int i = this._state;
            if (i == 1 || i == 3 || i == 4) {
                return false;
            }
            if (i == 5) {
                return this._cur.toFirstAttr();
            }
            if (!this._cur.isAttr()) {
                return false;
            }
            this._state = 5;
            return true;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toNextAttr() {
            return !this._saveAttr && this._cur.toNextAttr();
        }
    }

    /* loaded from: classes13.dex */
    public static final class PrettySaveCur extends SaveCur {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final SaveCur _cur;
        private int _depth;
        private int _prettyIndent;
        private int _prettyOffset;
        private String _txt;
        private final boolean _useCDataBookmarks;
        private boolean _isTextCData = false;
        private final StringBuffer _sb = new StringBuffer();
        private final ArrayList<Object> _stack = new ArrayList<>();

        public PrettySaveCur(SaveCur saveCur, XmlOptions xmlOptions) {
            this._cur = saveCur;
            this._prettyIndent = 2;
            if (xmlOptions.getSavePrettyPrintIndent() != null) {
                this._prettyIndent = xmlOptions.getSavePrettyPrintIndent().intValue();
            }
            if (xmlOptions.getSavePrettyPrintOffset() != null) {
                this._prettyOffset = xmlOptions.getSavePrettyPrintOffset().intValue();
            }
            this._useCDataBookmarks = xmlOptions.isUseCDataBookmarks();
        }

        public static void spaces(StringBuffer stringBuffer, int i, int i2) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 <= 0) {
                    return;
                }
                stringBuffer.insert(i, ' ');
                i2 = i3;
            }
        }

        public static void trim(StringBuffer stringBuffer) {
            int i = 0;
            while (i < stringBuffer.length() && CharUtil.isWhiteSpace(stringBuffer.charAt(i))) {
                i++;
            }
            stringBuffer.delete(0, i);
            int length = stringBuffer.length();
            while (length > 0 && CharUtil.isWhiteSpace(stringBuffer.charAt(length - 1))) {
                length--;
            }
            stringBuffer.delete(length, stringBuffer.length());
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public List<String> getAncestorNamespaces() {
            return this._cur.getAncestorNamespaces();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getAttrValue() {
            return this._cur.getAttrValue();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public Object getChars() {
            String str = this._txt;
            if (str != null) {
                this._offSrc = 0;
                this._cchSrc = str.length();
                return this._txt;
            }
            Object chars = this._cur.getChars();
            SaveCur saveCur = this._cur;
            this._offSrc = saveCur._offSrc;
            this._cchSrc = saveCur._cchSrc;
            return chars;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public XmlDocumentProperties getDocProps() {
            return this._cur.getDocProps();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public QName getName() {
            return this._cur.getName();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsPrefix() {
            return this._cur.getXmlnsPrefix();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public String getXmlnsUri() {
            return this._cur.getXmlnsUri();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasChildren() {
            return this._txt == null && this._cur.hasChildren();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean hasText() {
            return this._txt == null && this._cur.hasText();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isTextCData() {
            return this._txt == null ? this._useCDataBookmarks && this._cur.isTextCData() : this._isTextCData;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean isXmlns() {
            return this._txt == null && this._cur.isXmlns();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public int kind() {
            if (this._txt == null) {
                return this._cur.kind();
            }
            return 0;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean next() {
            int i = 0;
            if (this._txt != null) {
                this._txt = null;
                this._isTextCData = false;
                i = this._cur.kind();
            } else {
                int kind = this._cur.kind();
                if (!this._cur.next()) {
                    return false;
                }
                StringBuffer stringBuffer = this._sb;
                stringBuffer.delete(0, stringBuffer.length());
                if (this._cur.isText()) {
                    this._isTextCData = this._useCDataBookmarks && this._cur.isTextCData();
                    StringBuffer stringBuffer2 = this._sb;
                    Object chars = this._cur.getChars();
                    SaveCur saveCur = this._cur;
                    CharUtil.getString(stringBuffer2, chars, saveCur._offSrc, saveCur._cchSrc);
                    this._cur.next();
                    int kind2 = this._cur.kind();
                    if (kind != 2 || kind2 != -2) {
                        trim(this._sb);
                    }
                }
                int kind3 = this._cur.kind();
                if (this._prettyIndent >= 0 && kind != 4 && kind != 5 && (kind != 2 || kind3 != -2)) {
                    if (this._sb.length() > 0) {
                        StringBuffer stringBuffer3 = this._sb;
                        String str = Saver._newLine;
                        stringBuffer3.insert(0, str);
                        spaces(this._sb, str.length(), this._prettyOffset + (this._prettyIndent * this._depth));
                    }
                    if (kind3 != -1) {
                        if (kind != 1) {
                            this._sb.append(Saver._newLine);
                        }
                        int i2 = this._depth;
                        if (kind3 < 0) {
                            i2--;
                        }
                        StringBuffer stringBuffer4 = this._sb;
                        spaces(stringBuffer4, stringBuffer4.length(), this._prettyOffset + (this._prettyIndent * i2));
                    }
                }
                if (this._sb.length() > 0) {
                    this._txt = this._sb.toString();
                } else {
                    i = kind3;
                }
            }
            if (i == 2) {
                this._depth++;
            } else if (i == -2) {
                this._depth--;
            }
            return true;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void pop() {
            this._cur.pop();
            this._depth = ((Integer) this._stack.remove(r0.size() - 1)).intValue();
            this._txt = (String) this._stack.remove(r0.size() - 1);
            this._isTextCData = false;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void push() {
            this._cur.push();
            this._stack.add(this._txt);
            this._stack.add(Integer.valueOf(this._depth));
            this._isTextCData = false;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void release() {
            this._cur.release();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public void toEnd() {
            this._cur.toEnd();
            if (this._cur.kind() == -2) {
                this._depth--;
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toFirstAttr() {
            return this._cur.toFirstAttr();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver.SaveCur
        public boolean toNextAttr() {
            return this._cur.toNextAttr();
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class SaveCur {
        int _cchSrc;
        int _offSrc;

        public abstract List<String> getAncestorNamespaces();

        public abstract String getAttrValue();

        public abstract Object getChars();

        public abstract XmlDocumentProperties getDocProps();

        public abstract QName getName();

        public abstract String getXmlnsPrefix();

        public abstract String getXmlnsUri();

        public abstract boolean hasChildren();

        public abstract boolean hasText();

        public final boolean isAttr() {
            return kind() == 3;
        }

        public final boolean isComment() {
            return kind() == 4;
        }

        public final boolean isContainer() {
            return Cur.kindIsContainer(kind());
        }

        public final boolean isElem() {
            return kind() == 2;
        }

        public final boolean isFinish() {
            return Cur.kindIsFinish(kind());
        }

        public final boolean isNormalAttr() {
            return kind() == 3 && !isXmlns();
        }

        public final boolean isProcinst() {
            return kind() == 5;
        }

        public final boolean isRoot() {
            return kind() == 1;
        }

        public final boolean isText() {
            return kind() == 0;
        }

        public abstract boolean isTextCData();

        public abstract boolean isXmlns();

        public abstract int kind();

        public abstract boolean next();

        public abstract void pop();

        public abstract void push();

        public abstract void release();

        public final boolean skip() {
            toEnd();
            return next();
        }

        public abstract void toEnd();

        public abstract boolean toFirstAttr();

        public abstract boolean toNextAttr();
    }

    /* loaded from: classes13.dex */
    public static final class SaxSaver extends Saver {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final AttributesImpl _attributes;
        private char[] _buf;
        private final ContentHandler _contentHandler;
        private final LexicalHandler _lexicalHandler;
        private final boolean _nsAsAttrs;

        /* loaded from: classes13.dex */
        public static class SaverSAXException extends RuntimeException {
            SAXException _saxException;

            public SaverSAXException(SAXException sAXException) {
                this._saxException = sAXException;
            }
        }

        public SaxSaver(Cur cur, XmlOptions xmlOptions, ContentHandler contentHandler, LexicalHandler lexicalHandler) throws SAXException {
            super(cur, xmlOptions);
            this._contentHandler = contentHandler;
            this._lexicalHandler = lexicalHandler;
            this._attributes = new AttributesImpl();
            this._nsAsAttrs = !xmlOptions.isSaveSaxNoNSDeclsInAttributes();
            contentHandler.startDocument();
            do {
                try {
                } catch (SaverSAXException e) {
                    throw e._saxException;
                }
            } while (process());
            this._contentHandler.endDocument();
        }

        private void emitNamespacesHelper() {
            iterateMappings();
            while (hasMapping()) {
                String mappingPrefix = mappingPrefix();
                String mappingUri = mappingUri();
                try {
                    this._contentHandler.startPrefixMapping(mappingPrefix, mappingUri);
                    if (this._nsAsAttrs) {
                        if (mappingPrefix == null || mappingPrefix.length() == 0) {
                            this._attributes.addAttribute("http://www.w3.org/2000/xmlns/", "xmlns", "xmlns", "CDATA", mappingUri);
                        } else {
                            this._attributes.addAttribute("http://www.w3.org/2000/xmlns/", mappingPrefix, "xmlns:" + mappingPrefix, "CDATA", mappingUri);
                        }
                    }
                    nextMapping();
                } catch (SAXException e) {
                    throw new SaverSAXException(e);
                }
            }
        }

        private String getPrefixedName(QName qName) {
            String namespaceURI = qName.getNamespaceURI();
            String localPart = qName.getLocalPart();
            if (namespaceURI.length() == 0) {
                return localPart;
            }
            String uriMapping = getUriMapping(namespaceURI);
            if (uriMapping.length() == 0) {
                return localPart;
            }
            return uriMapping + ":" + localPart;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitComment(SaveCur saveCur) {
            if (this._lexicalHandler != null) {
                saveCur.push();
                saveCur.next();
                try {
                    if (saveCur.isText()) {
                        Object chars = saveCur.getChars();
                        if (chars instanceof char[]) {
                            this._lexicalHandler.comment((char[]) chars, saveCur._offSrc, saveCur._cchSrc);
                        } else {
                            char[] cArr = this._buf;
                            if (cArr == null || cArr.length < saveCur._cchSrc) {
                                this._buf = new char[Math.max(1024, saveCur._cchSrc)];
                            }
                            CharUtil.getChars(this._buf, 0, chars, saveCur._offSrc, saveCur._cchSrc);
                            this._lexicalHandler.comment(this._buf, 0, saveCur._cchSrc);
                        }
                    } else {
                        this._lexicalHandler.comment(null, 0, 0);
                    }
                    saveCur.pop();
                } catch (SAXException e) {
                    throw new SaverSAXException(e);
                }
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitDocType(String str, String str2, String str3) {
            LexicalHandler lexicalHandler = this._lexicalHandler;
            if (lexicalHandler != null) {
                try {
                    lexicalHandler.startDTD(str, str2, str3);
                    this._lexicalHandler.endDTD();
                } catch (SAXException e) {
                    throw new SaverSAXException(e);
                }
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public boolean emitElement(SaveCur saveCur, List<QName> list, List<String> list2) {
            this._attributes.clear();
            if (saveNamespacesFirst()) {
                emitNamespacesHelper();
            }
            for (int i = 0; i < list.size(); i++) {
                QName qName = list.get(i);
                this._attributes.addAttribute(qName.getNamespaceURI(), qName.getLocalPart(), getPrefixedName(qName), "CDATA", list2.get(i));
            }
            if (!saveNamespacesFirst()) {
                emitNamespacesHelper();
            }
            QName name = saveCur.getName();
            try {
                this._contentHandler.startElement(name.getNamespaceURI(), name.getLocalPart(), getPrefixedName(name), this._attributes);
                return false;
            } catch (SAXException e) {
                throw new SaverSAXException(e);
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitEndDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitFinish(SaveCur saveCur) {
            QName name = saveCur.getName();
            try {
                this._contentHandler.endElement(name.getNamespaceURI(), name.getLocalPart(), getPrefixedName(name));
                iterateMappings();
                while (hasMapping()) {
                    this._contentHandler.endPrefixMapping(mappingPrefix());
                    nextMapping();
                }
            } catch (SAXException e) {
                throw new SaverSAXException(e);
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitProcinst(SaveCur saveCur) {
            saveCur.push();
            saveCur.next();
            String string = CharUtil.getString(saveCur.getChars(), saveCur._offSrc, saveCur._cchSrc);
            saveCur.pop();
            try {
                this._contentHandler.processingInstruction(saveCur.getName().getLocalPart(), string);
            } catch (SAXException e) {
                throw new SaverSAXException(e);
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitStartDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitText(SaveCur saveCur) {
            Object chars = saveCur.getChars();
            try {
                if (chars instanceof char[]) {
                    this._contentHandler.characters((char[]) chars, saveCur._offSrc, saveCur._cchSrc);
                    return;
                }
                if (this._buf == null) {
                    this._buf = new char[1024];
                }
                while (true) {
                    int i = saveCur._cchSrc;
                    if (i <= 0) {
                        return;
                    }
                    int min = Math.min(this._buf.length, i);
                    CharUtil.getChars(this._buf, 0, chars, saveCur._offSrc, min);
                    this._contentHandler.characters(this._buf, 0, min);
                    saveCur._offSrc += min;
                    saveCur._cchSrc -= min;
                }
            } catch (SAXException e) {
                throw new SaverSAXException(e);
            }
        }
    }

    /* loaded from: classes13.dex */
    public interface SyncWrapFun {
        int process() throws IOException;
    }

    /* loaded from: classes13.dex */
    public static final class SynthNamespaceSaver extends Saver {
        LinkedHashMap<String, String> _synthNamespaces;

        public SynthNamespaceSaver(Cur cur, XmlOptions xmlOptions) {
            super(cur, xmlOptions);
            this._synthNamespaces = new LinkedHashMap<>();
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitComment(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitDocType(String str, String str2, String str3) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public boolean emitElement(SaveCur saveCur, List<QName> list, List<String> list2) {
            return false;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitEndDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitFinish(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitProcinst(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitStartDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitText(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void syntheticNamespace(String str, String str2, boolean z) {
            LinkedHashMap<String, String> linkedHashMap = this._synthNamespaces;
            if (z) {
                str = "";
            }
            linkedHashMap.put(str2, str);
        }
    }

    public Saver(Cur cur, XmlOptions xmlOptions) {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        this._cur = createSaveCur(cur, maskNull);
        Locale locale = cur._locale;
        this._locale = locale;
        this._version = locale.version();
        addMapping("xml", "http://www.w3.org/XML/1998/namespace");
        Map<String, String> saveImplicitNamespaces = maskNull.getSaveImplicitNamespaces();
        if (saveImplicitNamespaces != null) {
            for (String str : saveImplicitNamespaces.keySet()) {
                addMapping(str, saveImplicitNamespaces.get(str));
            }
        }
        this._replaceChar = maskNull.getSaveSubstituteCharacters();
        if (getNamespaceForPrefix("") == null) {
            this._initialDefaultUri = "";
            addMapping("", "");
        }
        if (maskNull.isSaveAggressiveNamespaces() && !(this instanceof SynthNamespaceSaver)) {
            SynthNamespaceSaver synthNamespaceSaver = new SynthNamespaceSaver(cur, maskNull);
            do {
            } while (synthNamespaceSaver.process());
            if (!synthNamespaceSaver._synthNamespaces.isEmpty()) {
                this._preComputedNamespaces = synthNamespaceSaver._synthNamespaces;
            }
        }
        this._useDefaultNamespace = maskNull.isUseDefaultNamespace();
        this._saveNamespacesFirst = maskNull.isSaveNamespacesFirst();
        this._suggestedPrefixes = maskNull.getSaveSuggestedPrefixes();
        this._ancestorNamespaces = this._cur.getAncestorNamespaces();
    }

    private void addMapping(String str, String str2) {
        String str3;
        String str4 = this._prefixMap.get(str);
        if (str4 == null) {
            str3 = null;
        } else if (!str4.equals(str2)) {
            int size = this._namespaceStack.size();
            str3 = null;
            while (size > 0) {
                if (this._namespaceStack.get(size - 1) != null) {
                    if (this._namespaceStack.get(size - 7).equals(str4) && ((str3 = this._namespaceStack.get(size - 8)) == null || !str3.equals(str))) {
                        break;
                    } else {
                        size -= 8;
                    }
                } else {
                    size--;
                }
            }
        } else {
            str4 = null;
            str3 = null;
        }
        this._namespaceStack.add(this._uriMap.get(str2));
        this._namespaceStack.add(str2);
        if (str4 != null) {
            this._namespaceStack.add(this._uriMap.get(str4));
            this._namespaceStack.add(str4);
        } else {
            this._namespaceStack.add(null);
            this._namespaceStack.add(null);
        }
        this._namespaceStack.add(str);
        this._namespaceStack.add(this._prefixMap.get(str));
        this._namespaceStack.add(str);
        this._namespaceStack.add(str2);
        this._uriMap.put(str2, str);
        this._prefixMap.put(str, str2);
        if (str4 != null) {
            this._uriMap.put(str4, str3);
        }
    }

    private void addNewFrameMapping(String str, String str2, boolean z) {
        if (str.length() == 0 || str2.length() > 0) {
            if (!z || str.length() > 0 || str2.length() == 0) {
                iterateMappings();
                while (hasMapping()) {
                    if (mappingPrefix().equals(str)) {
                        return;
                    } else {
                        nextMapping();
                    }
                }
                if (str2.equals(getNamespaceForPrefix(str))) {
                    return;
                }
                addMapping(str, str2);
            }
        }
    }

    private static SaveCur createSaveCur(Cur cur, XmlOptions xmlOptions) {
        SaveCur fragSaveCur;
        QName saveSyntheticDocumentElement = xmlOptions.getSaveSyntheticDocumentElement();
        QName qName = saveSyntheticDocumentElement == null ? xmlOptions.isSaveUseOpenFrag() ? Locale._openuriFragment : Locale._xmlFragment : saveSyntheticDocumentElement;
        boolean z = xmlOptions.isSaveInner() && !xmlOptions.isSaveOuter();
        Cur tempCur = cur.tempCur();
        Cur tempCur2 = cur.tempCur();
        int kind = cur.kind();
        if (kind != 1) {
            fragSaveCur = null;
            if (kind == 2) {
                if (z) {
                    positionToInner(cur, tempCur, tempCur2);
                    if (Locale.isFragment(tempCur, tempCur2)) {
                        saveSyntheticDocumentElement = qName;
                    }
                    fragSaveCur = new FragSaveCur(tempCur, tempCur2, saveSyntheticDocumentElement);
                } else if (saveSyntheticDocumentElement != null) {
                    positionToInner(cur, tempCur, tempCur2);
                    fragSaveCur = new FragSaveCur(tempCur, tempCur2, saveSyntheticDocumentElement);
                } else {
                    tempCur.moveToCur(cur);
                    tempCur2.moveToCur(cur);
                    tempCur2.skip();
                    fragSaveCur = new FragSaveCur(tempCur, tempCur2, null);
                }
            }
        } else {
            positionToInner(cur, tempCur, tempCur2);
            fragSaveCur = Locale.isFragment(tempCur, tempCur2) ? new FragSaveCur(tempCur, tempCur2, qName) : saveSyntheticDocumentElement != null ? new FragSaveCur(tempCur, tempCur2, saveSyntheticDocumentElement) : new DocSaveCur(cur);
        }
        if (fragSaveCur == null) {
            if (kind < 0) {
                tempCur.moveToCur(cur);
                tempCur2.moveToCur(cur);
            } else if (kind == 0) {
                tempCur.moveToCur(cur);
                tempCur2.moveToCur(cur);
                tempCur2.next();
            } else if (z) {
                tempCur.moveToCur(cur);
                tempCur.next();
                tempCur2.moveToCur(cur);
                tempCur2.toEnd();
            } else if (kind == 3) {
                tempCur.moveToCur(cur);
                tempCur2.moveToCur(cur);
            } else {
                tempCur.moveToCur(cur);
                tempCur2.moveToCur(cur);
                tempCur2.skip();
            }
            fragSaveCur = new FragSaveCur(tempCur, tempCur2, qName);
        }
        String saveFilterProcinst = xmlOptions.getSaveFilterProcinst();
        if (saveFilterProcinst != null) {
            fragSaveCur = new FilterPiSaveCur(fragSaveCur, saveFilterProcinst);
        }
        if (xmlOptions.isSavePrettyPrint()) {
            fragSaveCur = new PrettySaveCur(fragSaveCur, xmlOptions);
        }
        tempCur.release();
        tempCur2.release();
        return fragSaveCur;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0056, code lost:
    
        if (tryPrefix("") != false) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void ensureMapping(java.lang.String r4, java.lang.String r5, boolean r6, boolean r7) {
        /*
            r3 = this;
            int r0 = r4.length()
            if (r0 != 0) goto L7
            return
        L7:
            java.util.HashMap<java.lang.String, java.lang.String> r0 = r3._uriMap
            java.lang.Object r0 = r0.get(r4)
            java.lang.String r0 = (java.lang.String) r0
            if (r0 == 0) goto L1a
            int r0 = r0.length()
            if (r0 > 0) goto L19
            if (r7 != 0) goto L1a
        L19:
            return
        L1a:
            if (r5 == 0) goto L23
            int r7 = r5.length()
            if (r7 != 0) goto L23
            r5 = 0
        L23:
            boolean r7 = r3.tryPrefix(r5)
            if (r7 != 0) goto L78
            java.util.Map<java.lang.String, java.lang.String> r5 = r3._suggestedPrefixes
            if (r5 == 0) goto L4a
            boolean r5 = r5.containsKey(r4)
            if (r5 == 0) goto L4a
            java.util.Map<java.lang.String, java.lang.String> r5 = r3._suggestedPrefixes
            java.lang.Object r5 = r5.get(r4)
            java.lang.String r5 = (java.lang.String) r5
            boolean r5 = r3.tryPrefix(r5)
            if (r5 == 0) goto L4a
            java.util.Map<java.lang.String, java.lang.String> r5 = r3._suggestedPrefixes
            java.lang.Object r5 = r5.get(r4)
            java.lang.String r5 = (java.lang.String) r5
            goto L78
        L4a:
            if (r6 == 0) goto L59
            boolean r5 = r3._useDefaultNamespace
            if (r5 == 0) goto L59
            java.lang.String r5 = ""
            boolean r7 = r3.tryPrefix(r5)
            if (r7 == 0) goto L59
            goto L78
        L59:
            java.lang.String r7 = org.apache.xmlbeans.impl.common.QNameHelper.suggestPrefix(r4)
            r0 = 1
            r5 = r7
            r1 = r0
        L60:
            boolean r2 = r3.tryPrefix(r5)
            if (r2 == 0) goto L67
            goto L78
        L67:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            r5.append(r7)
            r5.append(r1)
            java.lang.String r5 = r5.toString()
            int r1 = r1 + r0
            goto L60
        L78:
            r3.syntheticNamespace(r5, r4, r6)
            r3.addMapping(r5, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Saver.ensureMapping(java.lang.String, java.lang.String, boolean, boolean):void");
    }

    public static boolean isBadChar(char c) {
        return (Character.isHighSurrogate(c) || Character.isLowSurrogate(c) || (c >= ' ' && c <= 55295) || ((c >= 57344 && c <= 65533) || c == '\t' || c == '\n' || c == '\r')) ? false : true;
    }

    private void popMappings() {
        while (true) {
            int size = this._namespaceStack.size();
            if (size == 0) {
                return;
            }
            int i = size - 1;
            if (this._namespaceStack.get(i) == null) {
                this._namespaceStack.remove(i);
                return;
            }
            int i2 = size - 7;
            String str = this._namespaceStack.get(i2);
            int i3 = size - 8;
            String str2 = this._namespaceStack.get(i3);
            if (str2 == null) {
                this._uriMap.remove(str);
            } else {
                this._uriMap.put(str, str2);
            }
            int i4 = size - 4;
            String str3 = this._namespaceStack.get(i4);
            int i5 = size - 3;
            String str4 = this._namespaceStack.get(i5);
            if (str4 == null) {
                this._prefixMap.remove(str3);
            } else {
                this._prefixMap.put(str3, str4);
            }
            int i6 = size - 5;
            String str5 = this._namespaceStack.get(i6);
            if (str5 != null) {
                this._uriMap.put(str5, this._namespaceStack.get(size - 6));
            }
            this._namespaceStack.remove(i);
            this._namespaceStack.remove(size - 2);
            this._namespaceStack.remove(i5);
            this._namespaceStack.remove(i4);
            this._namespaceStack.remove(i6);
            this._namespaceStack.remove(size - 6);
            this._namespaceStack.remove(i2);
            this._namespaceStack.remove(i3);
        }
    }

    private static void positionToInner(Cur cur, Cur cur2, Cur cur3) {
        cur2.moveToCur(cur);
        if (!cur2.toFirstAttr()) {
            cur2.next();
        }
        cur3.moveToCur(cur);
        cur3.toEnd();
    }

    private void processElement() {
        QName name = this._cur.getName();
        boolean z = name.getNamespaceURI().length() == 0;
        pushMappings(this._cur, z);
        ensureMapping(name.getNamespaceURI(), name.getPrefix(), !z, false);
        this._attrNames.clear();
        this._attrValues.clear();
        this._cur.push();
        boolean firstAttr = this._cur.toFirstAttr();
        while (firstAttr) {
            if (this._cur.isNormalAttr()) {
                QName name2 = this._cur.getName();
                this._attrNames.add(name2);
                int size = this._attrNames.size() - 2;
                while (true) {
                    if (size < 0) {
                        this._attrValues.add(this._cur.getAttrValue());
                        ensureMapping(name2.getNamespaceURI(), name2.getPrefix(), false, true);
                        break;
                    } else {
                        if (this._attrNames.get(size).equals(name2)) {
                            ArrayList<QName> arrayList = this._attrNames;
                            arrayList.remove(arrayList.size() - 1);
                            break;
                        }
                        size--;
                    }
                }
            }
            firstAttr = this._cur.toNextAttr();
        }
        this._cur.pop();
        Map<String, String> map = this._preComputedNamespaces;
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                ensureMapping(key, value, value.length() == 0 && !z, false);
            }
            this._preComputedNamespaces = null;
        }
        if (emitElement(this._cur, this._attrNames, this._attrValues)) {
            popMappings();
            this._cur.toEnd();
        }
    }

    private void processFinish() {
        emitFinish(this._cur);
        popMappings();
    }

    private void processRoot() {
        String str;
        String str2;
        XmlDocumentProperties docProps = this._cur.getDocProps();
        if (docProps != null) {
            str = docProps.getDoctypeSystemId();
            str2 = docProps.getDoctypeName();
        } else {
            str = null;
            str2 = null;
        }
        if (str != null || str2 != null) {
            if (str2 == null) {
                this._cur.push();
                while (!this._cur.isElem() && this._cur.next()) {
                }
                if (this._cur.isElem()) {
                    str2 = this._cur.getName().getLocalPart();
                }
                this._cur.pop();
            }
            String doctypePublicId = docProps.getDoctypePublicId();
            if (str2 != null) {
                QName name = this._cur.getName();
                if (name == null) {
                    this._cur.push();
                    while (true) {
                        if (this._cur.isFinish()) {
                            break;
                        }
                        if (this._cur.isElem()) {
                            name = this._cur.getName();
                            break;
                        }
                        this._cur.next();
                    }
                    this._cur.pop();
                }
                if (name != null && str2.equals(name.getLocalPart())) {
                    emitDocType(str2, doctypePublicId, str);
                    return;
                }
            }
        }
        emitStartDoc(this._cur);
    }

    private void pushMappings(SaveCur saveCur, boolean z) {
        this._namespaceStack.add(null);
        saveCur.push();
        boolean firstAttr = saveCur.toFirstAttr();
        while (firstAttr) {
            if (saveCur.isXmlns()) {
                addNewFrameMapping(saveCur.getXmlnsPrefix(), saveCur.getXmlnsUri(), z);
            }
            firstAttr = saveCur.toNextAttr();
        }
        saveCur.pop();
        if (this._ancestorNamespaces != null) {
            for (int i = 0; i < this._ancestorNamespaces.size(); i += 2) {
                addNewFrameMapping(this._ancestorNamespaces.get(i), this._ancestorNamespaces.get(i + 1), z);
            }
            this._ancestorNamespaces = null;
        }
        if (!z || this._prefixMap.get("").length() <= 0) {
            return;
        }
        addMapping("", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int syncWrap(Locale locale, SyncWrapFun syncWrapFun) throws IOException {
        int process;
        if (locale.noSync()) {
            locale.enter();
            try {
                return syncWrapFun.process();
            } finally {
            }
        }
        synchronized (locale) {
            locale.enter();
            try {
                process = syncWrapFun.process();
            } finally {
            }
        }
        return process;
    }

    private boolean tryPrefix(String str) {
        if (str == null || Locale.beginsWithXml(str)) {
            return false;
        }
        String str2 = this._prefixMap.get(str);
        return str2 == null || (str.length() <= 0 && str2.equals(this._initialDefaultUri));
    }

    public abstract void emitComment(SaveCur saveCur);

    public abstract void emitDocType(String str, String str2, String str3);

    public abstract boolean emitElement(SaveCur saveCur, List<QName> list, List<String> list2);

    public abstract void emitEndDoc(SaveCur saveCur);

    public abstract void emitFinish(SaveCur saveCur);

    public abstract void emitProcinst(SaveCur saveCur);

    public abstract void emitStartDoc(SaveCur saveCur);

    public abstract void emitText(SaveCur saveCur);

    public final String getNamespaceForPrefix(String str) {
        return this._prefixMap.get(str);
    }

    public String getNonDefaultUriMapping(String str) {
        String str2 = this._uriMap.get(str);
        if (str2 != null && str2.length() > 0) {
            return str2;
        }
        for (String str3 : this._prefixMap.keySet()) {
            if (str3.length() > 0 && this._prefixMap.get(str3).equals(str)) {
                return str3;
            }
        }
        return null;
    }

    public final String getUriMapping(String str) {
        return this._uriMap.get(str);
    }

    public boolean hasMapping() {
        return this._currentMapping < this._namespaceStack.size();
    }

    public void iterateMappings() {
        this._currentMapping = this._namespaceStack.size();
        while (true) {
            int i = this._currentMapping;
            if (i <= 0 || this._namespaceStack.get(i - 1) == null) {
                return;
            } else {
                this._currentMapping -= 8;
            }
        }
    }

    public String mappingPrefix() {
        return this._namespaceStack.get(this._currentMapping + 6);
    }

    public String mappingUri() {
        return this._namespaceStack.get(this._currentMapping + 7);
    }

    public void nextMapping() {
        this._currentMapping += 8;
    }

    public final boolean process() {
        if (this._cur == null) {
            return false;
        }
        if (this._version != this._locale.version()) {
            throw new ConcurrentModificationException("Document changed during save");
        }
        int kind = this._cur.kind();
        if (kind == -2) {
            processFinish();
        } else {
            if (kind == -1) {
                emitEndDoc(this._cur);
                this._cur.release();
                this._cur = null;
                return true;
            }
            if (kind == 0) {
                emitText(this._cur);
            } else if (kind == 1) {
                processRoot();
            } else if (kind == 2) {
                processElement();
            } else if (kind == 4) {
                emitComment(this._cur);
                this._cur.toEnd();
            } else {
                if (kind != 5) {
                    throw new RuntimeException("Unexpected kind");
                }
                emitProcinst(this._cur);
                this._cur.toEnd();
            }
        }
        this._cur.next();
        return true;
    }

    public boolean saveNamespacesFirst() {
        return this._saveNamespacesFirst;
    }

    public void syntheticNamespace(String str, String str2, boolean z) {
    }

    /* loaded from: classes13.dex */
    public static final class OptimizedForSpeedSaver extends Saver {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private final char[] _buf;

        /* renamed from: _w */
        Writer f113760_w;

        /* loaded from: classes13.dex */
        public static class SaverIOException extends RuntimeException {
            public SaverIOException(IOException iOException) {
                super(iOException);
            }
        }

        public OptimizedForSpeedSaver(Cur cur, Writer writer) {
            super(cur, XmlOptions.maskNull(null));
            this._buf = new char[1024];
            this.f113760_w = writer;
        }

        private void emit(String str) {
            try {
                this.f113760_w.write(str);
            } catch (IOException e) {
                throw new SaverIOException(e);
            }
        }

        private void emitAttrHelper(QName qName, String str) {
            emit(' ');
            emitName(qName, true);
            emit('=', '\"');
            emitAttrValue(str);
            emit('\"');
        }

        private void emitAttrValue(CharSequence charSequence) {
            int length = charSequence.length();
            for (int i = 0; i < length; i++) {
                char charAt = charSequence.charAt(i);
                if (charAt == '<') {
                    emit("&lt;");
                } else if (charAt == '&') {
                    emit("&amp;");
                } else if (charAt == '\"') {
                    emit(SerializerConstants.ENTITY_QUOT);
                } else {
                    emit(charAt);
                }
            }
        }

        private void emitLiteral(String str) {
            if (str.contains("\"")) {
                emit(Chars.QUOTE);
                emit(str);
                emit(Chars.QUOTE);
            } else {
                emit('\"');
                emit(str);
                emit('\"');
            }
        }

        private void emitName(QName qName, boolean z) {
            String namespaceURI = qName.getNamespaceURI();
            if (namespaceURI.length() != 0) {
                String prefix = qName.getPrefix();
                String namespaceForPrefix = getNamespaceForPrefix(prefix);
                if (namespaceForPrefix == null || !namespaceForPrefix.equals(namespaceURI)) {
                    prefix = getUriMapping(namespaceURI);
                }
                if (z && prefix.length() == 0) {
                    prefix = getNonDefaultUriMapping(namespaceURI);
                }
                if (prefix.length() > 0) {
                    emit(prefix);
                    emit(':');
                }
            }
            emit(qName.getLocalPart());
        }

        private void emitNamespacesHelper() {
            iterateMappings();
            while (hasMapping()) {
                emit(' ');
                emitXmlns(mappingPrefix(), mappingUri());
                nextMapping();
            }
        }

        private void entitizeAndWriteCommentText(int i) {
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                char c = this._buf[i2];
                if (Saver.isBadChar(c)) {
                    this._buf[i2] = '?';
                } else {
                    if (c == '-') {
                        if (z) {
                            this._buf[i2] = ' ';
                        } else {
                            z = true;
                        }
                    }
                    z = false;
                }
                if (i2 == this._buf.length) {
                    i2 = 0;
                }
                i2++;
            }
            char[] cArr = this._buf;
            int i3 = i - 1;
            if (cArr[i3] == '-') {
                cArr[i3] = ' ';
            }
            emit(cArr, 0, i);
        }

        private void entitizeAndWritePIText(int i) {
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                char c = this._buf[i2];
                if (Saver.isBadChar(c)) {
                    this._buf[i2] = '?';
                    c = '?';
                }
                if (c == '>') {
                    if (z) {
                        this._buf[i2] = ' ';
                    }
                } else if (c == '?') {
                    z = true;
                }
                z = false;
            }
            emit(this._buf, 0, i);
        }

        private void entitizeAndWriteText(int i) {
            int i2 = 0;
            for (int i3 = 0; i3 < i; i3++) {
                char[] cArr = this._buf;
                char c = cArr[i3];
                if (c == '&') {
                    emit(cArr, i2, i3 - i2);
                    emit("&amp;");
                } else if (c == '<') {
                    emit(cArr, i2, i3 - i2);
                    emit("&lt;");
                }
                i2 = i3 + 1;
            }
            emit(this._buf, i2, i - i2);
        }

        public static void save(Cur cur, Writer writer) throws IOException {
            try {
                do {
                } while (new OptimizedForSpeedSaver(cur, writer).process());
            } catch (SaverIOException e) {
                throw ((IOException) e.getCause());
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitComment(SaveCur saveCur) {
            emit(XMLStreamWriterImpl.START_COMMENT);
            saveCur.push();
            saveCur.next();
            emitCommentText(saveCur);
            saveCur.pop();
            emit(XMLStreamWriterImpl.END_COMMENT);
        }

        public void emitCommentText(SaveCur saveCur) {
            Object chars = saveCur.getChars();
            int i = saveCur._cchSrc;
            int i2 = saveCur._offSrc;
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 512 > i ? i : 512;
                CharUtil.getChars(this._buf, 0, chars, i2 + i3, i4);
                entitizeAndWriteCommentText(i4 - i3);
                i3 = i4;
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitDocType(String str, String str2, String str3) {
            emit("<!DOCTYPE ");
            emit(str);
            if (str2 == null && str3 != null) {
                emit(" SYSTEM ");
                emitLiteral(str3);
            } else if (str2 != null) {
                emit(" PUBLIC ");
                emitLiteral(str2);
                emit(' ');
                emitLiteral(str3);
            }
            emit('>');
            emit(Saver._newLine);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public boolean emitElement(SaveCur saveCur, List<QName> list, List<String> list2) {
            emit('<');
            emitName(saveCur.getName(), false);
            for (int i = 0; i < list.size(); i++) {
                emitAttrHelper(list.get(i), list2.get(i));
            }
            if (!saveNamespacesFirst()) {
                emitNamespacesHelper();
            }
            if (saveCur.hasChildren() || saveCur.hasText()) {
                emit('>');
                return false;
            }
            emit('/', '>');
            return true;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitEndDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitFinish(SaveCur saveCur) {
            emit('<', '/');
            emitName(saveCur.getName(), false);
            emit('>');
        }

        public void emitPiText(SaveCur saveCur) {
            Object chars = saveCur.getChars();
            int i = saveCur._cchSrc;
            int i2 = saveCur._offSrc;
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 512 > i ? i : 512;
                CharUtil.getChars(this._buf, 0, chars, i2 + i3, i4);
                entitizeAndWritePIText(i4 - i3);
                i3 = i4;
            }
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitProcinst(SaveCur saveCur) {
            emit("<?");
            emit(saveCur.getName().getLocalPart());
            saveCur.push();
            saveCur.next();
            if (saveCur.isText()) {
                emit(' ');
                emitPiText(saveCur);
            }
            saveCur.pop();
            emit("?>");
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitStartDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitText(SaveCur saveCur) {
            Object chars = saveCur.getChars();
            int i = saveCur._cchSrc;
            int i2 = saveCur._offSrc;
            int i3 = 0;
            while (i3 < i) {
                int min = Math.min(i3 + 512, i);
                int i4 = i2 + i3;
                int i5 = min - i3;
                CharUtil.getChars(this._buf, 0, chars, i4, i5);
                entitizeAndWriteText(i5);
                i3 = min;
            }
        }

        public void emitXmlns(String str, String str2) {
            emit("xmlns");
            if (str.length() > 0) {
                emit(':');
                emit(str);
            }
            emit('=', '\"');
            emitAttrValue(str2);
            emit('\"');
        }

        private void emit(char c) {
            try {
                char[] cArr = this._buf;
                cArr[0] = c;
                this.f113760_w.write(cArr, 0, 1);
            } catch (IOException e) {
                throw new SaverIOException(e);
            }
        }

        private void emit(char c, char c2) {
            try {
                char[] cArr = this._buf;
                cArr[0] = c;
                cArr[1] = c2;
                this.f113760_w.write(cArr, 0, 2);
            } catch (IOException e) {
                throw new SaverIOException(e);
            }
        }

        private void emit(char[] cArr, int i, int i2) {
            try {
                this.f113760_w.write(cArr, i, i2);
            } catch (IOException e) {
                throw new SaverIOException(e);
            }
        }
    }

    /* loaded from: classes13.dex */
    public static final class TextReader extends Reader {
        private boolean _closed = false;
        private final Locale _locale;
        private final TextSaver _textSaver;

        public TextReader(Cur cur, XmlOptions xmlOptions) {
            this._textSaver = new TextSaver(cur, xmlOptions, null);
            this._locale = cur._locale;
        }

        private void checkClosed() throws IOException {
            if (this._closed) {
                throw new IOException("Reader has been closed");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$read$0(char[] cArr) throws IOException {
            return this._textSaver.read(cArr, 0, cArr == null ? 0 : cArr.length);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$read$1(char[] cArr, int i, int i2) throws IOException {
            return this._textSaver.read(cArr, i, i2);
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this._closed = true;
        }

        @Override // java.io.Reader
        public int read() throws IOException {
            checkClosed();
            Locale locale = this._locale;
            final TextSaver textSaver = this._textSaver;
            textSaver.getClass();
            return Saver.syncWrap(locale, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.k0
                @Override // org.apache.xmlbeans.impl.store.Saver.SyncWrapFun
                public final int process() {
                    return Saver.TextSaver.this.read();
                }
            });
        }

        @Override // java.io.Reader
        public boolean ready() {
            return !this._closed;
        }

        @Override // java.io.Reader
        public int read(final char[] cArr) throws IOException {
            checkClosed();
            return Saver.syncWrap(this._locale, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.j0
                @Override // org.apache.xmlbeans.impl.store.Saver.SyncWrapFun
                public final int process() {
                    int lambda$read$0;
                    lambda$read$0 = Saver.TextReader.this.lambda$read$0(cArr);
                    return lambda$read$0;
                }
            });
        }

        @Override // java.io.Reader
        public int read(final char[] cArr, final int i, final int i2) throws IOException {
            checkClosed();
            return Saver.syncWrap(this._locale, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.i0
                @Override // org.apache.xmlbeans.impl.store.Saver.SyncWrapFun
                public final int process() {
                    int lambda$read$1;
                    lambda$read$1 = Saver.TextReader.this.lambda$read$1(cArr, i, i2);
                    return lambda$read$1;
                }
            });
        }
    }

    /* loaded from: classes13.dex */
    public static final class InputStreamSaver extends InputStream {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private boolean _closed = false;
        private final OutputStreamWriter _converter;
        private final Locale _locale;
        private final OutputStreamImpl _outStreamImpl;
        private final TextSaver _textSaver;

        /* JADX WARN: Multi-variable type inference failed */
        public InputStreamSaver(Cur cur, XmlOptions xmlOptions) {
            String java2IANAMapping;
            this._locale = cur._locale;
            XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
            OutputStreamImpl outputStreamImpl = new OutputStreamImpl();
            this._outStreamImpl = outputStreamImpl;
            XmlDocumentProperties docProps = Locale.getDocProps(cur, false);
            String iANA2JavaMapping = (docProps == null || docProps.getEncoding() == null) ? null : EncodingMap.getIANA2JavaMapping(docProps.getEncoding());
            String characterEncoding = maskNull.getCharacterEncoding();
            iANA2JavaMapping = characterEncoding != null ? characterEncoding : iANA2JavaMapping;
            if (iANA2JavaMapping != null && (java2IANAMapping = EncodingMap.getJava2IANAMapping(iANA2JavaMapping)) != null) {
                iANA2JavaMapping = java2IANAMapping;
            }
            iANA2JavaMapping = iANA2JavaMapping == null ? EncodingMap.getJava2IANAMapping("UTF8") : iANA2JavaMapping;
            String iANA2JavaMapping2 = iANA2JavaMapping != null ? EncodingMap.getIANA2JavaMapping(iANA2JavaMapping) : null;
            if (iANA2JavaMapping2 == null) {
                throw new IllegalStateException("Unknown encoding: " + iANA2JavaMapping);
            }
            try {
                this._converter = new OutputStreamWriter(outputStreamImpl, iANA2JavaMapping2);
                this._textSaver = new TextSaver(cur, maskNull, iANA2JavaMapping);
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        }

        private void checkClosed() throws IOException {
            if (this._closed) {
                throw new IOException("Stream closed");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int ensure(int i) {
            if (i <= 0) {
                i = 1;
            }
            int available = this._outStreamImpl.getAvailable();
            while (available < i && this._textSaver.write(this._converter, 2048) >= 2048) {
                available = this._outStreamImpl.getAvailable();
            }
            return this._outStreamImpl.getAvailable();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$available$1() throws IOException {
            return ensure(1024);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ int lambda$read$0(byte[] bArr, int i, int i2) throws IOException {
            return this._outStreamImpl.read(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public int available() {
            try {
                return Saver.syncWrap(this._locale, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.h0
                    @Override // org.apache.xmlbeans.impl.store.Saver.SyncWrapFun
                    public final int process() {
                        int lambda$available$1;
                        lambda$available$1 = Saver.InputStreamSaver.this.lambda$available$1();
                        return lambda$available$1;
                    }
                });
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this._closed = true;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            int read;
            checkClosed();
            if (this._locale.noSync()) {
                this._locale.enter();
                try {
                    return this._outStreamImpl.read();
                } finally {
                }
            }
            synchronized (this._locale) {
                this._locale.enter();
                try {
                    read = this._outStreamImpl.read();
                } finally {
                }
            }
            return read;
        }

        /* loaded from: classes13.dex */
        public final class OutputStreamImpl extends OutputStream {
            static final /* synthetic */ boolean $assertionsDisabled = false;
            private static final int _initialBufSize = 4096;
            private byte[] _buf;
            private int _free;
            private int _in;
            private int _out;

            private OutputStreamImpl() {
            }

            public int getAvailable() {
                byte[] bArr = this._buf;
                if (bArr == null) {
                    return 0;
                }
                return bArr.length - this._free;
            }

            public int read() {
                if (InputStreamSaver.this.ensure(1) == 0) {
                    return -1;
                }
                byte[] bArr = this._buf;
                int i = this._out;
                byte b = bArr[i];
                this._out = (i + 1) % bArr.length;
                this._free++;
                return b;
            }

            public void resize(int i) {
                byte[] bArr = this._buf;
                int length = bArr == null ? 4096 : bArr.length * 2;
                int available = getAvailable();
                while (length - available < i) {
                    length *= 2;
                }
                byte[] bArr2 = new byte[length];
                if (available > 0) {
                    int i2 = this._in;
                    int i3 = this._out;
                    if (i2 > i3) {
                        System.arraycopy(this._buf, i3, bArr2, 0, available);
                    } else {
                        System.arraycopy(this._buf, i3, bArr2, 0, available - i2);
                        byte[] bArr3 = this._buf;
                        int i4 = this._in;
                        System.arraycopy(bArr3, 0, bArr2, available - i4, i4);
                    }
                    this._out = 0;
                    this._in = available;
                    this._free += length - this._buf.length;
                } else {
                    this._free = length;
                }
                this._buf = bArr2;
            }

            @Override // java.io.OutputStream
            public void write(int i) {
                if (this._free == 0) {
                    resize(1);
                }
                byte[] bArr = this._buf;
                int i2 = this._in;
                bArr[i2] = (byte) i;
                this._in = (i2 + 1) % bArr.length;
                this._free--;
            }

            public int read(byte[] bArr, int i, int i2) {
                int ensure = InputStreamSaver.this.ensure(i2);
                if (ensure == 0) {
                    return -1;
                }
                if (bArr == null || i2 <= 0) {
                    return 0;
                }
                if (ensure < i2) {
                    i2 = ensure;
                }
                int i3 = this._out;
                if (i3 < this._in) {
                    System.arraycopy(this._buf, i3, bArr, i, i2);
                } else {
                    byte[] bArr2 = this._buf;
                    int length = bArr2.length - i3;
                    if (length >= i2) {
                        System.arraycopy(bArr2, i3, bArr, i, i2);
                    } else {
                        System.arraycopy(bArr2, i3, bArr, i, length);
                        System.arraycopy(this._buf, 0, bArr, i + length, i2 - length);
                    }
                }
                this._out = (this._out + i2) % this._buf.length;
                this._free += i2;
                return i2;
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                if (i2 == 0) {
                    return;
                }
                if (this._free < i2) {
                    resize(i2);
                }
                if (this._in == this._out) {
                    this._out = 0;
                    this._in = 0;
                }
                byte[] bArr2 = this._buf;
                int length = bArr2.length;
                int i3 = this._in;
                int i4 = length - i3;
                if (i3 > this._out && i2 >= i4) {
                    System.arraycopy(bArr, i, bArr2, i3, i4);
                    System.arraycopy(bArr, i + i4, this._buf, 0, i2 - i4);
                    this._in = (this._in + i2) % this._buf.length;
                } else {
                    System.arraycopy(bArr, i, bArr2, i3, i2);
                    this._in += i2;
                }
                this._free -= i2;
            }
        }

        @Override // java.io.InputStream
        public int read(final byte[] bArr, final int i, final int i2) throws IOException {
            checkClosed();
            if (bArr != null) {
                if (i >= 0 && i <= bArr.length) {
                    return Saver.syncWrap(this._locale, new SyncWrapFun() { // from class: org.apache.xmlbeans.impl.store.g0
                        @Override // org.apache.xmlbeans.impl.store.Saver.SyncWrapFun
                        public final int process() {
                            int lambda$read$0;
                            lambda$read$0 = Saver.InputStreamSaver.this.lambda$read$0(bArr, i, i2);
                            return lambda$read$0;
                        }
                    });
                }
                throw new IndexOutOfBoundsException("Offset is not within buf");
            }
            throw new NullPointerException("buf to read into is null");
        }
    }

    /* loaded from: classes13.dex */
    public static final class TextSaver extends Saver {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private static final int _initialBufSize = 4096;
        private char[] _buf;
        private int _cdataEntityCountThreshold;
        private int _cdataLengthThreshold;
        private int _free;
        private int _in;
        private boolean _isPrettyPrint;
        private int _lastEmitCch;
        private int _lastEmitIn;
        private int _out;
        private boolean _useCDataBookmarks;

        public TextSaver(Cur cur, XmlOptions xmlOptions, String str) {
            super(cur, xmlOptions);
            this._cdataLengthThreshold = 32;
            this._cdataEntityCountThreshold = 5;
            this._useCDataBookmarks = false;
            this._isPrettyPrint = false;
            boolean z = xmlOptions != null && xmlOptions.isSaveNoXmlDecl();
            if (xmlOptions != null && xmlOptions.getSaveCDataLengthThreshold() != null) {
                this._cdataLengthThreshold = xmlOptions.getSaveCDataLengthThreshold().intValue();
            }
            if (xmlOptions != null && xmlOptions.getSaveCDataEntityCountThreshold() != null) {
                this._cdataEntityCountThreshold = xmlOptions.getSaveCDataEntityCountThreshold().intValue();
            }
            if (xmlOptions != null && xmlOptions.isUseCDataBookmarks()) {
                this._useCDataBookmarks = true;
            }
            if (xmlOptions != null && xmlOptions.isSavePrettyPrint()) {
                this._isPrettyPrint = true;
            }
            this._out = 0;
            this._in = 0;
            this._free = 0;
            if (str == null || z) {
                return;
            }
            XmlDocumentProperties docProps = Locale.getDocProps(cur, false);
            Boolean bool = null;
            String version = docProps == null ? null : docProps.getVersion();
            version = version == null ? "1.0" : version;
            if (docProps != null && docProps.get(XmlDocumentProperties.STANDALONE) != null) {
                bool = Boolean.valueOf(docProps.getStandalone());
            }
            emit("<?xml version=\"");
            emit(version);
            emit("\" encoding=\"" + str + "\"");
            if (bool != null) {
                StringBuilder sb = new StringBuilder();
                sb.append(" standalone=\"");
                sb.append(bool.booleanValue() ? "yes" : SVGParser.f16048t);
                sb.append("\"");
                emit(sb.toString());
            }
            emit("?>" + Saver._newLine);
        }

        private void emit(char c) {
            preEmit(1);
            char[] cArr = this._buf;
            int i = this._in;
            cArr[i] = c;
            this._in = (i + 1) % cArr.length;
        }

        private void emitAttrHelper(QName qName, String str) {
            emit(' ');
            emitName(qName, true);
            emit('=', '\"');
            emit(str);
            entitizeAttrValue(true);
            emit('\"');
        }

        private void emitLiteral(String str) {
            if (str.contains("\"")) {
                emit(Chars.QUOTE);
                emit(str);
                emit(Chars.QUOTE);
            } else {
                emit('\"');
                emit(str);
                emit('\"');
            }
        }

        private void emitName(QName qName, boolean z) {
            String namespaceURI = qName.getNamespaceURI();
            if (namespaceURI.length() != 0) {
                String prefix = qName.getPrefix();
                String namespaceForPrefix = getNamespaceForPrefix(prefix);
                if (namespaceForPrefix == null || !namespaceForPrefix.equals(namespaceURI)) {
                    prefix = getUriMapping(namespaceURI);
                }
                if (z && prefix.length() == 0) {
                    prefix = getNonDefaultUriMapping(namespaceURI);
                }
                if (prefix.length() > 0) {
                    emit(prefix);
                    emit(':');
                }
            }
            emit(qName.getLocalPart());
        }

        private void emitNamespacesHelper() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            iterateMappings();
            while (hasMapping()) {
                String mappingPrefix = mappingPrefix();
                String mappingUri = mappingUri();
                if (!linkedHashMap.containsKey(mappingPrefix)) {
                    linkedHashMap.put(mappingPrefix, mappingUri);
                } else if (mappingPrefix.length() == 0 && ((String) linkedHashMap.get(mappingPrefix)).length() == 0) {
                    linkedHashMap.put(mappingPrefix, mappingUri);
                }
                nextMapping();
            }
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                emit(' ');
                emitXmlns((String) entry.getKey(), (String) entry.getValue());
            }
        }

        private int ensure(int i) {
            if (i <= 0) {
                i = 1;
            }
            int available = getAvailable();
            while (available < i && process()) {
                available = getAvailable();
            }
            return available;
        }

        private void entitizeAttrValue(boolean z) {
            int i = this._lastEmitCch;
            if (i == 0) {
                return;
            }
            int i2 = this._lastEmitIn;
            while (i > 0) {
                char c = this._buf[i2];
                if (c == '<') {
                    i2 = replace(i2, "&lt;");
                } else if (c == '&') {
                    i2 = replace(i2, "&amp;");
                } else if (c == '\"') {
                    i2 = replace(i2, SerializerConstants.ENTITY_QUOT);
                } else if (!isEscapedChar(c)) {
                    i2++;
                } else if (z) {
                    i2 = replace(i2, this._replaceChar.getEscapedString(c));
                }
                if (i2 == this._buf.length) {
                    i2 = 0;
                }
                i--;
            }
        }

        private void entitizeComment() {
            int i = this._lastEmitCch;
            if (i == 0) {
                return;
            }
            int i2 = this._lastEmitIn;
            boolean z = false;
            while (i > 0) {
                char c = this._buf[i2];
                if (Saver.isBadChar(c)) {
                    i2 = replace(i2, "?");
                } else {
                    if (c != '-') {
                        i2++;
                    } else if (z) {
                        i2 = replace(i2, " ");
                    } else {
                        i2++;
                        z = true;
                    }
                    z = false;
                }
                if (i2 == this._buf.length) {
                    i2 = 0;
                }
                i--;
            }
            int i3 = (this._lastEmitIn + this._lastEmitCch) - 1;
            char[] cArr = this._buf;
            int length = i3 % cArr.length;
            if (cArr[length] == '-') {
                replace(length, " ");
            }
        }

        private void entitizeContent(boolean z) {
            int i;
            int i2 = this._lastEmitCch;
            if (i2 == 0) {
                return;
            }
            int i3 = this._lastEmitIn;
            int length = this._buf.length;
            int i4 = 0;
            boolean z2 = false;
            char c = 0;
            char c2 = 0;
            while (i2 > 0) {
                char c3 = this._buf[i3];
                if (c3 == '<' || c3 == '&') {
                    i4++;
                } else if ((c == ']' && c2 == ']' && c3 == '>') || Saver.isBadChar(c3) || isEscapedChar(c3) || (!this._isPrettyPrint && c3 == '\r')) {
                    z2 = true;
                }
                i3++;
                if (i3 == length) {
                    i3 = 0;
                }
                i2--;
                c = c2;
                c2 = c3;
            }
            if (z || i4 != 0 || z2 || i4 >= this._cdataEntityCountThreshold) {
                int i5 = this._lastEmitIn;
                if (!z && ((i = this._lastEmitCch) <= this._cdataLengthThreshold || i4 <= this._cdataEntityCountThreshold)) {
                    char c4 = 0;
                    char c5 = 0;
                    while (i > 0) {
                        char c6 = this._buf[i5];
                        i5 = c6 == '<' ? replace(i5, "&lt;") : c6 == '&' ? replace(i5, "&amp;") : (c6 == '>' && c5 == ']' && c4 == ']') ? replace(i5, "&gt;") : Saver.isBadChar(c6) ? replace(i5, "?") : (this._isPrettyPrint || c6 != '\r') ? isEscapedChar(c6) ? replace(i5, this._replaceChar.getEscapedString(c6)) : i5 + 1 : replace(i5, "&#13;");
                        if (i5 == this._buf.length) {
                            i5 = 0;
                        }
                        i--;
                        c4 = c5;
                        c5 = c6;
                    }
                    return;
                }
                boolean z3 = this._buf[i5] == ']';
                int replace = replace(i5, "<![CDATA[" + this._buf[i5]);
                char[] cArr = this._buf;
                boolean z4 = cArr[replace] == ']';
                int i6 = replace + 1;
                if (i6 == cArr.length) {
                    i6 = 0;
                }
                int i7 = this._lastEmitCch - 2;
                while (i7 > 0) {
                    char c7 = this._buf[i6];
                    i6 = (c7 == '>' && z3 && z4) ? replace(i6, "]]>><![CDATA[") : Saver.isBadChar(c7) ? replace(i6, "?") : i6 + 1;
                    boolean z5 = c7 == ']';
                    if (i6 == this._buf.length) {
                        i6 = 0;
                    }
                    i7--;
                    boolean z6 = z4;
                    z4 = z5;
                    z3 = z6;
                }
                emit("]]>");
            }
        }

        private void entitizeProcinst() {
            int i = this._lastEmitCch;
            if (i == 0) {
                return;
            }
            int i2 = this._lastEmitIn;
            boolean z = false;
            while (i > 0) {
                char c = this._buf[i2];
                if (Saver.isBadChar(c)) {
                    i2 = replace(i2, "?");
                }
                if (c == '>') {
                    i2 = z ? replace(i2, " ") : i2 + 1;
                    z = false;
                } else {
                    z = c == '?';
                    i2++;
                }
                if (i2 == this._buf.length) {
                    i2 = 0;
                }
                i--;
            }
        }

        private boolean isEscapedChar(char c) {
            XmlOptionCharEscapeMap xmlOptionCharEscapeMap = this._replaceChar;
            return xmlOptionCharEscapeMap != null && xmlOptionCharEscapeMap.containsChar(c);
        }

        private boolean preEmit(int i) {
            this._lastEmitCch = i;
            if (i == 0) {
                return true;
            }
            if (this._free <= i) {
                resize(i, -1);
            }
            if (getAvailable() == 0) {
                this._out = 0;
                this._in = 0;
            }
            this._lastEmitIn = this._in;
            this._free -= i;
            return false;
        }

        private int replace(int i, String str) {
            int length = str.length() - 1;
            if (length == 0) {
                this._buf[i] = str.charAt(0);
                return i + 1;
            }
            if (length > this._free) {
                i = resize(length, i);
            }
            int i2 = length + 1;
            int i3 = this._out;
            int i4 = this._in;
            if (i3 <= i4 || i < i3) {
                char[] cArr = this._buf;
                int length2 = cArr.length - i4;
                if (length <= length2) {
                    System.arraycopy(cArr, i, cArr, i + length, i4 - i);
                    this._in = (this._in + length) % this._buf.length;
                } else if (length <= ((length2 + i4) - i) - 1) {
                    int i5 = length - length2;
                    System.arraycopy(cArr, i4 - i5, cArr, 0, i5);
                    char[] cArr2 = this._buf;
                    int i6 = i + 1;
                    System.arraycopy(cArr2, i6, cArr2, i6 + length, ((this._in - i) - 1) - i5);
                    this._in = i5;
                } else {
                    int i7 = (i4 - i) - 1;
                    int i8 = (length2 + i4) - i;
                    System.arraycopy(cArr, i4 - i7, cArr, (length - i8) + 1, i7);
                    str.getChars(i8, i2, this._buf, 0);
                    this._in = ((i7 + length) - i8) + 1;
                    i2 = i8;
                }
            } else {
                char[] cArr3 = this._buf;
                System.arraycopy(cArr3, i3, cArr3, i3 - length, i - i3);
                this._out -= length;
                i -= length;
            }
            str.getChars(0, i2, this._buf, i);
            this._free -= length;
            return ((i + length) + 1) % this._buf.length;
        }

        private int resize(int i, int i2) {
            char[] cArr = this._buf;
            int length = cArr == null ? 4096 : cArr.length * 2;
            int available = getAvailable();
            while (length - available < i) {
                length *= 2;
            }
            char[] cArr2 = new char[length];
            if (available > 0) {
                int i3 = this._in;
                int i4 = this._out;
                if (i3 > i4) {
                    System.arraycopy(this._buf, i4, cArr2, 0, available);
                    i2 -= this._out;
                } else {
                    int i5 = available - i3;
                    System.arraycopy(this._buf, i4, cArr2, 0, i5);
                    System.arraycopy(this._buf, 0, cArr2, i5, this._in);
                    int i6 = this._out;
                    i2 = i2 >= i6 ? i2 - i6 : i2 + i5;
                }
                this._out = 0;
                this._in = available;
                this._free += length - this._buf.length;
            } else {
                this._free = length;
            }
            this._buf = cArr2;
            return i2;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitComment(SaveCur saveCur) {
            emit(XMLStreamWriterImpl.START_COMMENT);
            saveCur.push();
            saveCur.next();
            emit(saveCur);
            saveCur.pop();
            entitizeComment();
            emit(XMLStreamWriterImpl.END_COMMENT);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitDocType(String str, String str2, String str3) {
            emit("<!DOCTYPE ");
            emit(str);
            if (str2 == null && str3 != null) {
                emit(" SYSTEM ");
                emitLiteral(str3);
            } else if (str2 != null) {
                emit(" PUBLIC ");
                emitLiteral(str2);
                emit(" ");
                emitLiteral(str3);
            }
            emit(">");
            emit(Saver._newLine);
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public boolean emitElement(SaveCur saveCur, List<QName> list, List<String> list2) {
            emit('<');
            emitName(saveCur.getName(), false);
            if (saveNamespacesFirst()) {
                emitNamespacesHelper();
            }
            for (int i = 0; i < list.size(); i++) {
                emitAttrHelper(list.get(i), list2.get(i));
            }
            if (!saveNamespacesFirst()) {
                emitNamespacesHelper();
            }
            if (saveCur.hasChildren() || saveCur.hasText()) {
                emit('>');
                return false;
            }
            emit('/', '>');
            return true;
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitEndDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitFinish(SaveCur saveCur) {
            emit('<', '/');
            emitName(saveCur.getName(), false);
            emit('>');
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitProcinst(SaveCur saveCur) {
            emit("<?");
            emit(saveCur.getName().getLocalPart());
            saveCur.push();
            saveCur.next();
            if (saveCur.isText()) {
                emit(" ");
                emit(saveCur);
                entitizeProcinst();
            }
            saveCur.pop();
            emit("?>");
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitStartDoc(SaveCur saveCur) {
        }

        @Override // org.apache.xmlbeans.impl.store.Saver
        public void emitText(SaveCur saveCur) {
            boolean z = this._useCDataBookmarks && saveCur.isTextCData();
            emit(saveCur);
            entitizeContent(z);
        }

        public void emitXmlns(String str, String str2) {
            emit("xmlns");
            if (str.length() > 0) {
                emit(':');
                emit(str);
            }
            emit('=', '\"');
            emit(str2);
            entitizeAttrValue(false);
            emit('\"');
        }

        public int getAvailable() {
            char[] cArr = this._buf;
            if (cArr == null) {
                return 0;
            }
            return cArr.length - this._free;
        }

        public int read() {
            if (ensure(1) == 0) {
                return -1;
            }
            char[] cArr = this._buf;
            int i = this._out;
            char c = cArr[i];
            this._out = (i + 1) % cArr.length;
            this._free++;
            return c;
        }

        public String saveToString() {
            do {
            } while (process());
            int available = getAvailable();
            return available == 0 ? "" : new String(this._buf, this._out, available);
        }

        public int write(Writer writer, int i) {
            while (getAvailable() < i && process()) {
            }
            int available = getAvailable();
            if (available > 0) {
                char[] cArr = this._buf;
                if (cArr.length - this._in != this._free) {
                    this._in = cArr.length;
                }
                try {
                    writer.write(cArr, 0, available);
                    writer.flush();
                    this._free += available;
                    this._in = 0;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
            return available;
        }

        private void emit(char c, char c2) {
            if (preEmit(2)) {
                return;
            }
            char[] cArr = this._buf;
            int i = this._in;
            cArr[i] = c;
            int length = (i + 1) % cArr.length;
            this._in = length;
            cArr[length] = c2;
            this._in = (length + 1) % cArr.length;
        }

        public int read(char[] cArr, int i, int i2) {
            int ensure = ensure(i2);
            if (ensure == 0) {
                return -1;
            }
            if (cArr == null || i2 <= 0) {
                return 0;
            }
            if (ensure < i2) {
                i2 = ensure;
            }
            int i3 = this._out;
            if (i3 < this._in) {
                System.arraycopy(this._buf, i3, cArr, i, i2);
            } else {
                char[] cArr2 = this._buf;
                int length = cArr2.length - i3;
                if (length >= i2) {
                    System.arraycopy(cArr2, i3, cArr, i, i2);
                } else {
                    System.arraycopy(cArr2, i3, cArr, i, length);
                    System.arraycopy(this._buf, 0, cArr, i + length, i2 - length);
                }
            }
            this._out = (this._out + i2) % this._buf.length;
            this._free += i2;
            return i2;
        }

        private void emit(String str) {
            int length = str == null ? 0 : str.length();
            if (preEmit(length) || str == null) {
                return;
            }
            int i = this._in;
            if (i > this._out) {
                char[] cArr = this._buf;
                int length2 = cArr.length - i;
                if (length >= length2) {
                    str.getChars(0, length2, cArr, i);
                    str.getChars(length2, length, this._buf, 0);
                    this._in = (this._in + length) % this._buf.length;
                    return;
                }
            }
            str.getChars(0, length, this._buf, i);
            this._in += length;
        }

        private void emit(SaveCur saveCur) {
            if (saveCur.isText()) {
                Object chars = saveCur.getChars();
                int i = saveCur._cchSrc;
                if (preEmit(i)) {
                    return;
                }
                int i2 = this._in;
                if (i2 > this._out) {
                    char[] cArr = this._buf;
                    int length = cArr.length - i2;
                    if (i >= length) {
                        CharUtil.getChars(cArr, i2, chars, saveCur._offSrc, length);
                        CharUtil.getChars(this._buf, 0, chars, saveCur._offSrc + length, i - length);
                        this._in = (this._in + i) % this._buf.length;
                        return;
                    }
                }
                CharUtil.getChars(this._buf, i2, chars, saveCur._offSrc, i);
                this._in += i;
                return;
            }
            preEmit(0);
        }
    }
}
