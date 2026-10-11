package org.apache.poi.common;

import com.onyx.mml.MMLUtils;
import java.io.StringReader;
import java.io.StringWriter;
import java.lang.ref.SoftReference;
import java.math.BigDecimal;
import java.math.RoundingMode;
import javax.xml.transform.Transformer;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import net.p110sf.saxon.TransformerFactoryImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

/* loaded from: classes12.dex */
public class MathUtils {
    private static final Logger LOG = LogManager.getLogger(MathUtils.class.getSimpleName());
    private static SoftReference<Transformer> TRANSFORMER;

    public static MathJc getJc(String str) {
        int indexOf = str.indexOf("m:jc m:val=\"");
        if (indexOf < 0) {
            return MathJc.LEFT;
        }
        int i = indexOf + 12;
        return MathJc.from(str.substring(i, str.indexOf("\"", i + 1)));
    }

    public static int getSizeFromOMML(String str) {
        int indexOf;
        if (isNullOrEmpty(str)) {
            return 12;
        }
        int i = 0;
        while (true) {
            int indexOf2 = str.indexOf("sz", i);
            if (indexOf2 <= 0 || indexOf2 >= str.length() - 20) {
                break;
            }
            i = indexOf2 + 2;
            if (str.startsWith("=\"", i)) {
                i += 2;
                int indexOf3 = str.indexOf("\"", i);
                if (indexOf3 > i) {
                    return new BigDecimal(str.substring(i, indexOf3)).divide(BigDecimal.valueOf(100L), RoundingMode.UP).intValue();
                }
            } else if (str.startsWith(" w:val=\"", i) && (indexOf = str.indexOf("\"", (i = i + 8))) > i) {
                return new BigDecimal(str.substring(i, indexOf)).divide(BigDecimal.valueOf(2L), RoundingMode.UP).intValue();
            }
        }
        return 12;
    }

    public static Transformer getTransformer() throws Exception {
        Transformer transformer;
        SoftReference<Transformer> softReference = TRANSFORMER;
        if (softReference != null && (transformer = softReference.get()) != null) {
            return transformer;
        }
        Transformer newTransformer = new TransformerFactoryImpl().newTransformer(new StreamSource(MathUtils.class.getResourceAsStream("/omml2mml/OMML2MML.XSL")));
        TRANSFORMER = new SoftReference<>(newTransformer);
        return newTransformer;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static boolean isOMML(String str) {
        return !isNullOrEmpty(str) && str.startsWith("<m:oMath");
    }

    public static String mml2LaTeX(String str) {
        return isNullOrEmpty(str) ? "" : MMLUtils.mml2LaTeX(str, false);
    }

    public static String omml2LaTeX(String str) {
        return isNullOrEmpty(str) ? "" : mml2LaTeX(omml2MML(str));
    }

    public static String omml2MML(String str) {
        if (isNullOrEmpty(str)) {
            return "";
        }
        StringWriter stringWriter = new StringWriter();
        try {
            getTransformer().transform(new StreamSource(new StringReader(str)), new StreamResult(stringWriter));
        } catch (Exception e) {
            LOG.atError().withThrowable(e).log();
        }
        return stringWriter.toString().trim();
    }
}
