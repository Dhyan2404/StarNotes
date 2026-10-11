package javax.xml.namespace;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.security.AccessController;

/* loaded from: classes5.dex */
public class QName implements Serializable {
    private static final long compatabilitySerialVersionUID = 4418622981026545151L;
    private static final long defaultSerialVersionUID = -9120448754896609940L;
    private static final long serialVersionUID;
    private final String localPart;
    private final String namespaceURI;
    private String prefix;
    private transient String qNameAsString;

    static {
        String str;
        try {
            str = (String) AccessController.doPrivileged(new C17889a());
        } catch (Exception unused) {
            str = null;
        }
        serialVersionUID = !"1.0".equals(str) ? defaultSerialVersionUID : compatabilitySerialVersionUID;
    }

    public QName(String str) {
        this("", str, "");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        if (this.prefix == null) {
            this.prefix = "";
        }
    }

    public static QName valueOf(String str) {
        if (str == null) {
            throw new IllegalArgumentException("cannot create QName from \"null\" or \"\" String");
        }
        if (str.length() != 0 && str.charAt(0) == '{') {
            if (str.startsWith("{}")) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("Namespace URI .equals(XMLConstants.NULL_NS_URI), .equals(\"\"), only the local part, \"");
                stringBuffer.append(str.substring(2));
                stringBuffer.append("\", ");
                stringBuffer.append("should be provided.");
                throw new IllegalArgumentException(stringBuffer.toString());
            }
            int indexOf = str.indexOf(125);
            if (indexOf != -1) {
                return new QName(str.substring(1, indexOf), str.substring(indexOf + 1), "");
            }
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("cannot create QName from \"");
            stringBuffer2.append(str);
            stringBuffer2.append("\", missing closing \"}\"");
            throw new IllegalArgumentException(stringBuffer2.toString());
        }
        return new QName("", str, "");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof QName)) {
            return false;
        }
        QName qName = (QName) obj;
        return this.localPart.equals(qName.localPart) && this.namespaceURI.equals(qName.namespaceURI);
    }

    public String getLocalPart() {
        return this.localPart;
    }

    public String getNamespaceURI() {
        return this.namespaceURI;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public final int hashCode() {
        return this.localPart.hashCode() ^ this.namespaceURI.hashCode();
    }

    public String toString() {
        String str = this.qNameAsString;
        if (str == null) {
            int length = this.namespaceURI.length();
            if (length == 0) {
                str = this.localPart;
            } else {
                StringBuffer stringBuffer = new StringBuffer(length + this.localPart.length() + 2);
                stringBuffer.append('{');
                stringBuffer.append(this.namespaceURI);
                stringBuffer.append('}');
                stringBuffer.append(this.localPart);
                str = stringBuffer.toString();
            }
            this.qNameAsString = str;
        }
        return str;
    }

    public QName(String str, String str2) {
        this(str, str2, "");
    }

    public QName(String str, String str2, String str3) {
        this.namespaceURI = str == null ? "" : str;
        if (str2 == null) {
            throw new IllegalArgumentException("local part cannot be \"null\" when creating a QName");
        }
        this.localPart = str2;
        if (str3 == null) {
            throw new IllegalArgumentException("prefix cannot be \"null\" when creating a QName");
        }
        this.prefix = str3;
    }
}
