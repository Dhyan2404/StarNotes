package net.p110sf.saxon.style;

import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class XSLMergeKey extends XSLSortOrMergeKey {
    @Override // net.p110sf.saxon.style.XSLSortOrMergeKey
    public String getErrorCode() {
        return "XTSE3200";
    }

    public ItemType getReturnedItemType() {
        return null;
    }

    @Override // net.p110sf.saxon.style.XSLSortOrMergeKey, net.p110sf.saxon.style.StyleElement
    public void prepareAttributes() {
        super.prepareAttributes();
        if (this.stable != null) {
            compileError("The @stable attribute is not allowed in xsl:merge-key", "XTSE0090");
        }
    }
}
