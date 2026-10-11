package net.p110sf.saxon.functions.hof;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.Fold;
import net.p110sf.saxon.functions.FoldingFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.GroundedValue;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.AnyFunctionType;
import net.p110sf.saxon.type.AnyItemType;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public class FoldLeftFn extends FoldingFunction {

    /* loaded from: classes11.dex */
    public class FoldLeftFold implements Fold {

        /* renamed from: a */
        public final XPathContext f100372a;

        /* renamed from: b */
        public final Function f100373b;

        /* renamed from: c */
        public Sequence f100374c;

        /* renamed from: d */
        public int f100375d = 0;

        public FoldLeftFold(XPathContext xPathContext, GroundedValue groundedValue, Function function) {
            this.f100372a = xPathContext;
            this.f100373b = function;
            this.f100374c = groundedValue;
        }

        @Override // net.p110sf.saxon.functions.Fold
        public boolean isFinished() {
            return false;
        }

        @Override // net.p110sf.saxon.functions.Fold
        public void processItem(Item item) throws XPathException {
            Sequence dynamicCall = SystemFunction.dynamicCall(this.f100373b, this.f100372a, new Sequence[]{this.f100374c, item});
            int i = this.f100375d;
            this.f100375d = i + 1;
            if (i % 32 == 0) {
                this.f100374c = dynamicCall.materialize();
            } else {
                this.f100374c = dynamicCall;
            }
        }

        @Override // net.p110sf.saxon.functions.Fold
        public Sequence result() {
            return this.f100374c;
        }
    }

    @Override // net.p110sf.saxon.functions.FoldingFunction
    public Fold getFold(XPathContext xPathContext, Sequence... sequenceArr) throws XPathException {
        return new FoldLeftFold(xPathContext, sequenceArr[0].materialize(), (Function) sequenceArr[1].head());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public ItemType getResultItemType(Expression[] expressionArr) {
        return expressionArr[2].getItemType() instanceof AnyFunctionType ? ((AnyFunctionType) expressionArr[2].getItemType()).getResultType().getPrimaryType() : AnyItemType.getInstance();
    }
}
