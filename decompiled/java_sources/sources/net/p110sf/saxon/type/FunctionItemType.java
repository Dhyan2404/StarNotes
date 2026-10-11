package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public interface FunctionItemType extends ItemType {
    AnnotationList getAnnotationAssertions();

    SequenceType[] getArgumentTypes();

    @Override // net.p110sf.saxon.type.ItemType
    default Genre getGenre() {
        return Genre.FUNCTION;
    }

    SequenceType getResultType();

    boolean isArrayType();

    boolean isMapType();

    Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException;

    Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy);
}
