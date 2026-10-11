package net.p110sf.saxon.expr;

import java.util.Set;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.parser.OptimizerOptions;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.functions.FunctionLibrary;
import net.p110sf.saxon.om.NamespaceResolver;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.s9api.Location;
import net.p110sf.saxon.s9api.UnprefixedElementMatchingPolicy;
import net.p110sf.saxon.trans.DecimalFormatManager;
import net.p110sf.saxon.trans.KeyManager;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ItemType;

/* loaded from: classes11.dex */
public interface StaticContext {
    Expression bindVariable(StructuredQName structuredQName) throws XPathException;

    Configuration getConfiguration();

    Location getContainingLocation();

    DecimalFormatManager getDecimalFormatManager();

    String getDefaultCollationName();

    String getDefaultElementNamespace();

    String getDefaultFunctionNamespace();

    FunctionLibrary getFunctionLibrary();

    Set<String> getImportedSchemaNamespaces();

    KeyManager getKeyManager();

    NamespaceResolver getNamespaceResolver();

    default OptimizerOptions getOptimizerOptions() {
        return getConfiguration().getOptimizerOptions();
    }

    PackageData getPackageData();

    ItemType getRequiredContextItemType();

    String getStaticBaseURI();

    String getSystemId();

    default UnprefixedElementMatchingPolicy getUnprefixedElementMatchingPolicy() {
        return UnprefixedElementMatchingPolicy.DEFAULT_NAMESPACE;
    }

    int getXPathVersion();

    boolean isImportedSchema(String str);

    boolean isInBackwardsCompatibleMode();

    void issueWarning(String str, Location location);

    XPathContext makeEarlyEvaluationContext();

    RetainedStaticContext makeRetainedStaticContext();

    ItemType resolveTypeAlias(StructuredQName structuredQName);
}
