package net.p110sf.saxon.ma.map;

import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface TupleType extends FunctionItemType {
    Iterable<String> getFieldNames();

    SequenceType getFieldType(String str);

    boolean isExtensible();

    boolean isOptionalField(String str);
}
