package org.apache.xerces.impl.p117xs;

import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.Vector;
import org.apache.xerces.impl.p117xs.util.StringListImpl;
import org.apache.xerces.impl.p117xs.util.XSNamedMap4Types;
import org.apache.xerces.impl.p117xs.util.XSNamedMapImpl;
import org.apache.xerces.impl.p117xs.util.XSObjectListImpl;
import org.apache.xerces.p118xs.StringList;
import org.apache.xerces.p118xs.XSAttributeDeclaration;
import org.apache.xerces.p118xs.XSAttributeGroupDefinition;
import org.apache.xerces.p118xs.XSElementDeclaration;
import org.apache.xerces.p118xs.XSIDCDefinition;
import org.apache.xerces.p118xs.XSModel;
import org.apache.xerces.p118xs.XSModelGroupDefinition;
import org.apache.xerces.p118xs.XSNamedMap;
import org.apache.xerces.p118xs.XSNamespaceItem;
import org.apache.xerces.p118xs.XSNamespaceItemList;
import org.apache.xerces.p118xs.XSNotationDeclaration;
import org.apache.xerces.p118xs.XSObject;
import org.apache.xerces.p118xs.XSObjectList;
import org.apache.xerces.p118xs.XSTypeDefinition;
import org.apache.xerces.util.SymbolHash;
import org.apache.xerces.util.XMLSymbols;

/* loaded from: classes13.dex */
public final class XSModelImpl extends AbstractList implements XSModel, XSNamespaceItemList {

    /* renamed from: o */
    public static final short f112933o = 16;

    /* renamed from: p */
    public static final boolean[] f112934p = {false, true, true, true, false, true, true, false, false, false, true, true, false, false, false, true, true};

    /* renamed from: e */
    public final int f112935e;

    /* renamed from: f */
    public final String[] f112936f;

    /* renamed from: g */
    public final SchemaGrammar[] f112937g;

    /* renamed from: h */
    public final SymbolHash f112938h;

    /* renamed from: i */
    public final SymbolHash f112939i;

    /* renamed from: j */
    public final XSNamedMap[] f112940j;

    /* renamed from: k */
    public final XSNamedMap[][] f112941k;

    /* renamed from: l */
    public final StringList f112942l;

    /* renamed from: m */
    public XSObjectList f112943m;

    /* renamed from: n */
    public final boolean f112944n;

    /* renamed from: org.apache.xerces.impl.xs.XSModelImpl$a */
    /* loaded from: classes13.dex */
    public final class C20049a implements ListIterator {

        /* renamed from: e */
        public int f112945e;

        public C20049a(int i) {
            this.f112945e = i;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f112945e < XSModelImpl.this.f112935e;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f112945e > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            if (this.f112945e >= XSModelImpl.this.f112935e) {
                throw new NoSuchElementException();
            }
            SchemaGrammar[] schemaGrammarArr = XSModelImpl.this.f112937g;
            int i = this.f112945e;
            this.f112945e = i + 1;
            return schemaGrammarArr[i];
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f112945e;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            if (this.f112945e <= 0) {
                throw new NoSuchElementException();
            }
            SchemaGrammar[] schemaGrammarArr = XSModelImpl.this.f112937g;
            int i = this.f112945e - 1;
            this.f112945e = i;
            return schemaGrammarArr[i];
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f112945e - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            throw new UnsupportedOperationException();
        }
    }

    public XSModelImpl(SchemaGrammar[] schemaGrammarArr) {
        this(schemaGrammarArr, (short) 1);
    }

    /* renamed from: h */
    public static final String m70248h(String str) {
        return str == null ? XMLSymbols.EMPTY_STRING : str;
    }

    /* renamed from: c */
    public final SymbolHash m70249c() {
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(null);
        for (int i = 0; i < this.f112935e; i++) {
            substitutionGroupHandler.addSubstitutionGroup(this.f112937g[i].m70121e());
        }
        XSObjectListImpl m70251e = m70251e();
        int length = m70251e.getLength();
        SymbolHash symbolHash = new SymbolHash(length * 2);
        for (int i2 = 0; i2 < length; i2++) {
            XSElementDecl xSElementDecl = (XSElementDecl) m70251e.item(i2);
            XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
            symbolHash.put(xSElementDecl, substitutionGroup.length > 0 ? new XSObjectListImpl(substitutionGroup, substitutionGroup.length) : XSObjectListImpl.EMPTY_LIST);
        }
        return symbolHash;
    }

    /* renamed from: d */
    public final SymbolHash m70250d() {
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(null);
        for (int i = 0; i < this.f112935e; i++) {
            substitutionGroupHandler.addSubstitutionGroup(this.f112937g[i].m70121e());
        }
        XSNamedMap components = getComponents((short) 2);
        int length = components.getLength();
        SymbolHash symbolHash = new SymbolHash(length * 2);
        for (int i2 = 0; i2 < length; i2++) {
            XSElementDecl xSElementDecl = (XSElementDecl) components.item(i2);
            XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
            symbolHash.put(xSElementDecl, substitutionGroup.length > 0 ? new XSObjectListImpl(substitutionGroup, substitutionGroup.length) : XSObjectListImpl.EMPTY_LIST);
        }
        return symbolHash;
    }

    /* renamed from: e */
    public final XSObjectListImpl m70251e() {
        SymbolHash[] symbolHashArr = new SymbolHash[this.f112935e];
        int i = 0;
        for (int i2 = 0; i2 < this.f112935e; i2++) {
            SymbolHash symbolHash = this.f112937g[i2].f112706t;
            symbolHashArr[i2] = symbolHash;
            i += symbolHash.getLength();
        }
        if (i == 0) {
            return XSObjectListImpl.EMPTY_LIST;
        }
        XSObject[] xSObjectArr = new XSObject[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f112935e; i4++) {
            symbolHashArr[i4].getValues(xSObjectArr, i3);
            i3 += symbolHashArr[i4].getLength();
        }
        return new XSObjectListImpl(xSObjectArr, i);
    }

    /* renamed from: g */
    public final ListIterator m70252g(int i) {
        return new C20049a(i);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i) {
        if (i >= 0 && i < this.f112935e) {
            return this.f112937g[i];
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public synchronized XSObjectList getAnnotations() {
        XSObjectList xSObjectList = this.f112943m;
        if (xSObjectList != null) {
            return xSObjectList;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.f112935e; i2++) {
            i += this.f112937g[i2].f112712w;
        }
        if (i == 0) {
            XSObjectListImpl xSObjectListImpl = XSObjectListImpl.EMPTY_LIST;
            this.f112943m = xSObjectListImpl;
            return xSObjectListImpl;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = new XSAnnotationImpl[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.f112935e; i4++) {
            SchemaGrammar schemaGrammar = this.f112937g[i4];
            int i5 = schemaGrammar.f112712w;
            if (i5 > 0) {
                System.arraycopy(schemaGrammar.f112710v, 0, xSAnnotationImplArr, i3, i5);
                i3 += schemaGrammar.f112712w;
            }
        }
        XSObjectListImpl xSObjectListImpl2 = new XSObjectListImpl(xSAnnotationImplArr, i);
        this.f112943m = xSObjectListImpl2;
        return xSObjectListImpl2;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSAttributeDeclaration getAttributeDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeDeclaration) schemaGrammar.f112690f.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSAttributeGroupDefinition getAttributeGroup(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeGroupDefinition) schemaGrammar.f112691g.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public synchronized XSNamedMap getComponents(short s) {
        if (s > 0 && s <= 16) {
            if (f112934p[s]) {
                SymbolHash[] symbolHashArr = new SymbolHash[this.f112935e];
                if (this.f112940j[s] == null) {
                    for (int i = 0; i < this.f112935e; i++) {
                        if (s == 1) {
                            symbolHashArr[i] = this.f112937g[i].f112690f;
                        } else if (s != 2) {
                            if (s != 3) {
                                if (s == 5) {
                                    symbolHashArr[i] = this.f112937g[i].f112691g;
                                } else if (s == 6) {
                                    symbolHashArr[i] = this.f112937g[i].f112693i;
                                } else if (s == 10) {
                                    symbolHashArr[i] = this.f112937g[i].f112695k;
                                } else if (s == 11) {
                                    symbolHashArr[i] = this.f112937g[i].f112694j;
                                } else if (s != 15 && s != 16) {
                                }
                            }
                            symbolHashArr[i] = this.f112937g[i].f112697l;
                        } else {
                            symbolHashArr[i] = this.f112937g[i].f112692h;
                        }
                    }
                    if (s != 15 && s != 16) {
                        this.f112940j[s] = new XSNamedMapImpl(this.f112936f, symbolHashArr, this.f112935e);
                    }
                    this.f112940j[s] = new XSNamedMap4Types(this.f112936f, symbolHashArr, this.f112935e, s);
                }
                return this.f112940j[s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public synchronized XSNamedMap getComponentsByNamespace(short s, String str) {
        SymbolHash symbolHash;
        if (s > 0 && s <= 16) {
            if (f112934p[s]) {
                int i = 0;
                if (str != null) {
                    while (i < this.f112935e && !str.equals(this.f112936f[i])) {
                        i++;
                    }
                } else {
                    while (i < this.f112935e && this.f112936f[i] != null) {
                        i++;
                    }
                }
                if (i == this.f112935e) {
                    return XSNamedMapImpl.EMPTY_MAP;
                }
                XSNamedMap[] xSNamedMapArr = this.f112941k[i];
                if (xSNamedMapArr[s] == null) {
                    if (s == 1) {
                        symbolHash = this.f112937g[i].f112690f;
                    } else if (s != 2) {
                        if (s != 3) {
                            if (s == 5) {
                                symbolHash = this.f112937g[i].f112691g;
                            } else if (s == 6) {
                                symbolHash = this.f112937g[i].f112693i;
                            } else if (s == 10) {
                                symbolHash = this.f112937g[i].f112695k;
                            } else if (s == 11) {
                                symbolHash = this.f112937g[i].f112694j;
                            } else if (s != 15 && s != 16) {
                                symbolHash = null;
                            }
                        }
                        symbolHash = this.f112937g[i].f112697l;
                    } else {
                        symbolHash = this.f112937g[i].f112692h;
                    }
                    if (s != 15 && s != 16) {
                        xSNamedMapArr[s] = new XSNamedMapImpl(str, symbolHash);
                    }
                    xSNamedMapArr[s] = new XSNamedMap4Types(str, symbolHash, s);
                }
                return this.f112941k[i][s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSElementDeclaration getElementDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSElementDeclaration) schemaGrammar.f112692h.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSIDCDefinition getIDCDefinition(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSIDCDefinition) schemaGrammar.f112695k.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItemList
    public int getLength() {
        return this.f112935e;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSModelGroupDefinition getModelGroupDefinition(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSModelGroupDefinition) schemaGrammar.f112693i.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSNamespaceItemList getNamespaceItems() {
        return this;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public StringList getNamespaces() {
        return this.f112942l;
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSNotationDeclaration getNotationDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSNotationDeclaration) schemaGrammar.f112694j.get(str);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSObjectList getSubstitutionGroup(XSElementDeclaration xSElementDeclaration) {
        return (XSObjectList) this.f112939i.get(xSElementDeclaration);
    }

    @Override // org.apache.xerces.p118xs.XSModel
    public XSTypeDefinition getTypeDefinition(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSTypeDefinition) schemaGrammar.f112697l.get(str);
    }

    public boolean hasIDConstraints() {
        return this.f112944n;
    }

    /* renamed from: i */
    public final void m70253i(Object[] objArr) {
        int i = this.f112935e;
        if (i > 0) {
            System.arraycopy(this.f112937g, 0, objArr, 0, i);
        }
    }

    @Override // org.apache.xerces.p118xs.XSNamespaceItemList
    public XSNamespaceItem item(int i) {
        if (i < 0 || i >= this.f112935e) {
            return null;
        }
        return this.f112937g[i];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator iterator() {
        return m70252g(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator() {
        return m70252g(0);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return getLength();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        Object[] objArr = new Object[this.f112935e];
        m70253i(objArr);
        return objArr;
    }

    public XSModelImpl(SchemaGrammar[] schemaGrammarArr, short s) {
        this.f112943m = null;
        int length = schemaGrammarArr.length;
        int i = length + 1;
        int max = Math.max(i, 5);
        String[] strArr = new String[max];
        SchemaGrammar[] schemaGrammarArr2 = new SchemaGrammar[max];
        boolean z = false;
        for (int i2 = 0; i2 < length; i2++) {
            SchemaGrammar schemaGrammar = schemaGrammarArr[i2];
            String targetNamespace = schemaGrammar.getTargetNamespace();
            strArr[i2] = targetNamespace;
            schemaGrammarArr2[i2] = schemaGrammar;
            if (targetNamespace == SchemaSymbols.URI_SCHEMAFORSCHEMA) {
                z = true;
            }
        }
        if (!z) {
            strArr[length] = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            schemaGrammarArr2[length] = SchemaGrammar.getS4SGrammar(s);
            length = i;
        }
        int i3 = 0;
        while (i3 < length) {
            Vector importedGrammars = schemaGrammarArr2[i3].getImportedGrammars();
            int i4 = length;
            SchemaGrammar[] schemaGrammarArr3 = schemaGrammarArr2;
            String[] strArr2 = strArr;
            for (int size = importedGrammars == null ? -1 : importedGrammars.size() - 1; size >= 0; size--) {
                SchemaGrammar schemaGrammar2 = (SchemaGrammar) importedGrammars.elementAt(size);
                int i5 = 0;
                while (i5 < i4 && schemaGrammar2 != schemaGrammarArr3[i5]) {
                    i5++;
                }
                if (i5 == i4) {
                    if (i4 == schemaGrammarArr3.length) {
                        int i6 = i4 * 2;
                        String[] strArr3 = new String[i6];
                        System.arraycopy(strArr2, 0, strArr3, 0, i4);
                        SchemaGrammar[] schemaGrammarArr4 = new SchemaGrammar[i6];
                        System.arraycopy(schemaGrammarArr3, 0, schemaGrammarArr4, 0, i4);
                        schemaGrammarArr3 = schemaGrammarArr4;
                        strArr2 = strArr3;
                    }
                    strArr2[i4] = schemaGrammar2.getTargetNamespace();
                    schemaGrammarArr3[i4] = schemaGrammar2;
                    i4++;
                }
            }
            i3++;
            length = i4;
            schemaGrammarArr2 = schemaGrammarArr3;
            strArr = strArr2;
        }
        this.f112936f = strArr;
        this.f112937g = schemaGrammarArr2;
        this.f112938h = new SymbolHash(length * 2);
        boolean z2 = false;
        for (int i7 = 0; i7 < length; i7++) {
            this.f112938h.put(m70248h(this.f112936f[i7]), this.f112937g[i7]);
            if (this.f112937g[i7].hasIDConstraints()) {
                z2 = true;
            }
        }
        this.f112944n = z2;
        this.f112935e = length;
        this.f112940j = new XSNamedMap[17];
        this.f112941k = (XSNamedMap[][]) Array.newInstance((Class<?>) XSNamedMap.class, length, 17);
        this.f112942l = new StringListImpl(this.f112936f, length);
        this.f112939i = m70249c();
    }

    public XSAttributeDeclaration getAttributeDeclaration(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalAttributeDecl(str, str3);
    }

    public XSAttributeGroupDefinition getAttributeGroup(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalAttributeGroupDecl(str, str3);
    }

    public XSElementDeclaration getElementDeclaration(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalElementDecl(str, str3);
    }

    public XSIDCDefinition getIDCDefinition(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getIDConstraintDecl(str, str3);
    }

    public XSModelGroupDefinition getModelGroupDefinition(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalGroupDecl(str, str3);
    }

    public XSNotationDeclaration getNotationDeclaration(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalNotationDecl(str, str3);
    }

    public XSTypeDefinition getTypeDefinition(String str, String str2, String str3) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.f112938h.get(m70248h(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return schemaGrammar.getGlobalTypeDecl(str, str3);
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator listIterator(int i) {
        if (i >= 0 && i < this.f112935e) {
            return m70252g(i);
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("Index: ");
        stringBuffer.append(i);
        throw new IndexOutOfBoundsException(stringBuffer.toString());
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] objArr) {
        if (objArr.length < this.f112935e) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), this.f112935e);
        }
        m70253i(objArr);
        int length = objArr.length;
        int i = this.f112935e;
        if (length > i) {
            objArr[i] = null;
        }
        return objArr;
    }
}
