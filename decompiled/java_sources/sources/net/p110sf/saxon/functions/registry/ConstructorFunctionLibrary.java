package net.p110sf.saxon.functions.registry;

import java.util.List;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.CallableDelegate;
import net.p110sf.saxon.expr.CastExpression;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.ListConstructorFunction;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.StaticFunctionCall;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.UnionConstructorFunction;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.functions.hof.AtomicConstructorFunction;
import net.p110sf.saxon.functions.registry.ConstructorFunctionLibrary;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.trans.SymbolicName;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnySimpleType;
import net.p110sf.saxon.type.AtomicType;
import net.p110sf.saxon.type.ListType;
import net.p110sf.saxon.type.MissingComponentException;
import net.p110sf.saxon.type.SchemaType;
import net.p110sf.saxon.type.SimpleType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.type.Type;
import net.p110sf.saxon.type.UnionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class ConstructorFunctionLibrary implements FunctionLibrary {

    /* renamed from: a */
    public final Configuration f100416a;

    public ConstructorFunctionLibrary(Configuration configuration) {
        this.f100416a = configuration;
    }

    /* renamed from: b */
    public static /* synthetic */ Sequence m63246b(SchemaType schemaType, NamespaceResolver namespaceResolver, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        AtomicValue atomicValue = (AtomicValue) sequenceArr[0].head();
        return atomicValue == null ? EmptySequence.getInstance() : UnionConstructorFunction.cast(atomicValue, (UnionType) schemaType, namespaceResolver, xPathContext.getConfiguration().getConversionRules());
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Expression bind(SymbolicName.C18533F c18533f, Expression[] expressionArr, StaticContext staticContext, List<String> list) {
        String uri = c18533f.getComponentName().getURI();
        String localPart = c18533f.getComponentName().getLocalPart();
        if (!uri.equals("http://www.w3.org/2001/XMLSchema")) {
            if (expressionArr.length == 1) {
                SchemaType schemaType = this.f100416a.getSchemaType(new StructuredQName("", uri, localPart));
                if (schemaType instanceof SimpleType) {
                    if (schemaType instanceof AtomicType) {
                        return new CastExpression(expressionArr[0], (AtomicType) schemaType, true);
                    }
                    if ((schemaType instanceof ListType) && staticContext.getXPathVersion() >= 30) {
                        try {
                            return new StaticFunctionCall(new ListConstructorFunction((ListType) schemaType, staticContext.getNamespaceResolver(), true), expressionArr);
                        } catch (MissingComponentException e) {
                            list.add("Missing schema component: " + e.getMessage());
                            return null;
                        }
                    }
                    if (((SimpleType) schemaType).isUnionType() && staticContext.getXPathVersion() >= 30) {
                        return new StaticFunctionCall(new UnionConstructorFunction((UnionType) schemaType, staticContext.getNamespaceResolver(), true), expressionArr);
                    }
                }
            }
            return null;
        }
        if (c18533f.getArity() != 1) {
            list.add("A constructor function must have exactly one argument");
            return null;
        }
        SimpleType builtInSimpleType = Type.getBuiltInSimpleType(uri, localPart);
        if (builtInSimpleType == null) {
            list.add("Unknown constructor function: {" + uri + '}' + localPart);
            return null;
        }
        if (!builtInSimpleType.isAtomicType()) {
            if (builtInSimpleType.isUnionType()) {
                return new StaticFunctionCall(new UnionConstructorFunction((UnionType) builtInSimpleType, staticContext.getNamespaceResolver(), true), expressionArr);
            }
            try {
                return new StaticFunctionCall(new ListConstructorFunction((ListType) builtInSimpleType, staticContext.getNamespaceResolver(), true), expressionArr);
            } catch (MissingComponentException e2) {
                list.add("Missing schema component: " + e2.getMessage());
                return null;
            }
        }
        AtomicType atomicType = (AtomicType) builtInSimpleType;
        if (!atomicType.isAbstract()) {
            CastExpression castExpression = new CastExpression(expressionArr[0], atomicType, true);
            if (expressionArr[0] instanceof StringLiteral) {
                castExpression.setOperandIsStringLiteral(true);
            }
            return castExpression;
        }
        list.add("Abstract type used in constructor function: {" + uri + '}' + localPart);
        return null;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public FunctionLibrary copy() {
        return this;
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public Function getFunctionItem(SymbolicName.C18533F c18533f, StaticContext staticContext) throws XPathException {
        if (c18533f.getArity() != 1) {
            return null;
        }
        final SchemaType schemaType = this.f100416a.getSchemaType(new StructuredQName("", c18533f.getComponentName().getURI(), c18533f.getComponentName().getLocalPart()));
        if (schemaType == null || schemaType.isComplexType()) {
            return null;
        }
        final NamespaceResolver namespaceResolver = ((SimpleType) schemaType).isNamespaceSensitive() ? staticContext.getNamespaceResolver() : null;
        if (schemaType instanceof AtomicType) {
            return new AtomicConstructorFunction((AtomicType) schemaType, namespaceResolver);
        }
        if (schemaType instanceof ListType) {
            return new ListConstructorFunction((ListType) schemaType, namespaceResolver, true);
        }
        return new CallableFunction(1, new CallableDelegate(new CallableDelegate.Lambda() { // from class: com.sunia.HTREnginev2.iae
            @Override // net.sf.saxon.expr.CallableDelegate.Lambda
            public final Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) {
                Sequence m63246b;
                m63246b = ConstructorFunctionLibrary.m63246b(SchemaType.this, namespaceResolver, xPathContext, sequenceArr);
                return m63246b;
            }
        }), new SpecificFunctionType(new SequenceType[]{SequenceType.OPTIONAL_ATOMIC}, ((UnionType) schemaType).getResultTypeOfCast()));
    }

    @Override // net.p110sf.saxon.functions.FunctionLibrary
    public boolean isAvailable(SymbolicName.C18533F c18533f, int i) {
        if (c18533f.getArity() != 1) {
            return false;
        }
        SchemaType schemaType = this.f100416a.getSchemaType(new StructuredQName("", c18533f.getComponentName().getURI(), c18533f.getComponentName().getLocalPart()));
        if (schemaType == null || schemaType.isComplexType()) {
            return false;
        }
        return ((schemaType.isAtomicType() && ((AtomicType) schemaType).isAbstract()) || schemaType == AnySimpleType.getInstance()) ? false : true;
    }
}
