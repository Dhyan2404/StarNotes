package net.p110sf.saxon.functions;

import com.caverock.androidsvg.SVGParser;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.utils.AliYunConstant;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.Optional;
import java.util.StringTokenizer;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.lib.ParseOptions;
import net.p110sf.saxon.lib.Validation;
import net.p110sf.saxon.om.AllElementsSpaceStrippingRule;
import net.p110sf.saxon.om.IgnorableSpaceStrippingRule;
import net.p110sf.saxon.om.NoElementsSpaceStrippingRule;
import net.p110sf.saxon.om.SpaceStrippingRule;
import net.p110sf.saxon.regex.ARegularExpression;
import net.p110sf.saxon.regex.JavaRegularExpression;
import net.p110sf.saxon.regex.RegularExpression;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.trans.Instantiator;
import net.p110sf.saxon.trans.Maker;
import net.p110sf.saxon.trans.XPathException;
import org.xml.sax.XMLReader;
import org.xmlresolver.cache.ResourceCache;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes11.dex */
public class URIQueryParameters {
    public static final int ON_ERROR_FAIL = 1;
    public static final int ON_ERROR_IGNORE = 3;
    public static final int ON_ERROR_WARNING = 2;

    /* renamed from: a */
    public Optional<FilenameFilter> f100349a = Optional.empty();

    /* renamed from: b */
    public Optional<Boolean> f100350b = Optional.empty();

    /* renamed from: c */
    public Optional<Integer> f100351c = Optional.empty();

    /* renamed from: d */
    public Optional<SpaceStrippingRule> f100352d = Optional.empty();

    /* renamed from: e */
    public Optional<Integer> f100353e = Optional.empty();

    /* renamed from: f */
    public Optional<Boolean> f100354f = Optional.empty();

    /* renamed from: g */
    public Optional<Boolean> f100355g = Optional.empty();

    /* renamed from: h */
    public Optional<Boolean> f100356h = Optional.empty();

    /* renamed from: i */
    public Optional<String> f100357i = Optional.empty();

    /* renamed from: j */
    public Optional<Maker<XMLReader>> f100358j = Optional.empty();

    /* loaded from: classes11.dex */
    public static class RegexFilter implements FilenameFilter {

        /* renamed from: e */
        public final RegularExpression f100359e;

        public RegexFilter(RegularExpression regularExpression) {
            this.f100359e = regularExpression;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return new File(file, str).isDirectory() || this.f100359e.matches(StringView.m63901of(str).tidy());
        }

        public boolean matches(String str) {
            return this.f100359e.matches(StringView.m63901of(str).tidy());
        }
    }

    public URIQueryParameters(String str, Configuration configuration) throws XPathException {
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ";&");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                int indexOf = nextToken.indexOf(61);
                if (indexOf > 0 && indexOf < nextToken.length() - 1) {
                    m63217a(configuration, nextToken.substring(0, indexOf), nextToken.substring(indexOf + 1));
                }
            }
        }
    }

    public static FilenameFilter makeGlobFilter(String str) throws XPathException {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        unicodeBuilder.append('^');
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == '.') {
                unicodeBuilder.appendLatin("\\.");
            } else if (charAt == '*') {
                unicodeBuilder.appendLatin(ResourceCache.defaultPattern);
            } else if (charAt == '?') {
                unicodeBuilder.appendLatin(".?");
            } else {
                unicodeBuilder.append(charAt);
            }
        }
        unicodeBuilder.append('$');
        try {
            return new RegexFilter(new JavaRegularExpression(unicodeBuilder.toUnicodeString(), ""));
        } catch (XPathException unused) {
            throw new XPathException("Invalid glob " + str + " in collection URI", "FODC0004");
        }
    }

    /* renamed from: a */
    public final void m63217a(Configuration configuration, String str, String str2) throws XPathException {
        if (str.equals("select")) {
            this.f100349a = Optional.of(makeGlobFilter(str2));
            return;
        }
        if (str.equals(Constants.ATTRNAME_MATCH)) {
            this.f100349a = Optional.of(new RegexFilter(new ARegularExpression(StringView.m63901of(str2).tidy(), "", "XP", new ArrayList(), configuration)));
            return;
        }
        if (str.equals("recurse")) {
            this.f100350b = Optional.of(Boolean.valueOf("yes".equals(str2)));
            return;
        }
        char c = 65535;
        if (str.equals("validation")) {
            int code = Validation.getCode(str2);
            if (code != -1) {
                this.f100351c = Optional.of(Integer.valueOf(code));
                return;
            }
            return;
        }
        if (str.equals(Constants.ELEMNAME_STRIPSPACE_STRING)) {
            str2.hashCode();
            switch (str2.hashCode()) {
                case 3521:
                    if (str2.equals(SVGParser.f16048t)) {
                        c = 0;
                        break;
                    }
                    break;
                case 119527:
                    if (str2.equals("yes")) {
                        c = 1;
                        break;
                    }
                    break;
                case 443942093:
                    if (str2.equals("ignorable")) {
                        c = 2;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.f100352d = Optional.of(NoElementsSpaceStrippingRule.getInstance());
                    return;
                case 1:
                    this.f100352d = Optional.of(AllElementsSpaceStrippingRule.getInstance());
                    return;
                case 2:
                    this.f100352d = Optional.of(IgnorableSpaceStrippingRule.getInstance());
                    return;
                default:
                    return;
            }
        }
        if (str.equals("stable")) {
            if (str2.equals("yes")) {
                this.f100355g = Optional.of(Boolean.TRUE);
                return;
            } else {
                if (str2.equals(SVGParser.f16048t)) {
                    this.f100355g = Optional.of(Boolean.FALSE);
                    return;
                }
                return;
            }
        }
        if (str.equals("metadata")) {
            if (str2.equals("yes")) {
                this.f100356h = Optional.of(Boolean.TRUE);
                return;
            } else {
                if (str2.equals(SVGParser.f16048t)) {
                    this.f100356h = Optional.of(Boolean.FALSE);
                    return;
                }
                return;
            }
        }
        if (str.equals("xinclude")) {
            if (str2.equals("yes")) {
                this.f100354f = Optional.of(Boolean.TRUE);
                return;
            } else {
                if (str2.equals(SVGParser.f16048t)) {
                    this.f100354f = Optional.of(Boolean.FALSE);
                    return;
                }
                return;
            }
        }
        if (str.equals("content-type")) {
            this.f100357i = Optional.of(str2);
            return;
        }
        if (!str.equals("on-error")) {
            if (!str.equals("parser") || configuration == null) {
                return;
            }
            this.f100358j = Optional.of(new Instantiator(str2, configuration));
            return;
        }
        str2.hashCode();
        switch (str2.hashCode()) {
            case -1190396462:
                if (str2.equals(AliYunConstant.CHECK_NAME_MODE_IGNORE)) {
                    c = 0;
                    break;
                }
                break;
            case 3135262:
                if (str2.equals(OneDriverConstants.CONFLICT_BEHAVIOR_FAIL)) {
                    c = 1;
                    break;
                }
                break;
            case 1124446108:
                if (str2.equals(AbstractLogger.WARNING)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                this.f100353e = Optional.of(3);
                return;
            case 1:
                this.f100353e = Optional.of(1);
                return;
            case 2:
                this.f100353e = Optional.of(2);
                return;
            default:
                return;
        }
    }

    public Optional<String> getContentType() {
        return this.f100357i;
    }

    public Optional<FilenameFilter> getFilenameFilter() {
        return this.f100349a;
    }

    public Optional<Boolean> getMetaData() {
        return this.f100356h;
    }

    public Optional<Integer> getOnError() {
        return this.f100353e;
    }

    public Optional<Boolean> getRecurse() {
        return this.f100350b;
    }

    public Optional<SpaceStrippingRule> getSpaceStrippingRule() {
        return this.f100352d;
    }

    public Optional<Boolean> getStable() {
        return this.f100355g;
    }

    public Optional<Integer> getValidationMode() {
        return this.f100351c;
    }

    public Optional<Boolean> getXInclude() {
        return this.f100354f;
    }

    public Optional<Maker<XMLReader>> getXMLReaderMaker() {
        return this.f100358j;
    }

    public ParseOptions makeParseOptions(Configuration configuration) throws XPathException {
        ParseOptions parseOptions = new ParseOptions();
        Optional<SpaceStrippingRule> spaceStrippingRule = getSpaceStrippingRule();
        if (spaceStrippingRule.isPresent()) {
            parseOptions.setSpaceStrippingRule(spaceStrippingRule.get());
        }
        Optional<Integer> validationMode = getValidationMode();
        if (validationMode.isPresent()) {
            parseOptions.setSchemaValidationMode(validationMode.get().intValue());
        }
        Optional<Boolean> xInclude = getXInclude();
        if (xInclude.isPresent()) {
            parseOptions.setXIncludeAware(xInclude.get().booleanValue());
        }
        return parseOptions;
    }
}
