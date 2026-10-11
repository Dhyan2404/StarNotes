package org.apache.poi.ss.formula;

import org.apache.poi.util.Internal;

@Internal
/* loaded from: classes13.dex */
enum OperatorEnum {
    NO_COMPARISON(new CompareOp() { // from class: org.apache.poi.ss.formula.b
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean noComp;
            noComp = OperatorEnum.noComp(comparable, comparable2, comparable3);
            return noComp;
        }
    }, false),
    BETWEEN(new CompareOp() { // from class: org.apache.poi.ss.formula.c
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean between;
            between = OperatorEnum.between(comparable, comparable2, comparable3);
            return between;
        }
    }, false),
    NOT_BETWEEN(new CompareOp() { // from class: org.apache.poi.ss.formula.d
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean notBetween;
            notBetween = OperatorEnum.notBetween(comparable, comparable2, comparable3);
            return notBetween;
        }
    }, true),
    EQUAL(new CompareOp() { // from class: org.apache.poi.ss.formula.e
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean equalCheck;
            equalCheck = OperatorEnum.equalCheck(comparable, comparable2, comparable3);
            return equalCheck;
        }
    }, false),
    NOT_EQUAL(new CompareOp() { // from class: org.apache.poi.ss.formula.f
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean notEqual;
            notEqual = OperatorEnum.notEqual(comparable, comparable2, comparable3);
            return notEqual;
        }
    }, true),
    GREATER_THAN(new CompareOp() { // from class: org.apache.poi.ss.formula.g
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean greaterThan;
            greaterThan = OperatorEnum.greaterThan(comparable, comparable2, comparable3);
            return greaterThan;
        }
    }, false),
    LESS_THAN(new CompareOp() { // from class: org.apache.poi.ss.formula.h
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean lessThan;
            lessThan = OperatorEnum.lessThan(comparable, comparable2, comparable3);
            return lessThan;
        }
    }, false),
    GREATER_OR_EQUAL(new CompareOp() { // from class: org.apache.poi.ss.formula.i
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean greaterOrEqual;
            greaterOrEqual = OperatorEnum.greaterOrEqual(comparable, comparable2, comparable3);
            return greaterOrEqual;
        }
    }, false),
    LESS_OR_EQUAL(new CompareOp() { // from class: org.apache.poi.ss.formula.j
        @Override // org.apache.poi.ss.formula.OperatorEnum.CompareOp
        public final boolean isValid(Comparable comparable, Comparable comparable2, Comparable comparable3) {
            boolean lessOrEqual;
            lessOrEqual = OperatorEnum.lessOrEqual(comparable, comparable2, comparable3);
            return lessOrEqual;
        }
    }, false);

    private final CompareOp compareOp;
    private final boolean validForIncompatibleTypes;

    /* loaded from: classes13.dex */
    public interface CompareOp {
        <C extends Comparable<C>> boolean isValid(C c, C c2, C c3);
    }

    OperatorEnum(CompareOp compareOp, boolean z) {
        this.compareOp = compareOp;
        this.validForIncompatibleTypes = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean between(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) >= 0 && c.compareTo(c3) <= 0;
        }
        if (c instanceof Number) {
            Number number = (Number) c;
            return Double.compare(number.doubleValue(), 0.0d) >= 0 && Double.compare(number.doubleValue(), c3 == 0 ? 0.0d : ((Number) c3).doubleValue()) <= 0;
        }
        if (c instanceof String) {
            String str = (String) c;
            return str.compareToIgnoreCase("") >= 0 && str.compareToIgnoreCase(c3 == 0 ? "" : (String) c3) <= 0;
        }
        boolean z = c instanceof Boolean;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean equalCheck(C c, C c2, C c3) {
        if (c2 != null) {
            return c instanceof String ? c.toString().compareToIgnoreCase(c2.toString()) == 0 : c.compareTo(c2) == 0;
        }
        if (c instanceof Number) {
            return Double.compare(((Number) c).doubleValue(), 0.0d) == 0;
        }
        if (c instanceof String) {
            return false;
        }
        boolean z = c instanceof Boolean;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean greaterOrEqual(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) >= 0;
        }
        if (c instanceof Number) {
            return Double.compare(((Number) c).doubleValue(), 0.0d) >= 0;
        }
        if (c instanceof String) {
            return true;
        }
        return c instanceof Boolean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean greaterThan(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) > 0;
        }
        if (c instanceof Number) {
            return Double.compare(((Number) c).doubleValue(), 0.0d) > 0;
        }
        if (c instanceof String) {
            return true;
        }
        return c instanceof Boolean;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean lessOrEqual(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) <= 0;
        }
        if (c instanceof Number) {
            return Double.compare(((Number) c).doubleValue(), 0.0d) <= 0;
        }
        if (c instanceof String) {
            return false;
        }
        boolean z = c instanceof Boolean;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean lessThan(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) < 0;
        }
        if (c instanceof Number) {
            return Double.compare(((Number) c).doubleValue(), 0.0d) < 0;
        }
        if (c instanceof String) {
            return false;
        }
        boolean z = c instanceof Boolean;
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <C extends Comparable<C>> boolean noComp(C c, C c2, C c3) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static <C extends Comparable<C>> boolean notBetween(C c, C c2, C c3) {
        if (c2 != null) {
            return c.compareTo(c2) < 0 || c.compareTo(c3) > 0;
        }
        if (c instanceof Number) {
            Number number = (Number) c;
            return Double.compare(number.doubleValue(), 0.0d) < 0 || Double.compare(number.doubleValue(), c3 == 0 ? 0.0d : ((Number) c3).doubleValue()) > 0;
        }
        if (!(c instanceof String)) {
            return c instanceof Boolean;
        }
        String str = (String) c;
        return str.compareToIgnoreCase("") < 0 || str.compareToIgnoreCase(c3 == 0 ? "" : (String) c3) > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <C extends Comparable<C>> boolean notEqual(C c, C c2, C c3) {
        if (c2 == null) {
            return true;
        }
        return c instanceof String ? c.toString().compareToIgnoreCase(c2.toString()) == 0 : c.compareTo(c2) != 0;
    }

    public <C extends Comparable<C>> boolean isValid(C c, C c2, C c3) {
        return this.compareOp.isValid(c, c2, c3);
    }

    public boolean isValidForIncompatibleTypes() {
        return this.validForIncompatibleTypes;
    }
}
