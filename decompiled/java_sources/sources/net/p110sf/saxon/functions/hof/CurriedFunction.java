package net.p110sf.saxon.functions.hof;

import java.util.Arrays;
import net.p110sf.saxon.expr.Literal;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.XPathContextMajor;
import net.p110sf.saxon.expr.instruct.UserFunction;
import net.p110sf.saxon.functions.AbstractFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.AnnotationList;
import net.p110sf.saxon.trace.ExpressionPresenter;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class CurriedFunction extends AbstractFunction {

    /* renamed from: e */
    public final Function f100369e;

    /* renamed from: f */
    public final Sequence[] f100370f;

    /* renamed from: g */
    public FunctionItemType f100371g;

    public CurriedFunction(Function function, Sequence[] sequenceArr) {
        this.f100369e = function;
        this.f100370f = sequenceArr;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        int length = this.f100370f.length;
        Sequence[] sequenceArr2 = new Sequence[length];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Sequence sequence = this.f100370f[i2];
            if (sequence == null) {
                sequenceArr2[i2] = sequenceArr[i];
                i++;
            } else {
                sequenceArr2[i2] = sequence;
            }
        }
        XPathContext makeNewContext = this.f100369e.makeNewContext(xPathContext, null);
        Function function = this.f100369e;
        if (function instanceof UserFunction) {
            ((XPathContextMajor) makeNewContext).setCurrentComponent(((UserFunction) function).getDeclaringComponent());
        }
        return this.f100369e.call(makeNewContext, sequenceArr2);
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public void export(ExpressionPresenter expressionPresenter) throws XPathException {
        expressionPresenter.startElement("curriedFunc");
        this.f100369e.export(expressionPresenter);
        expressionPresenter.startElement("args");
        for (Sequence sequence : this.f100370f) {
            if (sequence == null) {
                expressionPresenter.startElement("x");
                expressionPresenter.endElement();
            } else {
                Literal.exportValue(sequence, expressionPresenter);
            }
        }
        expressionPresenter.endElement();
        expressionPresenter.endElement();
    }

    @Override // net.p110sf.saxon.functions.AbstractFunction, net.p110sf.saxon.om.Function
    public AnnotationList getAnnotations() {
        return this.f100369e.getAnnotations();
    }

    @Override // net.p110sf.saxon.om.Function
    public int getArity() {
        int i = 0;
        for (Sequence sequence : this.f100370f) {
            if (sequence == null) {
                i++;
            }
        }
        return i;
    }

    @Override // net.p110sf.saxon.om.Function
    public String getDescription() {
        return "partially-applied function " + this.f100369e.getDescription();
    }

    @Override // net.p110sf.saxon.om.Function
    public FunctionItemType getFunctionItemType() {
        if (this.f100371g == null) {
            FunctionItemType functionItemType = this.f100369e.getFunctionItemType();
            SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
            boolean z = functionItemType instanceof SpecificFunctionType;
            if (z) {
                sequenceType = functionItemType.getResultType();
            }
            int i = 0;
            int i2 = 0;
            for (Sequence sequence : this.f100370f) {
                if (sequence == null) {
                    i2++;
                }
            }
            SequenceType[] sequenceTypeArr = new SequenceType[i2];
            if (z) {
                int i3 = 0;
                while (true) {
                    Sequence[] sequenceArr = this.f100370f;
                    if (i >= sequenceArr.length) {
                        break;
                    }
                    if (sequenceArr[i] == null) {
                        sequenceTypeArr[i3] = functionItemType.getArgumentTypes()[i];
                        i3++;
                    }
                    i++;
                }
            } else {
                Arrays.fill(sequenceTypeArr, SequenceType.ANY_SEQUENCE);
            }
            this.f100371g = new SpecificFunctionType(sequenceTypeArr, sequenceType);
        }
        return this.f100371g;
    }

    @Override // net.p110sf.saxon.om.Function
    public StructuredQName getFunctionName() {
        return null;
    }
}
