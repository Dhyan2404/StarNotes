package com.onyx.mml;

import com.google.android.material.motion.MotionUtils;
import com.onyx.mml.MMLUtils;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.URIResolver;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.TransformerFactoryImpl;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes9.dex */
public class MMLUtils {

    /* renamed from: a */
    public static final Logger f62923a = LogManager.getLogger(MMLUtils.class.getSimpleName());

    /* renamed from: b */
    public static SoftReference<Transformer> f62924b = null;

    /* renamed from: c */
    public static final String f62925c = "<?xml version=\"1.0\" encoding=\"utf-8\"?><xml xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:m=\"http://www.w3.org/1998/Math/MathML\">%s</xml>";

    /* renamed from: b */
    public static String m52129b(String str) {
        StringBuilder sb = new StringBuilder(str);
        int i = 0;
        while (true) {
            int indexOf = sb.indexOf("\\left", i);
            if (indexOf < 0) {
                return sb.toString();
            }
            int i2 = indexOf + 5;
            char charAt = sb.charAt(i2);
            if (charAt == '(' || charAt == '[') {
                if (!m52130c(sb, indexOf + 6, charAt == '(' ? MotionUtils.f31762d : IteratorUtils.f104924b)) {
                    sb.insert(indexOf, "}");
                    sb.insert(indexOf + 7, "{");
                    i = indexOf + 8;
                }
            }
            if (charAt == '\\' && str.charAt(indexOf + 6) == '{' && !m52130c(sb, indexOf + 7, null)) {
                sb.insert(indexOf, "}");
                sb.insert(indexOf + 8, "{");
                i = indexOf + 9;
            } else {
                i = i2;
            }
        }
    }

    /* renamed from: c */
    public static boolean m52130c(StringBuilder sb, int i, String str) {
        int indexOf = sb.indexOf("}", i);
        int indexOf2 = sb.indexOf("{", i);
        int indexOf3 = str != null ? sb.indexOf(str, i) : indexOf;
        if (indexOf < 0) {
            indexOf = sb.length();
        }
        return indexOf3 < indexOf || indexOf2 < indexOf;
    }

    /* renamed from: d */
    public static /* synthetic */ Source m52131d(String str, String str2) throws TransformerException {
        return new StreamSource(MMLUtils.class.getResourceAsStream("/mml2tex/" + str));
    }

    public static Transformer getTransformer() throws Exception {
        Transformer transformer;
        SoftReference<Transformer> softReference = f62924b;
        if (softReference != null && (transformer = softReference.get()) != null) {
            return transformer;
        }
        TransformerFactoryImpl transformerFactoryImpl = new TransformerFactoryImpl();
        InputStream resourceAsStream = MMLUtils.class.getResourceAsStream("/mml2tex/mmltex.xsl");
        transformerFactoryImpl.setURIResolver(new URIResolver() { // from class: com.sunia.HTREnginev2.f6j
            @Override // javax.xml.transform.URIResolver
            public final Source resolve(String str, String str2) {
                Source m52131d;
                m52131d = MMLUtils.m52131d(str, str2);
                return m52131d;
            }
        });
        Transformer newTransformer = transformerFactoryImpl.newTransformer(new StreamSource(resourceAsStream));
        f62924b = new SoftReference<>(newTransformer);
        return newTransformer;
    }

    public static String mml2LaTeX(String str) {
        return mml2LaTeX(str, false);
    }

    public static String mml2LaTeX(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        if (z) {
            try {
                str = String.format(f62925c, str);
            } catch (Exception e) {
                f62923a.atError().withThrowable(e).log();
            }
        }
        getTransformer().transform(new StreamSource(new StringReader(str)), new StreamResult(stringWriter));
        return m52129b(stringWriter.toString().trim());
    }

    public static String mml2LaTeX(InputStream inputStream) {
        StringWriter stringWriter = new StringWriter();
        try {
            getTransformer().transform(new StreamSource(inputStream), new StreamResult(stringWriter));
        } catch (Exception e) {
            f62923a.atError().withThrowable(e).log();
        }
        return m52129b(stringWriter.toString().trim());
    }

    public static String mml2LaTeX(Reader reader) {
        StringWriter stringWriter = new StringWriter();
        try {
            getTransformer().transform(new StreamSource(reader), new StreamResult(stringWriter));
        } catch (Exception e) {
            f62923a.atError().withThrowable(e).log();
        }
        return m52129b(stringWriter.toString().trim());
    }
}
