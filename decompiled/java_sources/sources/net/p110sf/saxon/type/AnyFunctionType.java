package net.p110sf.saxon.type;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ItemChecker;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class AnyFunctionType implements FunctionItemType {
    public static final AnyFunctionType ANY_FUNCTION = new AnyFunctionType();

    public static AnyFunctionType getInstance() {
        return ANY_FUNCTION;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public AnnotationList getAnnotationAssertions() {
        return AnnotationList.EMPTY;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return null;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public PlainType getAtomizedItemType() {
        return null;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return "F";
    }

    @Override // net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return -0.5d;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public final ItemType getPrimitiveItemType() {
        return ANY_FUNCTION;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public final int getPrimitiveType() {
        return 99;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        return SequenceType.ANY_SEQUENCE;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public UType getUType() {
        return UType.FUNCTION;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public boolean isArrayType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomicType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isAtomizable(TypeHierarchy typeHierarchy) {
        return true;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public boolean isMapType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean isPlainType() {
        return false;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new ItemChecker(expression, this, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return item instanceof Function;
    }

    @Override // net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        return functionItemType == this ? Affinity.SAME_TYPE : Affinity.SUBSUMES;
    }

    public String toString() {
        return "function(*)";
    }
}
