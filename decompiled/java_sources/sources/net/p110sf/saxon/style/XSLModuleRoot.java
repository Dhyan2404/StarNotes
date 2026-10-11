package net.p110sf.saxon.style;

import com.google.firebase.ktx.BuildConfig;
import com.sunia.HTREnginev2.w2n;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class XSLModuleRoot extends StyleElement {
    public static final int ANNOTATION_PRESERVE = 2;
    public static final int ANNOTATION_STRIP = 1;
    public static final int ANNOTATION_UNSPECIFIED = 0;

    public int getInputTypeAnnotationsAttribute() {
        String attributeValue = getAttributeValue("", "input-type-annotations");
        char c = 65535;
        if (attributeValue == null) {
            return -1;
        }
        switch (attributeValue.hashCode()) {
            case -1626174665:
                if (attributeValue.equals(BuildConfig.VERSION_NAME)) {
                    c = 0;
                    break;
                }
                break;
            case -1276662196:
                if (attributeValue.equals("preserve")) {
                    c = 1;
                    break;
                }
                break;
            case 109773592:
                if (attributeValue.equals("strip")) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 0;
            case 1:
                return 2;
            case 2:
                return 1;
            default:
                compileError("Invalid value for input-type-annotations attribute. Permitted values are (strip, preserve, unspecified)", "XTSE0020");
                return 0;
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void index(ComponentDeclaration componentDeclaration, PrincipalStylesheetModule principalStylesheetModule) {
        compileError(getDisplayName() + " can appear only as the outermost element", "XTSE0010");
    }

    public boolean isDeclaredModes() {
        return false;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void processAllAttributes() throws XPathException {
        prepareAttributes();
        for (NodeInfo nodeInfo : children(new w2n(StyleElement.class))) {
            try {
                ((StyleElement) nodeInfo).processAllAttributes();
            } catch (XPathException e) {
                ((StyleElement) nodeInfo).compileError(e);
            }
        }
    }
}
