package net.p110sf.saxon.trans;

import java.util.ArrayList;
import java.util.List;
import net.p110sf.saxon.om.StructuredQName;

/* loaded from: classes11.dex */
public class KeyDefinitionSet {

    /* renamed from: a */
    public final StructuredQName f102296a;

    /* renamed from: b */
    public final int f102297b;

    /* renamed from: d */
    public String f102299d;

    /* renamed from: e */
    public boolean f102300e;

    /* renamed from: f */
    public boolean f102301f;

    /* renamed from: g */
    public boolean f102302g;

    /* renamed from: h */
    public boolean f102303h = true;

    /* renamed from: c */
    public final List<KeyDefinition> f102298c = new ArrayList(3);

    public KeyDefinitionSet(StructuredQName structuredQName, int i) {
        this.f102296a = structuredQName;
        this.f102297b = i;
    }

    public void addKeyDefinition(KeyDefinition keyDefinition) throws XPathException {
        String str;
        if (this.f102298c.isEmpty()) {
            this.f102299d = keyDefinition.getCollationName();
            this.f102300e = keyDefinition.isComposite();
        } else {
            if ((this.f102299d == null && keyDefinition.getCollationName() != null) || ((str = this.f102299d) != null && !str.equals(keyDefinition.getCollationName()))) {
                throw new XPathException("All keys with the same name must use the same collation", "XTSE1220");
            }
            if (keyDefinition.isComposite() != this.f102300e) {
                throw new XPathException("All keys with the same name must have the same value for @composite", "XTSE1222");
            }
            for (KeyDefinition keyDefinition2 : getKeyDefinitions()) {
                if (keyDefinition.getMatch().isEqual(keyDefinition2.getMatch()) && keyDefinition.getBody().isEqual(keyDefinition2.getBody())) {
                    return;
                }
            }
        }
        if (keyDefinition.isBackwardsCompatible()) {
            this.f102301f = true;
        }
        if (keyDefinition.isRangeKey()) {
            this.f102302g = true;
        }
        this.f102298c.add(keyDefinition);
    }

    public String getCollationName() {
        return this.f102299d;
    }

    public List<KeyDefinition> getKeyDefinitions() {
        return this.f102298c;
    }

    public StructuredQName getKeyName() {
        return this.f102296a;
    }

    public int getKeySetNumber() {
        return this.f102297b;
    }

    public boolean isBackwardsCompatible() {
        return this.f102301f;
    }

    public boolean isComposite() {
        return this.f102300e;
    }

    public boolean isRangeKey() {
        return this.f102302g;
    }

    public boolean isReusable() {
        return this.f102303h;
    }

    public void setReusable(boolean z) {
        this.f102303h = z;
    }
}
