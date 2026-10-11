package net.p110sf.saxon.s9api;

import java.util.Map;
import java.util.stream.Stream;
import net.p110sf.saxon.om.AtomicSequence;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.NodeInfo;
import net.p110sf.saxon.s9api.streams.XdmStream;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.AtomicValue;

/* loaded from: classes11.dex */
public abstract class XdmItem extends XdmValue {
    public XdmItem(Item item) {
        super(item);
    }

    public static XdmItem wrapItem(Item item) {
        if (item == null) {
            return null;
        }
        return (XdmItem) XdmValue.wrap(item);
    }

    public Map<XdmAtomicValue, XdmValue> asMap() {
        return null;
    }

    public String getStringValue() {
        return getUnderlyingValue().getStringValue();
    }

    public UnicodeString getUnicodeStringValue() {
        return getUnderlyingValue().getUnicodeStringValue();
    }

    public boolean isAtomicValue() {
        return getUnderlyingValue() instanceof AtomicValue;
    }

    public boolean isNode() {
        return getUnderlyingValue() instanceof NodeInfo;
    }

    public boolean matches(ItemType itemType) {
        return itemType.matches(this);
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public int size() {
        return 1;
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public XdmStream<? extends XdmItem> stream() {
        return new XdmStream<>(Stream.of(this));
    }

    public static XdmNode wrapItem(NodeInfo nodeInfo) {
        if (nodeInfo == null) {
            return null;
        }
        return (XdmNode) XdmValue.wrap(nodeInfo);
    }

    @Override // net.p110sf.saxon.s9api.XdmValue
    public Item getUnderlyingValue() {
        return (Item) super.getUnderlyingValue();
    }

    public static XdmAtomicValue wrapItem(AtomicValue atomicValue) {
        if (atomicValue == null) {
            return null;
        }
        return (XdmAtomicValue) XdmValue.wrap((AtomicSequence) atomicValue);
    }
}
