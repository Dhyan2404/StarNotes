package net.p110sf.saxon.functions;

import java.util.Optional;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.EnvironmentVariableResolver;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.EmptySequence;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class EnvironmentVariable extends SystemFunction {
    /* renamed from: a */
    public static Optional<StringValue> m62983a(StringValue stringValue, XPathContext xPathContext) {
        EnvironmentVariableResolver environmentVariableResolver = (EnvironmentVariableResolver) xPathContext.getConfiguration().getConfigurationProperty(Feature.ENVIRONMENT_VARIABLE_RESOLVER);
        String stringValue2 = stringValue.getStringValue();
        String str = "";
        if (xPathContext.getConfiguration().getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS)) {
            try {
                str = environmentVariableResolver.getEnvironmentVariable(stringValue2);
                if (str == null) {
                    return Optional.empty();
                }
            } catch (NullPointerException | SecurityException unused) {
            }
        }
        return Optional.of(new StringValue(str));
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        Optional<StringValue> m62983a = m62983a((StringValue) sequenceArr[0].head(), xPathContext);
        return m62983a.isPresent() ? m62983a.get() : EmptySequence.getInstance();
    }
}
