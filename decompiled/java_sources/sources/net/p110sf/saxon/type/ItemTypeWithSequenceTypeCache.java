package net.p110sf.saxon.type;

import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface ItemTypeWithSequenceTypeCache extends ItemType {
    SequenceType one();

    SequenceType oneOrMore();

    SequenceType zeroOrMore();

    SequenceType zeroOrOne();
}
