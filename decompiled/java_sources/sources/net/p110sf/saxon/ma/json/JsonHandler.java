package net.p110sf.saxon.ma.json;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.Map;
import java.util.function.IntPredicate;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.functions.SystemFunction;
import net.p110sf.saxon.ma.json.JsonHandler;
import net.p110sf.saxon.om.Function;
import net.p110sf.saxon.om.Item;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.type.SpecificFunctionType;
import net.p110sf.saxon.value.AtomicValue;
import net.p110sf.saxon.value.SequenceType;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class JsonHandler {

    /* renamed from: c */
    public static final String f100617c = "�";

    /* renamed from: a */
    public XPathContext f100618a;

    /* renamed from: b */
    public Function f100619b = null;
    protected IntPredicateProxy charChecker;
    public boolean escape;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ boolean m63308b(int i) {
        return (i >= 0 && i <= 31) || (i >= 127 && i <= 159) || !this.charChecker.test(i) || i == 92;
    }

    /* renamed from: c */
    public final String m63309c(String str, XPathContext xPathContext) throws XPathException {
        if (this.f100619b == null) {
            return f100617c;
        }
        Item head = SystemFunction.dynamicCall(this.f100619b, xPathContext, new Sequence[]{new StringValue(str)}).head().head();
        return head == null ? "" : head.getStringValue();
    }

    /* renamed from: d */
    public final void m63310d(StringBuilder sb, int i, int i2, XPathContext xPathContext) throws XPathException {
        StringBuilder sb2 = new StringBuilder(i2 * 6);
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            sb2.append("\\u");
            StringBuilder sb3 = new StringBuilder(Integer.toHexString(sb.charAt(i + i4)));
            while (sb3.length() < 4) {
                sb3.insert(0, "0");
            }
            sb2.append(sb3.toString().toUpperCase());
        }
        String m63309c = m63309c(sb2.toString(), xPathContext);
        if (m63309c.length() == i2) {
            while (i3 < i2) {
                sb.setCharAt(i + i3, m63309c.charAt(i3));
                i3++;
            }
            return;
        }
        for (int i5 = 0; i5 < i2; i5++) {
            sb.deleteCharAt(i + i5);
        }
        while (i3 < m63309c.length()) {
            sb.insert(i + i3, m63309c.charAt(i3));
            i3++;
        }
    }

    public void endArray() throws XPathException {
    }

    public void endMap() throws XPathException {
    }

    public XPathContext getContext() {
        return this.f100618a;
    }

    public Sequence getResult() throws XPathException {
        return null;
    }

    public void handleInvalidCharacters(StringBuilder sb) throws XPathException {
        IntPredicateProxy validCharacterChecker = this.f100618a.getConfiguration().getValidCharacterChecker();
        for (int i = 0; i < sb.length(); i++) {
            char charAt = sb.charAt(i);
            if (UTF16CharacterSet.isHighSurrogate(charAt)) {
                int i2 = i + 1;
                if (i2 >= sb.length() || !UTF16CharacterSet.isLowSurrogate(sb.charAt(i2))) {
                    m63310d(sb, i, 1, this.f100618a);
                }
            } else if (UTF16CharacterSet.isLowSurrogate(charAt)) {
                if (i != 0) {
                    int i3 = i - 1;
                    if (UTF16CharacterSet.isHighSurrogate(sb.charAt(i3))) {
                        if (!validCharacterChecker.test(UTF16CharacterSet.combinePair(sb.charAt(i3), charAt))) {
                            m63310d(sb, i3, 2, this.f100618a);
                        }
                    }
                }
                m63310d(sb, i, 1, this.f100618a);
            } else if (!validCharacterChecker.test(charAt)) {
                m63310d(sb, i, 1, this.f100618a);
            }
        }
    }

    public void markAsEscaped(String str, boolean z) throws XPathException {
    }

    public String reEscape(String str) throws XPathException {
        if (this.escape) {
            return JsonReceiver.escape(str, true, new IntPredicate() { // from class: com.sunia.HTREnginev2.tri
                @Override // java.util.function.IntPredicate
                public final boolean test(int i) {
                    boolean m63308b;
                    m63308b = JsonHandler.this.m63308b(i);
                    return m63308b;
                }
            });
        }
        StringBuilder sb = new StringBuilder(str);
        handleInvalidCharacters(sb);
        return sb.toString();
    }

    public void setContext(XPathContext xPathContext) {
        this.f100618a = xPathContext;
    }

    public void setFallbackFunction(Map<String, Sequence> map, XPathContext xPathContext) throws XPathException {
        Sequence sequence = map.get(Constants.ELEMNAME_FALLBACK_STRING);
        if (sequence != null) {
            Item head = sequence.head();
            if (!(head instanceof Function)) {
                throw new XPathException("Value of option 'fallback' is not a function", JsonParser.f100646f);
            }
            Function function = (Function) head;
            this.f100619b = function;
            if (function.getArity() != 1) {
                throw new XPathException("Fallback function must have arity=1", JsonParser.f100646f);
            }
            if (!new SpecificFunctionType(new SequenceType[]{SequenceType.SINGLE_STRING}, SequenceType.ANY_SEQUENCE).matches(this.f100619b, xPathContext.getConfiguration().getTypeHierarchy())) {
                throw new XPathException("Fallback function does not match the required type", JsonParser.f100646f);
            }
        }
    }

    public boolean setKey(String str, String str2) {
        return false;
    }

    public void startArray() throws XPathException {
    }

    public void startMap() throws XPathException {
    }

    public void writeBoolean(boolean z) throws XPathException {
    }

    public void writeNull() throws XPathException {
    }

    public void writeNumeric(String str, AtomicValue atomicValue) throws XPathException {
    }

    public void writeString(String str) throws XPathException {
    }
}
