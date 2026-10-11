package net.p110sf.saxon.style;

import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.ItemConsumer;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.style.XSLContextItem;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.Whitespace;

/* loaded from: classes11.dex */
public class XSLContextItem extends StyleElement {

    /* renamed from: u */
    public ItemType f101920u = AnyItemType.getInstance();

    /* renamed from: v */
    public boolean f101921v = true;

    /* renamed from: w */
    public boolean f101922w = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a0 */
    public /* synthetic */ void m64034a0(Item item) throws XPathException {
        if (((NodeInfo) item).getNodeKind() == 3 && Whitespace.isAllWhite(item.getUnicodeStringValue())) {
            return;
        }
        compileError("xsl:context-item must be the first child of xsl:template");
    }

    public ItemType getRequiredContextItemType() {
        return this.f101920u;
    }

    public boolean isAbsentFocus() {
        return this.f101922w;
    }

    public boolean isMayBeOmitted() {
        return this.f101921v;
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        SequenceType sequenceType;
        String str = null;
        String str2 = null;
        for (AttributeInfo attributeInfo : attributes()) {
            NodeName nodeName = attributeInfo.getNodeName();
            String displayName = nodeName.getDisplayName();
            String value = attributeInfo.getValue();
            displayName.hashCode();
            if (displayName.equals("as")) {
                str = Whitespace.trim(value);
            } else if (displayName.equals("use")) {
                str2 = Whitespace.trim(value);
            } else {
                checkUnknownAttribute(nodeName);
            }
        }
        if (str != null) {
            try {
                sequenceType = makeSequenceType(str);
            } catch (XPathException e) {
                SequenceType sequenceType2 = SequenceType.SINGLE_ITEM;
                compileErrorInAttribute(e.getMessage(), e.getErrorCodeLocalPart(), "as");
                sequenceType = sequenceType2;
            }
            if (sequenceType.getCardinality() != 16384) {
                compileError("The xsl:context-item/@use attribute must be an item type (no occurrence indicator allowed)", "XTSE0020");
                return;
            }
            this.f101920u = sequenceType.getPrimaryType();
        }
        if (str2 != null) {
            char c = 65535;
            switch (str2.hashCode()) {
                case -1423908039:
                    if (str2.equals("absent")) {
                        c = 0;
                        break;
                    }
                    break;
                case -393139297:
                    if (str2.equals("required")) {
                        c = 1;
                        break;
                    }
                    break;
                case -79017120:
                    if (str2.equals("optional")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.f101922w = true;
                    break;
                case 1:
                    this.f101921v = false;
                    break;
                case 2:
                    break;
                default:
                    invalidAttribute("use", "required|optional|absent");
                    break;
            }
        }
        if (str == null || !this.f101922w) {
            return;
        }
        compileError("The 'as' attribute must be omitted when use='absent' is specified", "XTSE3089");
    }

    @Override // net.p110sf.saxon.style.StyleElement
    public void validate(ComponentDeclaration componentDeclaration) throws XPathException {
        if (!(getParent() instanceof XSLTemplate)) {
            compileError("xsl:context-item can appear only as a child of xsl:template");
            return;
        }
        if (this.f101921v && ((XSLTemplate) getParent()).getTemplateName() == null) {
            compileError("xsl:context-item appearing in an xsl:template declaration with no name attribute must specify use=required", "XTSE0020");
        }
        ((XSLTemplate) getParent()).setContextItemRequirements(this.f101920u, this.f101921v, this.f101922w);
        SequenceTool.supply(iterateAxis(11), new ItemConsumer() { // from class: com.sunia.HTREnginev2.umo
            @Override // net.p110sf.saxon.om.ItemConsumer
            public final void accept(Item item) {
                XSLContextItem.this.m64034a0(item);
            }
        });
    }
}
