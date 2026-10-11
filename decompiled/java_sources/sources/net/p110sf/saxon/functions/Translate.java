package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.p111z.IntIterator;
import net.p110sf.saxon.p111z.IntToIntHashMap;
import net.p110sf.saxon.p111z.IntToIntMap;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class Translate extends SystemFunction implements Callable, StatefulSystemFunction {

    /* renamed from: h */
    public IntToIntMap f100348h = null;

    /* renamed from: a */
    public static IntToIntMap m63215a(StringValue stringValue, StringValue stringValue2) {
        IntToIntHashMap intToIntHashMap = new IntToIntHashMap(stringValue.length32(), 0.5d);
        IntIterator codePoints = stringValue.codePoints();
        long length = stringValue2.length();
        long j = 0;
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            if (!intToIntHashMap.contains(next)) {
                intToIntHashMap.put(next, j >= length ? -1 : stringValue2.getContent().codePointAt(j));
            }
            j++;
        }
        return intToIntHashMap;
    }

    public static StringValue translate(StringValue stringValue, StringValue stringValue2, StringValue stringValue3) {
        if (stringValue.length() * stringValue2.length() > 1000) {
            return translateUsingMap(stringValue, m63215a(stringValue2, stringValue3));
        }
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(stringValue.length32());
        long length = stringValue3.length();
        IntIterator codePoints = stringValue.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            long indexOf = stringValue2.getContent().indexOf(next, 0L);
            if (indexOf < length) {
                if (indexOf >= 0) {
                    next = stringValue3.getContent().codePointAt(indexOf);
                }
                unicodeBuilder.append(next);
            }
        }
        return new StringValue(unicodeBuilder.toUnicodeString());
    }

    public static StringValue translateUsingMap(StringValue stringValue, IntToIntMap intToIntMap) {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder(stringValue.length32());
        IntIterator codePoints = stringValue.codePoints();
        while (codePoints.hasNext()) {
            int next = codePoints.next();
            int i = intToIntMap.get(next);
            if (i != Integer.MAX_VALUE) {
                next = i;
            }
            if (next != -1) {
                unicodeBuilder.append(next);
            }
        }
        return new StringValue(unicodeBuilder.toUnicodeString());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression fixArguments(Expression... expressionArr) {
        Expression expression = expressionArr[1];
        if (!(expression instanceof StringLiteral) || !(expressionArr[2] instanceof StringLiteral)) {
            return null;
        }
        this.f100348h = m63215a(((StringLiteral) expression).getGroundedValue(), ((StringLiteral) expressionArr[2]).getGroundedValue());
        return null;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "TranslateCompiler";
    }

    public IntToIntMap getStaticMap() {
        return this.f100348h;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        StringValue stringValue = (StringValue) sequenceArr[0].head();
        if (stringValue == null) {
            return StringValue.EMPTY_STRING;
        }
        IntToIntMap intToIntMap = this.f100348h;
        if (intToIntMap != null) {
            return translateUsingMap(stringValue, intToIntMap);
        }
        return translate(stringValue, (StringValue) sequenceArr[1].head(), (StringValue) sequenceArr[2].head());
    }

    @Override // net.p110sf.saxon.functions.StatefulSystemFunction
    public Translate copy() {
        Translate translate = (Translate) SystemFunction.makeFunction(getFunctionName().getLocalPart(), getRetainedStaticContext(), getArity());
        translate.f100348h = this.f100348h;
        return translate;
    }
}
