package io.opencensus.trace;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import io.opencensus.common.Function;
import io.opencensus.internal.Utils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes10.dex */
public abstract class AttributeValue {

    @Immutable
    /* renamed from: io.opencensus.trace.AttributeValue$a */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17191a extends AttributeValue {
        /* renamed from: a */
        public static AttributeValue m61049a(Boolean bool) {
            return new C17202a((Boolean) Utils.checkNotNull(bool, Constants.BOOLEAN_VALUE));
        }

        /* renamed from: b */
        public abstract Boolean mo61050b();

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<Object, T> function4) {
            return function2.apply(mo61050b());
        }

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<? super Double, T> function4, Function<Object, T> function5) {
            return function2.apply(mo61050b());
        }
    }

    @Immutable
    /* renamed from: io.opencensus.trace.AttributeValue$b */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17192b extends AttributeValue {
        /* renamed from: a */
        public static AttributeValue m61051a(Double d) {
            return new C17203b((Double) Utils.checkNotNull(d, Constants.DOUBLE_VALUE));
        }

        /* renamed from: b */
        public abstract Double mo61052b();

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<Object, T> function4) {
            return function4.apply(mo61052b());
        }

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<? super Double, T> function4, Function<Object, T> function5) {
            return function4.apply(mo61052b());
        }
    }

    @Immutable
    /* renamed from: io.opencensus.trace.AttributeValue$c */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17193c extends AttributeValue {
        /* renamed from: a */
        public static AttributeValue m61053a(Long l) {
            return new C17204c((Long) Utils.checkNotNull(l, "longValue"));
        }

        /* renamed from: b */
        public abstract Long mo61054b();

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<Object, T> function4) {
            return function3.apply(mo61054b());
        }

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<? super Double, T> function4, Function<Object, T> function5) {
            return function3.apply(mo61054b());
        }
    }

    @Immutable
    /* renamed from: io.opencensus.trace.AttributeValue$d */
    /* loaded from: classes10.dex */
    public static abstract class AbstractC17194d extends AttributeValue {
        /* renamed from: a */
        public static AttributeValue m61055a(String str) {
            return new C17208d((String) Utils.checkNotNull(str, "stringValue"));
        }

        /* renamed from: b */
        public abstract String mo61056b();

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<Object, T> function4) {
            return function.apply(mo61056b());
        }

        @Override // io.opencensus.trace.AttributeValue
        public final <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<? super Double, T> function4, Function<Object, T> function5) {
            return function.apply(mo61056b());
        }
    }

    public static AttributeValue booleanAttributeValue(boolean z) {
        return AbstractC17191a.m61049a(Boolean.valueOf(z));
    }

    public static AttributeValue doubleAttributeValue(double d) {
        return AbstractC17192b.m61051a(Double.valueOf(d));
    }

    public static AttributeValue longAttributeValue(long j) {
        return AbstractC17193c.m61053a(Long.valueOf(j));
    }

    public static AttributeValue stringAttributeValue(String str) {
        return AbstractC17194d.m61055a(str);
    }

    @Deprecated
    public abstract <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<Object, T> function4);

    public abstract <T> T match(Function<? super String, T> function, Function<? super Boolean, T> function2, Function<? super Long, T> function3, Function<? super Double, T> function4, Function<Object, T> function5);
}
