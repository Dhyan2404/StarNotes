package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.util.FastMath;

/* loaded from: classes12.dex */
public abstract class BaseSecantSolver extends AbstractUnivariateSolver implements BracketedUnivariateSolver<UnivariateFunction> {
    protected static final double DEFAULT_ABSOLUTE_ACCURACY = 1.0E-6d;

    /* renamed from: k */
    public AllowedSolution f107962k;

    /* renamed from: l */
    public final Method f107963l;

    /* loaded from: classes12.dex */
    public enum Method {
        REGULA_FALSI,
        ILLINOIS,
        PEGASUS
    }

    /* renamed from: org.apache.commons.math3.analysis.solvers.BaseSecantSolver$a */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19067a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f107964a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f107965b;

        static {
            int[] iArr = new int[AllowedSolution.values().length];
            f107965b = iArr;
            try {
                iArr[AllowedSolution.ANY_SIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f107965b[AllowedSolution.LEFT_SIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f107965b[AllowedSolution.RIGHT_SIDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f107965b[AllowedSolution.BELOW_SIDE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f107965b[AllowedSolution.ABOVE_SIDE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            int[] iArr2 = new int[Method.values().length];
            f107964a = iArr2;
            try {
                iArr2[Method.ILLINOIS.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f107964a[Method.PEGASUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f107964a[Method.REGULA_FALSI.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public BaseSecantSolver(double d, Method method) {
        super(d);
        this.f107962k = AllowedSolution.ANY_SIDE;
        this.f107963l = method;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver
    public final double doSolve() throws ConvergenceException {
        double d;
        double min = getMin();
        double max = getMax();
        double computeObjectiveValue = computeObjectiveValue(min);
        double computeObjectiveValue2 = computeObjectiveValue(max);
        double d2 = 0.0d;
        if (computeObjectiveValue == 0.0d) {
            return min;
        }
        if (computeObjectiveValue2 == 0.0d) {
            return max;
        }
        verifyBracketing(min, max);
        double functionValueAccuracy = getFunctionValueAccuracy();
        double absoluteAccuracy = getAbsoluteAccuracy();
        double relativeAccuracy = getRelativeAccuracy();
        boolean z = false;
        while (true) {
            double d3 = min;
            d = max - (((max - min) * computeObjectiveValue2) / (computeObjectiveValue2 - computeObjectiveValue));
            double computeObjectiveValue3 = computeObjectiveValue(d);
            if (computeObjectiveValue3 == d2) {
                return d;
            }
            if (computeObjectiveValue2 * computeObjectiveValue3 < d2) {
                d3 = max;
                z = !z;
                computeObjectiveValue = computeObjectiveValue2;
            } else {
                int i = C19067a.f107964a[this.f107963l.ordinal()];
                if (i == 1) {
                    computeObjectiveValue *= 0.5d;
                } else if (i == 2) {
                    computeObjectiveValue *= computeObjectiveValue2 / (computeObjectiveValue2 + computeObjectiveValue3);
                } else {
                    if (i != 3) {
                        throw new MathInternalError();
                    }
                    if (d == max) {
                        throw new ConvergenceException();
                    }
                }
            }
            if (FastMath.abs(computeObjectiveValue3) <= functionValueAccuracy) {
                int i2 = C19067a.f107965b[this.f107962k.ordinal()];
                if (i2 != 1) {
                    if (i2 == 2) {
                        if (z) {
                            break;
                        }
                    } else if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 != 5) {
                                throw new MathInternalError();
                            }
                            if (computeObjectiveValue3 >= d2) {
                                return d;
                            }
                        } else if (computeObjectiveValue3 <= 0.0d) {
                            return d;
                        }
                    } else if (!z) {
                        return d;
                    }
                } else {
                    break;
                }
            }
            double d4 = computeObjectiveValue;
            if (FastMath.abs(d - d3) < FastMath.max(relativeAccuracy * FastMath.abs(d), absoluteAccuracy)) {
                int i3 = C19067a.f107965b[this.f107962k.ordinal()];
                if (i3 == 1) {
                    return d;
                }
                if (i3 == 2) {
                    return z ? d : d3;
                }
                if (i3 == 3) {
                    return z ? d3 : d;
                }
                if (i3 == 4) {
                    return computeObjectiveValue3 <= 0.0d ? d : d3;
                }
                if (i3 == 5) {
                    return computeObjectiveValue3 >= d2 ? d : d3;
                }
                throw new MathInternalError();
            }
            max = d;
            computeObjectiveValue2 = computeObjectiveValue3;
            min = d3;
            computeObjectiveValue = d4;
            d2 = 0.0d;
        }
        return d;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, AllowedSolution allowedSolution) {
        return solve(i, univariateFunction, d, d2, d + ((d2 - d) * 0.5d), allowedSolution);
    }

    @Override // org.apache.commons.math3.analysis.solvers.BracketedUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, double d3, AllowedSolution allowedSolution) {
        this.f107962k = allowedSolution;
        return super.solve(i, (int) univariateFunction, d, d2, d3);
    }

    public BaseSecantSolver(double d, double d2, Method method) {
        super(d, d2);
        this.f107962k = AllowedSolution.ANY_SIDE;
        this.f107963l = method;
    }

    @Override // org.apache.commons.math3.analysis.solvers.BaseAbstractUnivariateSolver, org.apache.commons.math3.analysis.solvers.BaseUnivariateSolver
    public double solve(int i, UnivariateFunction univariateFunction, double d, double d2, double d3) {
        return solve(i, univariateFunction, d, d2, d3, AllowedSolution.ANY_SIDE);
    }

    public BaseSecantSolver(double d, double d2, double d3, Method method) {
        super(d, d2, d3);
        this.f107962k = AllowedSolution.ANY_SIDE;
        this.f107963l = method;
    }
}
