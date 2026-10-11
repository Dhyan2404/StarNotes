package net.p110sf.saxon.s9api;

import java.util.stream.Stream;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.expr.parser.RoleDiagnostic;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.XdmFunctionItem;
import net.p110sf.saxon.s9api.XdmValue;
import net.p110sf.saxon.s9api.streams.Step;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.TypeHierarchy;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class XdmFunctionItem extends XdmItem {

    /* renamed from: net.sf.saxon.s9api.XdmFunctionItem$a */
    /* loaded from: classes11.dex */
    public class C18479a extends Step<XdmItem> {

        /* renamed from: e */
        public final /* synthetic */ Processor f101406e;

        public C18479a(Processor processor) {
            this.f101406e = processor;
        }

        @Override // java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Stream<? extends XdmItem> apply(XdmItem xdmItem) {
            try {
                return XdmFunctionItem.this.call(this.f101406e, xdmItem).stream();
            } catch (SaxonApiException e) {
                throw new SaxonApiUncheckedException(e);
            }
        }
    }

    public XdmFunctionItem(Function function) {
        super(function);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ XdmValue m63679b(Processor processor, XdmValue xdmValue) {
        try {
            return call(processor, xdmValue);
        } catch (SaxonApiException e) {
            throw new SaxonApiUncheckedException(e);
        }
    }

    public static XdmFunctionItem getSystemFunction(Processor processor, QName qName, int i) throws SaxonApiException {
        Function systemFunction = processor.getUnderlyingConfiguration().getSystemFunction(qName.getStructuredQName(), i);
        if (systemFunction == null) {
            return null;
        }
        return new XdmFunctionItem(systemFunction);
    }

    public java.util.function.Function<? super XdmValue, ? extends XdmValue> asFunction(final Processor processor) {
        if (getArity() == 1) {
            return new java.util.function.Function() { // from class: com.sunia.HTREnginev2.avo
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    XdmValue m63679b;
                    m63679b = XdmFunctionItem.this.m63679b(processor, (XdmValue) obj);
                    return m63679b;
                }
            };
        }
        throw new IllegalStateException("Function arity must be one");
    }

    public Step<XdmItem> asStep(Processor processor) {
        if (getArity() == 1) {
            return new C18479a(processor);
        }
        throw new IllegalStateException("Function arity must be one");
    }

    public XdmValue call(Processor processor, XdmValue... xdmValueArr) throws SaxonApiException {
        if (xdmValueArr.length != getArity()) {
            throw new SaxonApiException("Supplied " + xdmValueArr.length + " arguments, required " + getArity());
        }
        try {
            Function function = (Function) getUnderlyingValue();
            FunctionItemType functionItemType = function.getFunctionItemType();
            Sequence[] sequenceArr = new Sequence[xdmValueArr.length];
            TypeHierarchy typeHierarchy = processor.getUnderlyingConfiguration().getTypeHierarchy();
            for (int i = 0; i < xdmValueArr.length; i++) {
                SequenceType sequenceType = functionItemType.getArgumentTypes()[i];
                GroundedValue underlyingValue = xdmValueArr[i].getUnderlyingValue();
                if (!sequenceType.matches(underlyingValue, typeHierarchy)) {
                    underlyingValue = typeHierarchy.applyFunctionConversionRules(underlyingValue, sequenceType, new RoleDiagnostic(0, "", i), Loc.NONE);
                }
                sequenceArr[i] = underlyingValue;
            }
            Controller controller = new Controller(processor.getUnderlyingConfiguration());
            GroundedValue materialize = function.call(function.makeNewContext(controller.newXPathContext(), controller), sequenceArr).materialize();
            if (!function.isTrustedResultType()) {
                SequenceType resultType = functionItemType.getResultType();
                if (!resultType.matches(materialize, typeHierarchy)) {
                    materialize = typeHierarchy.applyFunctionConversionRules(materialize, resultType, new RoleDiagnostic(5, "", 0), Loc.NONE);
                }
            }
            return XdmValue.wrap(materialize);
        } catch (XPathException e) {
            throw new SaxonApiException(e);
        }
    }

    public int getArity() {
        return ((Function) getUnderlyingValue()).getArity();
    }

    public QName getName() {
        StructuredQName functionName = ((Function) getUnderlyingValue()).getFunctionName();
        if (functionName == null) {
            return null;
        }
        return new QName(functionName);
    }

    @Override // net.p110sf.saxon.s9api.XdmItem
    public boolean isAtomicValue() {
        return false;
    }
}
