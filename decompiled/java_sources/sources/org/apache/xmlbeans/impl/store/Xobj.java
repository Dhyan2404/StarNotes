package org.apache.xmlbeans.impl.store;

import java.io.PrintStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.CDataBookmark;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.SchemaField;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.SchemaTypeLoader;
import org.apache.xmlbeans.XmlBeans;
import org.apache.xmlbeans.XmlCursor;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.common.ValidatorListener;
import org.apache.xmlbeans.impl.common.XmlLocale;
import org.apache.xmlbeans.impl.store.DomImpl;
import org.apache.xmlbeans.impl.store.Locale;
import org.apache.xmlbeans.impl.values.TypeStore;
import org.apache.xmlbeans.impl.values.TypeStoreUser;
import org.apache.xmlbeans.impl.values.TypeStoreUserFactory;
import org.apache.xmlbeans.impl.values.TypeStoreVisitor;
import org.apache.xmlbeans.impl.xpath.XPathFactory;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes13.dex */
public abstract class Xobj implements TypeStore {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final int INHIBIT_DISCONNECT = 1024;
    static final int STABLE_USER = 512;
    static final int VACANT = 256;
    int _bits;
    Bookmark _bookmarks;
    int _cchAfter;
    int _cchValue;
    CharNode _charNodesAfter;
    CharNode _charNodesValue;
    Cur _embedded;
    Xobj _firstChild;
    Xobj _lastChild;
    Locale _locale;
    QName _name;
    Xobj _nextSibling;
    int _offAfter;
    int _offValue;
    Xobj _parent;
    Xobj _prevSibling;
    Object _srcAfter;
    Object _srcValue;
    TypeStoreUser _user;

    public Xobj(Locale locale, int i, int i2) {
        this._locale = locale;
        this._bits = (i2 << 4) + i;
    }

    private static TypeStoreUser insertElement(QName qName, Xobj xobj, int i) {
        xobj._locale.enter();
        try {
            Cur tempCur = xobj._locale.tempCur();
            tempCur.moveTo(xobj, i);
            tempCur.createElement(qName);
            TypeStoreUser user = tempCur.getUser();
            tempCur.release();
            return user;
        } finally {
            xobj._locale.exit();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ TypeStoreUser lambda$array_setter$0(XmlObject xmlObject) {
        return (TypeStoreUser) xmlObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Xobj lambda$array_setter$1(TypeStore typeStore) {
        return (Xobj) typeStore;
    }

    private static void removeElement(Xobj xobj) {
        if (xobj == null) {
            throw new IndexOutOfBoundsException();
        }
        xobj._locale.enter();
        try {
            Cur tempCur = xobj.tempCur();
            tempCur.moveNode(null);
            tempCur.release();
        } finally {
            xobj._locale.exit();
        }
    }

    private void setValue(String str) {
        Xobj xobj;
        int i;
        if (str.length() <= 0) {
            return;
        }
        this._locale.notifyChange();
        Xobj lastAttr = lastAttr();
        if (lastAttr != null) {
            i = lastAttr.posAfter();
            xobj = lastAttr;
        } else {
            xobj = this;
            i = 1;
        }
        xobj.insertCharsHelper(i, str, 0, str.length(), true);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser add_attribute_user(QName qName) {
        if (getAttr(qName) != null) {
            throw new IndexOutOfBoundsException();
        }
        this._locale.enter();
        try {
            return setAttr(qName, "").getUser();
        } finally {
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser add_element_user(QName qName) {
        if (!isContainer()) {
            throw new IllegalStateException();
        }
        Xobj xobj = null;
        boolean z = false;
        QNameSet qNameSet = null;
        for (Xobj xobj2 = this._lastChild; xobj2 != null; xobj2 = xobj2._prevSibling) {
            if (xobj2.isContainer()) {
                if (xobj2._name.equals(qName)) {
                    break;
                }
                if (!z) {
                    qNameSet = this._user.get_element_ending_delimiters(qName);
                    z = true;
                }
                if (qNameSet == null || qNameSet.contains(xobj2._name)) {
                    xobj = xobj2;
                }
            }
        }
        return xobj == null ? insertElement(qName, this, -1) : insertElement(qName, xobj, 0);
    }

    public final Xobj appendXobj(Xobj xobj) {
        xobj._parent = this;
        Xobj xobj2 = this._lastChild;
        xobj._prevSibling = xobj2;
        if (xobj2 == null) {
            this._firstChild = xobj;
        } else {
            xobj2._nextSibling = xobj;
        }
        this._lastChild = xobj;
        return this;
    }

    public final void appendXobjs(Xobj xobj, Xobj xobj2) {
        Xobj xobj3 = this._lastChild;
        xobj._prevSibling = xobj3;
        if (xobj3 == null) {
            this._firstChild = xobj;
        } else {
            xobj3._nextSibling = xobj;
        }
        this._lastChild = xobj2;
        while (xobj != null) {
            xobj._parent = this;
            xobj = xobj._nextSibling;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void array_setter(XmlObject[] xmlObjectArr, QName qName) {
        this._locale.enter();
        try {
            int length = xmlObjectArr.length;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (XmlObject xmlObject : xmlObjectArr) {
                if (xmlObject == null) {
                    throw new IllegalArgumentException("Array element null");
                }
                if (xmlObject.isImmutable()) {
                    arrayList.add(null);
                    arrayList2.add(null);
                } else {
                    Xobj xobj = (Xobj) ((TypeStoreUser) xmlObject).get_store();
                    Locale locale = xobj._locale;
                    Locale locale2 = this._locale;
                    if (locale == locale2) {
                        arrayList.add(xobj.copyNode(locale2));
                    } else {
                        locale.enter();
                        try {
                            arrayList.add(xobj.copyNode(this._locale));
                        } finally {
                            xobj._locale.exit();
                        }
                    }
                    arrayList2.add(xmlObject.schemaType());
                }
            }
            int count_elements = count_elements(qName);
            while (count_elements > length) {
                remove_element(qName, length);
                count_elements--;
            }
            while (length > count_elements) {
                add_element_user(qName);
                count_elements++;
            }
            ArrayList arrayList3 = new ArrayList();
            find_all_element_users(qName, arrayList3);
            List list = (List) arrayList3.stream().map(new Function() { // from class: org.apache.xmlbeans.impl.store.l0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    TypeStoreUser lambda$array_setter$0;
                    lambda$array_setter$0 = Xobj.lambda$array_setter$0((XmlObject) obj);
                    return lambda$array_setter$0;
                }
            }).map(new Function() { // from class: com.sunia.HTREnginev2.vwo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return ((TypeStoreUser) obj).get_store();
                }
            }).map(new Function() { // from class: org.apache.xmlbeans.impl.store.m0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    Xobj lambda$array_setter$1;
                    lambda$array_setter$1 = Xobj.lambda$array_setter$1((TypeStore) obj);
                    return lambda$array_setter$1;
                }
            }).collect(Collectors.toList());
            Cur tempCur = tempCur();
            for (int i = 0; i < count_elements; i++) {
                Xobj xobj2 = (Xobj) list.get(i);
                if (xmlObjectArr[i].isImmutable()) {
                    xobj2.getObject().set(xmlObjectArr[i]);
                } else {
                    Cur.moveNodeContents(xobj2, null, true);
                    tempCur.moveTo(xobj2);
                    tempCur.next();
                    Cur.moveNodeContents((Xobj) arrayList.get(i), tempCur, true);
                    xobj2.change_type((SchemaType) arrayList2.get(i));
                }
            }
            tempCur.release();
        } finally {
            this._locale.exit();
        }
    }

    public final boolean bitIsClear(int i) {
        return (this._bits & i) == 0;
    }

    public final boolean bitIsSet(int i) {
        return (this._bits & i) != 0;
    }

    public final int cchAfter() {
        return this._cchAfter;
    }

    public final int cchLeft(int i) {
        if (isRoot() && i == 0) {
            return 0;
        }
        Xobj denormal = getDenormal(i);
        int posTemp = posTemp();
        int posAfter = denormal.posAfter();
        if (posTemp < posAfter) {
            posAfter = 1;
        }
        return posTemp - posAfter;
    }

    public final int cchRight(int i) {
        if (i <= 0) {
            return 0;
        }
        return i < posAfter() ? (r0 - i) - 1 : posMax() - i;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser change_type(SchemaType schemaType) {
        this._locale.enter();
        try {
            Cur tempCur = tempCur();
            tempCur.setType(schemaType, false);
            tempCur.release();
            this._locale.exit();
            return getUser();
        } catch (Throwable th) {
            this._locale.exit();
            throw th;
        }
    }

    public final void clearBit(int i) {
        this._bits = (~i) & this._bits;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public String compute_default_text() {
        if (isRoot()) {
            return null;
        }
        TypeStoreUser user = ensureParent().getUser();
        if (isAttr()) {
            return user.get_default_attribute_text(this._name);
        }
        String str = user.get_default_element_text(this._name);
        if (str != null) {
            return str;
        }
        TypeStoreVisitor new_visitor = user.new_visitor();
        if (new_visitor == null) {
            return null;
        }
        Xobj xobj = this._parent._firstChild;
        while (true) {
            if (xobj.isElem()) {
                new_visitor.visit(xobj._name);
                if (xobj == this) {
                    return new_visitor.get_default_text();
                }
            }
            xobj = xobj._nextSibling;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public int compute_flags() {
        if (isRoot()) {
            return 0;
        }
        TypeStoreUser user = ensureParent().getUser();
        if (isAttr()) {
            return user.get_attributeflags(this._name);
        }
        int i = user.get_elementflags(this._name);
        if (i != -1) {
            return i;
        }
        TypeStoreVisitor new_visitor = user.new_visitor();
        if (new_visitor == null) {
            return 0;
        }
        Xobj xobj = this._parent._firstChild;
        while (true) {
            if (xobj.isElem()) {
                new_visitor.visit(xobj._name);
                if (xobj == this) {
                    return new_visitor.get_elementflags();
                }
            }
            xobj = xobj._nextSibling;
        }
    }

    public final boolean contains(Cur cur) {
        return contains(cur._xobj, cur._pos);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser copy(SchemaTypeLoader schemaTypeLoader, SchemaType schemaType, XmlOptions xmlOptions) {
        XmlOptions maskNull = XmlOptions.maskNull(xmlOptions);
        SchemaType documentType = maskNull.getDocumentType();
        if (documentType == null) {
            documentType = schemaType == null ? XmlObject.type : schemaType;
        }
        Locale locale = locale();
        if (maskNull.isCopyUseNewSynchronizationDomain()) {
            locale = Locale.getLocale(schemaTypeLoader, maskNull);
        }
        Xobj createDomDocumentRootXobj = Cur.createDomDocumentRootXobj(locale, (documentType.isDocumentType() || (documentType.isNoType() && (this instanceof DocumentXobj))) ? false : true);
        locale.enter();
        try {
            Cur tempCur = createDomDocumentRootXobj.tempCur();
            tempCur.setType(schemaType);
            tempCur.release();
            locale.exit();
            return createDomDocumentRootXobj.copy_contents_from(this);
        } catch (Throwable th) {
            locale.exit();
            throw th;
        }
    }

    public Xobj copyNode(Locale locale) {
        Xobj xobj = this;
        Xobj xobj2 = null;
        Xobj xobj3 = null;
        while (true) {
            xobj.ensureOccupancy();
            Xobj newNode = xobj.newNode(locale);
            newNode._srcValue = xobj._srcValue;
            newNode._offValue = xobj._offValue;
            newNode._cchValue = xobj._cchValue;
            newNode._srcAfter = xobj._srcAfter;
            newNode._offAfter = xobj._offAfter;
            newNode._cchAfter = xobj._cchAfter;
            for (Bookmark bookmark = xobj._bookmarks; bookmark != null; bookmark = bookmark._next) {
                CDataBookmark cDataBookmark = CDataBookmark.CDATA_BOOKMARK;
                if (xobj.hasBookmark(cDataBookmark.getKey(), bookmark._pos)) {
                    newNode.setBookmark(bookmark._pos, cDataBookmark.getKey(), cDataBookmark);
                }
            }
            if (xobj2 == null) {
                xobj3 = newNode;
            } else {
                xobj2.appendXobj(newNode);
            }
            Xobj walk = xobj.walk(this, true);
            if (walk == null) {
                xobj3._srcAfter = null;
                xobj3._offAfter = 0;
                xobj3._cchAfter = 0;
                return xobj3;
            }
            if (xobj == walk._parent) {
                xobj2 = newNode;
            } else {
                while (true) {
                    xobj = xobj._parent;
                    if (xobj != walk._parent) {
                        xobj2 = xobj2._parent;
                    }
                }
            }
            xobj = walk;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser copy_contents_from(TypeStore typeStore) {
        Xobj xobj = (Xobj) typeStore;
        if (xobj == this) {
            return getUser();
        }
        this._locale.enter();
        try {
            xobj._locale.enter();
            Cur tempCur = tempCur();
            try {
                Cur tempCur2 = xobj.tempCur();
                Map<String, String> allNamespaces = Locale.getAllNamespaces(tempCur2, null);
                tempCur2.release();
                if (isAttr()) {
                    Cur tempCur3 = xobj.tempCur();
                    String textValue = Locale.getTextValue(tempCur3);
                    tempCur3.release();
                    tempCur.setValue(textValue);
                } else {
                    disconnectChildrenUsers();
                    setBit(1024);
                    QName xsiTypeName = isContainer() ? getXsiTypeName() : null;
                    Xobj copyNode = xobj.copyNode(this._locale);
                    Cur.moveNodeContents(this, null, true);
                    tempCur.next();
                    Cur.moveNodeContents(copyNode, tempCur, true);
                    tempCur.moveTo(this);
                    if (xsiTypeName != null) {
                        tempCur.setXsiType(xsiTypeName);
                    }
                    clearBit(1024);
                }
                if (allNamespaces != null) {
                    if (!tempCur.isContainer()) {
                        tempCur.toParent();
                    }
                    Locale.applyNamespaces(tempCur, allNamespaces);
                }
                this._locale.exit();
                return getUser();
            } finally {
                tempCur.release();
                xobj._locale.exit();
            }
        } catch (Throwable th) {
            this._locale.exit();
            throw th;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public int count_elements(QName qName) {
        return this._locale.count(this, qName, null);
    }

    public void disconnectChildrenUsers() {
        Xobj walk = walk(this, this._user == null);
        while (walk != null) {
            Xobj walk2 = walk.walk(this, walk._user != null);
            walk.disconnectUser();
            walk = walk2;
        }
    }

    public void disconnectNonRootUsers() {
        Xobj xobj = this;
        while (xobj != null) {
            Xobj walk = xobj.walk(this, xobj._user != null);
            if (!xobj.isRoot()) {
                xobj.disconnectUser();
            }
            xobj = walk;
        }
    }

    public void disconnectUser() {
        if (this._user == null || inhibitDisconnect()) {
            return;
        }
        ensureOccupancy();
        this._user.disconnect_store();
        this._user = null;
    }

    public final int domType() {
        return (this._bits & 240) >> 4;
    }

    public void dump(PrintStream printStream, Object obj) {
        Cur.dump(printStream, this, obj);
    }

    public final void ensureOccupancy() {
        if (isVacant()) {
            clearBit(256);
            TypeStoreUser typeStoreUser = this._user;
            this._user = null;
            String build_text = typeStoreUser.build_text(this);
            Locale locale = this._locale;
            long j = locale._versionAll;
            long j2 = locale._versionSansText;
            setValue(build_text);
            this._locale._versionAll = j;
            this._user = typeStoreUser;
        }
    }

    public final Xobj ensureParent() {
        Xobj xobj = this._parent;
        return xobj == null ? new DocumentFragXobj(this._locale).appendXobj(this) : xobj;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public XmlObject[] exec_query(String str, XmlOptions xmlOptions) {
        this._locale.enter();
        try {
            Cur tempCur = tempCur();
            XmlObject[] objectExecQuery = XPathFactory.objectExecQuery(tempCur, str, xmlOptions);
            tempCur.release();
            return objectExecQuery;
        } finally {
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public String fetch_text(int i) {
        this._locale.enter();
        try {
            return getValueAsString(i);
        } finally {
            this._locale.exit();
        }
    }

    public final Xobj findXmlnsForPrefix(String str) {
        while (this != null) {
            for (Xobj firstAttr = this.firstAttr(); firstAttr != null; firstAttr = firstAttr.nextAttr()) {
                if (firstAttr.isXmlns() && firstAttr.getXmlnsPrefix().equals(str)) {
                    return firstAttr;
                }
            }
            this = this._parent;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public <T extends XmlObject> void find_all_element_users(QName qName, List<T> list) {
        for (Xobj xobj = this._firstChild; xobj != null; xobj = xobj._nextSibling) {
            if (xobj.isElem() && xobj._name.equals(qName)) {
                list.add((XmlObject) xobj.getUser());
            }
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser find_attribute_user(QName qName) {
        Xobj attr = getAttr(qName);
        if (attr == null) {
            return null;
        }
        return attr.getUser();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser find_element_user(QName qName, int i) {
        for (Xobj xobj = this._firstChild; xobj != null; xobj = xobj._nextSibling) {
            if (xobj.isElem() && xobj._name.equals(qName) && i - 1 < 0) {
                return xobj.getUser();
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x002e, code lost:
    
        if (r0.equals("1") != false) goto L15;
     */
    @Override // org.apache.xmlbeans.impl.values.TypeStore
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean find_nil() {
        /*
            r3 = this;
            boolean r0 = r3.isAttr()
            r1 = 0
            if (r0 == 0) goto L8
            return r1
        L8:
            org.apache.xmlbeans.impl.store.Locale r0 = r3._locale
            r0.enter()
            javax.xml.namespace.QName r0 = org.apache.xmlbeans.impl.store.Locale._xsiNil     // Catch: java.lang.Throwable -> L32
            org.apache.xmlbeans.impl.store.Xobj r0 = r3.getAttr(r0)     // Catch: java.lang.Throwable -> L32
            if (r0 != 0) goto L1b
        L15:
            org.apache.xmlbeans.impl.store.Locale r3 = r3._locale
            r3.exit()
            return r1
        L1b:
            r2 = 3
            java.lang.String r0 = r0.getValueAsString(r2)     // Catch: java.lang.Throwable -> L32
            java.lang.String r2 = "true"
            boolean r2 = r0.equals(r2)     // Catch: java.lang.Throwable -> L32
            if (r2 != 0) goto L30
            java.lang.String r2 = "1"
            boolean r0 = r0.equals(r2)     // Catch: java.lang.Throwable -> L32
            if (r0 == 0) goto L15
        L30:
            r1 = 1
            goto L15
        L32:
            r0 = move-exception
            org.apache.xmlbeans.impl.store.Locale r3 = r3._locale
            r3.exit()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.xmlbeans.impl.store.Xobj.find_nil():boolean");
    }

    @Override // org.apache.xmlbeans.impl.values.NamespaceManager
    public String find_prefix_for_nsuri(String str, String str2) {
        this._locale.enter();
        try {
            return prefixForNamespace(str, str2, true);
        } finally {
            this._locale.exit();
        }
    }

    public final Xobj firstAttr() {
        Xobj xobj = this._firstChild;
        if (xobj == null || !xobj.isAttr()) {
            return null;
        }
        return this._firstChild;
    }

    public final Xobj getAttr(QName qName) {
        for (Xobj xobj = this._firstChild; xobj != null && xobj.isAttr(); xobj = xobj._nextSibling) {
            if (xobj._name.equals(qName)) {
                return xobj;
            }
        }
        return null;
    }

    public Object getChars(int i, int i2, Cur cur) {
        Object chars = getChars(i, i2);
        Locale locale = this._locale;
        cur._offSrc = locale._offSrc;
        cur._cchSrc = locale._cchSrc;
        return chars;
    }

    public String getCharsAfterAsString(int i, int i2) {
        int i3 = i + this._cchValue + 2;
        if (i3 == posMax()) {
            i3 = -1;
        }
        return getCharsAsString(i3, i2, 1);
    }

    public String getCharsAsString(int i, int i2, int i3) {
        if (cchRight(i) == 0) {
            return "";
        }
        Object chars = getChars(i, i2);
        if (i3 == 1) {
            Locale locale = this._locale;
            return CharUtil.getString(chars, locale._offSrc, locale._cchSrc);
        }
        Locale.ScrubBuffer scrubBuffer = Locale.getScrubBuffer(i3);
        Locale locale2 = this._locale;
        scrubBuffer.scrub(chars, locale2._offSrc, locale2._cchSrc);
        return scrubBuffer.getResultAsString();
    }

    public Object getCharsHelper(int i, int i2) {
        Object obj;
        int posAfter = posAfter();
        if (i >= posAfter) {
            obj = this._srcAfter;
            this._locale._offSrc = (this._offAfter + i) - posAfter;
        } else {
            obj = this._srcValue;
            this._locale._offSrc = (this._offValue + i) - 1;
        }
        this._locale._cchSrc = i2;
        return obj;
    }

    public String getCharsValueAsString(int i, int i2) {
        return getCharsAsString(i + 1, i2, 1);
    }

    public final Xobj getDenormal(int i) {
        Xobj xobj;
        Xobj xobj2;
        int posMax;
        if (i != 0) {
            if (i == -1) {
                xobj2 = this._lastChild;
                if (xobj2 == null) {
                    i = posAfter() - 1;
                } else {
                    posMax = xobj2.posMax();
                }
            }
            xobj = this;
            this._locale._posTemp = i;
            return xobj;
        }
        xobj2 = this._prevSibling;
        if (xobj2 == null) {
            xobj2 = ensureParent();
            posMax = xobj2.posAfter() - 1;
        } else {
            posMax = xobj2.posMax();
        }
        int i2 = posMax;
        xobj = xobj2;
        i = i2;
        this._locale._posTemp = i;
        return xobj;
    }

    public abstract DomImpl.Dom getDom();

    public final int getDomZeroOneChildren() {
        CharNode charNode;
        if (this._firstChild == null && this._srcValue == null && this._charNodesValue == null) {
            return 0;
        }
        Xobj xobj = this._lastChild;
        if (xobj != null && xobj.isAttr()) {
            Xobj xobj2 = this._lastChild;
            if (xobj2._charNodesAfter == null && xobj2._srcAfter == null && this._srcValue == null && this._charNodesValue == null) {
                return 0;
            }
        }
        Xobj xobj3 = this._firstChild;
        if (xobj3 == this._lastChild && xobj3 != null && !xobj3.isAttr() && this._srcValue == null && this._charNodesValue == null && this._firstChild._srcAfter == null) {
            return 1;
        }
        if (this._firstChild == null && this._srcValue != null && ((charNode = this._charNodesValue) == null || (charNode._next == null && charNode._cch == this._cchValue))) {
            return 1;
        }
        Xobj lastAttr = lastAttr();
        Xobj xobj4 = lastAttr == null ? null : lastAttr._nextSibling;
        return (lastAttr != null && lastAttr._srcAfter == null && xobj4 != null && xobj4._srcAfter == null && xobj4._nextSibling == null) ? 1 : 2;
    }

    public final Cur getEmbedded() {
        this._locale.embedCurs();
        return this._embedded;
    }

    public Object getFirstChars() {
        ensureOccupancy();
        if (this._cchValue > 0) {
            return getChars(1, -1);
        }
        Xobj lastAttr = lastAttr();
        if (lastAttr != null && lastAttr._cchAfter > 0) {
            return lastAttr.getChars(lastAttr.posAfter(), -1);
        }
        Locale locale = this._locale;
        locale._offSrc = 0;
        locale._cchSrc = 0;
        return null;
    }

    @Override // org.apache.xmlbeans.impl.common.PrefixResolver
    public String getNamespaceForPrefix(String str) {
        return namespaceForPrefix(str, true);
    }

    public final Xobj getNormal(int i) {
        Xobj xobj;
        if (i == posMax()) {
            Xobj xobj2 = this._nextSibling;
            if (xobj2 != null) {
                xobj = xobj2;
                i = 0;
            } else {
                xobj = ensureParent();
                i = -1;
            }
        } else if (i == posAfter() - 1) {
            xobj = this;
            i = -1;
        } else {
            xobj = this;
        }
        this._locale._posTemp = i;
        return xobj;
    }

    final XmlObject getObject() {
        if (isUserNode()) {
            return (XmlObject) getUser();
        }
        return null;
    }

    public final QName getQName() {
        return this._name;
    }

    public final TypeStoreUser getUser() {
        if (this._user == null) {
            Xobj xobj = this._parent;
            TypeStoreUser createTypeStoreUser = xobj == null ? ((TypeStoreUserFactory) XmlBeans.NO_TYPE).createTypeStoreUser() : xobj.getUser();
            TypeStoreUser create_element_user = isElem() ? createTypeStoreUser.create_element_user(this._name, getXsiTypeName()) : createTypeStoreUser.create_attribute_user(this._name);
            this._user = create_element_user;
            create_element_user.attach_store(this);
        }
        return this._user;
    }

    public final QName getValueAsQName() {
        String str;
        String valueAsString = getValueAsString(3);
        int indexOf = valueAsString.indexOf(58);
        if (indexOf >= 0) {
            str = valueAsString.substring(0, indexOf);
            valueAsString = valueAsString.substring(indexOf + 1);
        } else {
            str = "";
        }
        String namespaceForPrefix = namespaceForPrefix(str, true);
        if (namespaceForPrefix == null) {
            return null;
        }
        return new QName(namespaceForPrefix, valueAsString);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getValueAsString(int i) {
        if (!hasChildren()) {
            Object firstChars = getFirstChars();
            if (i == 1) {
                Locale locale = this._locale;
                String string = CharUtil.getString(firstChars, locale._offSrc, locale._cchSrc);
                if (string.length() > 0) {
                    Xobj lastAttr = lastAttr();
                    if (lastAttr != null) {
                        lastAttr._srcAfter = string;
                        lastAttr._offAfter = 0;
                    } else {
                        this._srcValue = string;
                        this._offValue = 0;
                    }
                }
                return string;
            }
            Locale.ScrubBuffer scrubBuffer = Locale.getScrubBuffer(i);
            Locale locale2 = this._locale;
            scrubBuffer.scrub(firstChars, locale2._offSrc, locale2._cchSrc);
            return scrubBuffer.getResultAsString();
        }
        Locale.ScrubBuffer scrubBuffer2 = Locale.getScrubBuffer(i);
        Cur tempCur = tempCur();
        tempCur.push();
        tempCur.next();
        while (!tempCur.isAtEndOfLastPush()) {
            if (tempCur.isText()) {
                scrubBuffer2.scrub(tempCur.getChars(-1), tempCur._offSrc, tempCur._cchSrc);
            }
            if (!tempCur.isComment() && !tempCur.isProcinst()) {
                tempCur.next();
            } else {
                tempCur.skip();
            }
        }
        String resultAsString = scrubBuffer2.getResultAsString();
        tempCur.release();
        return resultAsString;
    }

    public final String getXmlnsPrefix() {
        return Locale.xmlnsPrefix(this._name);
    }

    public final String getXmlnsUri() {
        return getValueAsString();
    }

    public final QName getXsiTypeName() {
        Xobj attr = getAttr(Locale._xsiType);
        if (attr == null) {
            return null;
        }
        return attr.getValueAsQName();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public XmlLocale get_locale() {
        return this._locale;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public Object get_root_object() {
        return this._locale;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public SchemaField get_schema_field() {
        if (isRoot()) {
            return null;
        }
        TypeStoreUser user = ensureParent().getUser();
        if (isAttr()) {
            return user.get_attribute_field(this._name);
        }
        TypeStoreVisitor new_visitor = user.new_visitor();
        if (new_visitor == null) {
            return null;
        }
        Xobj xobj = this._parent._firstChild;
        while (true) {
            if (xobj.isElem()) {
                new_visitor.visit(xobj._name);
                if (xobj == this) {
                    return new_visitor.get_schema_field();
                }
            }
            xobj = xobj._nextSibling;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public SchemaTypeLoader get_schematypeloader() {
        return this._locale._schemaTypeLoader;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public QName get_xsi_type() {
        return getXsiTypeName();
    }

    public final boolean hasAttrs() {
        Xobj xobj = this._firstChild;
        return xobj != null && xobj.isAttr();
    }

    public final boolean hasBookmark(Object obj, int i) {
        for (Bookmark bookmark = this._bookmarks; bookmark != null; bookmark = bookmark._next) {
            if (bookmark._pos == i && obj == bookmark._key) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean hasChildren() {
        Xobj xobj = this._lastChild;
        return (xobj == null || xobj.isAttr()) ? false : true;
    }

    public final boolean hasTextEnsureOccupancy() {
        ensureOccupancy();
        return hasTextNoEnsureOccupancy();
    }

    public final boolean hasTextNoEnsureOccupancy() {
        if (this._cchValue > 0) {
            return true;
        }
        Xobj lastAttr = lastAttr();
        return lastAttr != null && lastAttr._cchAfter > 0;
    }

    public final boolean inChars(int i, Xobj xobj, int i2, int i3, boolean z) {
        int i4;
        if (!z) {
            i4 = 0;
        } else {
            if (xobj.isRoot() && i2 == 0) {
                return false;
            }
            xobj = xobj.getDenormal(i2);
            i2 = xobj.posTemp();
            i4 = 1;
        }
        return xobj == this && i2 >= i && i2 < (i + i3) + i4;
    }

    public final boolean inhibitDisconnect() {
        return bitIsSet(1024);
    }

    public final void insertCharsHelper(int i, Object obj, int i2, int i3, boolean z) {
        Xobj xobj;
        int posAfter = posAfter();
        if (i - (i < posAfter ? 1 : 2) < this._cchValue + this._cchAfter) {
            for (Cur embedded = getEmbedded(); embedded != null; embedded = embedded._next) {
                int i4 = embedded._pos;
                if (i4 >= i) {
                    embedded._pos = i4 + i3;
                }
            }
            for (Bookmark bookmark = this._bookmarks; bookmark != null; bookmark = bookmark._next) {
                int i5 = bookmark._pos;
                if (i5 >= i) {
                    bookmark._pos = i5 + i3;
                }
            }
        }
        CharUtil charUtil = this._locale.getCharUtil();
        if (i < posAfter) {
            this._srcValue = charUtil.insertChars(i - 1, this._srcValue, this._offValue, this._cchValue, obj, i2, i3);
            this._offValue = charUtil._offSrc;
            this._cchValue = charUtil._cchSrc;
            if (z) {
                invalidateUser();
                invalidateSpecialAttr(null);
                return;
            }
            return;
        }
        this._srcAfter = charUtil.insertChars(i - posAfter, this._srcAfter, this._offAfter, this._cchAfter, obj, i2, i3);
        this._offAfter = charUtil._offSrc;
        this._cchAfter = charUtil._cchSrc;
        if (!z || (xobj = this._parent) == null) {
            return;
        }
        xobj.invalidateUser();
    }

    public final void insertXobj(Xobj xobj) {
        ensureParent();
        xobj._parent = this._parent;
        xobj._prevSibling = this._prevSibling;
        xobj._nextSibling = this;
        Xobj xobj2 = this._prevSibling;
        if (xobj2 != null) {
            xobj2._nextSibling = xobj;
        } else {
            this._parent._firstChild = xobj;
        }
        this._prevSibling = xobj;
    }

    public final void insertXobjs(Xobj xobj, Xobj xobj2) {
        xobj._prevSibling = this._prevSibling;
        xobj2._nextSibling = this;
        Xobj xobj3 = this._prevSibling;
        if (xobj3 != null) {
            xobj3._nextSibling = xobj;
        } else {
            this._parent._firstChild = xobj;
        }
        this._prevSibling = xobj2;
        while (xobj != this) {
            xobj._parent = this._parent;
            xobj = xobj._nextSibling;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser insert_element_user(QName qName, int i) {
        if (i >= 0) {
            if (isContainer()) {
                Xobj findNthChildElem = this._locale.findNthChildElem(this, qName, null, i);
                if (findNthChildElem == null) {
                    if (i <= this._locale.count(this, qName, null) + 1) {
                        return add_element_user(qName);
                    }
                    throw new IndexOutOfBoundsException();
                }
                return insertElement(qName, findNthChildElem, 0);
            }
            throw new IllegalStateException();
        }
        throw new IndexOutOfBoundsException();
    }

    public void invalidateNil() {
        TypeStoreUser typeStoreUser = this._user;
        if (typeStoreUser != null) {
            typeStoreUser.invalidate_nilvalue();
        }
    }

    public final void invalidateSpecialAttr(Xobj xobj) {
        if (isAttr()) {
            if (this._name.equals(Locale._xsiType)) {
                Xobj xobj2 = this._parent;
                if (xobj2 != null) {
                    xobj2.disconnectNonRootUsers();
                }
                if (xobj != null) {
                    xobj.disconnectNonRootUsers();
                }
            }
            if (this._name.equals(Locale._xsiNil)) {
                Xobj xobj3 = this._parent;
                if (xobj3 != null) {
                    xobj3.invalidateNil();
                }
                if (xobj != null) {
                    xobj.invalidateNil();
                }
            }
        }
    }

    public final void invalidateUser() {
        TypeStoreUser typeStoreUser = this._user;
        if (typeStoreUser != null) {
            typeStoreUser.invalidate_value();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void invalidate_nil() {
        if (isAttr()) {
            return;
        }
        this._locale.enter();
        try {
            if (this._user.build_nil()) {
                setAttr(Locale._xsiNil, "true");
            } else {
                removeAttr(Locale._xsiNil);
            }
        } finally {
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void invalidate_text() {
        this._locale.enter();
        try {
            if (isOccupied()) {
                if (hasTextNoEnsureOccupancy() || hasChildren()) {
                    TypeStoreUser typeStoreUser = this._user;
                    this._user = null;
                    Cur tempCur = tempCur();
                    tempCur.moveNodeContents(null, false);
                    tempCur.release();
                    this._user = typeStoreUser;
                }
                setBit(256);
            }
        } finally {
            this._locale.exit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isAttr() {
        return kind() == 3;
    }

    public final boolean isCharNodesAfterUsable() {
        if (this._srcAfter == null) {
            return false;
        }
        CharNode charNode = this._charNodesAfter;
        if (charNode != null && charNode._next == null && charNode._cch == this._cchAfter) {
            return true;
        }
        CharNode updateCharNodes = Cur.updateCharNodes(this._locale, this, charNode, this._cchAfter);
        this._charNodesAfter = updateCharNodes;
        return updateCharNodes != null;
    }

    public final boolean isCharNodesValueUsable() {
        if (!isExistingCharNodesValueUsable()) {
            CharNode updateCharNodes = Cur.updateCharNodes(this._locale, this, this._charNodesValue, this._cchValue);
            this._charNodesValue = updateCharNodes;
            if (updateCharNodes == null) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isComment() {
        return kind() == 4;
    }

    final boolean isContainer() {
        return Cur.kindIsContainer(kind());
    }

    public final boolean isElem() {
        return kind() == 2;
    }

    public final boolean isExistingCharNodesValueUsable() {
        CharNode charNode;
        return this._srcValue != null && (charNode = this._charNodesValue) != null && charNode._next == null && charNode._cch == this._cchValue;
    }

    public final boolean isFirstChildPtrDomUsable() {
        Xobj xobj = this._firstChild;
        if (xobj == null && this._srcValue == null && this._charNodesValue == null) {
            return true;
        }
        return xobj != null && !xobj.isAttr() && this._srcValue == null && this._charNodesValue == null;
    }

    public final boolean isInSameTree(Xobj xobj) {
        if (this._locale != xobj._locale) {
            return false;
        }
        Xobj xobj2 = this;
        while (xobj2 != xobj) {
            Xobj xobj3 = xobj2._parent;
            if (xobj3 == null) {
                while (xobj != this) {
                    Xobj xobj4 = xobj._parent;
                    if (xobj4 == null) {
                        return xobj == xobj2;
                    }
                    xobj = xobj4;
                }
                return true;
            }
            xobj2 = xobj3;
        }
        return true;
    }

    public final boolean isJustAfterEnd(Xobj xobj, int i) {
        if (xobj.isRoot() && i == 0) {
            return false;
        }
        if (xobj == this) {
            if (i != posAfter()) {
                return false;
            }
        } else if (xobj.getDenormal(i) != this || xobj.posTemp() != posAfter()) {
            return false;
        }
        return true;
    }

    public final boolean isNextSiblingPtrDomUsable() {
        return this._charNodesAfter == null && this._srcAfter == null;
    }

    public final boolean isNormal(int i) {
        Xobj xobj;
        if (!isValid()) {
            return false;
        }
        if (i == -1 || i == 0) {
            return true;
        }
        if (i < 0 || i >= posMax()) {
            return false;
        }
        if (i >= posAfter()) {
            if (isRoot()) {
                return false;
            }
            Xobj xobj2 = this._nextSibling;
            if ((xobj2 != null && xobj2.isAttr()) || (xobj = this._parent) == null || !xobj.isContainer()) {
                return false;
            }
        }
        return i != posAfter() - 1;
    }

    public final boolean isNormalAttr() {
        return isAttr() && !Locale.isXmlns(this._name);
    }

    public final boolean isOccupied() {
        return bitIsClear(256);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isProcinst() {
        return kind() == 5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean isRoot() {
        return kind() == 1;
    }

    public final boolean isStableUser() {
        return bitIsSet(512);
    }

    public final boolean isUserNode() {
        int kind = kind();
        if (kind == 2 || kind == 1) {
            return true;
        }
        return kind == 3 && !isXmlns();
    }

    public final boolean isVacant() {
        return bitIsSet(256);
    }

    final boolean isValid() {
        return !isVacant() || (this._cchValue == 0 && this._user != null);
    }

    public final boolean isXmlns() {
        return isAttr() && Locale.isXmlns(this._name);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public boolean is_attribute() {
        return isAttr();
    }

    public final int kind() {
        return this._bits & 15;
    }

    public final Xobj lastAttr() {
        Xobj xobj = this._firstChild;
        if (xobj == null || !xobj.isAttr()) {
            return null;
        }
        Xobj xobj2 = this._firstChild;
        while (true) {
            Xobj xobj3 = xobj2._nextSibling;
            if (xobj3 == null || !xobj3.isAttr()) {
                break;
            }
            xobj2 = xobj2._nextSibling;
        }
        return xobj2;
    }

    public final Locale locale() {
        return this._locale;
    }

    public final String namespaceForPrefix(String str, boolean z) {
        if (str == null) {
            str = "";
        }
        if (str.equals("xml")) {
            return "http://www.w3.org/XML/1998/namespace";
        }
        if (str.equals("xmlns")) {
            return "http://www.w3.org/2000/xmlns/";
        }
        while (this != null) {
            for (Xobj xobj = this._firstChild; xobj != null && xobj.isAttr(); xobj = xobj._nextSibling) {
                if (xobj.isXmlns() && xobj.getXmlnsPrefix().equals(str)) {
                    return xobj.getXmlnsUri();
                }
            }
            this = this._parent;
        }
        if (z && str.length() == 0) {
            return "";
        }
        return null;
    }

    public abstract Xobj newNode(Locale locale);

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public XmlCursor new_cursor() {
        this._locale.enter();
        try {
            Cur tempCur = tempCur();
            Cursor cursor = new Cursor(tempCur);
            tempCur.release();
            return cursor;
        } finally {
            this._locale.exit();
        }
    }

    public final Xobj nextAttr() {
        Xobj xobj = this._firstChild;
        if (xobj != null && xobj.isAttr()) {
            return this._firstChild;
        }
        Xobj xobj2 = this._nextSibling;
        if (xobj2 == null || !xobj2.isAttr()) {
            return null;
        }
        return this._nextSibling;
    }

    public final int nodeType() {
        return domType();
    }

    public final int posAfter() {
        return this._cchValue + 2;
    }

    public final int posMax() {
        return this._cchValue + 2 + this._cchAfter;
    }

    public final int posTemp() {
        return this._locale._posTemp;
    }

    public final String prefixForNamespace(String str, String str2, boolean z) {
        if (str == null) {
            str = "";
        }
        if (str.equals("http://www.w3.org/XML/1998/namespace")) {
            return "xml";
        }
        if (str.equals("http://www.w3.org/2000/xmlns/")) {
            return "xmlns";
        }
        Xobj xobj = this;
        while (!xobj.isContainer()) {
            xobj = xobj.ensureParent();
        }
        if (str.length() == 0) {
            Xobj findXmlnsForPrefix = xobj.findXmlnsForPrefix("");
            if (findXmlnsForPrefix != null && findXmlnsForPrefix.getXmlnsUri().length() != 0) {
                if (!z) {
                    return null;
                }
                xobj.setAttr(this._locale.createXmlns(null), "");
            }
            return "";
        }
        for (Xobj xobj2 = xobj; xobj2 != null; xobj2 = xobj2._parent) {
            for (Xobj firstAttr = xobj2.firstAttr(); firstAttr != null; firstAttr = firstAttr.nextAttr()) {
                if (firstAttr.isXmlns() && firstAttr.getXmlnsUri().equals(str) && xobj.findXmlnsForPrefix(firstAttr.getXmlnsPrefix()) == firstAttr) {
                    return firstAttr.getXmlnsPrefix();
                }
            }
        }
        if (!z) {
            return null;
        }
        if (str2 != null && (str2.length() == 0 || str2.toLowerCase(java.util.Locale.ROOT).startsWith("xml") || xobj.findXmlnsForPrefix(str2) != null)) {
            str2 = null;
        }
        if (str2 == null) {
            String suggestPrefix = QNameHelper.suggestPrefix(str);
            int i = 1;
            str2 = suggestPrefix;
            while (xobj.findXmlnsForPrefix(str2) != null) {
                str2 = suggestPrefix + i;
                i++;
            }
        }
        for (Xobj xobj3 = xobj; !xobj3.isRoot() && !xobj3.ensureParent().isRoot(); xobj3 = xobj3._parent) {
        }
        xobj.setAttr(this._locale.createXmlns(str2), str);
        return str2;
    }

    public final boolean removeAttr(QName qName) {
        Xobj attr = getAttr(qName);
        if (attr == null) {
            return false;
        }
        Cur tempCur = attr.tempCur();
        while (true) {
            tempCur.moveNode(null);
            Xobj attr2 = getAttr(qName);
            if (attr2 == null) {
                tempCur.release();
                return true;
            }
            tempCur.moveTo(attr2);
        }
    }

    public final void removeCharsHelper(int i, int i2, Xobj xobj, int i3, boolean z, boolean z2) {
        Xobj xobj2;
        int i4;
        int i5;
        Cur embedded = getEmbedded();
        while (embedded != null) {
            Cur cur = embedded._next;
            int i6 = embedded._pos;
            if (i6 >= i && i6 < i + i2) {
                if (z) {
                    embedded.moveToNoCheck(xobj, (i6 + i3) - i);
                } else {
                    embedded.nextChars((i2 - i6) + i);
                }
            }
            if (embedded._xobj == this && (i5 = embedded._pos) >= i + i2) {
                embedded._pos = i5 - i2;
            }
            embedded = cur;
        }
        for (Bookmark bookmark = this._bookmarks; bookmark != null; bookmark = bookmark._next) {
            int i7 = bookmark._pos;
            if (i7 >= i && i7 < i + i2) {
                bookmark.moveTo(xobj, (i7 + i3) - i);
            }
            if (bookmark._xobj == this && (i4 = bookmark._pos) >= i + i2) {
                bookmark._pos = i4 - i2;
            }
        }
        int posAfter = posAfter();
        CharUtil charUtil = this._locale.getCharUtil();
        if (i < posAfter) {
            this._srcValue = charUtil.removeChars(i - 1, i2, this._srcValue, this._offValue, this._cchValue);
            this._offValue = charUtil._offSrc;
            this._cchValue = charUtil._cchSrc;
            if (z2) {
                invalidateUser();
                invalidateSpecialAttr(null);
                return;
            }
            return;
        }
        this._srcAfter = charUtil.removeChars(i - posAfter, i2, this._srcAfter, this._offAfter, this._cchAfter);
        this._offAfter = charUtil._offSrc;
        this._cchAfter = charUtil._cchSrc;
        if (!z2 || (xobj2 = this._parent) == null) {
            return;
        }
        xobj2.invalidateUser();
    }

    public final void removeXobj() {
        Xobj xobj = this._parent;
        if (xobj != null) {
            if (xobj._firstChild == this) {
                xobj._firstChild = this._nextSibling;
            }
            if (xobj._lastChild == this) {
                xobj._lastChild = this._prevSibling;
            }
            Xobj xobj2 = this._prevSibling;
            if (xobj2 != null) {
                xobj2._nextSibling = this._nextSibling;
            }
            Xobj xobj3 = this._nextSibling;
            if (xobj3 != null) {
                xobj3._prevSibling = xobj2;
            }
            this._parent = null;
            this._prevSibling = null;
            this._nextSibling = null;
        }
    }

    public final void removeXobjs(Xobj xobj, Xobj xobj2) {
        if (this._firstChild == xobj) {
            this._firstChild = xobj2._nextSibling;
        }
        if (this._lastChild == xobj2) {
            this._lastChild = xobj._prevSibling;
        }
        Xobj xobj3 = xobj._prevSibling;
        if (xobj3 != null) {
            xobj3._nextSibling = xobj2._nextSibling;
        }
        Xobj xobj4 = xobj2._nextSibling;
        if (xobj4 != null) {
            xobj4._prevSibling = xobj3;
        }
        xobj._prevSibling = null;
        xobj2._nextSibling = null;
        while (xobj != null) {
            xobj._parent = null;
            xobj = xobj._nextSibling;
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void remove_attribute(QName qName) {
        this._locale.enter();
        try {
            if (removeAttr(qName)) {
            } else {
                throw new IndexOutOfBoundsException();
            }
        } finally {
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void remove_element(QName qName, int i) {
        if (i >= 0) {
            if (isContainer()) {
                Xobj xobj = this._firstChild;
                while (xobj != null && (!xobj.isElem() || !xobj._name.equals(qName) || i - 1 >= 0)) {
                    xobj = xobj._nextSibling;
                }
                removeElement(xobj);
                return;
            }
            throw new IllegalStateException();
        }
        throw new IndexOutOfBoundsException();
    }

    public final Xobj setAttr(QName qName, String str) {
        Cur tempCur = tempCur();
        if (tempCur.toAttr(qName)) {
            tempCur.removeFollowingAttrs();
        } else {
            tempCur.next();
            tempCur.createAttr(qName);
        }
        tempCur.setValue(str);
        Xobj xobj = tempCur._xobj;
        tempCur.release();
        return xobj;
    }

    final void setBit(int i) {
        this._bits = i | this._bits;
    }

    public final Bookmark setBookmark(int i, Object obj, Object obj2) {
        for (Bookmark bookmark = this._bookmarks; bookmark != null; bookmark = bookmark._next) {
            if (i == bookmark._pos && obj == bookmark._key) {
                if (obj2 == null) {
                    this._bookmarks = bookmark.listRemove(this._bookmarks);
                    return null;
                }
                bookmark._value = obj2;
                return bookmark;
            }
        }
        if (obj2 == null) {
            return null;
        }
        Bookmark bookmark2 = new Bookmark();
        bookmark2._xobj = this;
        bookmark2._pos = i;
        bookmark2._key = obj;
        bookmark2._value = obj2;
        this._bookmarks = bookmark2.listInsert(this._bookmarks);
        return bookmark2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void setName(QName qName) {
        Xobj xobj;
        if (this._name.equals(qName) && this._name.getPrefix().equals(qName.getPrefix())) {
            return;
        }
        this._locale.notifyChange();
        QName qName2 = this._name;
        this._name = qName;
        if (this instanceof NamedNodeXobj) {
            ((NamedNodeXobj) this)._canHavePrefixUri = true;
        }
        if (!isProcinst()) {
            if (!isAttr() || this._parent == null) {
                xobj = this;
            } else {
                QName qName3 = Locale._xsiType;
                xobj = (qName2.equals(qName3) || qName.equals(qName3)) ? this._parent : this;
                QName qName4 = Locale._xsiNil;
                if (qName2.equals(qName4) || qName.equals(qName4)) {
                    this._parent.invalidateNil();
                }
            }
            xobj.disconnectNonRootUsers();
        }
        Locale locale = this._locale;
        locale._versionAll++;
        locale._versionSansText++;
    }

    public void setStableType(SchemaType schemaType) {
        setStableUser(((TypeStoreUserFactory) schemaType).createTypeStoreUser());
    }

    public void setStableUser(TypeStoreUser typeStoreUser) {
        disconnectNonRootUsers();
        disconnectUser();
        this._user = typeStoreUser;
        typeStoreUser.attach_store(this);
        setBit(512);
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void store_text(String str) {
        this._locale.enter();
        TypeStoreUser typeStoreUser = this._user;
        this._user = null;
        try {
            Cur tempCur = tempCur();
            tempCur.moveNodeContents(null, false);
            if (str != null && str.length() > 0) {
                tempCur.next();
                tempCur.insertString(str);
            }
            tempCur.release();
        } finally {
            this._user = typeStoreUser;
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser substitute(QName qName, SchemaType schemaType) {
        this._locale.enter();
        try {
            Cur tempCur = tempCur();
            tempCur.setSubstitution(qName, schemaType);
            tempCur.release();
            this._locale.exit();
            return getUser();
        } catch (Throwable th) {
            this._locale.exit();
            throw th;
        }
    }

    public final Cur tempCur() {
        Cur tempCur = this._locale.tempCur();
        tempCur.moveTo(this);
        return tempCur;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void validate(ValidatorListener validatorListener) {
        this._locale.enter();
        try {
            Cur tempCur = tempCur();
            new Validate(tempCur, validatorListener);
            tempCur.release();
        } finally {
            this._locale.exit();
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public boolean validate_on_set() {
        return this._locale._validateOnSet;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void visit_elements(TypeStoreVisitor typeStoreVisitor) {
        throw new RuntimeException("Not implemeneted");
    }

    public final Xobj walk(Xobj xobj, boolean z) {
        Xobj xobj2 = this._firstChild;
        if (xobj2 != null && z) {
            return xobj2;
        }
        while (this != xobj) {
            Xobj xobj3 = this._nextSibling;
            if (xobj3 != null) {
                return xobj3;
            }
            this = this._parent;
        }
        return null;
    }

    public final boolean contains(Xobj xobj, int i) {
        if (this == xobj) {
            if (i != -1) {
                return i > 0 && i < posAfter();
            }
            return true;
        }
        if (this._firstChild == null) {
            return false;
        }
        while (xobj != null) {
            if (xobj == this) {
                return true;
            }
            xobj = xobj._parent;
        }
        return false;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public int count_elements(QNameSet qNameSet) {
        return this._locale.count(this, null, qNameSet);
    }

    public void dump(PrintStream printStream) {
        Cur.dump(printStream, this, this);
    }

    public void dump() {
        dump(System.out);
    }

    public Object getChars(int i, int i2) {
        int cchRight = cchRight(i);
        if (i2 < 0 || i2 > cchRight) {
            i2 = cchRight;
        }
        if (i2 == 0) {
            Locale locale = this._locale;
            locale._offSrc = 0;
            locale._cchSrc = 0;
            return null;
        }
        return getCharsHelper(i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public <T extends XmlObject> void find_all_element_users(QNameSet qNameSet, List<T> list) {
        for (Xobj xobj = this._firstChild; xobj != null; xobj = xobj._nextSibling) {
            if (xobj.isElem() && qNameSet.contains(xobj._name)) {
                list.add((XmlObject) xobj.getUser());
            }
        }
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser find_element_user(QNameSet qNameSet, int i) {
        for (Xobj xobj = this._firstChild; xobj != null; xobj = xobj._nextSibling) {
            if (xobj.isElem() && qNameSet.contains(xobj._name) && i - 1 < 0) {
                return xobj.getUser();
            }
        }
        return null;
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public void remove_element(QNameSet qNameSet, int i) {
        if (i >= 0) {
            if (isContainer()) {
                Xobj xobj = this._firstChild;
                while (xobj != null && (!xobj.isElem() || !qNameSet.contains(xobj._name) || i - 1 >= 0)) {
                    xobj = xobj._nextSibling;
                }
                removeElement(xobj);
                return;
            }
            throw new IllegalStateException();
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // org.apache.xmlbeans.impl.values.TypeStore
    public TypeStoreUser insert_element_user(QNameSet qNameSet, QName qName, int i) {
        if (i >= 0) {
            if (isContainer()) {
                Xobj findNthChildElem = this._locale.findNthChildElem(this, null, qNameSet, i);
                if (findNthChildElem == null) {
                    if (i <= this._locale.count(this, null, qNameSet) + 1) {
                        return add_element_user(qName);
                    }
                    throw new IndexOutOfBoundsException();
                }
                return insertElement(qName, findNthChildElem, 0);
            }
            throw new IllegalStateException();
        }
        throw new IndexOutOfBoundsException();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getValueAsString() {
        return getValueAsString(1);
    }
}
