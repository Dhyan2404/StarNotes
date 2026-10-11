package com.sunia.HTREnginev2;

import java.util.Objects;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.ConversionRules;
import net.p110sf.saxon.s9api.ItemType;
import net.p110sf.saxon.s9api.XdmItem;

/* loaded from: classes11.dex */
public class gae extends ItemType {

    /* renamed from: b */
    public final Configuration f70846b;

    public gae(net.p110sf.saxon.type.ItemType itemType, Configuration configuration) {
        super(itemType);
        Objects.requireNonNull(configuration);
        Objects.requireNonNull(itemType);
        this.f70846b = configuration;
    }

    /* renamed from: c */
    public Configuration m54246c() {
        return this.f70846b;
    }

    @Override // net.p110sf.saxon.s9api.ItemType
    public ConversionRules getConversionRules() {
        return this.f70846b.getConversionRules();
    }

    @Override // net.p110sf.saxon.s9api.ItemType
    public net.p110sf.saxon.type.ItemType getUnderlyingItemType() {
        return this.underlyingType;
    }

    @Override // net.p110sf.saxon.s9api.ItemType
    public boolean matches(XdmItem xdmItem) {
        return this.underlyingType.matches(xdmItem.getUnderlyingValue(), this.f70846b.getTypeHierarchy());
    }

    @Override // net.p110sf.saxon.s9api.ItemType
    public boolean subsumes(ItemType itemType) {
        return this.f70846b.getTypeHierarchy().isSubType(itemType.getUnderlyingItemType(), this.underlyingType);
    }
}
