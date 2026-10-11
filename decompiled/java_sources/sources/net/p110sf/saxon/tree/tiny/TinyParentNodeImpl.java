package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.str.EmptyUnicodeString;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.str.ZenoString;

/* loaded from: classes11.dex */
public abstract class TinyParentNodeImpl extends TinyNodeImpl {
    public static UnicodeString getStringValue(TinyTree tinyTree, int i) {
        int i2;
        short[] sArr = tinyTree.f102594m;
        short s = sArr[i];
        int i3 = i + 1;
        byte[] bArr = tinyTree.nodeKind;
        if (bArr[i] == 17) {
            return TinyTextImpl.getStringValue(tinyTree, i);
        }
        int i4 = tinyTree.f102593l;
        if (i3 < i4) {
            if (sArr[i3] <= s) {
                return EmptyUnicodeString.getInstance();
            }
            if (bArr[i3] == 3 && ((i2 = i3 + 1) >= i4 || sArr[i2] <= s)) {
                return TinyTextImpl.getStringValue(tinyTree, i3);
            }
        }
        UnicodeBuilder unicodeBuilder = null;
        while (i3 < tinyTree.f102593l && tinyTree.f102594m[i3] > s) {
            byte b = tinyTree.nodeKind[i3];
            if (b == 3 || b == 17) {
                if (unicodeBuilder == null) {
                    unicodeBuilder = new UnicodeBuilder();
                }
                unicodeBuilder.accept(TinyTextImpl.getStringValue(tinyTree, i3));
            } else if (b == 4) {
                if (unicodeBuilder == null) {
                    unicodeBuilder = new UnicodeBuilder();
                }
                WhitespaceTextImpl.appendStringValue(tinyTree, i3, unicodeBuilder);
            }
            i3++;
        }
        return unicodeBuilder == null ? EmptyUnicodeString.getInstance() : ZenoString.m63916of(unicodeBuilder.toUnicodeString());
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        return getStringValue(this.tree, this.nodeNr);
    }

    @Override // net.p110sf.saxon.tree.tiny.TinyNodeImpl, net.p110sf.saxon.om.NodeInfo
    public boolean hasChildNodes() {
        int i = this.nodeNr;
        int i2 = i + 1;
        TinyTree tinyTree = this.tree;
        if (i2 < tinyTree.f102593l) {
            short[] sArr = tinyTree.f102594m;
            if (sArr[i + 1] > sArr[i]) {
                return true;
            }
        }
        return false;
    }
}
