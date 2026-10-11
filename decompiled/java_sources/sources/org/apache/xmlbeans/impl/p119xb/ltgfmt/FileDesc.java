package org.apache.xmlbeans.impl.p119xb.ltgfmt;

import androidx.transition.Transition;
import org.apache.xmlbeans.SchemaType;
import org.apache.xmlbeans.StringEnumAbstractBase;
import org.apache.xmlbeans.XmlBoolean;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlToken;
import org.apache.xmlbeans.impl.schema.DocumentFactory;
import org.apache.xmlbeans.impl.schema.ElementFactory;
import org.apache.xmlbeans.metadata.system.sXMLTOOLS.TypeSystemHolder;

/* loaded from: classes13.dex */
public interface FileDesc extends XmlObject {
    public static final DocumentFactory<FileDesc> Factory;
    public static final SchemaType type;

    /* loaded from: classes13.dex */
    public interface Role extends XmlToken {
        public static final ElementFactory<Role> Factory;
        public static final Enum INSTANCE;
        public static final int INT_INSTANCE = 2;
        public static final int INT_RESOURCE = 3;
        public static final int INT_SCHEMA = 1;
        public static final Enum RESOURCE;
        public static final Enum SCHEMA;
        public static final SchemaType type;

        /* loaded from: classes13.dex */
        public static final class Enum extends StringEnumAbstractBase {
            static final int INT_INSTANCE = 2;
            static final int INT_RESOURCE = 3;
            static final int INT_SCHEMA = 1;
            private static final long serialVersionUID = 1;
            public static final StringEnumAbstractBase.Table table = new StringEnumAbstractBase.Table(new Enum[]{new Enum("schema", 1), new Enum(Transition.f10626J0, 2), new Enum("resource", 3)});

            private Enum(String str, int i) {
                super(str, i);
            }

            public static Enum forInt(int i) {
                return (Enum) table.forInt(i);
            }

            public static Enum forString(String str) {
                return (Enum) table.forString(str);
            }

            private Object readResolve() {
                return forInt(intValue());
            }
        }

        static {
            ElementFactory<Role> elementFactory = new ElementFactory<>(TypeSystemHolder.typeSystem, "role21a8attrtype");
            Factory = elementFactory;
            type = elementFactory.getType();
            SCHEMA = Enum.forString("schema");
            INSTANCE = Enum.forString(Transition.f10626J0);
            RESOURCE = Enum.forString("resource");
        }

        StringEnumAbstractBase getEnumValue();

        void setEnumValue(StringEnumAbstractBase stringEnumAbstractBase);
    }

    static {
        DocumentFactory<FileDesc> documentFactory = new DocumentFactory<>(TypeSystemHolder.typeSystem, "filedesc9392type");
        Factory = documentFactory;
        type = documentFactory.getType();
    }

    Code addNewCode();

    Code getCode();

    String getFileName();

    String getFolder();

    Role.Enum getRole();

    String getTsDir();

    boolean getValidity();

    boolean isSetCode();

    boolean isSetFileName();

    boolean isSetFolder();

    boolean isSetRole();

    boolean isSetTsDir();

    boolean isSetValidity();

    void setCode(Code code);

    void setFileName(String str);

    void setFolder(String str);

    void setRole(Role.Enum r1);

    void setTsDir(String str);

    void setValidity(boolean z);

    void unsetCode();

    void unsetFileName();

    void unsetFolder();

    void unsetRole();

    void unsetTsDir();

    void unsetValidity();

    XmlToken xgetFileName();

    XmlToken xgetFolder();

    Role xgetRole();

    XmlToken xgetTsDir();

    XmlBoolean xgetValidity();

    void xsetFileName(XmlToken xmlToken);

    void xsetFolder(XmlToken xmlToken);

    void xsetRole(Role role);

    void xsetTsDir(XmlToken xmlToken);

    void xsetValidity(XmlBoolean xmlBoolean);
}
