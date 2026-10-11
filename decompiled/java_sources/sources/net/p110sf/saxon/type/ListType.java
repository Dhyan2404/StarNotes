package net.p110sf.saxon.type;

/* loaded from: classes11.dex */
public interface ListType extends SimpleType, CastingTarget {
    SimpleType getItemType() throws MissingComponentException;
}
