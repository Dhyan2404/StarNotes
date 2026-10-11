package org.apache.commons.math3.dfp;

import org.apache.commons.math3.analysis.RealFieldUnivariateFunction;
import org.apache.commons.math3.analysis.solvers.AllowedSolution;
import org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathUtils;

@Deprecated
/* loaded from: classes12.dex */
public class BracketingNthOrderBrentSolverDFP extends FieldBracketingNthOrderBrentSolver<Dfp> {

    /* renamed from: org.apache.commons.math3.dfp.BracketingNthOrderBrentSolverDFP$a */
    /* loaded from: classes12.dex */
    public class C19074a implements RealFieldUnivariateFunction<Dfp> {

        /* renamed from: a */
        public final /* synthetic */ UnivariateDfpFunction f108004a;

        public C19074a(UnivariateDfpFunction univariateDfpFunction) {
            this.f108004a = univariateDfpFunction;
        }

        @Override // org.apache.commons.math3.analysis.RealFieldUnivariateFunction
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Dfp value(Dfp dfp) {
            return this.f108004a.value(dfp);
        }
    }

    public BracketingNthOrderBrentSolverDFP(Dfp dfp, Dfp dfp2, Dfp dfp3, int i) throws NumberIsTooSmallException {
        super(dfp, dfp2, dfp3, i);
    }

    public Dfp solve(int i, UnivariateDfpFunction univariateDfpFunction, Dfp dfp, Dfp dfp2, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        return solve(i, univariateDfpFunction, dfp, dfp2, dfp.add(dfp2).divide(2), allowedSolution);
    }

    @Override // org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver, org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public Dfp getAbsoluteAccuracy() {
        return (Dfp) super.getAbsoluteAccuracy();
    }

    @Override // org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver, org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public Dfp getFunctionValueAccuracy() {
        return (Dfp) super.getFunctionValueAccuracy();
    }

    @Override // org.apache.commons.math3.analysis.solvers.FieldBracketingNthOrderBrentSolver, org.apache.commons.math3.analysis.solvers.BracketedRealFieldUnivariateSolver
    public Dfp getRelativeAccuracy() {
        return (Dfp) super.getRelativeAccuracy();
    }

    public Dfp solve(int i, UnivariateDfpFunction univariateDfpFunction, Dfp dfp, Dfp dfp2, Dfp dfp3, AllowedSolution allowedSolution) throws NullArgumentException, NoBracketingException {
        MathUtils.checkNotNull(univariateDfpFunction);
        return solve(i, new C19074a(univariateDfpFunction), dfp, dfp2, dfp3, allowedSolution);
    }
}
