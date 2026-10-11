package net.p110sf.saxon.om;

import net.p110sf.saxon.event.ReceiverOption;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class AttributeInfo {

    /* renamed from: e */
    public final NodeName f100756e;

    /* renamed from: f */
    public final SimpleType f100757f;

    /* renamed from: g */
    public final String f100758g;

    /* renamed from: h */
    public final Location f100759h;

    /* renamed from: i */
    public final int f100760i;

    /* loaded from: classes11.dex */
    public static class Deleted extends AttributeInfo {
        public Deleted(AttributeInfo attributeInfo) {
            super(attributeInfo.getNodeName(), attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
        }
    }

    public AttributeInfo(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) {
        this.f100756e = nodeName;
        this.f100757f = simpleType;
        this.f100758g = str;
        this.f100759h = location;
        this.f100760i = i;
    }

    public Location getLocation() {
        return this.f100759h;
    }

    public NodeName getNodeName() {
        return this.f100756e;
    }

    public int getProperties() {
        return this.f100760i;
    }

    public SimpleType getType() {
        return this.f100757f;
    }

    public String getValue() {
        return this.f100758g;
    }

    public StringValue getXdmStringValue() {
        return new StringValue(this.f100758g);
    }

    public boolean isId() {
        try {
            if (!StandardNames.XML_ID_NAME.equals(this.f100756e) && !ReceiverOption.contains(getProperties(), 2048)) {
                if (!getType().isIdType()) {
                    return false;
                }
            }
            return true;
        } catch (MissingComponentException unused) {
            return false;
        }
    }

    public AttributeInfo withNodeName(NodeName nodeName) {
        return new AttributeInfo(nodeName, this.f100757f, this.f100758g, this.f100759h, this.f100760i);
    }
}
