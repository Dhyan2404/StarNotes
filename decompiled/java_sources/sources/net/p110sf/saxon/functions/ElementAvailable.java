package net.p110sf.saxon.functions;

import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.StringLiteral;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.NamespaceConstant;
import net.p110sf.saxon.om.NameChecker;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.StructuredQName;
import net.p110sf.saxon.str.StringTool;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.BooleanValue;

/* loaded from: classes11.dex */
public class ElementAvailable extends SystemFunction {
    public static boolean isXslt30Element(int i) {
        switch (i) {
            case 128:
            case 129:
            case 130:
            case 131:
            case 132:
            case 133:
            case 136:
            case 137:
            case 138:
            case 139:
            case 140:
            case 141:
            case 142:
            case 143:
            case 144:
            case 145:
            case 146:
            case 147:
            case 148:
            case 150:
            case 151:
            case 152:
            case 153:
            case 154:
            case 155:
            case 156:
            case 159:
            case 160:
            case 161:
            case 162:
            case 163:
            case 164:
            case 165:
            case 166:
            case 168:
            case 169:
            case 170:
            case 171:
            case 172:
            case 173:
            case 174:
            case 175:
            case 176:
            case 178:
            case 179:
            case 180:
            case 181:
            case 182:
            case 183:
            case 184:
            case 185:
            case 186:
            case 187:
            case 188:
            case 189:
            case 190:
            case 191:
            case 192:
            case 193:
            case 194:
            case 195:
            case 198:
            case 199:
            case 200:
            case 201:
            case 202:
            case 203:
            case 204:
            case 205:
            case 208:
            case 209:
            case 210:
            case 211:
            case 212:
            case 213:
            case 214:
            case 215:
            case 218:
            case 219:
            case 220:
            case 221:
                return true;
            case 134:
            case 135:
            case 149:
            case 157:
            case 158:
            case 167:
            case 177:
            case 196:
            case 197:
            case 206:
            case 207:
            case 216:
            case 217:
            default:
                return false;
        }
    }

    public static boolean isXslt40Element(int i) {
        return isXslt30Element(i) || i == 134 || i == 135;
    }

    /* renamed from: a */
    public final StructuredQName m62980a(String str) throws XPathException {
        try {
            return NameChecker.isValidNCName(StringTool.codePoints(str)) ? new StructuredQName("", getRetainedStaticContext().getURIForPrefix("", true), str) : StructuredQName.fromLexicalQName(str, false, true, getRetainedStaticContext());
        } catch (XPathException e) {
            XPathException xPathException = new XPathException("Invalid element name passed to element-available(): " + e.getMessage());
            xPathException.setErrorCode("XTDE1440");
            throw xPathException;
        }
    }

    /* renamed from: b */
    public final boolean m62981b(String str, String str2, XPathContext xPathContext) throws XPathException {
        StructuredQName m62980a = m62980a(str);
        if (m62980a.hasURI("http://www.w3.org/1999/XSL/Transform")) {
            int fingerprint = xPathContext.getConfiguration().getNamePool().getFingerprint("http://www.w3.org/1999/XSL/Transform", m62980a.getLocalPart());
            return fingerprint == 153 ? !xPathContext.getConfiguration().getBooleanProperty(Feature.DISABLE_XSL_EVALUATE) : fingerprint == 164 ? xPathContext.getConfiguration().isLicensedFeature(1) && str2.equals("EE") : getRetainedStaticContext().getPackageData().getHostLanguageVersion() == 40 ? isXslt40Element(fingerprint) : isXslt30Element(fingerprint);
        }
        if (!m62980a.hasURI(NamespaceConstant.IXSL) || str2.equals("JS")) {
            return xPathContext.getConfiguration().isExtensionElementAvailable(m62980a);
        }
        return false;
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        try {
            Expression expression = expressionArr[0];
            if (expression instanceof StringLiteral) {
                StructuredQName m62980a = m62980a(((StringLiteral) expression).stringify());
                if (m62980a.hasURI("http://www.w3.org/1999/XSL/Transform") && m62980a.getLocalPart().equals("evaluate")) {
                    return super.getSpecialProperties(expressionArr) | 1024;
                }
            }
        } catch (XPathException unused) {
        }
        return super.getSpecialProperties(expressionArr);
    }

    @Override // net.p110sf.saxon.expr.Callable
    public BooleanValue call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        return BooleanValue.get(m62981b(sequenceArr[0].head().getStringValue(), getRetainedStaticContext().getPackageData().getTargetEdition(), xPathContext));
    }
}
