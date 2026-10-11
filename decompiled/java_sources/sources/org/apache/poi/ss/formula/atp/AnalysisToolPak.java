package org.apache.poi.ss.formula.atp;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TreeSet;
import org.apache.poi.ss.formula.OperationEvaluationContext;
import org.apache.poi.ss.formula.eval.NotImplementedFunctionException;
import org.apache.poi.ss.formula.eval.ValueEval;
import org.apache.poi.ss.formula.function.FunctionMetadataRegistry;
import org.apache.poi.ss.formula.functions.AverageIf;
import org.apache.poi.ss.formula.functions.Averageifs;
import org.apache.poi.ss.formula.functions.BesselJ;
import org.apache.poi.ss.formula.functions.Bin2Dec;
import org.apache.poi.ss.formula.functions.CeilingMath;
import org.apache.poi.ss.formula.functions.CeilingPrecise;
import org.apache.poi.ss.formula.functions.Complex;
import org.apache.poi.ss.formula.functions.Countifs;
import org.apache.poi.ss.formula.functions.Covar;
import org.apache.poi.ss.formula.functions.Days;
import org.apache.poi.ss.formula.functions.Dec2Bin;
import org.apache.poi.ss.formula.functions.Dec2Hex;
import org.apache.poi.ss.formula.functions.Delta;
import org.apache.poi.ss.formula.functions.DollarDe;
import org.apache.poi.ss.formula.functions.DollarFr;
import org.apache.poi.ss.formula.functions.EDate;
import org.apache.poi.ss.formula.functions.EOMonth;
import org.apache.poi.ss.formula.functions.FactDouble;
import org.apache.poi.ss.formula.functions.FloorMath;
import org.apache.poi.ss.formula.functions.FloorPrecise;
import org.apache.poi.ss.formula.functions.Forecast;
import org.apache.poi.ss.formula.functions.FreeRefFunction;
import org.apache.poi.ss.formula.functions.Gcd;
import org.apache.poi.ss.formula.functions.Hex2Dec;
import org.apache.poi.ss.formula.functions.ImReal;
import org.apache.poi.ss.formula.functions.Imaginary;
import org.apache.poi.ss.formula.functions.Lcm;
import org.apache.poi.ss.formula.functions.Maxifs;
import org.apache.poi.ss.formula.functions.Minifs;
import org.apache.poi.ss.formula.functions.NormDist;
import org.apache.poi.ss.formula.functions.NormInv;
import org.apache.poi.ss.formula.functions.NormSDist;
import org.apache.poi.ss.formula.functions.NormSInv;
import org.apache.poi.ss.formula.functions.NumberValueFunction;
import org.apache.poi.ss.formula.functions.Oct2Dec;
import org.apache.poi.ss.formula.functions.Poisson;
import org.apache.poi.ss.formula.functions.Quotient;
import org.apache.poi.ss.formula.functions.Single;
import org.apache.poi.ss.formula.functions.Sqrtpi;
import org.apache.poi.ss.formula.functions.Sumifs;
import org.apache.poi.ss.formula.functions.TDist2t;
import org.apache.poi.ss.formula.functions.TDistLt;
import org.apache.poi.ss.formula.functions.TDistRt;
import org.apache.poi.ss.formula.functions.TextFunction;
import org.apache.poi.ss.formula.functions.WeekNum;
import org.apache.poi.ss.formula.udf.UDFFinder;

/* loaded from: classes13.dex */
public final class AnalysisToolPak implements UDFFinder {
    public static final UDFFinder instance = new AnalysisToolPak();
    private final Map<String, FreeRefFunction> _functionsByName = createFunctionsMap();

    /* loaded from: classes13.dex */
    public static final class NotImplemented implements FreeRefFunction {
        private final String _functionName;

        public NotImplemented(String str) {
            this._functionName = str;
        }

        @Override // org.apache.poi.ss.formula.functions.FreeRefFunction
        public ValueEval evaluate(ValueEval[] valueEvalArr, OperationEvaluationContext operationEvaluationContext) {
            throw new NotImplementedFunctionException(this._functionName);
        }
    }

    private AnalysisToolPak() {
    }

    private Map<String, FreeRefFunction> createFunctionsMap() {
        HashMap hashMap = new HashMap(127);
        m69505r(hashMap, "ACCRINT", null);
        m69505r(hashMap, "ACCRINTM", null);
        m69505r(hashMap, "AMORDEGRC", null);
        m69505r(hashMap, "AMORLINC", null);
        m69505r(hashMap, "AVERAGEIF", AverageIf.instance);
        m69505r(hashMap, "AVERAGEIFS", Averageifs.instance);
        m69505r(hashMap, "BAHTTEXT", null);
        m69505r(hashMap, "BESSELI", null);
        m69505r(hashMap, "BESSELJ", BesselJ.instance);
        m69505r(hashMap, "BESSELK", null);
        m69505r(hashMap, "BESSELY", null);
        m69505r(hashMap, "BIN2DEC", Bin2Dec.instance);
        m69505r(hashMap, "BIN2HEX", null);
        m69505r(hashMap, "BIN2OCT", null);
        m69505r(hashMap, "COMPLEX", Complex.instance);
        m69505r(hashMap, "CEILING.MATH", CeilingMath.instance);
        m69505r(hashMap, "CEILING.PRECISE", CeilingPrecise.instance);
        m69505r(hashMap, "CONCAT", TextFunction.CONCAT);
        m69505r(hashMap, "CONVERT", null);
        m69505r(hashMap, "COUNTIFS", Countifs.instance);
        m69505r(hashMap, "COUPDAYBS", null);
        m69505r(hashMap, "COUPDAYS", null);
        m69505r(hashMap, "COUPDAYSNC", null);
        m69505r(hashMap, "COUPNCD", null);
        m69505r(hashMap, "COUPNUM", null);
        m69505r(hashMap, "COUPPCD", null);
        m69505r(hashMap, "COVARIANCE.P", Covar.instanceP);
        m69505r(hashMap, "COVARIANCE.S", Covar.instanceS);
        m69505r(hashMap, "CUBEKPIMEMBER", null);
        m69505r(hashMap, "CUBEMEMBER", null);
        m69505r(hashMap, "CUBEMEMBERPROPERTY", null);
        m69505r(hashMap, "CUBERANKEDMEMBER", null);
        m69505r(hashMap, "CUBESET", null);
        m69505r(hashMap, "CUBESETCOUNT", null);
        m69505r(hashMap, "CUBEVALUE", null);
        m69505r(hashMap, "CUMIPMT", null);
        m69505r(hashMap, "CUMPRINC", null);
        m69505r(hashMap, "DAYS", Days.instance);
        m69505r(hashMap, "DEC2BIN", Dec2Bin.instance);
        m69505r(hashMap, "DEC2HEX", Dec2Hex.instance);
        m69505r(hashMap, "DEC2OCT", null);
        m69505r(hashMap, "DELTA", Delta.instance);
        m69505r(hashMap, "DISC", null);
        m69505r(hashMap, "DOLLARDE", DollarDe.instance);
        m69505r(hashMap, "DOLLARFR", DollarFr.instance);
        m69505r(hashMap, "DURATION", null);
        m69505r(hashMap, "EDATE", EDate.instance);
        m69505r(hashMap, "EFFECT", null);
        m69505r(hashMap, "EOMONTH", EOMonth.instance);
        m69505r(hashMap, "ERF", null);
        m69505r(hashMap, "ERFC", null);
        m69505r(hashMap, "FACTDOUBLE", FactDouble.instance);
        m69505r(hashMap, "FLOOR.MATH", FloorMath.instance);
        m69505r(hashMap, "FLOOR.PRECISE", FloorPrecise.instance);
        m69505r(hashMap, "FORECAST.LINEAR", Forecast.instance);
        m69505r(hashMap, "FVSCHEDULE", null);
        m69505r(hashMap, "GCD", Gcd.instance);
        m69505r(hashMap, "GESTEP", null);
        m69505r(hashMap, "HEX2BIN", null);
        m69505r(hashMap, "HEX2DEC", Hex2Dec.instance);
        m69505r(hashMap, "HEX2OCT", null);
        m69505r(hashMap, "IFERROR", IfError.instance);
        m69505r(hashMap, "IFNA", IfNa.instance);
        m69505r(hashMap, "IFS", Ifs.instance);
        m69505r(hashMap, "IMABS", null);
        m69505r(hashMap, "IMAGINARY", Imaginary.instance);
        m69505r(hashMap, "IMARGUMENT", null);
        m69505r(hashMap, "IMCONJUGATE", null);
        m69505r(hashMap, "IMCOS", null);
        m69505r(hashMap, "IMDIV", null);
        m69505r(hashMap, "IMEXP", null);
        m69505r(hashMap, "IMLN", null);
        m69505r(hashMap, "IMLOG10", null);
        m69505r(hashMap, "IMLOG2", null);
        m69505r(hashMap, "IMPOWER", null);
        m69505r(hashMap, "IMPRODUCT", null);
        m69505r(hashMap, "IMREAL", ImReal.instance);
        m69505r(hashMap, "IMSIN", null);
        m69505r(hashMap, "IMSQRT", null);
        m69505r(hashMap, "IMSUB", null);
        m69505r(hashMap, "IMSUM", null);
        m69505r(hashMap, "INTRATE", null);
        m69505r(hashMap, "ISEVEN", ParityFunction.IS_EVEN);
        m69505r(hashMap, "ISODD", ParityFunction.IS_ODD);
        m69505r(hashMap, "JIS", null);
        m69505r(hashMap, "LCM", Lcm.instance);
        m69505r(hashMap, "MAXIFS", Maxifs.instance);
        m69505r(hashMap, "MDURATION", null);
        m69505r(hashMap, "MINIFS", Minifs.instance);
        m69505r(hashMap, "MROUND", MRound.instance);
        m69505r(hashMap, "MULTINOMIAL", null);
        m69505r(hashMap, "NETWORKDAYS", NetworkdaysFunction.instance);
        m69505r(hashMap, "NOMINAL", null);
        m69505r(hashMap, "NORM.DIST", NormDist.instance);
        m69505r(hashMap, "NORM.S.DIST", NormSDist.instance);
        m69505r(hashMap, "NORM.INV", NormInv.instance);
        m69505r(hashMap, "NORM.S.INV", NormSInv.instance);
        m69505r(hashMap, "NUMBERVALUE", NumberValueFunction.instance);
        m69505r(hashMap, "OCT2BIN", null);
        m69505r(hashMap, "OCT2DEC", Oct2Dec.instance);
        m69505r(hashMap, "OCT2HEX", null);
        m69505r(hashMap, "ODDFPRICE", null);
        m69505r(hashMap, "ODDFYIELD", null);
        m69505r(hashMap, "ODDLPRICE", null);
        m69505r(hashMap, "ODDLYIELD", null);
        m69505r(hashMap, "PERCENTRANK.EXC", PercentRankExcFunction.instance);
        m69505r(hashMap, "PERCENTRANK.INC", PercentRankIncFunction.instance);
        m69505r(hashMap, "POISSON.DIST", Poisson.instance);
        m69505r(hashMap, "PRICE", null);
        m69505r(hashMap, "PRICEDISC", null);
        m69505r(hashMap, "PRICEMAT", null);
        m69505r(hashMap, "QUOTIENT", Quotient.instance);
        m69505r(hashMap, "RANDBETWEEN", RandBetween.instance);
        m69505r(hashMap, "RECEIVED", null);
        m69505r(hashMap, "RTD", null);
        m69505r(hashMap, "SERIESSUM", null);
        m69505r(hashMap, "SINGLE", Single.instance);
        m69505r(hashMap, "SQRTPI", Sqrtpi.instance);
        m69505r(hashMap, "STDEV.S", Stdevs.instance);
        m69505r(hashMap, "STDEV.P", Stdevp.instance);
        m69505r(hashMap, "SUMIFS", Sumifs.instance);
        m69505r(hashMap, "SWITCH", Switch.instance);
        m69505r(hashMap, "TBILLEQ", null);
        m69505r(hashMap, "TBILLPRICE", null);
        m69505r(hashMap, "TBILLYIELD", null);
        m69505r(hashMap, "T.DIST", TDistLt.instance);
        m69505r(hashMap, "T.DIST.2T", TDist2t.instance);
        m69505r(hashMap, "T.DIST.RT", TDistRt.instance);
        m69505r(hashMap, "TEXTJOIN", TextJoinFunction.instance);
        m69505r(hashMap, "WEEKNUM", WeekNum.instance);
        m69505r(hashMap, "WORKDAY", WorkdayFunction.instance);
        m69505r(hashMap, "WORKDAY.INTL", WorkdayIntlFunction.instance);
        m69505r(hashMap, "XIRR", null);
        m69505r(hashMap, "XLOOKUP", XLookupFunction.instance);
        m69505r(hashMap, "XMATCH", XMatchFunction.instance);
        m69505r(hashMap, "XNPV", null);
        m69505r(hashMap, "YEARFRAC", YearFrac.instance);
        m69505r(hashMap, "YIELD", null);
        m69505r(hashMap, "YIELDDISC", null);
        m69505r(hashMap, "YIELDMAT", null);
        m69505r(hashMap, "VAR.S", Vars.instance);
        m69505r(hashMap, "VAR.P", Varp.instance);
        return hashMap;
    }

    public static Collection<String> getNotSupportedFunctionNames() {
        AnalysisToolPak analysisToolPak = (AnalysisToolPak) instance;
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<String, FreeRefFunction> entry : analysisToolPak._functionsByName.entrySet()) {
            if (entry.getValue() instanceof NotImplemented) {
                treeSet.add(entry.getKey());
            }
        }
        return Collections.unmodifiableCollection(treeSet);
    }

    public static Collection<String> getSupportedFunctionNames() {
        AnalysisToolPak analysisToolPak = (AnalysisToolPak) instance;
        TreeSet treeSet = new TreeSet();
        for (Map.Entry<String, FreeRefFunction> entry : analysisToolPak._functionsByName.entrySet()) {
            FreeRefFunction value = entry.getValue();
            if (value != null && !(value instanceof NotImplemented)) {
                treeSet.add(entry.getKey());
            }
        }
        return Collections.unmodifiableCollection(treeSet);
    }

    public static boolean isATPFunction(String str) {
        return ((AnalysisToolPak) instance)._functionsByName.containsKey(str);
    }

    /* renamed from: r */
    private static void m69505r(Map<String, FreeRefFunction> map, String str, FreeRefFunction freeRefFunction) {
        if (freeRefFunction == null) {
            freeRefFunction = new NotImplemented(str);
        }
        map.put(str, freeRefFunction);
    }

    public static void registerFunction(String str, FreeRefFunction freeRefFunction) {
        AnalysisToolPak analysisToolPak = (AnalysisToolPak) instance;
        if (!isATPFunction(str)) {
            if (FunctionMetadataRegistry.getFunctionByName(str) != null) {
                throw new IllegalArgumentException(str + " is a built-in Excel function. Use FunctionEval.registerFunction(String name, Function func) instead.");
            }
            throw new IllegalArgumentException(str + " is not a function from the Excel Analysis Toolpack.");
        }
        FreeRefFunction findFunction = analysisToolPak.findFunction(str);
        if (findFunction == null || (findFunction instanceof NotImplemented)) {
            analysisToolPak._functionsByName.put(str, freeRefFunction);
            return;
        }
        throw new IllegalArgumentException("POI already implements " + str + ". You cannot override POI's implementations of Excel functions");
    }

    @Override // org.apache.poi.ss.formula.udf.UDFFinder
    public FreeRefFunction findFunction(String str) {
        if (str.startsWith("_xlfn.")) {
            str = str.substring(6);
        }
        return this._functionsByName.get(str.toUpperCase(Locale.ROOT));
    }
}
