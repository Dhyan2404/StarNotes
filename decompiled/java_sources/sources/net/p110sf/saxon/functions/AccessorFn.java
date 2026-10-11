package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;

/* loaded from: classes11.dex */
public abstract class AccessorFn extends ScalarSystemFunction {

    /* loaded from: classes11.dex */
    public enum Component {
        YEAR,
        MONTH,
        DAY,
        HOURS,
        MINUTES,
        SECONDS,
        TIMEZONE,
        LOCALNAME,
        NAMESPACE,
        PREFIX,
        MICROSECONDS,
        NANOSECONDS,
        WHOLE_SECONDS,
        YEAR_ALLOWING_ZERO
    }

    /* loaded from: classes11.dex */
    public static class DayFromDate extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.DAY;
        }
    }

    /* loaded from: classes11.dex */
    public static class DayFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.DAY;
        }
    }

    /* loaded from: classes11.dex */
    public static class DaysFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.DAY;
        }
    }

    /* loaded from: classes11.dex */
    public static class HoursFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.HOURS;
        }
    }

    /* loaded from: classes11.dex */
    public static class HoursFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.HOURS;
        }
    }

    /* loaded from: classes11.dex */
    public static class HoursFromTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.HOURS;
        }
    }

    /* loaded from: classes11.dex */
    public static class LocalNameFromQName extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.LOCALNAME;
        }
    }

    /* loaded from: classes11.dex */
    public static class MinutesFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MINUTES;
        }
    }

    /* loaded from: classes11.dex */
    public static class MinutesFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MINUTES;
        }
    }

    /* loaded from: classes11.dex */
    public static class MinutesFromTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MINUTES;
        }
    }

    /* loaded from: classes11.dex */
    public static class MonthFromDate extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MONTH;
        }
    }

    /* loaded from: classes11.dex */
    public static class MonthFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MONTH;
        }
    }

    /* loaded from: classes11.dex */
    public static class MonthsFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.MONTH;
        }
    }

    /* loaded from: classes11.dex */
    public static class NamespaceUriFromQName extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.NAMESPACE;
        }
    }

    /* loaded from: classes11.dex */
    public static class PrefixFromQName extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.PREFIX;
        }
    }

    /* loaded from: classes11.dex */
    public static class SecondsFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.SECONDS;
        }
    }

    /* loaded from: classes11.dex */
    public static class SecondsFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.SECONDS;
        }
    }

    /* loaded from: classes11.dex */
    public static class SecondsFromTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.SECONDS;
        }
    }

    /* loaded from: classes11.dex */
    public static class TimezoneFromDate extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.TIMEZONE;
        }
    }

    /* loaded from: classes11.dex */
    public static class TimezoneFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.TIMEZONE;
        }
    }

    /* loaded from: classes11.dex */
    public static class TimezoneFromTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.TIMEZONE;
        }
    }

    /* loaded from: classes11.dex */
    public static class YearFromDate extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.YEAR;
        }
    }

    /* loaded from: classes11.dex */
    public static class YearFromDateTime extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.YEAR;
        }
    }

    /* loaded from: classes11.dex */
    public static class YearsFromDuration extends AccessorFn {
        @Override // net.p110sf.saxon.functions.AccessorFn
        public Component getComponentId() {
            return Component.YEAR;
        }
    }

    /* renamed from: net.sf.saxon.functions.AccessorFn$a */
    /* loaded from: classes11.dex */
    public static /* synthetic */ class C18336a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f100132a;

        static {
            int[] iArr = new int[Component.values().length];
            f100132a = iArr;
            try {
                iArr[Component.YEAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f100132a[Component.MONTH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f100132a[Component.DAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f100132a[Component.HOURS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f100132a[Component.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f100132a[Component.SECONDS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    @Override // net.p110sf.saxon.functions.ScalarSystemFunction
    public AtomicValue evaluate(Item item, XPathContext xPathContext) throws XPathException {
        return ((AtomicValue) item).getComponent(getComponentId());
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public String getCompilerName() {
        return "AccessorFnCompiler";
    }

    public abstract Component getComponentId();

    @Override // net.p110sf.saxon.functions.SystemFunction
    public IntegerValue[] getIntegerBounds() {
        switch (C18336a.f100132a[getComponentId().ordinal()]) {
            case 1:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-100000L), Int64Value.makeIntegerValue(100000L)};
            case 2:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-11L), Int64Value.makeIntegerValue(11L)};
            case 3:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-31L), Int64Value.makeIntegerValue(31L)};
            case 4:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-24L), Int64Value.makeIntegerValue(24L)};
            case 5:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-59L), Int64Value.makeIntegerValue(59L)};
            case 6:
                return new IntegerValue[]{Int64Value.makeIntegerValue(-59L), Int64Value.makeIntegerValue(59L)};
            default:
                return null;
        }
    }
}
