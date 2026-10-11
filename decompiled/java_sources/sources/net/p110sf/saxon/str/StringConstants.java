package net.p110sf.saxon.str;

import com.couchbase.lite.internal.utils.StringUtils;
import com.onegravity.rteditor.converter.ConverterSpannedToHtml;
import com.sun.org.apache.xml.internal.serializer.SerializerConstants;
import com.sun.xml.internal.stream.writers.XMLStreamWriterImpl;
import java.nio.charset.StandardCharsets;
import org.mortbay.util.MultiPartWriter;

/* loaded from: classes11.dex */
public class StringConstants {
    public static final UnicodeString SINGLE_SPACE = new Twine8(bytes(" "));
    public static final UnicodeString NEWLINE = new Twine8(bytes("\n"));
    public static final UnicodeString TRUE = new Twine8(bytes("true"));
    public static final UnicodeString FALSE = new Twine8(bytes("false"));
    public static final UnicodeString ONE = new Twine8(bytes("1"));
    public static final UnicodeString ZERO = new Twine8(bytes("0"));
    public static final UnicodeString ZERO_TO_NINE = new Twine8(bytes(StringUtils.NUMERIC));
    public static final UnicodeString MIN_LONG = new Twine8(bytes("-9223372036854775808"));
    public static final UnicodeString POINT_ZERO = new Twine8(bytes(".0"));
    public static final UnicodeString ASTERISK = new Twine8(bytes("*"));
    public static final byte[] COMMENT_START = bytes(XMLStreamWriterImpl.START_COMMENT);
    public static final byte[] COMMENT_END = bytes(XMLStreamWriterImpl.END_COMMENT);
    public static final byte[] TWO_HYPHENS = bytes(MultiPartWriter.f115320h);
    public static final byte[] PI_START = bytes("<?");
    public static final byte[] PI_END = bytes("?>");
    public static final byte[] EMPTY_TAG_MIDDLE = bytes("></");
    public static final byte[] EMPTY_TAG_END = bytes(XMLStreamWriterImpl.CLOSE_EMPTY_ELEMENT);
    public static final byte[] EMPTY_TAG_END_XHTML = bytes(" />");
    public static final byte[] END_TAG_START = bytes(XMLStreamWriterImpl.OPEN_END_TAG);
    public static final byte[] ESCAPE_LT = bytes("&lt;");
    public static final byte[] ESCAPE_GT = bytes("&gt;");
    public static final byte[] ESCAPE_AMP = bytes("&amp;");
    public static final byte[] ESCAPE_NL = bytes(SerializerConstants.ENTITY_CRLF);
    public static final byte[] ESCAPE_CR = bytes("&#xD;");
    public static final byte[] ESCAPE_TAB = bytes("&#x9;");
    public static final byte[] ESCAPE_QUOT = bytes("&#34;");
    public static final byte[] ESCAPE_APOS = bytes("&#39;");
    public static final byte[] ESCAPE_NBSP = bytes(ConverterSpannedToHtml.NBSP);

    public static byte[] bytes(String str) {
        return str.getBytes(StandardCharsets.US_ASCII);
    }
}
