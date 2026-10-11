package com.graphbuilder.math;

import com.graphbuilder.math.func.AbsFunction;
import com.graphbuilder.math.func.AcosFunction;
import com.graphbuilder.math.func.AcoshFunction;
import com.graphbuilder.math.func.AsinFunction;
import com.graphbuilder.math.func.AsinhFunction;
import com.graphbuilder.math.func.AtanFunction;
import com.graphbuilder.math.func.AtanhFunction;
import com.graphbuilder.math.func.AvgFunction;
import com.graphbuilder.math.func.CeilFunction;
import com.graphbuilder.math.func.CombinFunction;
import com.graphbuilder.math.func.CosFunction;
import com.graphbuilder.math.func.CoshFunction;
import com.graphbuilder.math.func.EFunction;
import com.graphbuilder.math.func.ExpFunction;
import com.graphbuilder.math.func.FactFunction;
import com.graphbuilder.math.func.FloorFunction;
import com.graphbuilder.math.func.Function;
import com.graphbuilder.math.func.LgFunction;
import com.graphbuilder.math.func.LnFunction;
import com.graphbuilder.math.func.LogFunction;
import com.graphbuilder.math.func.MaxFunction;
import com.graphbuilder.math.func.MinFunction;
import com.graphbuilder.math.func.ModFunction;
import com.graphbuilder.math.func.PiFunction;
import com.graphbuilder.math.func.PowFunction;
import com.graphbuilder.math.func.RandFunction;
import com.graphbuilder.math.func.RoundFunction;
import com.graphbuilder.math.func.SignFunction;
import com.graphbuilder.math.func.SinFunction;
import com.graphbuilder.math.func.SinhFunction;
import com.graphbuilder.math.func.SqrtFunction;
import com.graphbuilder.math.func.SumFunction;
import com.graphbuilder.math.func.TanFunction;
import com.graphbuilder.math.func.TanhFunction;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import org.apache.commons.math3.dfp.Dfp;
import org.apache.commons.math3.dfp.DfpMath;

/* loaded from: classes4.dex */
public class FuncMap {

    /* renamed from: a */
    public String[] f38855a;

    /* renamed from: b */
    public Function[] f38856b;

    /* renamed from: c */
    public int f38857c;

    /* renamed from: d */
    public boolean f38858d;

    public FuncMap() {
        this.f38855a = new String[50];
        this.f38856b = new Function[50];
        this.f38857c = 0;
        this.f38858d = false;
    }

    public Function getFunction(String str, int i) {
        for (int i2 = 0; i2 < this.f38857c; i2++) {
            if (this.f38856b[i2].acceptNumParam(i) && ((this.f38858d && this.f38855a[i2].equals(str)) || (!this.f38858d && this.f38855a[i2].equalsIgnoreCase(str)))) {
                return this.f38856b[i2];
            }
        }
        throw new RuntimeException("function not found: " + str + " " + i);
    }

    public String[] getFunctionNames() {
        int i = this.f38857c;
        String[] strArr = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            strArr[i2] = this.f38855a[i2];
        }
        return strArr;
    }

    public Function[] getFunctions() {
        int i = this.f38857c;
        Function[] functionArr = new Function[i];
        for (int i2 = 0; i2 < i; i2++) {
            functionArr[i2] = this.f38856b[i2];
        }
        return functionArr;
    }

    public boolean isCaseSensitive() {
        return this.f38858d;
    }

    public void loadDefaultFunctions() {
        setFunction("min", new MinFunction());
        setFunction("max", new MaxFunction());
        setFunction(Keywords.FUNC_SUM_STRING, new SumFunction());
        setFunction("avg", new AvgFunction());
        setFunction(Constants.ELEMNAME_PI_OLD_STRING, new PiFunction());
        setFunction("e", new EFunction());
        setFunction("rand", new RandFunction());
        setFunction("sin", new SinFunction());
        setFunction("cos", new CosFunction());
        setFunction("tan", new TanFunction());
        setFunction(Dfp.f108012l, new SqrtFunction());
        setFunction("abs", new AbsFunction());
        setFunction("ceil", new CeilFunction());
        setFunction(Keywords.FUNC_FLOOR_STRING, new FloorFunction());
        setFunction("exp", new ExpFunction());
        setFunction("lg", new LgFunction());
        setFunction("ln", new LnFunction());
        setFunction("sign", new SignFunction());
        setFunction(Keywords.FUNC_ROUND_STRING, new RoundFunction());
        setFunction("fact", new FactFunction());
        setFunction("cosh", new CoshFunction());
        setFunction("sinh", new SinhFunction());
        setFunction("tanh", new TanhFunction());
        setFunction("acos", new AcosFunction());
        setFunction("asin", new AsinFunction());
        setFunction("atan", new AtanFunction());
        setFunction("acosh", new AcoshFunction());
        setFunction("asinh", new AsinhFunction());
        setFunction("atanh", new AtanhFunction());
        setFunction(DfpMath.f108051a, new PowFunction());
        setFunction("mod", new ModFunction());
        setFunction("combin", new CombinFunction());
        setFunction("log", new LogFunction());
    }

    public void remove(String str) {
        int i = 0;
        while (i < this.f38857c) {
            if (!(this.f38858d && this.f38855a[i].equals(str)) && (this.f38858d || !this.f38855a[i].equalsIgnoreCase(str))) {
                i++;
            } else {
                while (true) {
                    i++;
                    int i2 = this.f38857c;
                    if (i >= i2) {
                        int i3 = i2 - 1;
                        this.f38857c = i3;
                        this.f38855a[i3] = null;
                        this.f38856b[i3] = null;
                        return;
                    }
                    String[] strArr = this.f38855a;
                    int i4 = i - 1;
                    strArr[i4] = strArr[i];
                    Function[] functionArr = this.f38856b;
                    functionArr[i4] = functionArr[i];
                }
            }
        }
    }

    public void setFunction(String str, Function function) {
        if (str == null) {
            throw new IllegalArgumentException("function name cannot be null");
        }
        if (function == null) {
            throw new IllegalArgumentException("function cannot be null");
        }
        int i = 0;
        while (true) {
            int i2 = this.f38857c;
            if (i >= i2) {
                if (i2 == this.f38855a.length) {
                    int i3 = i2 * 2;
                    String[] strArr = new String[i3];
                    Function[] functionArr = new Function[i3];
                    for (int i4 = 0; i4 < this.f38857c; i4++) {
                        strArr[i4] = this.f38855a[i4];
                        functionArr[i4] = this.f38856b[i4];
                    }
                    this.f38855a = strArr;
                    this.f38856b = functionArr;
                }
                String[] strArr2 = this.f38855a;
                int i5 = this.f38857c;
                strArr2[i5] = str;
                this.f38856b[i5] = function;
                this.f38857c = i5 + 1;
                return;
            }
            if ((!this.f38858d || !this.f38855a[i].equals(str)) && (this.f38858d || !this.f38855a[i].equalsIgnoreCase(str))) {
                i++;
            }
        }
        this.f38856b[i] = function;
    }

    public FuncMap(boolean z) {
        this.f38855a = new String[50];
        this.f38856b = new Function[50];
        this.f38857c = 0;
        this.f38858d = z;
    }
}
