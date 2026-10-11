package net.p110sf.saxon.functions;

import java.io.File;
import java.io.FileInputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import net.p110sf.saxon.Controller;
import net.p110sf.saxon.event.Outputter;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.expr.parser.Loc;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.om.Sequence;
import net.p110sf.saxon.om.SequenceTool;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.XPathException;
import net.p110sf.saxon.value.StringValue;

/* loaded from: classes11.dex */
public class UnparsedText extends UnparsedTextFunction implements PushableFunction {

    /* renamed from: h */
    public static final int f100360h = 0;

    public static StringValue evalUnparsedText(StringValue stringValue, String str, String str2, XPathContext xPathContext) throws XPathException {
        UnicodeString tidy;
        UnicodeString unicodeString;
        boolean booleanProperty = xPathContext.getConfiguration().getBooleanProperty(Feature.STABLE_UNPARSED_TEXT);
        XPathException xPathException = null;
        if (stringValue == null) {
            return null;
        }
        try {
            URI absoluteURI = UnparsedTextFunction.getAbsoluteURI(stringValue.getStringValue(), str, xPathContext);
            if (!booleanProperty) {
                UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
                UnparsedTextFunction.readFile(absoluteURI, str2, unicodeBuilder, xPathContext);
                return new StringValue(unicodeBuilder.toUnicodeString());
            }
            Controller controller = xPathContext.getController();
            synchronized (controller) {
                Map map = (Map) controller.getUserData("unparsed-text-cache", "");
                if (map != null && (unicodeString = (UnicodeString) map.get(absoluteURI)) != null) {
                    if (unicodeString.length() > 0 && unicodeString.codePointAt(0L) == 0) {
                        throw new XPathException(unicodeString.substring(1L).toString(), "FOUT1170");
                    }
                    return new StringValue(unicodeString);
                }
                try {
                    UnicodeBuilder unicodeBuilder2 = new UnicodeBuilder();
                    UnparsedTextFunction.readFile(absoluteURI, str2, unicodeBuilder2, xPathContext);
                    tidy = unicodeBuilder2.toUnicodeString();
                } catch (XPathException e) {
                    xPathException = e;
                    tidy = StringView.tidy(0 + xPathException.getMessage());
                }
                if (map == null) {
                    HashMap hashMap = new HashMap();
                    controller.setUserData("unparsed-text-cache", "", hashMap);
                    hashMap.put(absoluteURI, tidy);
                }
                if (xPathException == null) {
                    return new StringValue(tidy);
                }
                throw xPathException;
            }
        } catch (XPathException e2) {
            e2.maybeSetErrorCode("FOUT1170");
            throw e2;
        }
    }

    public static void main(String[] strArr) throws Exception {
        StringBuilder sb = new StringBuilder(256);
        StringBuilder sb2 = new StringBuilder(256);
        FileInputStream fileInputStream = new FileInputStream(new File(strArr[0]));
        while (true) {
            int read = fileInputStream.read();
            if (read < 0) {
                System.out.println(sb);
                System.out.println(sb2);
                fileInputStream.close();
                return;
            }
            sb.append(Integer.toHexString(read) + " ");
            sb2.append(((char) read) + " ");
            if (sb.length() > 80) {
                System.out.println(sb);
                System.out.println(sb2);
                sb = new StringBuilder(256);
                sb2 = new StringBuilder(256);
            }
        }
    }

    @Override // net.p110sf.saxon.expr.Callable
    public Sequence call(XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        try {
            return SequenceTool.itemOrEmpty(evalUnparsedText((StringValue) sequenceArr[0].head(), getStaticBaseUriString(), getArity() == 2 ? sequenceArr[1].head().getStringValue() : null, xPathContext));
        } catch (XPathException e) {
            if (e.getErrorCodeQName() == null) {
                e.setErrorCode("FOUT1170");
            }
            if (this.getArity() == 2 && e.getErrorCodeLocalPart().equals("FOUT1200")) {
                e.setErrorCode("FOUT1190");
            }
            throw e;
        }
    }

    @Override // net.p110sf.saxon.functions.PushableFunction
    public void process(Outputter outputter, XPathContext xPathContext, Sequence[] sequenceArr) throws XPathException {
        if (xPathContext.getConfiguration().getBooleanProperty(Feature.STABLE_UNPARSED_TEXT)) {
            StringValue stringValue = (StringValue) call(xPathContext, sequenceArr).head();
            if (stringValue != null) {
                outputter.m62516b(stringValue, Loc.NONE, 0);
                return;
            }
            return;
        }
        URI absoluteURI = UnparsedTextFunction.getAbsoluteURI(((StringValue) sequenceArr[0].head()).getStringValue(), getStaticBaseUriString(), xPathContext);
        String stringValue2 = getArity() == 2 ? sequenceArr[1].head().getStringValue() : null;
        UniStringConsumer stringReceiver = outputter.getStringReceiver(false, Loc.NONE);
        stringReceiver.open();
        try {
            UnparsedTextFunction.readFile(absoluteURI, stringValue2, stringReceiver, xPathContext);
            stringReceiver.close();
        } catch (XPathException e) {
            if (getArity() == 2 && e.getErrorCodeLocalPart().equals("FOUT1200")) {
                e.setErrorCode("FOUT1190");
            }
            throw e;
        }
    }
}
