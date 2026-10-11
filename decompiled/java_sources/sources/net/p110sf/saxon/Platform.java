package net.p110sf.saxon;

import java.io.InputStream;
import java.util.List;
import java.util.Properties;
import javax.xml.transform.Source;
import net.p110sf.saxon.expr.StaticContext;
import net.p110sf.saxon.expr.parser.RetainedStaticContext;
import net.p110sf.saxon.expr.sort.AtomicMatchKey;
import net.p110sf.saxon.expr.sort.SimpleCollation;
import net.p110sf.saxon.lib.ActiveSource;
import net.p110sf.saxon.lib.IDynamicLoader;
import net.p110sf.saxon.lib.ModuleURIResolver;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.ExternalObjectType;
import org.xml.sax.XMLReader;

/* loaded from: classes11.dex */
public interface Platform {
    boolean JAXPStaticContextCheck(RetainedStaticContext retainedStaticContext, StaticContext staticContext);

    boolean canReturnCollationKeys(StringCollator stringCollator);

    RegularExpression compileRegularExpression(Configuration configuration, UnicodeString unicodeString, String str, String str2, List<String> list) throws XPathException;

    AtomicMatchKey getCollationKey(SimpleCollation simpleCollation, String str);

    String getDefaultCountry();

    IDynamicLoader getDefaultDynamicLoader();

    String getDefaultLanguage();

    ExternalObjectType getExternalObjectType(Configuration configuration, String str, String str2);

    String getInstallationDirectory(String str, Configuration configuration);

    String getPlatformSuffix();

    String getPlatformVersion();

    boolean hasICUCollator();

    boolean hasICUNumberer();

    void initialize(Configuration configuration);

    boolean isDotNet();

    boolean isJava();

    XMLReader loadParser();

    XMLReader loadParserForXmlFragments();

    InputStream locateResource(String str, List<String> list);

    StringCollator makeCollation(Configuration configuration, Properties properties, String str) throws XPathException;

    ModuleURIResolver makeStandardModuleURIResolver(Configuration configuration);

    StringCollator makeUcaCollator(String str, Configuration configuration) throws XPathException;

    void registerAllBuiltInObjectModels(Configuration configuration);

    ActiveSource resolveSource(Source source, Configuration configuration) throws XPathException;

    void setDefaultSAXParserFactory(Configuration configuration);

    default void showEmbeddedResources() {
    }
}
