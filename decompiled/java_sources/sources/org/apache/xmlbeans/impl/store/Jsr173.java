package org.apache.xmlbeans.impl.store;

import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.Iterator;
import javax.xml.namespace.NamespaceContext;
import javax.xml.namespace.QName;
import javax.xml.stream.Location;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;
import org.apache.xmlbeans.XmlDocumentProperties;
import org.apache.xmlbeans.XmlLineNumber;
import org.apache.xmlbeans.XmlOptions;
import org.w3c.dom.Node;

/* loaded from: classes13.dex */
public class Jsr173 {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* loaded from: classes13.dex */
    public static abstract class Jsr173GateWay {

        /* renamed from: _l */
        Locale f113757_l;
        XMLStreamReaderBase _xs;

        public Jsr173GateWay(Locale locale, XMLStreamReaderBase xMLStreamReaderBase) {
            this.f113757_l = locale;
            this._xs = xMLStreamReaderBase;
        }
    }

    /* loaded from: classes13.dex */
    public static abstract class XMLStreamReaderBase implements XMLStreamReader, NamespaceContext, Location {
        private Locale _locale;
        String _uri;
        private long _version;
        int _line = -1;
        int _column = -1;
        int _offset = -1;

        public XMLStreamReaderBase(Cur cur) {
            Locale locale = cur._locale;
            this._locale = locale;
            this._version = locale.version();
        }

        public final void checkChanged() {
            if (this._version != this._locale.version()) {
                throw new ConcurrentModificationException("Document changed while streaming");
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void close() throws XMLStreamException {
            checkChanged();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getCharacterEncodingScheme() {
            checkChanged();
            XmlDocumentProperties docProps = Locale.getDocProps(getStreamCur(), false);
            if (docProps == null) {
                return null;
            }
            return docProps.getEncoding();
        }

        @Override // javax.xml.stream.Location
        public int getCharacterOffset() {
            return this._offset;
        }

        @Override // javax.xml.stream.Location
        public int getColumnNumber() {
            return this._column;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getEncoding() {
            return null;
        }

        @Override // javax.xml.stream.Location
        public int getLineNumber() {
            return this._line;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Location getLocation() {
            checkChanged();
            XmlLineNumber xmlLineNumber = (XmlLineNumber) getStreamCur().getBookmark(XmlLineNumber.class);
            this._uri = null;
            if (xmlLineNumber != null) {
                this._line = xmlLineNumber.getLine();
                this._column = xmlLineNumber.getColumn();
                this._offset = xmlLineNumber.getOffset();
            } else {
                this._line = -1;
                this._column = -1;
                this._offset = -1;
            }
            return this;
        }

        public String getLocationURI() {
            return this._uri;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public NamespaceContext getNamespaceContext() {
            throw new RuntimeException("This version of getNamespaceContext should not be called");
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(String str) {
            checkChanged();
            Cur streamCur = getStreamCur();
            streamCur.push();
            if (!streamCur.isContainer()) {
                streamCur.toParent();
            }
            String namespaceForPrefix = streamCur.namespaceForPrefix(str, true);
            streamCur.pop();
            return namespaceForPrefix;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            checkChanged();
            Cur streamCur = getStreamCur();
            streamCur.push();
            if (!streamCur.isContainer()) {
                streamCur.toParent();
            }
            String prefixForNamespace = streamCur.prefixForNamespace(str, null, false);
            streamCur.pop();
            return prefixForNamespace;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator<String> getPrefixes(String str) {
            checkChanged();
            HashMap hashMap = new HashMap();
            hashMap.put(str, getPrefix(str));
            return hashMap.values().iterator();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Object getProperty(String str) {
            checkChanged();
            if (str != null) {
                return null;
            }
            throw new IllegalArgumentException("Property name is null");
        }

        @Override // javax.xml.stream.Location
        public String getPublicId() {
            return null;
        }

        public abstract Cur getStreamCur();

        @Override // javax.xml.stream.Location
        public String getSystemId() {
            return null;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getVersion() {
            checkChanged();
            XmlDocumentProperties docProps = Locale.getDocProps(getStreamCur(), false);
            if (docProps == null) {
                return null;
            }
            return docProps.getVersion();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStandalone() {
            checkChanged();
            XmlDocumentProperties docProps = Locale.getDocProps(getStreamCur(), false);
            if (docProps == null) {
                return false;
            }
            return docProps.getStandalone();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isWhiteSpace() {
            checkChanged();
            String text = getText();
            return this._locale.getCharUtil().isWhiteSpace(text, 0, text.length());
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void require(int i, String str, String str2) throws XMLStreamException {
            checkChanged();
            if (i != getEventType()) {
                throw new XMLStreamException();
            }
            if (str != null && !getNamespaceURI().equals(str)) {
                throw new XMLStreamException();
            }
            if (str2 != null && !getLocalName().equals(str2)) {
                throw new XMLStreamException();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean standaloneSet() {
            checkChanged();
            return false;
        }
    }

    /* loaded from: classes13.dex */
    public static final class XMLStreamReaderForString extends XMLStreamReaderBase {
        private int _cch;
        private Cur _cur;
        private int _off;
        private Object _src;

        public XMLStreamReaderForString(Cur cur, Object obj, int i, int i2) {
            super(cur);
            this._src = obj;
            this._off = i;
            this._cch = i2;
            this._cur = cur;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getAttributeCount() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeLocalName(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getAttributeName(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeNamespace(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributePrefix(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeType(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getElementText() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getEventType() {
            checkChanged();
            return 4;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getLocalName() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getName() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getNamespaceCount() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespacePrefix(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPIData() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPITarget() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPrefix() {
            throw new IllegalStateException();
        }

        @Override // org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderBase, javax.xml.stream.Location
        public String getPublicId() {
            throw new IllegalStateException();
        }

        @Override // org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderBase
        public Cur getStreamCur() {
            return this._cur;
        }

        @Override // org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderBase, javax.xml.stream.Location
        public String getSystemId() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getText() {
            checkChanged();
            return CharUtil.getString(this._src, this._off, this._cch);
        }

        @Override // javax.xml.stream.XMLStreamReader
        public char[] getTextCharacters() {
            checkChanged();
            int i = this._cch;
            char[] cArr = new char[i];
            CharUtil.getChars(cArr, 0, this._src, this._off, i);
            return cArr;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextLength() {
            checkChanged();
            return this._cch;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextStart() {
            checkChanged();
            return this._off;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasName() {
            checkChanged();
            return false;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasNext() {
            checkChanged();
            return false;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasText() {
            checkChanged();
            return true;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isAttributeSpecified(int i) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isCharacters() {
            checkChanged();
            return true;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isEndElement() {
            checkChanged();
            return false;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStartElement() {
            checkChanged();
            return false;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int next() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int nextTag() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(String str, String str2) {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI() {
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextCharacters(int i, char[] cArr, int i2, int i3) {
            checkChanged();
            if (i3 >= 0) {
                int i4 = this._cch;
                if (i <= i4) {
                    if (i + i3 > i4) {
                        i3 = i4 - i;
                    }
                    CharUtil.getChars(cArr, i2, this._src, this._off + i, i3);
                    return i3;
                }
                throw new IndexOutOfBoundsException();
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public static XMLStreamReader newXmlStreamReader(Cur cur, Object obj, int i, int i2) {
        XMLStreamReaderForString xMLStreamReaderForString = new XMLStreamReaderForString(cur, obj, i, i2);
        if (cur._locale.noSync()) {
            return new UnsyncedJsr173(cur._locale, xMLStreamReaderForString);
        }
        return new SyncedJsr173(cur._locale, xMLStreamReaderForString);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Node nodeFromStream(XMLStreamReader xMLStreamReader) {
        Node nodeFromStreamImpl;
        if (!(xMLStreamReader instanceof Jsr173GateWay)) {
            return null;
        }
        Jsr173GateWay jsr173GateWay = (Jsr173GateWay) xMLStreamReader;
        Locale locale = jsr173GateWay.f113757_l;
        if (locale.noSync()) {
            locale.enter();
            try {
                return nodeFromStreamImpl(jsr173GateWay);
            } finally {
            }
        }
        synchronized (locale) {
            locale.enter();
            try {
                nodeFromStreamImpl = nodeFromStreamImpl(jsr173GateWay);
            } finally {
            }
        }
        return nodeFromStreamImpl;
    }

    public static Node nodeFromStreamImpl(Jsr173GateWay jsr173GateWay) {
        Cur streamCur = jsr173GateWay._xs.getStreamCur();
        if (streamCur.isNode()) {
            return (Node) streamCur.getDom();
        }
        return null;
    }

    /* loaded from: classes13.dex */
    public static final class XMLStreamReaderForNode extends XMLStreamReaderBase {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        private int _cchChars;
        private int _cchSrc;
        private char[] _chars;
        private Cur _cur;
        private boolean _done;
        private Cur _end;
        private int _offChars;
        private int _offSrc;
        private Object _src;
        private boolean _srcFetched;
        private boolean _textFetched;
        private boolean _wholeDoc;

        public XMLStreamReaderForNode(Cur cur, boolean z) {
            super(cur);
            if (z) {
                Cur weakCur = cur.weakCur(this);
                this._cur = weakCur;
                if (!weakCur.toFirstAttr()) {
                    this._cur.next();
                }
                Cur weakCur2 = cur.weakCur(this);
                this._end = weakCur2;
                weakCur2.toEnd();
            } else {
                this._cur = cur.weakCur(this);
                if (cur.isRoot()) {
                    this._wholeDoc = true;
                } else {
                    this._end = cur.weakCur(this);
                    if (!cur.isAttr()) {
                        this._end.skip();
                    } else if (!this._end.toNextAttr()) {
                        this._end.toParent();
                        this._end.next();
                    }
                }
            }
            if (this._wholeDoc) {
                return;
            }
            this._cur.push();
            try {
                next();
                this._cur.pop();
            } catch (XMLStreamException e) {
                throw new RuntimeException(e.getMessage(), e);
            }
        }

        private void ensureCharBufLen(int i) {
            char[] cArr = this._chars;
            if (cArr == null || cArr.length < i) {
                int i2 = 256;
                while (i2 < i) {
                    i2 *= 2;
                }
                this._chars = new char[i2];
            }
        }

        private void fetchChars() {
            Cur cur;
            if (this._textFetched) {
                return;
            }
            int kind = this._cur.kind();
            if (kind == 4) {
                cur = this._cur.tempCur();
                cur.next();
            } else {
                if (kind != 0) {
                    throw new IllegalStateException();
                }
                cur = this._cur;
            }
            Object chars = cur.getChars(-1);
            ensureCharBufLen(cur._cchSrc);
            char[] cArr = this._chars;
            this._offChars = 0;
            int i = cur._offSrc;
            int i2 = cur._cchSrc;
            this._cchChars = i2;
            CharUtil.getChars(cArr, 0, chars, i, i2);
            if (cur != this._cur) {
                cur.release();
            }
            this._textFetched = true;
        }

        private static boolean matchAttr(Cur cur, String str, String str2) {
            QName name = cur.getName();
            return name.getLocalPart().equals(str2) && (str == null || name.getNamespaceURI().equals(str));
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
        
            if (r0.isNormalAttr() == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
        
            if (matchAttr(r0, r3, r4) == false) goto L15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
        
            r2 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x002c, code lost:
        
            if (r0.toNextSibling() != false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x002e, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x0018, code lost:
        
            if (r0.toFirstAttr() != false) goto L10;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static org.apache.xmlbeans.impl.store.Cur toAttr(org.apache.xmlbeans.impl.store.Cur r2, java.lang.String r3, java.lang.String r4) {
            /*
                if (r3 == 0) goto L47
                if (r4 == 0) goto L47
                int r0 = r4.length()
                if (r0 == 0) goto L47
                org.apache.xmlbeans.impl.store.Cur r0 = r2.tempCur()
                boolean r1 = r2.isElem()
                if (r1 == 0) goto L30
                boolean r2 = r0.toFirstAttr()
                if (r2 == 0) goto L2e
            L1a:
                boolean r2 = r0.isNormalAttr()
                if (r2 == 0) goto L28
                boolean r2 = matchAttr(r0, r3, r4)
                if (r2 == 0) goto L28
                r2 = 1
                goto L3a
            L28:
                boolean r2 = r0.toNextSibling()
                if (r2 != 0) goto L1a
            L2e:
                r2 = 0
                goto L3a
            L30:
                boolean r1 = r2.isNormalAttr()
                if (r1 == 0) goto L41
                boolean r2 = matchAttr(r2, r3, r4)
            L3a:
                if (r2 != 0) goto L40
                r0.release()
                r0 = 0
            L40:
                return r0
            L41:
                java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
                r2.<init>()
                throw r2
            L47:
                java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
                r2.<init>()
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderForNode.toAttr(org.apache.xmlbeans.impl.store.Cur, java.lang.String, java.lang.String):org.apache.xmlbeans.impl.store.Cur");
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0047, code lost:
        
            if (r2 == false) goto L30;
         */
        /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
        
            return r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:0x004a, code lost:
        
            r0.release();
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        
            throw new java.lang.IndexOutOfBoundsException("Namespace index is too large");
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0032, code lost:
        
            if (r0.toFirstAttr() != false) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0038, code lost:
        
            if (r0.isXmlns() == false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x003a, code lost:
        
            r5 = r6 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x003c, code lost:
        
            if (r6 != 0) goto L24;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x003f, code lost:
        
            r6 = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0044, code lost:
        
            if (r0.toNextSibling() != false) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
        
            if (r6 == 0) goto L28;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0046, code lost:
        
            r2 = false;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static org.apache.xmlbeans.impl.store.Cur toXmlns(org.apache.xmlbeans.impl.store.Cur r5, int r6) {
            /*
                if (r6 < 0) goto L55
                org.apache.xmlbeans.impl.store.Cur r0 = r5.tempCur()
                boolean r1 = r5.isElem()
                r2 = 1
                r3 = -2
                r4 = 0
                if (r1 != 0) goto L25
                int r1 = r5.kind()
                if (r1 != r3) goto L16
                goto L25
            L16:
                boolean r5 = r5.isXmlns()
                if (r5 == 0) goto L1f
                if (r6 != 0) goto L46
                goto L47
            L1f:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                r5.<init>()
                throw r5
            L25:
                int r5 = r5.kind()
                if (r5 != r3) goto L2e
                r0.toParent()
            L2e:
                boolean r5 = r0.toFirstAttr()
                if (r5 == 0) goto L46
            L34:
                boolean r5 = r0.isXmlns()
                if (r5 == 0) goto L40
                int r5 = r6 + (-1)
                if (r6 != 0) goto L3f
                goto L47
            L3f:
                r6 = r5
            L40:
                boolean r5 = r0.toNextSibling()
                if (r5 != 0) goto L34
            L46:
                r2 = r4
            L47:
                if (r2 == 0) goto L4a
                return r0
            L4a:
                r0.release()
                java.lang.IndexOutOfBoundsException r5 = new java.lang.IndexOutOfBoundsException
                java.lang.String r6 = "Namespace index is too large"
                r5.<init>(r6)
                throw r5
            L55:
                java.lang.IndexOutOfBoundsException r5 = new java.lang.IndexOutOfBoundsException
                java.lang.String r6 = "Namespace index is negative"
                r5.<init>(r6)
                throw r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderForNode.toXmlns(org.apache.xmlbeans.impl.store.Cur, int):org.apache.xmlbeans.impl.store.Cur");
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0023, code lost:
        
            r2.release();
         */
        /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
        
            return r1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
        
            if (r2.toFirstAttr() != false) goto L6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
        
            if (r2.isNormalAttr() == false) goto L9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x001b, code lost:
        
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        
            if (r2.toNextSibling() != false) goto L19;
         */
        @Override // javax.xml.stream.XMLStreamReader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getAttributeCount() {
            /*
                r2 = this;
                org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
                boolean r0 = r0.isElem()
                if (r0 == 0) goto L27
                org.apache.xmlbeans.impl.store.Cur r2 = r2._cur
                org.apache.xmlbeans.impl.store.Cur r2 = r2.tempCur()
                boolean r0 = r2.toFirstAttr()
                r1 = 0
                if (r0 == 0) goto L23
            L15:
                boolean r0 = r2.isNormalAttr()
                if (r0 == 0) goto L1d
                int r1 = r1 + 1
            L1d:
                boolean r0 = r2.toNextSibling()
                if (r0 != 0) goto L15
            L23:
                r2.release()
                goto L30
            L27:
                org.apache.xmlbeans.impl.store.Cur r2 = r2._cur
                boolean r2 = r2.isNormalAttr()
                if (r2 == 0) goto L31
                r1 = 1
            L30:
                return r1
            L31:
                java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
                r2.<init>()
                throw r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderForNode.getAttributeCount():int");
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeLocalName(int i) {
            return getAttributeName(i).getLocalPart();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getAttributeName(int i) {
            Cur attr = toAttr(this._cur, i);
            QName name = attr.getName();
            attr.release();
            return name;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeNamespace(int i) {
            return getAttributeName(i).getNamespaceURI();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributePrefix(int i) {
            return getAttributeName(i).getPrefix();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeType(int i) {
            toAttr(this._cur, i).release();
            return "CDATA";
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(String str, String str2) {
            Cur attr = toAttr(this._cur, str, str2);
            if (attr == null) {
                return null;
            }
            String valueAsString = attr.getValueAsString();
            attr.release();
            return valueAsString;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getElementText() throws XMLStreamException {
            checkChanged();
            if (!isStartElement()) {
                throw new IllegalStateException();
            }
            StringBuilder sb = new StringBuilder();
            while (hasNext()) {
                int next = next();
                if (next == 2) {
                    return sb.toString();
                }
                if (next == 1) {
                    throw new XMLStreamException();
                }
                if (next != 5 && next != 3) {
                    sb.append(getText());
                }
            }
            throw new XMLStreamException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getEventType() {
            switch (this._cur.kind()) {
                case -2:
                    return 2;
                case -1:
                    return 8;
                case 0:
                    return 4;
                case 1:
                    return 7;
                case 2:
                    return 1;
                case 3:
                    return this._cur.isXmlns() ? 13 : 10;
                case 4:
                    return 5;
                case 5:
                    return 3;
                default:
                    throw new IllegalStateException();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getLocalName() {
            return getName().getLocalPart();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getName() {
            if (hasName()) {
                return this._cur.getName();
            }
            throw new IllegalStateException();
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
        
            if (r0.toFirstAttr() != false) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x003e, code lost:
        
            if (r0.isXmlns() == false) goto L20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0040, code lost:
        
            r1 = r1 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x0046, code lost:
        
            if (r0.toNextSibling() != false) goto L25;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0048, code lost:
        
            r2 = r1;
            r0.release();
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
        
            return r2;
         */
        @Override // javax.xml.stream.XMLStreamReader
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int getNamespaceCount() {
            /*
                r2 = this;
                org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
                boolean r0 = r0.isElem()
                r1 = -2
                if (r0 != 0) goto L22
                org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
                int r0 = r0.kind()
                if (r0 != r1) goto L12
                goto L22
            L12:
                org.apache.xmlbeans.impl.store.Cur r2 = r2._cur
                boolean r2 = r2.isXmlns()
                if (r2 == 0) goto L1c
                r2 = 1
                goto L4c
            L1c:
                java.lang.IllegalStateException r2 = new java.lang.IllegalStateException
                r2.<init>()
                throw r2
            L22:
                org.apache.xmlbeans.impl.store.Cur r0 = r2._cur
                org.apache.xmlbeans.impl.store.Cur r0 = r0.tempCur()
                org.apache.xmlbeans.impl.store.Cur r2 = r2._cur
                int r2 = r2.kind()
                if (r2 != r1) goto L33
                r0.toParent()
            L33:
                boolean r2 = r0.toFirstAttr()
                r1 = 0
                if (r2 == 0) goto L48
            L3a:
                boolean r2 = r0.isXmlns()
                if (r2 == 0) goto L42
                int r1 = r1 + 1
            L42:
                boolean r2 = r0.toNextSibling()
                if (r2 != 0) goto L3a
            L48:
                r2 = r1
                r0.release()
            L4c:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderForNode.getNamespaceCount():int");
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespacePrefix(int i) {
            Cur xmlns = toXmlns(this._cur, i);
            String xmlnsPrefix = xmlns.getXmlnsPrefix();
            xmlns.release();
            return xmlnsPrefix;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(int i) {
            Cur xmlns = toXmlns(this._cur, i);
            String xmlnsUri = xmlns.getXmlnsUri();
            xmlns.release();
            return xmlnsUri;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPIData() {
            if (this._cur.kind() == 5) {
                return this._cur.getValueAsString();
            }
            return null;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPITarget() {
            if (this._cur.kind() == 5) {
                return this._cur.getName().getLocalPart();
            }
            return null;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPrefix() {
            return getName().getPrefix();
        }

        @Override // org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderBase
        public Cur getStreamCur() {
            return this._cur;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getText() {
            checkChanged();
            int kind = this._cur.kind();
            if (kind == 4) {
                return this._cur.getValueAsString();
            }
            if (kind == 0) {
                return this._cur.getCharsAsString();
            }
            throw new IllegalStateException();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public char[] getTextCharacters() {
            checkChanged();
            fetchChars();
            return this._chars;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextLength() {
            checkChanged();
            fetchChars();
            return this._cchChars;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextStart() {
            checkChanged();
            fetchChars();
            return this._offChars;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasName() {
            int kind = this._cur.kind();
            return kind == 2 || kind == -2;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasNext() throws XMLStreamException {
            checkChanged();
            return !this._done;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasText() {
            int kind = this._cur.kind();
            return kind == 4 || kind == 0;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isAttributeSpecified(int i) {
            toAttr(this._cur, i).release();
            return false;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isCharacters() {
            return getEventType() == 4;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isEndElement() {
            return getEventType() == 2;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStartElement() {
            return getEventType() == 1;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int next() throws XMLStreamException {
            checkChanged();
            if (!hasNext()) {
                throw new IllegalStateException("No next event in stream");
            }
            int kind = this._cur.kind();
            boolean z = true;
            if (kind == -1) {
                this._done = true;
            } else {
                if (kind == 3) {
                    if (!this._cur.toNextAttr()) {
                        this._cur.toParent();
                        this._cur.next();
                    }
                } else if (kind == 4 || kind == 5) {
                    this._cur.skip();
                } else if (kind != 1) {
                    this._cur.next();
                } else if (!this._cur.toFirstAttr()) {
                    this._cur.next();
                }
                if (!this._wholeDoc) {
                    z = this._cur.isSamePos(this._end);
                } else if (this._cur.kind() != -1) {
                    z = false;
                }
                this._done = z;
            }
            this._textFetched = false;
            this._srcFetched = false;
            return getEventType();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int nextTag() throws XMLStreamException {
            checkChanged();
            while (!isStartElement() && !isEndElement()) {
                if (!isWhiteSpace()) {
                    throw new XMLStreamException();
                }
                if (!hasNext()) {
                    throw new XMLStreamException();
                }
                next();
            }
            return getEventType();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(int i) {
            Cur attr = toAttr(this._cur, i);
            if (attr == null) {
                return null;
            }
            String valueAsString = attr.getValueAsString();
            attr.release();
            return valueAsString;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI() {
            return getName().getNamespaceURI();
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextCharacters(int i, char[] cArr, int i2, int i3) throws XMLStreamException {
            Cur cur;
            if (i3 >= 0) {
                if (i2 >= 0 && i2 < cArr.length) {
                    if (i2 + i3 <= cArr.length) {
                        if (!this._srcFetched) {
                            int kind = this._cur.kind();
                            if (kind == 4) {
                                cur = this._cur.tempCur();
                                cur.next();
                            } else if (kind == 0) {
                                cur = this._cur;
                            } else {
                                throw new IllegalStateException();
                            }
                            this._src = cur.getChars(-1);
                            this._offSrc = cur._offSrc;
                            this._cchSrc = cur._cchSrc;
                            if (cur != this._cur) {
                                cur.release();
                            }
                            this._srcFetched = true;
                        }
                        int i4 = this._cchSrc;
                        if (i <= i4) {
                            if (i + i3 > i4) {
                                i3 = i4 - i;
                            }
                            CharUtil.getChars(cArr, i2, this._src, this._offSrc, i3);
                            return i3;
                        }
                        throw new IndexOutOfBoundsException();
                    }
                    throw new IndexOutOfBoundsException();
                }
                throw new IndexOutOfBoundsException();
            }
            throw new IndexOutOfBoundsException();
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x001f, code lost:
        
            r5 = r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0024, code lost:
        
            if (r0.toNextSibling() != false) goto L29;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0026, code lost:
        
            r2 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x002e, code lost:
        
            if (r5 == 0) goto L19;
         */
        /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        
            if (r0.toFirstAttr() != false) goto L7;
         */
        /* JADX WARN: Code restructure failed: missing block: B:7:0x0018, code lost:
        
            if (r0.isNormalAttr() == false) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        
            r4 = r5 - 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:9:0x001c, code lost:
        
            if (r5 != 0) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private static org.apache.xmlbeans.impl.store.Cur toAttr(org.apache.xmlbeans.impl.store.Cur r4, int r5) {
            /*
                if (r5 < 0) goto L44
                org.apache.xmlbeans.impl.store.Cur r0 = r4.tempCur()
                boolean r1 = r4.isElem()
                r2 = 1
                r3 = 0
                if (r1 == 0) goto L28
                boolean r4 = r0.toFirstAttr()
                if (r4 == 0) goto L26
            L14:
                boolean r4 = r0.isNormalAttr()
                if (r4 == 0) goto L20
                int r4 = r5 + (-1)
                if (r5 != 0) goto L1f
                goto L30
            L1f:
                r5 = r4
            L20:
                boolean r4 = r0.toNextSibling()
                if (r4 != 0) goto L14
            L26:
                r2 = r3
                goto L30
            L28:
                boolean r4 = r4.isNormalAttr()
                if (r4 == 0) goto L3e
                if (r5 != 0) goto L26
            L30:
                if (r2 == 0) goto L33
                return r0
            L33:
                r0.release()
                java.lang.IndexOutOfBoundsException r4 = new java.lang.IndexOutOfBoundsException
                java.lang.String r5 = "Attribute index is too large"
                r4.<init>(r5)
                throw r4
            L3e:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                r4.<init>()
                throw r4
            L44:
                java.lang.IndexOutOfBoundsException r4 = new java.lang.IndexOutOfBoundsException
                java.lang.String r5 = "Attribute index is negative"
                r4.<init>(r5)
                throw r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Jsr173.XMLStreamReaderForNode.toAttr(org.apache.xmlbeans.impl.store.Cur, int):org.apache.xmlbeans.impl.store.Cur");
        }
    }

    /* loaded from: classes13.dex */
    public static final class UnsyncedJsr173 extends Jsr173GateWay implements XMLStreamReader, Location, NamespaceContext {
        public UnsyncedJsr173(Locale locale, XMLStreamReaderBase xMLStreamReaderBase) {
            super(locale, xMLStreamReaderBase);
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void close() throws XMLStreamException {
            try {
                this.f113757_l.enter();
                this._xs.close();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getAttributeCount() {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeCount();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeLocalName(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeLocalName(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getAttributeName(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeName(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeNamespace(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeNamespace(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributePrefix(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributePrefix(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeType(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeType(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(String str, String str2) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeValue(str, str2);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getCharacterEncodingScheme() {
            try {
                this.f113757_l.enter();
                return this._xs.getCharacterEncodingScheme();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.Location
        public int getCharacterOffset() {
            try {
                this.f113757_l.enter();
                return this._xs.getCharacterOffset();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.Location
        public int getColumnNumber() {
            try {
                this.f113757_l.enter();
                return this._xs.getColumnNumber();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getElementText() throws XMLStreamException {
            try {
                this.f113757_l.enter();
                return this._xs.getElementText();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getEncoding() {
            try {
                this.f113757_l.enter();
                return this._xs.getEncoding();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getEventType() {
            try {
                this.f113757_l.enter();
                return this._xs.getEventType();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.Location
        public int getLineNumber() {
            int lineNumber;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    lineNumber = this._xs.getLineNumber();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return lineNumber;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getLocalName() {
            try {
                this.f113757_l.enter();
                return this._xs.getLocalName();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Location getLocation() {
            try {
                this.f113757_l.enter();
                return this._xs.getLocation();
            } finally {
                this.f113757_l.exit();
            }
        }

        public String getLocationURI() {
            String locationURI;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    locationURI = this._xs.getLocationURI();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return locationURI;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getName() {
            try {
                this.f113757_l.enter();
                return this._xs.getName();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public NamespaceContext getNamespaceContext() {
            return this;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getNamespaceCount() {
            try {
                this.f113757_l.enter();
                return this._xs.getNamespaceCount();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespacePrefix(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getNamespacePrefix(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(String str) {
            try {
                this.f113757_l.enter();
                return this._xs.getNamespaceURI(str);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPIData() {
            try {
                this.f113757_l.enter();
                return this._xs.getPIData();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPITarget() {
            try {
                this.f113757_l.enter();
                return this._xs.getPITarget();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPrefix() {
            try {
                this.f113757_l.enter();
                return this._xs.getPrefix();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator<String> getPrefixes(String str) {
            try {
                this.f113757_l.enter();
                return this._xs.getPrefixes(str);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Object getProperty(String str) {
            try {
                this.f113757_l.enter();
                return this._xs.getProperty(str);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.Location
        public String getPublicId() {
            String publicId;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    publicId = this._xs.getPublicId();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return publicId;
        }

        @Override // javax.xml.stream.Location
        public String getSystemId() {
            String systemId;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    systemId = this._xs.getSystemId();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return systemId;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getText() {
            try {
                this.f113757_l.enter();
                return this._xs.getText();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public char[] getTextCharacters() {
            try {
                this.f113757_l.enter();
                return this._xs.getTextCharacters();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextLength() {
            try {
                this.f113757_l.enter();
                return this._xs.getTextLength();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextStart() {
            try {
                this.f113757_l.enter();
                return this._xs.getTextStart();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getVersion() {
            try {
                this.f113757_l.enter();
                return this._xs.getVersion();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasName() {
            try {
                this.f113757_l.enter();
                return this._xs.hasName();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasNext() throws XMLStreamException {
            try {
                this.f113757_l.enter();
                return this._xs.hasNext();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasText() {
            try {
                this.f113757_l.enter();
                return this._xs.hasText();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isAttributeSpecified(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.isAttributeSpecified(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isCharacters() {
            try {
                this.f113757_l.enter();
                return this._xs.isCharacters();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isEndElement() {
            try {
                this.f113757_l.enter();
                return this._xs.isEndElement();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStandalone() {
            try {
                this.f113757_l.enter();
                return this._xs.isStandalone();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStartElement() {
            try {
                this.f113757_l.enter();
                return this._xs.isStartElement();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isWhiteSpace() {
            try {
                this.f113757_l.enter();
                return this._xs.isWhiteSpace();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int next() throws XMLStreamException {
            try {
                this.f113757_l.enter();
                return this._xs.next();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int nextTag() throws XMLStreamException {
            try {
                this.f113757_l.enter();
                return this._xs.nextTag();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void require(int i, String str, String str2) throws XMLStreamException {
            try {
                this.f113757_l.enter();
                this._xs.require(i, str, str2);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean standaloneSet() {
            try {
                this.f113757_l.enter();
                return this._xs.standaloneSet();
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getAttributeValue(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(int i) {
            try {
                this.f113757_l.enter();
                return this._xs.getNamespaceURI(i);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            try {
                this.f113757_l.enter();
                return this._xs.getPrefix(str);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextCharacters(int i, char[] cArr, int i2, int i3) throws XMLStreamException {
            try {
                this.f113757_l.enter();
                return this._xs.getTextCharacters(i, cArr, i2, i3);
            } finally {
                this.f113757_l.exit();
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI() {
            try {
                this.f113757_l.enter();
                return this._xs.getNamespaceURI();
            } finally {
                this.f113757_l.exit();
            }
        }
    }

    public static XMLStreamReader newXmlStreamReader(Cur cur, XmlOptions xmlOptions) {
        XMLStreamReaderBase xMLStreamReaderForString;
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        boolean z = maskNull.isSaveInner() && !maskNull.isSaveOuter();
        int kind = cur.kind();
        if (kind == 0 || kind < 0) {
            xMLStreamReaderForString = new XMLStreamReaderForString(cur, cur.getChars(-1), cur._offSrc, cur._cchSrc);
        } else if (z) {
            if (!cur.hasAttrs() && !cur.hasChildren()) {
                xMLStreamReaderForString = new XMLStreamReaderForString(cur, cur.getFirstChars(), cur._offSrc, cur._cchSrc);
            } else {
                xMLStreamReaderForString = new XMLStreamReaderForNode(cur, true);
            }
        } else {
            xMLStreamReaderForString = new XMLStreamReaderForNode(cur, false);
        }
        if (cur._locale.noSync()) {
            return new UnsyncedJsr173(cur._locale, xMLStreamReaderForString);
        }
        return new SyncedJsr173(cur._locale, xMLStreamReaderForString);
    }

    /* loaded from: classes13.dex */
    public static final class SyncedJsr173 extends Jsr173GateWay implements XMLStreamReader, Location, NamespaceContext {
        public SyncedJsr173(Locale locale, XMLStreamReaderBase xMLStreamReaderBase) {
            super(locale, xMLStreamReaderBase);
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void close() throws XMLStreamException {
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    this._xs.close();
                } finally {
                    this.f113757_l.exit();
                }
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getAttributeCount() {
            int attributeCount;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeCount = this._xs.getAttributeCount();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeCount;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeLocalName(int i) {
            String attributeLocalName;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeLocalName = this._xs.getAttributeLocalName(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeLocalName;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getAttributeName(int i) {
            QName attributeName;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeName = this._xs.getAttributeName(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeName;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeNamespace(int i) {
            String attributeNamespace;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeNamespace = this._xs.getAttributeNamespace(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeNamespace;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributePrefix(int i) {
            String attributePrefix;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributePrefix = this._xs.getAttributePrefix(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributePrefix;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeType(int i) {
            String attributeType;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeType = this._xs.getAttributeType(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeType;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(String str, String str2) {
            String attributeValue;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeValue = this._xs.getAttributeValue(str, str2);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeValue;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getCharacterEncodingScheme() {
            String characterEncodingScheme;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    characterEncodingScheme = this._xs.getCharacterEncodingScheme();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return characterEncodingScheme;
        }

        @Override // javax.xml.stream.Location
        public int getCharacterOffset() {
            int characterOffset;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    characterOffset = this._xs.getCharacterOffset();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return characterOffset;
        }

        @Override // javax.xml.stream.Location
        public int getColumnNumber() {
            int columnNumber;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    columnNumber = this._xs.getColumnNumber();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return columnNumber;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getElementText() throws XMLStreamException {
            String elementText;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    elementText = this._xs.getElementText();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return elementText;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getEncoding() {
            String encoding;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    encoding = this._xs.getEncoding();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return encoding;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getEventType() {
            int eventType;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    eventType = this._xs.getEventType();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return eventType;
        }

        @Override // javax.xml.stream.Location
        public int getLineNumber() {
            int lineNumber;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    lineNumber = this._xs.getLineNumber();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return lineNumber;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getLocalName() {
            String localName;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    localName = this._xs.getLocalName();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return localName;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Location getLocation() {
            Location location;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    location = this._xs.getLocation();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return location;
        }

        public String getLocationURI() {
            String locationURI;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    locationURI = this._xs.getLocationURI();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return locationURI;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public QName getName() {
            QName name;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    name = this._xs.getName();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return name;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public NamespaceContext getNamespaceContext() {
            return this;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getNamespaceCount() {
            int namespaceCount;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    namespaceCount = this._xs.getNamespaceCount();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return namespaceCount;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespacePrefix(int i) {
            String namespacePrefix;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    namespacePrefix = this._xs.getNamespacePrefix(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return namespacePrefix;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(String str) {
            String namespaceURI;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    namespaceURI = this._xs.getNamespaceURI(str);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return namespaceURI;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPIData() {
            String pIData;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    pIData = this._xs.getPIData();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return pIData;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPITarget() {
            String pITarget;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    pITarget = this._xs.getPITarget();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return pITarget;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getPrefix() {
            String prefix;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    prefix = this._xs.getPrefix();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return prefix;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public Iterator<String> getPrefixes(String str) {
            Iterator<String> prefixes;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    prefixes = this._xs.getPrefixes(str);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return prefixes;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public Object getProperty(String str) {
            Object property;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    property = this._xs.getProperty(str);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return property;
        }

        @Override // javax.xml.stream.Location
        public String getPublicId() {
            String publicId;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    publicId = this._xs.getPublicId();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return publicId;
        }

        @Override // javax.xml.stream.Location
        public String getSystemId() {
            String systemId;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    systemId = this._xs.getSystemId();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return systemId;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getText() {
            String text;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    text = this._xs.getText();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return text;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public char[] getTextCharacters() {
            char[] textCharacters;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    textCharacters = this._xs.getTextCharacters();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return textCharacters;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextLength() {
            int textLength;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    textLength = this._xs.getTextLength();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return textLength;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextStart() {
            int textStart;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    textStart = this._xs.getTextStart();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return textStart;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getVersion() {
            String version;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    version = this._xs.getVersion();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return version;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasName() {
            boolean hasName;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    hasName = this._xs.hasName();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return hasName;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasNext() throws XMLStreamException {
            boolean hasNext;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    hasNext = this._xs.hasNext();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return hasNext;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean hasText() {
            boolean hasText;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    hasText = this._xs.hasText();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return hasText;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isAttributeSpecified(int i) {
            boolean isAttributeSpecified;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isAttributeSpecified = this._xs.isAttributeSpecified(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isAttributeSpecified;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isCharacters() {
            boolean isCharacters;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isCharacters = this._xs.isCharacters();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isCharacters;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isEndElement() {
            boolean isEndElement;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isEndElement = this._xs.isEndElement();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isEndElement;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStandalone() {
            boolean isStandalone;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isStandalone = this._xs.isStandalone();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isStandalone;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isStartElement() {
            boolean isStartElement;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isStartElement = this._xs.isStartElement();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isStartElement;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean isWhiteSpace() {
            boolean isWhiteSpace;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    isWhiteSpace = this._xs.isWhiteSpace();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return isWhiteSpace;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int next() throws XMLStreamException {
            int next;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    next = this._xs.next();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return next;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int nextTag() throws XMLStreamException {
            int nextTag;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    nextTag = this._xs.nextTag();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return nextTag;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public void require(int i, String str, String str2) throws XMLStreamException {
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    this._xs.require(i, str, str2);
                } finally {
                    this.f113757_l.exit();
                }
            }
        }

        @Override // javax.xml.stream.XMLStreamReader
        public boolean standaloneSet() {
            boolean standaloneSet;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    standaloneSet = this._xs.standaloneSet();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return standaloneSet;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getAttributeValue(int i) {
            String attributeValue;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    attributeValue = this._xs.getAttributeValue(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return attributeValue;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI(int i) {
            String namespaceURI;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    namespaceURI = this._xs.getNamespaceURI(i);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return namespaceURI;
        }

        @Override // javax.xml.namespace.NamespaceContext
        public String getPrefix(String str) {
            String prefix;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    prefix = this._xs.getPrefix(str);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return prefix;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public int getTextCharacters(int i, char[] cArr, int i2, int i3) throws XMLStreamException {
            int textCharacters;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    textCharacters = this._xs.getTextCharacters(i, cArr, i2, i3);
                } finally {
                    this.f113757_l.exit();
                }
            }
            return textCharacters;
        }

        @Override // javax.xml.stream.XMLStreamReader
        public String getNamespaceURI() {
            String namespaceURI;
            synchronized (this.f113757_l) {
                this.f113757_l.enter();
                try {
                    namespaceURI = this._xs.getNamespaceURI();
                } finally {
                    this.f113757_l.exit();
                }
            }
            return namespaceURI;
        }
    }
}
