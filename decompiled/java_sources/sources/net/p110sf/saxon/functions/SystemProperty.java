package net.p110sf.saxon.functions;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import kotlinx.coroutines.DebugKt;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.Version;
import net.p110sf.saxon.expr.Callable;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.ContextItemStaticInfo;
import net.p110sf.saxon.expr.parser.ExpressionVisitor;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.query.XQueryParser;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class SystemProperty extends SystemFunction implements Callable {
    public static String getProperty(String str, String str2, RetainedStaticContext retainedStaticContext) {
        String property;
        Configuration configuration = retainedStaticContext.getConfiguration();
        String targetEdition = retainedStaticContext.getPackageData().getTargetEdition();
        if (!str.equals("http://www.w3.org/1999/XSL/Transform")) {
            return (str.isEmpty() && configuration.getBooleanProperty(Feature.ALLOW_EXTERNAL_FUNCTIONS) && (property = System.getProperty(str2)) != null) ? property : "";
        }
        str2.hashCode();
        boolean z = false;
        char c = 65535;
        switch (str2.hashCode()) {
            case -1915608999:
                if (str2.equals("supports-streaming")) {
                    c = 0;
                    break;
                }
                break;
            case -1725812932:
                if (str2.equals("supports-namespace-axis")) {
                    c = 1;
                    break;
                }
                break;
            case -1712941753:
                if (str2.equals("supports-higher-order-functions")) {
                    c = 2;
                    break;
                }
                break;
            case -1657695499:
                if (str2.equals("is-schema-aware")) {
                    c = 3;
                    break;
                }
                break;
            case -898172972:
                if (str2.equals("xsd-version")) {
                    c = 4;
                    break;
                }
                break;
            case -820075192:
                if (str2.equals("vendor")) {
                    c = 5;
                    break;
                }
                break;
            case -630621272:
                if (str2.equals("xpath-version")) {
                    c = 6;
                    break;
                }
                break;
            case -454573197:
                if (str2.equals("supports-dynamic-evaluation")) {
                    c = 7;
                    break;
                }
                break;
            case 351608024:
                if (str2.equals("version")) {
                    c = '\b';
                    break;
                }
                break;
            case 652222567:
                if (str2.equals("supports-serialization")) {
                    c = '\t';
                    break;
                }
                break;
            case 693173098:
                if (str2.equals("vendor-url")) {
                    c = '\n';
                    break;
                }
                break;
            case 968199337:
                if (str2.equals("product-name")) {
                    c = 11;
                    break;
                }
                break;
            case 1185271562:
                if (str2.equals("supports-backwards-compatibility")) {
                    c = '\f';
                    break;
                }
                break;
            case 1550806522:
                if (str2.equals("product-version")) {
                    c = '\r';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if ("EE".equals(targetEdition) && configuration.isLicensedFeature(2) && !((String) configuration.getConfigurationProperty(Feature.STREAMABILITY)).equals(DebugKt.DEBUG_PROPERTY_VALUE_OFF)) {
                    z = true;
                }
                return yesOrNo(z);
            case 1:
            case 2:
                return "yes";
            case 3:
                return yesOrNo(retainedStaticContext.getPackageData().isSchemaAware());
            case 4:
                return retainedStaticContext.getConfiguration().getXsdVersion() == 10 ? "1.0" : SerializerConstants.XMLVERSION11;
            case 5:
                return Version.getProductVendor();
            case 6:
                return XQueryParser.XQUERY31;
            case 7:
                return yesOrNo(!configuration.getBooleanProperty(Feature.DISABLE_XSL_EVALUATE));
            case '\b':
                return XQueryParser.XQUERY30;
            case '\t':
                return yesOrNo(!"JS".equals(targetEdition));
            case '\n':
                return Version.getWebSiteAddress();
            case 11:
                return Version.getProductName();
            case '\f':
                return "yes";
            case '\r':
                return Version.getProductVariantAndVersion(targetEdition);
            default:
                return "";
        }
    }

    public static String yesOrNo(boolean z) {
        return z ? "yes" : SVGParser.f16048t;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public Expression makeOptimizedFunctionCall(ExpressionVisitor expressionVisitor, ContextItemStaticInfo contextItemStaticInfo, Expression... expressionArr) throws XPathException {
        if (!(expressionArr[0] instanceof StringLiteral) || !expressionVisitor.getTargetEdition().equals(expressionVisitor.getConfiguration().getEditionCode())) {
            return null;
        }
        try {
            StructuredQName fromLexicalQName = StructuredQName.fromLexicalQName(((StringLiteral) expressionArr[0]).stringify(), false, true, getRetainedStaticContext());
            String uri = fromLexicalQName.getURI();
            String localPart = fromLexicalQName.getLocalPart();
            if (!uri.equals("http://www.w3.org/1999/XSL/Transform")) {
                return null;
            }
            if (localPart.equals("version") || localPart.equals("vendor") || localPart.equals("vendor-url") || localPart.equals("product-name") || localPart.equals("product-version") || localPart.equals("supports-backwards-compatibility") || localPart.equals("xpath-version") || localPart.equals("xsd-version")) {
                return new StringLiteral(getProperty(uri, localPart, getRetainedStaticContext()));
            }
            return null;
        } catch (XPathException unused) {
            return null;
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public StringValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        try {
            StructuredQName fromLexicalQName = StructuredQName.fromLexicalQName(sequenceArr[0].head().getStringValue(), false, true, getRetainedStaticContext());
            return new StringValue(getProperty(fromLexicalQName.getURI(), fromLexicalQName.getLocalPart(), getRetainedStaticContext()));
        } catch (XPathException e) {
            throw new XPathException("Invalid system property name. " + e.getMessage(), "XTDE1390", xPathContext);
        }
    }
}
