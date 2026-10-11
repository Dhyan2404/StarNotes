package net.p110sf.saxon.tree.util;

import java.util.Arrays;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.om.AttributeInfo;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.NodeName;
import net.p110sf.saxon.om.QNameException;
import net.p110sf.saxon.om.StandardNames;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.SimpleType;
import org.xml.sax.Attributes;

/* loaded from: classes11.dex */
public class AttributeCollectionImpl implements Attributes {

    /* renamed from: e */
    public final Configuration f102661e;

    /* renamed from: f */
    public NodeName[] f102662f;

    /* renamed from: g */
    public String[] f102663g;

    /* renamed from: h */
    public Location[] f102664h;

    /* renamed from: i */
    public int[] f102665i;

    /* renamed from: j */
    public int f102666j;

    /* renamed from: k */
    public SimpleType[] f102667k = null;

    public AttributeCollectionImpl(Configuration configuration, int i) {
        this.f102662f = null;
        this.f102663g = null;
        this.f102664h = null;
        this.f102665i = null;
        this.f102666j = 0;
        this.f102661e = configuration;
        this.f102662f = new NodeName[i];
        this.f102663g = new String[i];
        this.f102665i = new int[i];
        this.f102664h = new Location[i];
        this.f102666j = 0;
    }

    /* renamed from: a */
    public final int m64575a(String str, String str2) {
        if (this.f102662f != null && this.f102661e != null) {
            for (int i = 0; i < this.f102666j; i++) {
                NodeName nodeName = this.f102662f[i];
                if (nodeName != null && nodeName.hasURI(str) && str2.equals(this.f102662f[i].getLocalPart())) {
                    return i;
                }
            }
        }
        return -1;
    }

    public void addAttribute(NodeName nodeName, SimpleType simpleType, String str, Location location, int i) {
        if (this.f102663g == null) {
            this.f102662f = new NodeName[5];
            this.f102663g = new String[5];
            this.f102665i = new int[5];
            this.f102664h = new Location[5];
            if (!simpleType.equals(BuiltInAtomicType.UNTYPED_ATOMIC)) {
                this.f102667k = new SimpleType[5];
            }
            this.f102666j = 0;
        }
        int length = this.f102663g.length;
        int i2 = this.f102666j;
        if (length == i2) {
            int i3 = i2 != 0 ? i2 * 2 : 5;
            this.f102662f = (NodeName[]) Arrays.copyOf(this.f102662f, i3);
            this.f102663g = (String[]) Arrays.copyOf(this.f102663g, i3);
            this.f102665i = Arrays.copyOf(this.f102665i, i3);
            this.f102664h = (Location[]) Arrays.copyOf(this.f102664h, i3);
            SimpleType[] simpleTypeArr = this.f102667k;
            if (simpleTypeArr != null) {
                this.f102667k = (SimpleType[]) Arrays.copyOf(simpleTypeArr, i3);
            }
        }
        int i4 = this.f102666j;
        this.f102662f[i4] = nodeName;
        this.f102665i[i4] = i;
        this.f102664h[i4] = location.saveLocation();
        setTypeAnnotation(i4, simpleType);
        String[] strArr = this.f102663g;
        int i5 = this.f102666j;
        this.f102666j = i5 + 1;
        strArr[i5] = str;
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str) {
        String[] qNameParts;
        int i;
        String str2;
        if (this.f102662f == null) {
            return -1;
        }
        if (str.indexOf(58) < 0) {
            return m64575a("", str);
        }
        try {
            qNameParts = NameChecker.getQNameParts(str);
            str2 = qNameParts[0];
        } catch (QNameException unused) {
        }
        if (str2.isEmpty()) {
            return m64575a("", str);
        }
        String str3 = qNameParts[1];
        for (i = 0; i < this.f102666j; i++) {
            NodeName nodeName = this.f102662f[i];
            if (nodeName != null) {
                String localPart = nodeName.getLocalPart();
                String prefix = this.f102662f[i].getPrefix();
                if (str3.equals(localPart) && str2.equals(prefix)) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override // org.xml.sax.Attributes
    public int getLength() {
        if (this.f102663g == null) {
            return 0;
        }
        return this.f102666j;
    }

    @Override // org.xml.sax.Attributes
    public String getLocalName(int i) {
        NodeName[] nodeNameArr = this.f102662f;
        if (nodeNameArr != null && i >= 0 && i < this.f102666j) {
            return nodeNameArr[i].getLocalPart();
        }
        return null;
    }

    public Location getLocation(int i) {
        Location[] locationArr = this.f102664h;
        return locationArr == null ? Loc.NONE : (i < 0 || i >= this.f102666j) ? Loc.NONE : locationArr[i];
    }

    public int getProperties(int i) {
        int[] iArr = this.f102665i;
        if (iArr != null && i >= 0 && i < this.f102666j) {
            return iArr[i];
        }
        return 0;
    }

    @Override // org.xml.sax.Attributes
    public String getQName(int i) {
        NodeName[] nodeNameArr = this.f102662f;
        if (nodeNameArr != null && i >= 0 && i < this.f102666j) {
            return nodeNameArr[i].getDisplayName();
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getType(int i) {
        switch (getTypeAnnotation(i).getFingerprint()) {
            case StandardNames.XS_NMTOKEN /* 556 */:
                return "NMTOKEN";
            case 557:
                return "NMTOKENS";
            case StandardNames.XS_NAME /* 558 */:
            case 559:
            default:
                return "CDATA";
            case StandardNames.XS_ID /* 560 */:
                return "ID";
            case StandardNames.XS_IDREF /* 561 */:
                return "IDREF";
            case 562:
                return "IDREFS";
            case StandardNames.XS_ENTITY /* 563 */:
                return "ENTITY";
            case StandardNames.XS_ENTITIES /* 564 */:
                return "ENTITIES";
        }
    }

    public SimpleType getTypeAnnotation(int i) {
        SimpleType[] simpleTypeArr = this.f102667k;
        return simpleTypeArr == null ? BuiltInAtomicType.UNTYPED_ATOMIC : (i < 0 || i >= this.f102666j) ? BuiltInAtomicType.UNTYPED_ATOMIC : simpleTypeArr[i];
    }

    @Override // org.xml.sax.Attributes
    public String getURI(int i) {
        NodeName[] nodeNameArr = this.f102662f;
        if (nodeNameArr != null && i >= 0 && i < this.f102666j) {
            return nodeNameArr[i].getURI();
        }
        return null;
    }

    @Override // org.xml.sax.Attributes
    public String getValue(int i) {
        String[] strArr = this.f102663g;
        if (strArr != null && i >= 0 && i < this.f102666j) {
            return strArr[i];
        }
        return null;
    }

    public void setAttribute(int i, NodeName nodeName, SimpleType simpleType, String str, Location location, int i2) {
        this.f102662f[i] = nodeName;
        this.f102665i[i] = i2;
        this.f102664h[i] = location;
        setTypeAnnotation(i, simpleType);
        this.f102663g[i] = str;
    }

    public void setTypeAnnotation(int i, SimpleType simpleType) {
        BuiltInAtomicType builtInAtomicType = BuiltInAtomicType.UNTYPED_ATOMIC;
        if (simpleType.equals(builtInAtomicType)) {
            SimpleType[] simpleTypeArr = this.f102667k;
            if (simpleTypeArr != null) {
                simpleTypeArr[i] = simpleType;
                return;
            }
            return;
        }
        SimpleType[] simpleTypeArr2 = this.f102667k;
        if (simpleTypeArr2 != null) {
            simpleTypeArr2[i] = simpleType;
            return;
        }
        SimpleType[] simpleTypeArr3 = new SimpleType[this.f102662f.length];
        this.f102667k = simpleTypeArr3;
        Arrays.fill(simpleTypeArr3, builtInAtomicType);
        this.f102667k[i] = simpleType;
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str, String str2) {
        int m64575a = m64575a(str, str2);
        if (m64575a < 0) {
            return null;
        }
        return getType(m64575a);
    }

    @Override // org.xml.sax.Attributes
    public String getType(String str) {
        return getType(getIndex(str));
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str, String str2) {
        int m64575a = m64575a(str, str2);
        if (m64575a < 0) {
            return null;
        }
        return getValue(m64575a);
    }

    @Override // org.xml.sax.Attributes
    public String getValue(String str) {
        return getValue(getIndex(str));
    }

    public void setAttribute(AttributeInfo attributeInfo) {
        NodeName nodeName = attributeInfo.getNodeName();
        int index = getIndex(nodeName.getURI(), nodeName.getLocalPart());
        if (index < 0) {
            addAttribute(nodeName, attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
        } else {
            setAttribute(index, nodeName, attributeInfo.getType(), attributeInfo.getValue(), attributeInfo.getLocation(), attributeInfo.getProperties());
        }
    }

    @Override // org.xml.sax.Attributes
    public int getIndex(String str, String str2) {
        return m64575a(str, str2);
    }
}
