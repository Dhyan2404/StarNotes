package net.p110sf.saxon.expr;

import net.p110sf.saxon.type.TypeHierarchy;

/* loaded from: classes11.dex */
public interface Negatable {
    boolean isNegatable(TypeHierarchy typeHierarchy);

    Expression negate();
}
