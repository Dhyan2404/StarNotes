package net.p110sf.saxon.java;

import com.caverock.androidsvg.SVGParser;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.text.Collator;
import java.text.ParseException;
import java.text.RuleBasedCollator;
import java.util.Comparator;
import java.util.Locale;
import java.util.Properties;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.sort.AlphanumericCollator;
import net.p110sf.saxon.expr.sort.CaseFirstCollator;
import net.p110sf.saxon.expr.sort.CodepointCollator;
import net.p110sf.saxon.expr.sort.SimpleCollation;
import net.p110sf.saxon.lib.StringCollator;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class JavaCollationFactory {
    /* renamed from: a */
    public static Locale m63251a(String str) {
        String substring;
        int indexOf = str.indexOf("-");
        if (indexOf < 1) {
            substring = "";
        } else {
            String substring2 = str.substring(0, indexOf);
            substring = str.substring(indexOf + 1);
            str = substring2;
        }
        return new Locale(str, substring);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static StringCollator makeCollation(Configuration configuration, String str, Properties properties) throws XPathException {
        StringCollator stringCollator;
        boolean z;
        String property = properties.getProperty("class");
        Collator collator = null;
        if (property != null) {
            Object configuration2 = configuration.getInstance(property);
            if (configuration2 instanceof Collator) {
                collator = (Collator) configuration2;
                stringCollator = null;
            } else if (configuration2 instanceof StringCollator) {
                stringCollator = (StringCollator) configuration2;
            } else {
                if (!(configuration2 instanceof Comparator)) {
                    throw new XPathException("Requested collation class " + property + " is not a Comparator");
                }
                stringCollator = new SimpleCollation(str, (Comparator) configuration2);
            }
        } else {
            stringCollator = null;
        }
        if (collator == null && stringCollator == null) {
            String property2 = properties.getProperty("rules");
            if (property2 != null) {
                try {
                    collator = new RuleBasedCollator(property2);
                } catch (ParseException e) {
                    throw new XPathException("Invalid collation rules: " + e.getMessage());
                }
            }
            if (collator == null) {
                String property3 = properties.getProperty("lang");
                collator = property3 != null ? Collator.getInstance(m63251a(property3)) : Collator.getInstance();
            }
        }
        if (collator != null) {
            String property4 = properties.getProperty("strength");
            char c = 65535;
            if (property4 != null) {
                switch (property4.hashCode()) {
                    case -1174796206:
                        if (property4.equals("tertiary")) {
                            z = false;
                            break;
                        }
                        z = -1;
                        break;
                    case -817598092:
                        if (property4.equals("secondary")) {
                            z = true;
                            break;
                        }
                        z = -1;
                        break;
                    case -314765822:
                        if (property4.equals("primary")) {
                            z = 2;
                            break;
                        }
                        z = -1;
                        break;
                    case 86336693:
                        if (property4.equals("identical")) {
                            z = 3;
                            break;
                        }
                        z = -1;
                        break;
                    default:
                        z = -1;
                        break;
                }
                switch (z) {
                    case false:
                        collator.setStrength(2);
                        break;
                    case true:
                        collator.setStrength(1);
                        break;
                    case true:
                        collator.setStrength(0);
                        break;
                    case true:
                        collator.setStrength(3);
                        break;
                    default:
                        throw new XPathException("strength must be primary, secondary, tertiary, or identical");
                }
            }
            String property5 = properties.getProperty("ignore-width");
            if (property5 != null) {
                if (property5.equals("yes") && property4 == null) {
                    collator.setStrength(2);
                } else if (!property5.equals(SVGParser.f16048t)) {
                    throw new XPathException("ignore-width must be yes or no");
                }
            }
            String property6 = properties.getProperty("ignore-case");
            if (property6 != null && property4 == null && !property6.equals(SVGParser.f16048t)) {
                if (!property6.equals("yes")) {
                    throw new XPathException("ignore-case must be yes or no");
                }
                collator.setStrength(1);
            }
            String property7 = properties.getProperty("ignore-modifiers");
            if (property7 != null) {
                if (property7.equals("yes") && property4 == null) {
                    collator.setStrength(0);
                } else if (!property7.equals(SVGParser.f16048t)) {
                    throw new XPathException("ignore-modifiers must be yes or no");
                }
            }
            String property8 = properties.getProperty("decomposition");
            if (property8 != null) {
                switch (property8.hashCode()) {
                    case 3154575:
                        if (property8.equals("full")) {
                            c = 0;
                            break;
                        }
                        break;
                    case 3387192:
                        if (property8.equals("none")) {
                            c = 1;
                            break;
                        }
                        break;
                    case 1312628413:
                        if (property8.equals("standard")) {
                            c = 2;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        collator.setDecomposition(2);
                        break;
                    case 1:
                        collator.setDecomposition(0);
                        break;
                    case 2:
                        collator.setDecomposition(1);
                        break;
                    default:
                        throw new XPathException("decomposition must be none, standard, or full");
                }
            }
        }
        if (stringCollator == null) {
            stringCollator = new SimpleCollation(str, collator);
        }
        String property9 = properties.getProperty(Constants.ATTRNAME_CASEORDER);
        if (property9 != null && !"#default".equals(property9)) {
            if (collator != null) {
                collator.setStrength(1);
            }
            stringCollator = CaseFirstCollator.makeCaseOrderedCollator(str, stringCollator, property9);
        }
        String property10 = properties.getProperty("alphanumeric");
        if (property10 == null || SVGParser.f16048t.equals(property10)) {
            return stringCollator;
        }
        if (property10.equals("codepoint")) {
            return new AlphanumericCollator(CodepointCollator.getInstance());
        }
        if (property10.equals("yes")) {
            return new AlphanumericCollator(stringCollator);
        }
        throw new XPathException("alphanumeric must be yes, no, or codepoint");
    }
}
