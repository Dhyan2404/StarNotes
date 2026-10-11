package net.p110sf.saxon.tree.tiny;

import net.p110sf.saxon.event.Receiver;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.str.CompressedWhitespace;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public final class WhitespaceTextImpl extends TinyNodeImpl {
    public WhitespaceTextImpl(TinyTree tinyTree, int i) {
        this.tree = tinyTree;
        this.nodeNr = i;
    }

    public static void appendStringValue(TinyTree tinyTree, int i, UnicodeBuilder unicodeBuilder) {
        unicodeBuilder.append(CompressedWhitespace.uncompress((tinyTree.f102597p[i] & 4294967295L) | (tinyTree.f102596o[i] << 32)));
    }

    public static long getLongValue(TinyTree tinyTree, int i) {
        return (tinyTree.f102597p[i] & 4294967295L) | (tinyTree.f102596o[i] << 32);
    }

    public static UnicodeString getStringValue(TinyTree tinyTree, int i) {
        return new CompressedWhitespace((tinyTree.f102597p[i] & 4294967295L) | (tinyTree.f102596o[i] << 32));
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public void copy(Receiver receiver, int i, Location location) throws XPathException {
        receiver.characters(getUnicodeStringValue(), location, 0);
    }

    @Override // net.p110sf.saxon.om.NodeInfo
    public final int getNodeKind() {
        return 3;
    }

    @Override // net.p110sf.saxon.om.Item, net.p110sf.saxon.om.GroundedValue
    public UnicodeString getUnicodeStringValue() {
        int[] iArr = this.tree.f102596o;
        int i = this.nodeNr;
        return new CompressedWhitespace((iArr[i] << 32) | (r0.f102597p[i] & 4294967295L));
    }

    @Override // net.p110sf.saxon.om.NodeInfo, net.p110sf.saxon.om.Item
    public StringValue atomize() {
        return StringValue.makeUntypedAtomic(getUnicodeStringValue());
    }
}
