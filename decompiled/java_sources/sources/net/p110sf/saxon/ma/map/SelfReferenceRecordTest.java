package net.p110sf.saxon.ma.map;

import com.sun.org.apache.xalan.internal.templates.Constants;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Genre;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.Affinity;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class SelfReferenceRecordTest extends AnyFunctionType implements TupleType {

    /* renamed from: e */
    public final RecordTest f100714e;

    public SelfReferenceRecordTest(RecordTest recordTest) {
        this.f100714e = recordTest;
    }

    public boolean equals(Object obj) {
        return this == obj || this.f100714e.equals(obj) || ((obj instanceof SelfReferenceRecordTest) && this.f100714e.equals(((SelfReferenceRecordTest) obj).f100714e));
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType[] getArgumentTypes() {
        return new SequenceType[]{SequenceType.SINGLE_ATOMIC};
    }

    public int getArity() {
        return 1;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public String getBasicAlphaCode() {
        return Constants.ATTRVAL_PARENT;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public double getDefaultPriority() {
        return 0.5d;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public Iterable<String> getFieldNames() {
        return this.f100714e.getFieldNames();
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public SequenceType getFieldType(String str) {
        return this.f100714e.getFieldType(str);
    }

    @Override // net.p110sf.saxon.type.FunctionItemType, net.p110sf.saxon.type.ItemType
    public Genre getGenre() {
        return Genre.MAP;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public SequenceType getResultType() {
        return this.f100714e.getResultType();
    }

    public int hashCode() {
        return 667568159;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isArrayType() {
        return false;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public boolean isExtensible() {
        return this.f100714e.isExtensible();
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public boolean isMapType() {
        return true;
    }

    @Override // net.p110sf.saxon.ma.map.TupleType
    public boolean isOptionalField(String str) {
        return this.f100714e.isOptionalField(str);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Expression makeFunctionSequenceCoercer(Expression expression, RoleDiagnostic roleDiagnostic) throws XPathException {
        return new SpecificFunctionType(getArgumentTypes(), getResultType()).makeFunctionSequenceCoercer(expression, roleDiagnostic);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.ItemType
    public boolean matches(Item item, TypeHierarchy typeHierarchy) {
        return this.f100714e.matches(item, typeHierarchy);
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType, net.p110sf.saxon.type.FunctionItemType
    public Affinity relationship(FunctionItemType functionItemType, TypeHierarchy typeHierarchy) {
        return this.f100714e.relationship(functionItemType, typeHierarchy);
    }

    @Override // net.p110sf.saxon.type.ItemType
    public String toExportString() {
        return Constants.ATTRVAL_PARENT;
    }

    @Override // net.p110sf.saxon.type.AnyFunctionType
    public String toString() {
        return Constants.ATTRVAL_PARENT;
    }
}
