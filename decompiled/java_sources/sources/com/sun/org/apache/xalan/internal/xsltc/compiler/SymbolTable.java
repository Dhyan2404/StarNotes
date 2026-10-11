package com.sun.org.apache.xalan.internal.xsltc.compiler;

import com.sun.org.apache.xalan.internal.xsltc.compiler.util.MethodType;
import java.util.Hashtable;
import java.util.StringTokenizer;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes10.dex */
public final class SymbolTable {
    private final Hashtable _stylesheets = new Hashtable();
    private final Hashtable _primops = new Hashtable();
    private Hashtable _variables = null;
    private Hashtable _templates = null;
    private Hashtable _attributeSets = null;
    private Hashtable _aliases = null;
    private Hashtable _excludedURI = null;
    private Hashtable _decimalFormats = null;
    private Hashtable _keys = null;
    private int _nsCounter = 0;
    private SyntaxTreeNode _current = null;

    public AttributeSet addAttributeSet(AttributeSet attributeSet) {
        if (this._attributeSets == null) {
            this._attributeSets = new Hashtable();
        }
        return (AttributeSet) this._attributeSets.put(attributeSet.getName(), attributeSet);
    }

    public void addDecimalFormatting(QName qName, DecimalFormatting decimalFormatting) {
        if (this._decimalFormats == null) {
            this._decimalFormats = new Hashtable();
        }
        this._decimalFormats.put(qName, decimalFormatting);
    }

    public void addKey(QName qName, Key key) {
        if (this._keys == null) {
            this._keys = new Hashtable();
        }
        this._keys.put(qName, key);
    }

    public Param addParam(Param param) {
        if (this._variables == null) {
            this._variables = new Hashtable();
        }
        return (Param) this._variables.put(param.getName().getStringRep(), param);
    }

    public void addPrefixAlias(String str, String str2) {
        if (this._aliases == null) {
            this._aliases = new Hashtable();
        }
        this._aliases.put(str, str2);
    }

    public void addPrimop(String str, MethodType methodType) {
        Vector vector = (Vector) this._primops.get(str);
        if (vector == null) {
            Hashtable hashtable = this._primops;
            vector = new Vector();
            hashtable.put(str, vector);
        }
        vector.addElement(methodType);
    }

    public Stylesheet addStylesheet(QName qName, Stylesheet stylesheet) {
        return (Stylesheet) this._stylesheets.put(qName, stylesheet);
    }

    public Template addTemplate(Template template) {
        QName name = template.getName();
        if (this._templates == null) {
            this._templates = new Hashtable();
        }
        return (Template) this._templates.put(name, template);
    }

    public Variable addVariable(Variable variable) {
        if (this._variables == null) {
            this._variables = new Hashtable();
        }
        return (Variable) this._variables.put(variable.getName().getStringRep(), variable);
    }

    public void excludeNamespaces(String str) {
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                String lookupNamespace = nextToken.equals("#default") ? lookupNamespace("") : lookupNamespace(nextToken);
                if (lookupNamespace != null) {
                    excludeURI(lookupNamespace);
                }
            }
        }
    }

    public void excludeURI(String str) {
        if (str == null) {
            return;
        }
        if (this._excludedURI == null) {
            this._excludedURI = new Hashtable();
        }
        Integer num = (Integer) this._excludedURI.get(str);
        this._excludedURI.put(str, num == null ? new Integer(1) : new Integer(num.intValue() + 1));
    }

    public String generateNamespacePrefix() {
        StringBuilder sb = new StringBuilder();
        sb.append(com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_NS);
        int i = this._nsCounter;
        this._nsCounter = i + 1;
        sb.append(i);
        return new String(sb.toString());
    }

    public DecimalFormatting getDecimalFormatting(QName qName) {
        Hashtable hashtable = this._decimalFormats;
        if (hashtable == null) {
            return null;
        }
        return (DecimalFormatting) hashtable.get(qName);
    }

    public Key getKey(QName qName) {
        Hashtable hashtable = this._keys;
        if (hashtable == null) {
            return null;
        }
        return (Key) hashtable.get(qName);
    }

    public boolean isExcludedNamespace(String str) {
        Hashtable hashtable;
        Integer num;
        return (str == null || (hashtable = this._excludedURI) == null || (num = (Integer) hashtable.get(str)) == null || num.intValue() <= 0) ? false : true;
    }

    public AttributeSet lookupAttributeSet(QName qName) {
        Hashtable hashtable = this._attributeSets;
        if (hashtable == null) {
            return null;
        }
        return (AttributeSet) hashtable.get(qName);
    }

    public SyntaxTreeNode lookupName(QName qName) {
        if (this._variables == null) {
            return null;
        }
        return (SyntaxTreeNode) this._variables.get(qName.getStringRep());
    }

    public String lookupNamespace(String str) {
        SyntaxTreeNode syntaxTreeNode = this._current;
        return syntaxTreeNode == null ? "" : syntaxTreeNode.lookupNamespace(str);
    }

    public Param lookupParam(QName qName) {
        if (this._variables == null) {
            return null;
        }
        Object obj = this._variables.get(qName.getStringRep());
        if (obj instanceof Param) {
            return (Param) obj;
        }
        return null;
    }

    public String lookupPrefixAlias(String str) {
        Hashtable hashtable = this._aliases;
        if (hashtable == null) {
            return null;
        }
        return (String) hashtable.get(str);
    }

    public Vector lookupPrimop(String str) {
        return (Vector) this._primops.get(str);
    }

    public Stylesheet lookupStylesheet(QName qName) {
        return (Stylesheet) this._stylesheets.get(qName);
    }

    public Template lookupTemplate(QName qName) {
        Hashtable hashtable = this._templates;
        if (hashtable == null) {
            return null;
        }
        return (Template) hashtable.get(qName);
    }

    public Variable lookupVariable(QName qName) {
        if (this._variables == null) {
            return null;
        }
        Object obj = this._variables.get(qName.getStringRep());
        if (obj instanceof Variable) {
            return (Variable) obj;
        }
        return null;
    }

    public void setCurrentNode(SyntaxTreeNode syntaxTreeNode) {
        this._current = syntaxTreeNode;
    }

    public void unExcludeNamespaces(String str) {
        if (this._excludedURI == null || str == null) {
            return;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            String lookupNamespace = nextToken.equals("#default") ? lookupNamespace("") : lookupNamespace(nextToken);
            if (((Integer) this._excludedURI.get(lookupNamespace)) != null) {
                this._excludedURI.put(lookupNamespace, new Integer(r1.intValue() - 1));
            }
        }
    }
}
