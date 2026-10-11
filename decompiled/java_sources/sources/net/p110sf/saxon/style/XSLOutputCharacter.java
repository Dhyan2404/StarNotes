package net.p110sf.saxon.style;

import com.google.firebase.analytics.FirebaseAnalytics;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public class XSLOutputCharacter extends StyleElement {

    /* renamed from: u */
    public int f102079u = -1;

    /* renamed from: v */
    public String f102080v = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        return null;
    }

    public int getCodePoint() {
        return this.f102079u;
    }

    public String getReplacementString() {
        return this.f102080v;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals(FirebaseAnalytics.Param.CHARACTER)) {
                int length = value.length();
                if (length == 0) {
                    compileError("character attribute must not be zero-length", "XTSE0020");
                    this.f102079u = 256;
                } else if (length == 1) {
                    this.f102079u = value.charAt(0);
                } else if (length != 2) {
                    compileError("character attribute must be a single XML character", "XTSE0020");
                    this.f102079u = 256;
                } else if (UTF16CharacterSet.isHighSurrogate(value.charAt(0)) && UTF16CharacterSet.isLowSurrogate(value.charAt(1))) {
                    this.f102079u = UTF16CharacterSet.combinePair(value.charAt(0), value.charAt(1));
                } else {
                    compileError("character attribute must be a single XML character", "XTSE0020");
                    this.f102079u = 256;
                }
            } else if (displayName.equals("string")) {
                this.f102080v = value;
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (this.f102079u == -1) {
            reportAbsence(FirebaseAnalytics.Param.CHARACTER);
            this.f102079u = 256;
        } else if (this.f102080v == null) {
            reportAbsence("string");
            this.f102079u = 256;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (getParent() instanceof XSLCharacterMap) {
            return;
        }
        compileError("xsl:output-character may appear only as a child of xsl:character-map", "XTSE0010");
    }
}
