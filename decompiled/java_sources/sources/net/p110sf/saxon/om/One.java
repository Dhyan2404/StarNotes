package net.p110sf.saxon.om;

import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.value.BooleanValue;
import net.p110sf.saxon.value.DoubleValue;
import net.p110sf.saxon.value.Int64Value;
import net.p110sf.saxon.value.IntegerValue;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class One<T extends Item> extends ZeroOrOne<T> {
    public One(T t) {
        super(t);
        t.getClass();
    }

    public static One<BooleanValue> bool(boolean z) {
        return new One<>(BooleanValue.get(z));
    }

    public static One<DoubleValue> dbl(double d) {
        return new One<>(new DoubleValue(d));
    }

    public static One<IntegerValue> integer(long j) {
        return new One<>(new Int64Value(j));
    }

    public static One<StringValue> string(String str) {
        return new One<>(new StringValue(str));
    }

    public static One<StringValue> string(UnicodeString unicodeString) {
        return new One<>(new StringValue(unicodeString));
    }
}
