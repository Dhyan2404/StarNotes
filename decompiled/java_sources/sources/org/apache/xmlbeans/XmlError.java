package org.apache.xmlbeans;

import androidx.credentials.provider.utils.PrivilegedApp;
import java.io.File;
import java.io.Serializable;
import java.net.URI;
import java.net.URISyntaxException;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import javax.xml.stream.Location;
import org.xmlresolver.logging.AbstractLogger;

/* loaded from: classes13.dex */
public class XmlError implements Serializable {
    public static final int SEVERITY_ERROR = 0;
    public static final int SEVERITY_INFO = 2;
    public static final int SEVERITY_WARNING = 1;
    private static final ResourceBundle _bundle = ResourceBundle.getBundle("org.apache.xmlbeans.message", Locale.ROOT);
    private static final long serialVersionUID = 1;
    private final String _code;
    private final int _column;
    private transient XmlCursor _cursor;
    private final int _line;
    private final String _message;
    private int _offset;
    private final int _severity;
    private final String _source;

    public XmlError(XmlError xmlError) {
        this._offset = -1;
        this._message = xmlError.getMessage();
        this._code = xmlError.getErrorCode();
        this._severity = xmlError.getSeverity();
        this._source = xmlError.getSourceName();
        this._line = xmlError.getLine();
        this._column = xmlError.getColumn();
        this._offset = xmlError.getOffset();
        this._cursor = xmlError.getCursorLocation();
    }

    public static XmlError forCursor(String str, XmlCursor xmlCursor) {
        return forCursor(str, 0, xmlCursor);
    }

    public static XmlError forLocation(String str, String str2, Location location) {
        return new XmlError(str, (String) null, 0, str2, location.getLineNumber(), location.getColumnNumber(), -1, (XmlCursor) null);
    }

    public static XmlError forLocationAndCursor(String str, int i, String str2, int i2, int i3, int i4, XmlCursor xmlCursor) {
        return new XmlError(str, (String) null, i, str2, i2, i3, i4, xmlCursor);
    }

    public static XmlError forMessage(String str) {
        return forMessage(str, 0);
    }

    public static XmlError forObject(String str, XmlObject xmlObject) {
        return forObject(str, 0, xmlObject);
    }

    public static XmlError forSource(String str, String str2) {
        return forLocation(str, 0, str2, -1, -1, -1);
    }

    public static String formattedFileName(String str, URI uri) {
        URI uri2 = null;
        if (str == null) {
            return null;
        }
        try {
            URI uri3 = new URI(str);
            if (uri3.isAbsolute()) {
                uri2 = uri3;
            }
        } catch (URISyntaxException unused) {
        }
        if (uri2 == null) {
            uri2 = new File(str).toURI();
        }
        if (uri != null) {
            uri2 = uri.relativize(uri2);
        }
        if (!uri2.isAbsolute() ? !(uri == null || !uri.isAbsolute() || uri.getScheme().compareToIgnoreCase("file") != 0) : uri2.getScheme().compareToIgnoreCase("file") == 0) {
            try {
                return new File(uri2).toString();
            } catch (Exception unused2) {
            }
        }
        return uri2.toString();
    }

    public static String formattedMessage(String str, Object[] objArr) {
        if (str == null) {
            return null;
        }
        try {
            return new MessageFormat(_bundle.getString(str), Locale.ROOT).format(objArr);
        } catch (IllegalArgumentException | MissingResourceException e) {
            return new MessageFormat(_bundle.getString(e instanceof MissingResourceException ? "message.missing.resource" : "message.pattern.invalid"), Locale.ROOT).format(e.getMessage());
        }
    }

    public static String severityAsString(int i) {
        if (i == 0) {
            return "error";
        }
        if (i == 1) {
            return AbstractLogger.WARNING;
        }
        if (i == 2) {
            return PrivilegedApp.f6532i;
        }
        throw new IllegalArgumentException("unknown severity");
    }

    public int getColumn() {
        return this._column;
    }

    public XmlCursor getCursorLocation() {
        return (XmlCursor) getLocation(XmlCursor.class);
    }

    public String getErrorCode() {
        return this._code;
    }

    public int getLine() {
        return this._line;
    }

    public Object getLocation(Object obj) {
        XmlCursor xmlCursor;
        if (obj == XmlCursor.class) {
            return this._cursor;
        }
        if (obj != XmlObject.class || (xmlCursor = this._cursor) == null) {
            return null;
        }
        return xmlCursor.getObject();
    }

    public String getMessage() {
        return this._message;
    }

    public XmlObject getObjectLocation() {
        return (XmlObject) getLocation(XmlObject.class);
    }

    public int getOffset() {
        return this._offset;
    }

    public int getSeverity() {
        return this._severity;
    }

    public String getSourceName() {
        return this._source;
    }

    public String toString() {
        return toString(null);
    }

    public static XmlError forCursor(String str, Object[] objArr, XmlCursor xmlCursor) {
        return forCursor(str, objArr, 0, xmlCursor);
    }

    public static XmlError forMessage(String str, int i) {
        return forSource(str, i, null);
    }

    public static XmlError forObject(String str, Object[] objArr, XmlObject xmlObject) {
        return forObject(str, objArr, 0, xmlObject);
    }

    public static XmlError forSource(String str, int i, String str2) {
        return forLocation(str, i, str2, -1, -1, -1);
    }

    public String toString(URI uri) {
        StringBuilder sb = new StringBuilder();
        String formattedFileName = formattedFileName(getSourceName(), uri);
        if (formattedFileName != null) {
            sb.append(formattedFileName);
            int line = getLine();
            if (line < 0) {
                line = 0;
            }
            sb.append(':');
            sb.append(line);
            sb.append(':');
            if (getColumn() > 0) {
                sb.append(getColumn());
                sb.append(':');
            }
            sb.append(" ");
        }
        int severity = getSeverity();
        if (severity == 0) {
            sb.append("error: ");
        } else if (severity == 1) {
            sb.append("warning: ");
        }
        if (getErrorCode() != null) {
            sb.append(getErrorCode());
            sb.append(": ");
        }
        String message = getMessage();
        if (message == null) {
            message = "<Unspecified message>";
        }
        sb.append(message);
        return sb.toString();
    }

    public static XmlError forCursor(String str, int i, XmlCursor xmlCursor) {
        return new XmlError(str, (String) null, i, xmlCursor);
    }

    public static XmlError forLocation(String str, String str2, int i, int i2, int i3) {
        return new XmlError(str, (String) null, 0, str2, i, i2, i3, (XmlCursor) null);
    }

    public static XmlError forMessage(String str, Object[] objArr) {
        return forSource(str, objArr, 0, null);
    }

    public static XmlError forObject(String str, int i, XmlObject xmlObject) {
        if (xmlObject == null) {
            return forMessage(str, i);
        }
        return forCursor(str, i, xmlObject.newCursor());
    }

    public static XmlError forSource(String str, Object[] objArr, int i, String str2) {
        return forLocation(str, objArr, i, str2, -1, -1, -1);
    }

    public static XmlError forCursor(String str, Object[] objArr, int i, XmlCursor xmlCursor) {
        return new XmlError(str, objArr, i, xmlCursor);
    }

    public static XmlError forLocation(String str, Object[] objArr, int i, String str2, int i2, int i3, int i4) {
        return new XmlError(str, objArr, i, str2, i2, i3, i4, (XmlCursor) null);
    }

    public static XmlError forMessage(String str, Object[] objArr, int i) {
        return forSource(str, objArr, i, null);
    }

    public static XmlError forLocation(String str, int i, String str2, int i2, int i3, int i4) {
        return new XmlError(str, (String) null, i, str2, i2, i3, i4, (XmlCursor) null);
    }

    public static XmlError forObject(String str, Object[] objArr, int i, XmlObject xmlObject) {
        if (xmlObject == null) {
            return forMessage(str, objArr, i);
        }
        return forCursor(str, objArr, i, xmlObject.newCursor());
    }

    private XmlError(String str, String str2, int i, String str3, int i2, int i3, int i4, XmlCursor xmlCursor) {
        this._message = str;
        this._code = str2;
        this._severity = i;
        this._source = str3;
        this._line = i2;
        this._column = i3;
        this._offset = i4;
        this._cursor = xmlCursor;
    }

    private XmlError(String str, Object[] objArr, int i, String str2, int i2, int i3, int i4, XmlCursor xmlCursor) {
        this(formattedMessage(str, objArr), str, i, str2, i2, i3, i4, xmlCursor);
    }

    public XmlError(String str, String str2, int i, XmlCursor xmlCursor) {
        String str3;
        int i2;
        int i3;
        int i4 = -1;
        this._offset = -1;
        if (xmlCursor != null) {
            str3 = xmlCursor.documentProperties().getSourceName();
            XmlCursor newCursor = xmlCursor.newCursor();
            try {
                XmlLineNumber xmlLineNumber = (XmlLineNumber) newCursor.getBookmark(XmlLineNumber.class);
                xmlLineNumber = xmlLineNumber == null ? (XmlLineNumber) newCursor.toPrevBookmark(XmlLineNumber.class) : xmlLineNumber;
                if (xmlLineNumber != null) {
                    i4 = xmlLineNumber.getLine();
                    i2 = xmlLineNumber.getColumn();
                    i3 = xmlLineNumber.getOffset();
                } else {
                    i2 = -1;
                    i3 = -1;
                }
                newCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (newCursor != null) {
                        try {
                            newCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        } else {
            str3 = null;
            i2 = -1;
            i3 = -1;
        }
        this._message = str;
        this._code = str2;
        this._severity = i;
        this._source = str3;
        this._line = i4;
        this._column = i2;
        this._offset = i3;
        this._cursor = xmlCursor;
    }

    public XmlError(String str, Object[] objArr, int i, XmlCursor xmlCursor) {
        this(formattedMessage(str, objArr), str, i, xmlCursor);
    }

    public XmlError(String str, String str2, int i, Location location) {
        String str3;
        int i2;
        int i3 = -1;
        this._offset = -1;
        if (location != null) {
            i3 = location.getLineNumber();
            i2 = location.getColumnNumber();
            str3 = location.getPublicId();
            if (str3 == null) {
                str3 = location.getSystemId();
            }
        } else {
            str3 = null;
            i2 = -1;
        }
        this._message = str;
        this._code = str2;
        this._severity = i;
        this._source = str3;
        this._line = i3;
        this._column = i2;
    }

    public XmlError(String str, Object[] objArr, int i, Location location) {
        this(formattedMessage(str, objArr), str, i, location);
    }
}
