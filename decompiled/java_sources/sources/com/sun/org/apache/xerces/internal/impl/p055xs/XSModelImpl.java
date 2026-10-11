package com.sun.org.apache.xerces.internal.impl.p055xs;

import com.sun.org.apache.xerces.internal.impl.p055xs.util.NSItemListImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.StringListImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMap4Types;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSNamedMapImpl;
import com.sun.org.apache.xerces.internal.impl.p055xs.util.XSObjectListImpl;
import com.sun.org.apache.xerces.internal.p056xs.StringList;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSAttributeGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSElementDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSModel;
import com.sun.org.apache.xerces.internal.p056xs.XSModelGroupDefinition;
import com.sun.org.apache.xerces.internal.p056xs.XSNamedMap;
import com.sun.org.apache.xerces.internal.p056xs.XSNamespaceItemList;
import com.sun.org.apache.xerces.internal.p056xs.XSNotationDeclaration;
import com.sun.org.apache.xerces.internal.p056xs.XSObjectList;
import com.sun.org.apache.xerces.internal.p056xs.XSTypeDefinition;
import com.sun.org.apache.xerces.internal.util.SymbolHash;
import com.sun.org.apache.xerces.internal.util.XMLSymbols;
import java.lang.reflect.Array;
import java.util.Vector;

/* loaded from: classes10.dex */
public class XSModelImpl implements XSModel {
    private static final boolean[] GLOBAL_COMP = {false, true, true, true, false, true, true, false, false, false, false, true, false, false, false, true, true};
    private static final short MAX_COMP_IDX = 16;
    private XSObjectListImpl fAnnotations = null;
    private XSNamedMap[] fGlobalComponents;
    private int fGrammarCount;
    private SchemaGrammar[] fGrammarList;
    private SymbolHash fGrammarMap;
    private boolean fHasIDC;
    private XSNamedMap[][] fNSComponents;
    private String[] fNamespaces;
    private SymbolHash fSubGroupMap;

    public XSModelImpl(SchemaGrammar[] schemaGrammarArr) {
        this.fHasIDC = false;
        int length = schemaGrammarArr.length;
        int i = length + 1;
        this.fNamespaces = new String[Math.max(i, 5)];
        this.fGrammarList = new SchemaGrammar[Math.max(i, 5)];
        boolean z = false;
        for (int i2 = 0; i2 < length; i2++) {
            this.fNamespaces[i2] = schemaGrammarArr[i2].getTargetNamespace();
            this.fGrammarList[i2] = schemaGrammarArr[i2];
            if (this.fNamespaces[i2] == SchemaSymbols.URI_SCHEMAFORSCHEMA) {
                z = true;
            }
        }
        if (!z) {
            this.fNamespaces[length] = SchemaSymbols.URI_SCHEMAFORSCHEMA;
            this.fGrammarList[length] = SchemaGrammar.SG_SchemaNS;
            length = i;
        }
        for (int i3 = 0; i3 < length; i3++) {
            Vector importedGrammars = this.fGrammarList[i3].getImportedGrammars();
            for (int size = importedGrammars == null ? -1 : importedGrammars.size() - 1; size >= 0; size--) {
                SchemaGrammar schemaGrammar = (SchemaGrammar) importedGrammars.elementAt(size);
                int i4 = 0;
                while (i4 < length && schemaGrammar != this.fGrammarList[i4]) {
                    i4++;
                }
                if (i4 == length) {
                    if (length == this.fGrammarList.length) {
                        int i5 = length * 2;
                        String[] strArr = new String[i5];
                        System.arraycopy(this.fNamespaces, 0, strArr, 0, length);
                        this.fNamespaces = strArr;
                        SchemaGrammar[] schemaGrammarArr2 = new SchemaGrammar[i5];
                        System.arraycopy(this.fGrammarList, 0, schemaGrammarArr2, 0, length);
                        this.fGrammarList = schemaGrammarArr2;
                    }
                    this.fNamespaces[length] = schemaGrammar.getTargetNamespace();
                    this.fGrammarList[length] = schemaGrammar;
                    length++;
                }
            }
        }
        this.fGrammarMap = new SymbolHash(length * 2);
        for (int i6 = 0; i6 < length; i6++) {
            this.fGrammarMap.put(null2EmptyString(this.fNamespaces[i6]), this.fGrammarList[i6]);
            if (this.fGrammarList[i6].hasIDConstraints()) {
                this.fHasIDC = true;
            }
        }
        this.fGrammarCount = length;
        this.fGlobalComponents = new XSNamedMap[17];
        this.fNSComponents = (XSNamedMap[][]) Array.newInstance((Class<?>) XSNamedMap.class, length, 17);
        buildSubGroups();
    }

    private void buildSubGroups() {
        SubstitutionGroupHandler substitutionGroupHandler = new SubstitutionGroupHandler(null);
        for (int i = 0; i < this.fGrammarCount; i++) {
            substitutionGroupHandler.addSubstitutionGroup(this.fGrammarList[i].getSubstitutionGroups());
        }
        XSNamedMap components = getComponents((short) 2);
        int length = components.getLength();
        this.fSubGroupMap = new SymbolHash(length * 2);
        for (int i2 = 0; i2 < length; i2++) {
            XSElementDecl xSElementDecl = (XSElementDecl) components.item(i2);
            XSElementDecl[] substitutionGroup = substitutionGroupHandler.getSubstitutionGroup(xSElementDecl);
            this.fSubGroupMap.put(xSElementDecl, substitutionGroup.length > 0 ? new XSObjectListImpl(substitutionGroup, substitutionGroup.length) : XSObjectListImpl.EMPTY_LIST);
        }
    }

    private static final String null2EmptyString(String str) {
        return str == null ? XMLSymbols.EMPTY_STRING : str;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public synchronized XSObjectList getAnnotations() {
        XSObjectListImpl xSObjectListImpl = this.fAnnotations;
        if (xSObjectListImpl != null) {
            return xSObjectListImpl;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.fGrammarCount; i2++) {
            i += this.fGrammarList[i2].fNumAnnotations;
        }
        XSAnnotationImpl[] xSAnnotationImplArr = new XSAnnotationImpl[i];
        int i3 = 0;
        for (int i4 = 0; i4 < this.fGrammarCount; i4++) {
            SchemaGrammar schemaGrammar = this.fGrammarList[i4];
            int i5 = schemaGrammar.fNumAnnotations;
            if (i5 > 0) {
                System.arraycopy(schemaGrammar.fAnnotations, 0, xSAnnotationImplArr, i3, i5);
                i3 += schemaGrammar.fNumAnnotations;
            }
        }
        XSObjectListImpl xSObjectListImpl2 = new XSObjectListImpl(xSAnnotationImplArr, i);
        this.fAnnotations = xSObjectListImpl2;
        return xSObjectListImpl2;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSAttributeDeclaration getAttributeDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeDeclaration) schemaGrammar.fGlobalAttrDecls.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSAttributeGroupDefinition getAttributeGroup(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSAttributeGroupDefinition) schemaGrammar.fGlobalAttrGrpDecls.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public synchronized XSNamedMap getComponents(short s) {
        if (s > 0 && s <= 16) {
            if (GLOBAL_COMP[s]) {
                SymbolHash[] symbolHashArr = new SymbolHash[this.fGrammarCount];
                if (this.fGlobalComponents[s] == null) {
                    for (int i = 0; i < this.fGrammarCount; i++) {
                        if (s == 1) {
                            symbolHashArr[i] = this.fGrammarList[i].fGlobalAttrDecls;
                        } else if (s != 2) {
                            if (s != 3) {
                                if (s == 5) {
                                    symbolHashArr[i] = this.fGrammarList[i].fGlobalAttrGrpDecls;
                                } else if (s == 6) {
                                    symbolHashArr[i] = this.fGrammarList[i].fGlobalGroupDecls;
                                } else if (s == 11) {
                                    symbolHashArr[i] = this.fGrammarList[i].fGlobalNotationDecls;
                                } else if (s != 15 && s != 16) {
                                }
                            }
                            symbolHashArr[i] = this.fGrammarList[i].fGlobalTypeDecls;
                        } else {
                            symbolHashArr[i] = this.fGrammarList[i].fGlobalElemDecls;
                        }
                    }
                    if (s != 15 && s != 16) {
                        this.fGlobalComponents[s] = new XSNamedMapImpl(this.fNamespaces, symbolHashArr, this.fGrammarCount);
                    }
                    this.fGlobalComponents[s] = new XSNamedMap4Types(this.fNamespaces, symbolHashArr, this.fGrammarCount, s);
                }
                return this.fGlobalComponents[s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public synchronized XSNamedMap getComponentsByNamespace(short s, String str) {
        SymbolHash symbolHash;
        if (s > 0 && s <= 16) {
            if (GLOBAL_COMP[s]) {
                int i = 0;
                if (str != null) {
                    while (i < this.fGrammarCount && !str.equals(this.fNamespaces[i])) {
                        i++;
                    }
                } else {
                    while (i < this.fGrammarCount && this.fNamespaces[i] != null) {
                        i++;
                    }
                }
                if (i == this.fGrammarCount) {
                    return XSNamedMapImpl.EMPTY_MAP;
                }
                XSNamedMap[] xSNamedMapArr = this.fNSComponents[i];
                if (xSNamedMapArr[s] == null) {
                    if (s == 1) {
                        symbolHash = this.fGrammarList[i].fGlobalAttrDecls;
                    } else if (s != 2) {
                        if (s != 3) {
                            if (s == 5) {
                                symbolHash = this.fGrammarList[i].fGlobalAttrGrpDecls;
                            } else if (s == 6) {
                                symbolHash = this.fGrammarList[i].fGlobalGroupDecls;
                            } else if (s == 11) {
                                symbolHash = this.fGrammarList[i].fGlobalNotationDecls;
                            } else if (s != 15 && s != 16) {
                                symbolHash = null;
                            }
                        }
                        symbolHash = this.fGrammarList[i].fGlobalTypeDecls;
                    } else {
                        symbolHash = this.fGrammarList[i].fGlobalElemDecls;
                    }
                    if (s != 15 && s != 16) {
                        xSNamedMapArr[s] = new XSNamedMapImpl(str, symbolHash);
                    }
                    xSNamedMapArr[s] = new XSNamedMap4Types(str, symbolHash, s);
                }
                return this.fNSComponents[i][s];
            }
        }
        return XSNamedMapImpl.EMPTY_MAP;
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSElementDeclaration getElementDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSElementDeclaration) schemaGrammar.fGlobalElemDecls.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSModelGroupDefinition getModelGroupDefinition(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSModelGroupDefinition) schemaGrammar.fGlobalGroupDecls.get(str);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSNamespaceItemList getNamespaceItems() {
        return new NSItemListImpl(this.fGrammarList, this.fGrammarCount);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public StringList getNamespaces() {
        return new StringListImpl(this.fNamespaces, this.fGrammarCount);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSNotationDeclaration getNotationDeclaration(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSNotationDeclaration) schemaGrammar.fGlobalNotationDecls.get(str);
    }

    public XSObjectList getSubstitutionGroup(XSElementDeclaration xSElementDeclaration) {
        return (XSObjectList) this.fSubGroupMap.get(xSElementDeclaration);
    }

    @Override // com.sun.org.apache.xerces.internal.p056xs.XSModel
    public XSTypeDefinition getTypeDefinition(String str, String str2) {
        SchemaGrammar schemaGrammar = (SchemaGrammar) this.fGrammarMap.get(null2EmptyString(str2));
        if (schemaGrammar == null) {
            return null;
        }
        return (XSTypeDefinition) schemaGrammar.fGlobalTypeDecls.get(str);
    }

    public boolean hasIDConstraints() {
        return this.fHasIDC;
    }
}
