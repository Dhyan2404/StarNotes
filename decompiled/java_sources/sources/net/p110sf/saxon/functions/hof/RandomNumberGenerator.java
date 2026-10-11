package net.p110sf.saxon.functions.hof;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Random;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.CallableFunction;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.ma.map.DictionaryMap;
import net.p110sf.saxon.ma.map.MapItem;
import net.p110sf.saxon.ma.map.MapType;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceIterator;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.BuiltInAtomicType;
import net.p110sf.saxon.type.FunctionItemType;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.SequenceExtent;
import net.p110sf.saxon.value.SequenceType;

/* loaded from: classes11.dex */
public class RandomNumberGenerator extends SystemFunction implements Callable {
    public static final MapType RETURN_TYPE;

    /* renamed from: h */
    public static final FunctionItemType f100394h;

    /* renamed from: i */
    public static final FunctionItemType f100395i;

    /* renamed from: net.sf.saxon.functions.hof.RandomNumberGenerator$a */
    /* loaded from: classes11.dex */
    public static class C18388a implements Callable {

        /* renamed from: e */
        public long f100396e;

        public C18388a(long j) {
            this.f100396e = j;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            return RandomNumberGenerator.m63242b(this.f100396e, xPathContext);
        }

        public String toString() {
            return "random-number-generator.next";
        }
    }

    /* renamed from: net.sf.saxon.functions.hof.RandomNumberGenerator$b */
    /* loaded from: classes11.dex */
    public static class C18389b implements Callable {

        /* renamed from: e */
        public Long f100397e;

        public C18389b(Long l) {
            this.f100397e = l;
        }

        @Override // net.p110sf.saxon.expr.Callable
        public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
            SequenceIterator iterate = sequenceArr[0].iterate();
            ArrayList arrayList = new ArrayList();
            Random random = new Random(this.f100397e.longValue());
            while (true) {
                Item next = iterate.next();
                if (next == null) {
                    return new SequenceExtent.C18571Of(arrayList);
                }
                arrayList.add(random.nextInt(arrayList.size() + 1), next);
            }
        }

        public String toString() {
            return "random-number-generator.permute";
        }
    }

    static {
        MapType mapType = new MapType(BuiltInAtomicType.STRING, SequenceType.SINGLE_ITEM);
        RETURN_TYPE = mapType;
        f100394h = new SpecificFunctionType(new SequenceType[0], SequenceType.makeSequenceType(mapType, 16384));
        SequenceType sequenceType = SequenceType.ANY_SEQUENCE;
        f100395i = new SpecificFunctionType(new SequenceType[]{sequenceType}, sequenceType);
    }

    /* renamed from: b */
    public static MapItem m63242b(long j, XPathContext xPathContext) throws XPathException {
        Random random = new Random(j);
        double nextDouble = random.nextDouble();
        long nextLong = random.nextLong();
        DictionaryMap dictionaryMap = new DictionaryMap();
        dictionaryMap.initialPut("number", new DoubleValue(nextDouble));
        dictionaryMap.initialPut(Constants.NEXT, new CallableFunction(0, new C18388a(nextLong), f100394h));
        dictionaryMap.initialPut("permute", new CallableFunction(1, new C18389b(Long.valueOf(nextLong)), f100395i));
        return dictionaryMap;
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        long randomSeed;
        if (sequenceArr.length == 0) {
            randomSeed = xPathContext.getCurrentDateTime().randomSeed();
        } else {
            randomSeed = ((AtomicValue) sequenceArr[0].head()) == null ? xPathContext.getCurrentDateTime().randomSeed() : r2.hashCode();
        }
        return m63242b(randomSeed, xPathContext);
    }
}
