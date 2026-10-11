package net.p110sf.saxon.style;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import net.p110sf.saxon.lib.SaxonOutputKeys;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.p111z.IntHashMap;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLCharacterMap extends StyleElement {

    /* renamed from: u */
    public String f101914u;

    /* renamed from: v */
    public List<XSLCharacterMap> f101915v = null;

    /* renamed from: w */
    public boolean f101916w = false;

    /* renamed from: x */
    public boolean f101917x = false;

    /* renamed from: Z */
    public final void m64032Z(XSLCharacterMap xSLCharacterMap) throws XPathException {
        List<XSLCharacterMap> list;
        if (this == xSLCharacterMap) {
            compileError("The definition of the character map is circular", "XTSE1600");
            this.f101915v = null;
        } else if (this.f101916w && (list = this.f101915v) != null) {
            Iterator<XSLCharacterMap> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().m64032Z(xSLCharacterMap);
            }
        }
    }

    public void assemble(IntHashMap<String> intHashMap) {
        List<XSLCharacterMap> list = this.f101915v;
        if (list != null) {
            Iterator<XSLCharacterMap> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().assemble(intHashMap);
            }
        }
        Iterator<? extends NodeInfo> it3 = children().iterator();
        while (it3.hasNext()) {
            XSLOutputCharacter xSLOutputCharacter = (XSLOutputCharacter) it3.next();
            intHashMap.put(xSLOutputCharacter.getCodePoint(), xSLOutputCharacter.getReplacementString());
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void compileDeclaration(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
    }

    public StructuredQName getCharacterMapName() {
        StructuredQName objectName = getObjectName();
        return objectName == null ? makeQName(getAttributeValue("", "name"), null, "name") : objectName;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isDeclaration() {
        return true;
    }

    public boolean isRedundant() {
        return this.f101917x;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        this.f101914u = null;
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String value = attributeInfo.getValue();
            String displayName = nodeName.getDisplayName();
            if (displayName.equals("name")) {
                str = Whitespace.trim(value);
            } else if (displayName.equals(SaxonOutputKeys.USE_CHARACTER_MAPS)) {
                this.f101914u = value;
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            reportAbsence("name");
            str = "unnamedCharacterMap_" + hashCode();
        }
        setObjectName(makeQName(str, null, "name"));
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f101916w) {
            return;
        }
        checkTopLevel("XTSE0010", false);
        Iterator<? extends NodeInfo> it2 = children().iterator();
        while (it2.hasNext()) {
            if (!(it2.next() instanceof XSLOutputCharacter)) {
                compileError("Only xsl:output-character is allowed within xsl:character-map", "XTSE0010");
            }
        }
        PrincipalStylesheetModule principalStylesheetModule = getPrincipalStylesheetModule();
        ComponentDeclaration characterMap = principalStylesheetModule.getCharacterMap(getObjectName());
        if (characterMap != null && characterMap.getSourceElement() != this) {
            if (componentDeclaration.getPrecedence() == characterMap.getPrecedence()) {
                compileError("There are two character-maps with the same name and import precedence", "XTSE1580");
            } else if (componentDeclaration.getPrecedence() < characterMap.getPrecedence()) {
                this.f101917x = true;
            }
        }
        if (this.f101914u != null) {
            this.f101915v = new ArrayList(5);
            StringTokenizer stringTokenizer = new StringTokenizer(this.f101914u, " \t\n\r", false);
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                try {
                    String[] qNameParts = NameChecker.getQNameParts(nextToken);
                    String uRIForPrefix = getURIForPrefix(qNameParts[0], false);
                    if (uRIForPrefix == null) {
                        compileError("Undeclared namespace prefix " + Err.wrap(qNameParts[0]) + " in character map name", "XTSE0280");
                    }
                    ComponentDeclaration characterMap2 = principalStylesheetModule.getCharacterMap(new StructuredQName(qNameParts[0], uRIForPrefix, qNameParts[1]));
                    if (characterMap2 == null) {
                        compileError("No character-map named '" + nextToken + "' has been defined", "XTSE1590");
                    } else {
                        this.f101915v.add((XSLCharacterMap) characterMap2.getSourceElement());
                    }
                } catch (QNameException e) {
                    compileError("Invalid character-map name. " + e.getMessage(), "XTSE1590");
                }
            }
            Iterator<XSLCharacterMap> it3 = this.f101915v.iterator();
            while (it3.hasNext()) {
                it3.next().m64032Z(this);
            }
        }
        this.f101916w = true;
    }
}
