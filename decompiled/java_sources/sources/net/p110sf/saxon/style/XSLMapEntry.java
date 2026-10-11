package net.p110sf.saxon.style;

import java.util.Iterator;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.instruct.SequenceInstr;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.ma.map.MapFunctionSet;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class XSLMapEntry extends StyleElement {

    /* renamed from: u */
    public Expression f102029u = null;

    /* renamed from: v */
    public Expression f102030v = null;

    @Override // net.p110sf.saxon.style.StyleElement
    public Expression compile(Compilation compilation, ComponentDeclaration componentDeclaration) throws XPathException {
        if (this.f102030v == null) {
            Expression compileSequenceConstructor = compileSequenceConstructor(compilation, componentDeclaration, false);
            this.f102030v = compileSequenceConstructor;
            this.f102030v = compileSequenceConstructor.simplify();
        }
        Expression makeFunctionCall = MapFunctionSet.getInstance().makeFunction("entry", 2).makeFunctionCall(this.f102029u, this.f102030v);
        return getConfiguration().getBooleanProperty(Feature.STRICT_STREAMABILITY) ? new SequenceInstr(makeFunctionCall) : makeFunctionCall;
    }

    public ItemType getReturnedItemType() {
        return MapType.ANY_MAP_TYPE;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean isInstruction() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public boolean mayContainSequenceConstructor() {
        return true;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        String str = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            if (displayName.equals("key")) {
                this.f102029u = makeExpression(value, attributeInfo);
                str = value;
            } else if (displayName.equals("select")) {
                this.f102030v = makeExpression(value, attributeInfo);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str == null) {
            reportAbsence("key");
        }
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        this.f102029u = typeCheck("key", this.f102029u);
        Expression typeCheck = typeCheck("select", this.f102030v);
        this.f102030v = typeCheck;
        if (typeCheck != null) {
            Iterator<? extends NodeInfo> it2 = children().iterator();
            while (it2.hasNext()) {
                if (!(it2.next() instanceof XSLFallback)) {
                    compileError("An xsl:map-entry element with a select attribute must be empty", "XTSE3280");
                    return;
                }
            }
        }
    }
}
