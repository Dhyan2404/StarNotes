package net.p110sf.saxon.functions;

import java.io.IOException;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import javax.xml.transform.Source;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.Configuration;
import net.p110sf.saxon.expr.Expression;
import net.p110sf.saxon.expr.XPathContext;
import net.p110sf.saxon.lib.DirectResourceResolver;
import net.p110sf.saxon.lib.Feature;
import net.p110sf.saxon.lib.ResourceRequest;
import net.p110sf.saxon.lib.StandardUnparsedTextResolver;
import net.p110sf.saxon.p111z.IntPredicateProxy;
import net.p110sf.saxon.serialize.charcode.UTF16CharacterSet;
import net.p110sf.saxon.str.AbstractUniStringConsumer;
import net.p110sf.saxon.str.StringView;
import net.p110sf.saxon.str.Twine16;
import net.p110sf.saxon.str.Twine8;
import net.p110sf.saxon.str.UniStringConsumer;
import net.p110sf.saxon.str.UnicodeBuilder;
import net.p110sf.saxon.str.UnicodeString;
import net.p110sf.saxon.trans.Err;
import net.p110sf.saxon.trans.XPathException;

/* loaded from: classes11.dex */
public abstract class UnparsedTextFunction extends SystemFunction {

    /* renamed from: net.sf.saxon.functions.UnparsedTextFunction$a */
    /* loaded from: classes11.dex */
    public static class C18385a extends AbstractUniStringConsumer {

        /* renamed from: e */
        public final /* synthetic */ UnicodeBuilder f100361e;

        public C18385a(UnicodeBuilder unicodeBuilder) {
            this.f100361e = unicodeBuilder;
        }

        @Override // net.p110sf.saxon.str.UniStringConsumer
        public UniStringConsumer accept(UnicodeString unicodeString) {
            return this.f100361e.accept(unicodeString);
        }
    }

    /* renamed from: a */
    public static void m63218a(String str, String str2, URISyntaxException uRISyntaxException) throws XPathException {
        XPathException xPathException = new XPathException(uRISyntaxException.getReason() + ": " + uRISyntaxException.getInput(), uRISyntaxException);
        xPathException.setErrorCode("FOUT1170");
        throw xPathException;
    }

    /* renamed from: b */
    public static boolean m63219b(int i) {
        return i < 0;
    }

    public static URI getAbsoluteURI(String str, String str2, XPathContext xPathContext) throws XPathException {
        try {
            URI makeAbsolute = ResolveURI.makeAbsolute(str, str2);
            if (makeAbsolute.getFragment() == null) {
                EncodeForUri.checkPercentEncoding(makeAbsolute.toString());
                return makeAbsolute;
            }
            XPathException xPathException = new XPathException("URI for unparsed-text() must not contain a fragment identifier");
            xPathException.setErrorCode("FOUT1170");
            throw xPathException;
        } catch (URISyntaxException e) {
            m63218a(str, str2, e);
            return null;
        }
    }

    public static String getErrorCode(IOException iOException) {
        return ((iOException instanceof MalformedInputException) || (iOException instanceof UnmappableCharacterException) || (iOException instanceof CharacterCodingException)) ? "FOUT1200" : "FOUT1170";
    }

    public static XPathException handleIOError(URI uri, IOException iOException) {
        String str = "Failed to read input file";
        if (uri != null && !iOException.getMessage().equals(uri.toString())) {
            str = "Failed to read input file " + uri.toString();
        }
        XPathException xPathException = new XPathException(str + " (" + iOException.getClass().getName() + ')', iOException);
        xPathException.setErrorCode(getErrorCode(iOException));
        return xPathException;
    }

    public static void readFile(URI uri, String str, UniStringConsumer uniStringConsumer, XPathContext xPathContext) throws XPathException {
        Configuration configuration = xPathContext.getConfiguration();
        IntPredicateProxy validCharacterChecker = configuration.getValidCharacterChecker();
        try {
            Reader resolve = xPathContext.getController().getUnparsedTextURIResolver().resolve(uri, str, configuration);
            if (resolve == null) {
                ResourceRequest resourceRequest = new ResourceRequest();
                resourceRequest.uri = uri.toString();
                resourceRequest.nature = ResourceRequest.TEXT_NATURE;
                Source resolve2 = resourceRequest.resolve(configuration.getResourceResolver(), new DirectResourceResolver(configuration));
                if (resolve2 instanceof StreamSource) {
                    resolve = StandardUnparsedTextResolver.getReaderFromStreamSource((StreamSource) resolve2, str, configuration, false);
                } else {
                    throw new XPathException("unparsed-text(): resolver returned non-StreamSource");
                }
            }
            try {
                readFile(validCharacterChecker, resolve, uniStringConsumer);
            } catch (UnsupportedEncodingException e) {
                XPathException xPathException = new XPathException("Unknown encoding " + Err.wrap(str), e);
                xPathException.setErrorCode("FOUT1190");
                throw xPathException;
            } catch (IOException e2) {
                throw handleIOError(uri, e2);
            }
        } catch (XPathException e3) {
            e3.maybeSetErrorCode("FOUT1170");
            throw e3;
        }
    }

    @Override // net.p110sf.saxon.functions.SystemFunction
    public int getSpecialProperties(Expression[] expressionArr) {
        int specialProperties = super.getSpecialProperties(expressionArr);
        return getRetainedStaticContext().getConfiguration().getBooleanProperty(Feature.STABLE_UNPARSED_TEXT) ? specialProperties : (-8388609) & specialProperties;
    }

    public static UnicodeString readFile(IntPredicateProxy intPredicateProxy, Reader reader) throws IOException, XPathException {
        UnicodeBuilder unicodeBuilder = new UnicodeBuilder();
        readFile(intPredicateProxy, reader, new C18385a(unicodeBuilder));
        return unicodeBuilder.toUnicodeString();
    }

    public static void readFile(IntPredicateProxy intPredicateProxy, Reader reader, UniStringConsumer uniStringConsumer) throws IOException, XPathException {
        int i;
        int i2;
        int i3;
        int i4 = 2048;
        char[] cArr = new char[2048];
        boolean z = true;
        int i5 = 1;
        int i6 = 1;
        int i7 = 0;
        while (true) {
            try {
                int read = reader.read(cArr, 0, cArr.length);
                if (m63219b(read)) {
                    reader.close();
                    return;
                }
                int i8 = 0;
                while (i8 < read) {
                    int i9 = i8 + 1;
                    char c = cArr[i8];
                    if (c == '\n') {
                        i5++;
                        i6 = 0;
                    }
                    i6++;
                    i7 |= c;
                    if (UTF16CharacterSet.isHighSurrogate(c)) {
                        if (i9 == read) {
                            char[] cArr2 = new char[i4];
                            int read2 = reader.read(cArr2, 0, i4);
                            int i10 = read + read2;
                            char[] cArr3 = new char[i10];
                            System.arraycopy(cArr, 0, cArr3, 0, read);
                            System.arraycopy(cArr2, 0, cArr3, read, read2);
                            cArr = cArr3;
                            read = i10;
                        }
                        i2 = i9 + 1;
                        int combinePair = UTF16CharacterSet.combinePair(c, cArr[i9]);
                        i7 |= combinePair;
                        i3 = combinePair;
                    } else {
                        i2 = i9;
                        i3 = c;
                    }
                    if (!intPredicateProxy.test(i3)) {
                        XPathException xPathException = new XPathException("The text file contains a character that is illegal in XML (line=" + i5 + " column=" + i6 + " value=hex " + Integer.toHexString(i3) + ')');
                        xPathException.setErrorCode("FOUT1190");
                        throw xPathException;
                    }
                    i8 = i2;
                    i4 = 2048;
                }
                if (z) {
                    if (cArr[0] == 65279) {
                        read--;
                        i = 1;
                    } else {
                        i = 0;
                    }
                    z = false;
                } else {
                    i = 0;
                }
                if (i7 <= 255) {
                    uniStringConsumer.accept(new Twine8(cArr, i, read));
                } else if (i7 <= 65535) {
                    uniStringConsumer.accept(new Twine16(cArr, i, read));
                } else {
                    uniStringConsumer.accept(StringView.m63901of(new String(cArr, i, read)));
                }
                i4 = 2048;
            } catch (IllegalStateException e) {
                throw new IOException(e.getMessage(), e);
            }
        }
    }
}
