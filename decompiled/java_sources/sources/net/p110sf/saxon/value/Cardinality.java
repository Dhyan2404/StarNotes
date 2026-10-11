package net.p110sf.saxon.value;

import net.p110sf.saxon.expr.Atomizer;
import net.p110sf.saxon.expr.Binding;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.FilterExpression;
import net.p110sf.saxon.expr.LetExpression;
import net.p110sf.saxon.expr.VariableReference;

/* loaded from: classes11.dex */
public final class Cardinality {
    /* renamed from: a */
    public static int m64651a(int i, int i2) {
        return (i == 0 ? 8192 : 0) + (i <= 1 || i2 <= 1 ? 16384 : 0) + (i2 > 1 ? 32768 : 0);
    }

    public static boolean allowsMany(int i) {
        return (i & 32768) != 0;
    }

    public static boolean allowsZero(int i) {
        return (i & 8192) != 0;
    }

    /* renamed from: b */
    public static int m64652b(int i) {
        if (allowsMany(i)) {
            return 2;
        }
        return i == 8192 ? 0 : 1;
    }

    /* renamed from: c */
    public static int m64653c(int i) {
        if (allowsZero(i)) {
            return 0;
        }
        return i == 32768 ? 2 : 1;
    }

    public static String describe(int i) {
        if (i == 8192) {
            return "exactly zero";
        }
        if (i == 16384) {
            return "exactly one";
        }
        if (i == 24576) {
            return "zero or one";
        }
        if (i == 32768) {
            return "more than one";
        }
        if (i == 49152) {
            return "one or more";
        }
        if (i == 57344) {
            return "zero or more";
        }
        return "code " + i;
    }

    public static boolean expectsMany(Expression expression) {
        if (expression instanceof VariableReference) {
            Binding binding = ((VariableReference) expression).getBinding();
            if (binding instanceof LetExpression) {
                return expectsMany(((LetExpression) binding).getSequence());
            }
        }
        return expression instanceof Atomizer ? expectsMany(((Atomizer) expression).getBaseExpression()) : expression instanceof FilterExpression ? expectsMany(((FilterExpression) expression).getSelectExpression()) : allowsMany(expression.getCardinality());
    }

    public static int fromOccurrenceIndicator(String str) {
        char c;
        int hashCode = str.hashCode();
        if (hashCode == 0) {
            if (str.equals("")) {
                c = 4;
            }
            c = 65535;
        } else if (hashCode == 63) {
            if (str.equals("?")) {
                c = 0;
            }
            c = 65535;
        } else if (hashCode == 176) {
            if (str.equals("°")) {
                c = 5;
            }
            c = 65535;
        } else if (hashCode == 42) {
            if (str.equals("*")) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode == 43) {
            if (str.equals("+")) {
                c = 2;
            }
            c = 65535;
        } else if (hashCode != 48) {
            if (hashCode == 49 && str.equals("1")) {
                c = 3;
            }
            c = 65535;
        } else {
            if (str.equals("0")) {
                c = 6;
            }
            c = 65535;
        }
        if (c == 0) {
            return 24576;
        }
        if (c == 1) {
            return 57344;
        }
        if (c != 2) {
            return (c == 3 || c == 4) ? 16384 : 8192;
        }
        return 49152;
    }

    public static String generateJavaScriptChecker(int i) {
        return (allowsZero(i) && allowsMany(i)) ? "function c() {return true;};" : i == 16384 ? "function c(n) {return n==1;};" : i == 8192 ? "function c(n) {return n==0;};" : !allowsZero(i) ? "function c(n) {return n>=1;};" : "function c(n) {return n<=1;};";
    }

    public static String getOccurrenceIndicator(int i) {
        return i != 8192 ? i != 16384 ? i != 24576 ? (i == 32768 || i == 49152) ? "+" : "*" : "?" : "" : "0";
    }

    public static int multiply(int i, int i2) {
        if (i == 8192 || i2 == 8192) {
            return 8192;
        }
        if (i2 == 16384) {
            return i;
        }
        if (i == 16384) {
            return i2;
        }
        if (i == 24576 && i2 == 24576) {
            return 24576;
        }
        return (i == 49152 && i2 == 49152) ? 49152 : 57344;
    }

    public static boolean subsumes(int i, int i2) {
        return (i2 | i) == i;
    }

    public static int sum(int i, int i2) {
        return m64651a(m64653c(i) + m64653c(i2), m64652b(i) + m64652b(i2));
    }

    public static int union(int i, int i2) {
        int i3 = i | i2;
        if (i3 == 40960) {
            return 57344;
        }
        return i3;
    }
}
