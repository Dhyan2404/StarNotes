package org.apache.xmlbeans.impl.tool;

import com.bumptech.glide.load.engine.GlideException;
import com.google.android.material.motion.MotionUtils;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.replicator.note.proto.doc.shape.ShapeDocumentUtils;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.xml.namespace.QName;
import org.apache.xmlbeans.QNameSet;
import org.apache.xmlbeans.XmlException;
import org.apache.xmlbeans.XmlObject;
import org.apache.xmlbeans.XmlOptions;
import org.apache.xmlbeans.impl.common.QNameHelper;
import org.apache.xmlbeans.impl.tool.XsbDumper;
import org.apache.xmlbeans.impl.util.HexBin;
import org.apache.xmlbeans.impl.util.LongUTFDataInputStream;
import org.apache.xmlbeans.soap.SOAPArrayType;

/* loaded from: classes13.dex */
public class XsbDumper {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int DATA_BABE = -629491010;
    public static final int FIELD_GLOBAL = 1;
    public static final int FIELD_LOCALATTR = 2;
    public static final int FIELD_LOCALELT = 3;
    public static final int FIELD_NONE = 0;
    public static final int FILETYPE_SCHEMAATTRIBUTE = 4;
    public static final int FILETYPE_SCHEMAATTRIBUTEGROUP = 7;
    public static final int FILETYPE_SCHEMAELEMENT = 3;
    public static final int FILETYPE_SCHEMAINDEX = 1;
    public static final int FILETYPE_SCHEMAMODELGROUP = 6;
    public static final int FILETYPE_SCHEMAPOINTER = 5;
    public static final int FILETYPE_SCHEMATYPE = 2;
    static final int FLAG_ABSTRACT = 262144;
    static final int FLAG_ATTRIBUTE_TYPE = 524288;
    static final int FLAG_BLOCK_EXT = 4096;
    static final int FLAG_BLOCK_REST = 8192;
    static final int FLAG_BOUNDED = 8;
    static final int FLAG_COMPILED = 2048;
    static final int FLAG_DOCUMENT_TYPE = 2;
    static final int FLAG_FINAL_EXT = 16384;
    static final int FLAG_FINAL_LIST = 131072;
    static final int FLAG_FINAL_REST = 32768;
    static final int FLAG_FINAL_UNION = 65536;
    static final int FLAG_FINITE = 16;
    static final int FLAG_HAS_PATTERN = 256;
    static final int FLAG_NUMERIC = 32;
    static final int FLAG_ORDERED = 4;
    static final int FLAG_ORDER_SENSITIVE = 512;
    public static final int FLAG_PART_ABSTRACT = 128;
    public static final int FLAG_PART_BLOCKEXT = 16;
    public static final int FLAG_PART_BLOCKREST = 32;
    public static final int FLAG_PART_BLOCKSUBST = 64;
    public static final int FLAG_PART_FINALEXT = 256;
    public static final int FLAG_PART_FINALREST = 512;
    public static final int FLAG_PART_FIXED = 4;
    public static final int FLAG_PART_NILLABLE = 8;
    public static final int FLAG_PART_SKIPPABLE = 1;
    public static final int FLAG_PROP_ISATTR = 1;
    public static final int FLAG_PROP_JAVAARRAY = 8;
    public static final int FLAG_PROP_JAVAOPTIONAL = 4;
    public static final int FLAG_PROP_JAVASINGLETON = 2;
    static final int FLAG_SIMPLE_TYPE = 1;
    static final int FLAG_STRINGENUM = 64;
    static final int FLAG_TOTAL_ORDER = 1024;
    static final int FLAG_UNION_OF_LISTS = 128;
    public static final int MAJOR_VERSION = 2;
    public static final int MINOR_VERSION = 24;
    private static final XmlOptions prettyOptions = new XmlOptions().setSavePrettyPrint();
    private String _indent;
    LongUTFDataInputStream _input;
    private int _majorver;
    private int _minorver;
    private final PrintStream _out;
    private int _releaseno;
    StringPool _stringPool;

    /* loaded from: classes13.dex */
    public class StringPool {
        private final List<String> intsToStrings;
        private final Map<String, Integer> stringsToInts;

        public StringPool() {
            ArrayList arrayList = new ArrayList();
            this.intsToStrings = arrayList;
            this.stringsToInts = new HashMap();
            arrayList.add(null);
        }

        public int codeForString(String str) {
            if (str == null) {
                return 0;
            }
            Integer num = this.stringsToInts.get(str);
            if (num == null) {
                num = Integer.valueOf(this.intsToStrings.size());
                this.intsToStrings.add(str);
                this.stringsToInts.put(str, num);
            }
            return num.intValue();
        }

        public void readFrom(LongUTFDataInputStream longUTFDataInputStream) {
            if (this.intsToStrings.size() != 1 || this.stringsToInts.size() != 0) {
                throw new IllegalStateException();
            }
            try {
                short readShort = longUTFDataInputStream.readShort();
                XsbDumper.this.emit("String pool (" + ((int) readShort) + "):");
                XsbDumper.this.indent();
                for (int i = 1; i < readShort; i++) {
                    String readLongUTF = longUTFDataInputStream.readLongUTF();
                    int codeForString = codeForString(readLongUTF);
                    if (codeForString != i) {
                        throw new IllegalStateException();
                    }
                    XsbDumper.this.emit(codeForString + " = \"" + readLongUTF + "\"");
                }
                XsbDumper.this.outdent();
            } catch (IOException e) {
                XsbDumper.this.emit(e.toString());
            }
        }

        public String stringForCode(int i) {
            if (i == 0) {
                return null;
            }
            return this.intsToStrings.get(i);
        }
    }

    private XsbDumper(InputStream inputStream, String str, PrintStream printStream) {
        this._input = new LongUTFDataInputStream(inputStream);
        this._indent = str;
        this._out = printStream;
    }

    public static String alwaysString(int i) {
        if (i == 0) {
            return "NEVER";
        }
        if (i == 1) {
            return "VARIABLE";
        }
        if (i == 2) {
            return "CONSISTENTLY";
        }
        return "Unknown frequency code (" + i + MotionUtils.f31762d;
    }

    public static String attruseCodeString(int i) {
        if (i == 1) {
            return "PROHIBITED";
        }
        if (i == 2) {
            return "OPTIONAL";
        }
        if (i == 3) {
            return "REQUIRED";
        }
        return "Unknown use code (" + i + MotionUtils.f31762d;
    }

    public static String bigIntegerString(BigInteger bigInteger) {
        return bigInteger == null ? "(null)" : bigInteger.toString();
    }

    public static String complexVarietyString(int i) {
        if (i == 1) {
            return "EMPTY_CONTENT";
        }
        if (i == 2) {
            return "SIMPLE_CONTENT";
        }
        if (i == 3) {
            return "ELEMENT_CONTENT";
        }
        if (i == 4) {
            return "MIXED_CONTENT";
        }
        return "Unknown complex variety (" + i + MotionUtils.f31762d;
    }

    public static String containerfieldTypeString(int i) {
        if (i == 0) {
            return "FIELD_NONE";
        }
        if (i == 1) {
            return "FIELD_GLOBAL";
        }
        if (i == 2) {
            return "FIELD_LOCALATTR";
        }
        if (i == 3) {
            return "FIELD_LOCALELT";
        }
        return "Unknown container field type (" + i + MotionUtils.f31762d;
    }

    private static void dump(File file, boolean z) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles(new FileFilter() { // from class: com.sunia.HTREnginev2.wwo
                @Override // java.io.FileFilter
                public final boolean accept(File file2) {
                    boolean lambda$dump$0;
                    lambda$dump$0 = XsbDumper.lambda$dump$0(file2);
                    return lambda$dump$0;
                }
            });
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    dump(file2, false);
                }
                return;
            }
            return;
        }
        if (!file.getName().endsWith(".jar") && !file.getName().endsWith(ShapeDocumentUtils.SHAPE_FILE_END)) {
            if (z || file.getName().endsWith(".xsb")) {
                try {
                    System.out.println(file.toString());
                    dump(new FileInputStream(file), GlideException.C1935a.f14609h);
                    System.out.println();
                    return;
                } catch (FileNotFoundException e) {
                    System.out.println(e.toString());
                    return;
                }
            }
            return;
        }
        dumpZip(file);
    }

    public static void dumpZip(File file) {
        try {
            ZipFile zipFile = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile.entries();
                while (entries.hasMoreElements()) {
                    ZipEntry nextElement = entries.nextElement();
                    if (nextElement.getName().endsWith(".xsb")) {
                        System.out.println(nextElement.getName());
                        dump(zipFile.getInputStream(nextElement), GlideException.C1935a.f14609h);
                        System.out.println();
                    }
                }
                zipFile.close();
            } finally {
            }
        } catch (IOException e) {
            System.out.println(e.toString());
        }
    }

    public static String filetypeString(int i) {
        switch (i) {
            case 1:
                return "FILETYPE_SCHEMAINDEX";
            case 2:
                return "FILETYPE_SCHEMATYPE";
            case 3:
                return "FILETYPE_SCHEMAELEMENT";
            case 4:
                return "FILETYPE_SCHEMAATTRIBUTE";
            case 5:
                return "FILETYPE_SCHEMAPOINTER";
            case 6:
                return "FILETYPE_SCHEMAMODELGROUP";
            case 7:
                return "FILETYPE_SCHEMAATTRIBUTEGROUP";
            default:
                return "Unknown FILETYPE (" + i + MotionUtils.f31762d;
        }
    }

    public static String hex32String(int i) {
        return Integer.toHexString(i);
    }

    public static String jtcString(int i) {
        switch (i) {
            case 0:
                return "XML_OBJECT";
            case 1:
                return "JAVA_BOOLEAN";
            case 2:
                return "JAVA_FLOAT";
            case 3:
                return "JAVA_DOUBLE";
            case 4:
                return "JAVA_BYTE";
            case 5:
                return "JAVA_SHORT";
            case 6:
                return "JAVA_INT";
            case 7:
                return "JAVA_LONG";
            case 8:
                return "JAVA_BIG_DECIMAL";
            case 9:
                return "JAVA_BIG_INTEGER";
            case 10:
                return "JAVA_STRING";
            case 11:
                return "JAVA_BYTE_ARRAY";
            case 12:
                return "JAVA_GDATE";
            case 13:
                return "JAVA_GDURATION";
            case 14:
                return "JAVA_DATE";
            case 15:
                return "JAVA_QNAME";
            case 16:
                return "JAVA_LIST";
            case 17:
                return "JAVA_CALENDAR";
            case 18:
                return "JAVA_ENUM";
            case 19:
                return "JAVA_OBJECT";
            default:
                return "Unknown java type code (" + i + MotionUtils.f31762d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$dump$0(File file) {
        return file.isDirectory() || (file.isFile() && file.getName().endsWith(".xsb"));
    }

    public static void main(String[] strArr) {
        if (strArr.length == 0) {
            printUsage();
            System.exit(0);
        } else {
            for (String str : strArr) {
                dump(new File(str), true);
            }
        }
    }

    public static String particleTypeString(int i) {
        if (i == 1) {
            return "ALL";
        }
        if (i == 2) {
            return "CHOICE";
        }
        if (i == 3) {
            return "SEQUENCE";
        }
        if (i == 4) {
            return "ELEMENT";
        }
        if (i == 5) {
            return "WILDCARD";
        }
        return "Unknown particle type (" + i + MotionUtils.f31762d;
    }

    public static String particleflagsString(int i) {
        StringBuilder sb = new StringBuilder();
        if ((i & 1) != 0) {
            sb.append("FLAG_PART_SKIPPABLE | ");
        }
        if ((i & 4) != 0) {
            sb.append("FLAG_PART_FIXED | ");
        }
        if ((i & 8) != 0) {
            sb.append("FLAG_PART_NILLABLE | ");
        }
        if ((i & 16) != 0) {
            sb.append("FLAG_PART_BLOCKEXT | ");
        }
        if ((i & 32) != 0) {
            sb.append("FLAG_PART_BLOCKREST | ");
        }
        if ((i & 64) != 0) {
            sb.append("FLAG_PART_BLOCKSUBST | ");
        }
        if ((i & 128) != 0) {
            sb.append("FLAG_PART_ABSTRACT | ");
        }
        if ((i & 256) != 0) {
            sb.append("FLAG_PART_FINALEXT | ");
        }
        if ((i & 512) != 0) {
            sb.append("FLAG_PART_FINALREST | ");
        }
        if (sb.length() == 0) {
            sb.append("0 | ");
        }
        return sb.substring(0, sb.length() - 3);
    }

    public static void printUsage() {
        System.out.println("Prints the contents of an XSB file in human-readable form.");
        System.out.println("An XSB file contains schema meta information needed to ");
        System.out.println("perform tasks such as binding and validation.");
        System.out.println("Usage: dumpxsb myfile.xsb");
        System.out.println("    myfile.xsb - Path to an XSB file.");
        System.out.println();
    }

    public static String propertyflagsString(int i) {
        StringBuilder sb = new StringBuilder();
        if ((i & 1) != 0) {
            sb.append("FLAG_PROP_ISATTR | ");
        }
        if ((i & 2) != 0) {
            sb.append("FLAG_PROP_JAVASINGLETON | ");
        }
        if ((i & 4) != 0) {
            sb.append("FLAG_PROP_JAVAOPTIONAL | ");
        }
        if ((i & 8) != 0) {
            sb.append("FLAG_PROP_JAVAARRAY | ");
        }
        if (sb.length() == 0) {
            sb.append("0 | ");
        }
        return sb.substring(0, sb.length() - 3);
    }

    public static String qnameSetString(QNameSet qNameSet) {
        return qNameSet.toString();
    }

    public static String qnameString(QName qName) {
        if (qName == null) {
            return "(null)";
        }
        if (qName.getNamespaceURI() == null) {
            return qName.getLocalPart();
        }
        return qName.getLocalPart() + "@" + qName.getNamespaceURI();
    }

    public static String simpleVarietyString(int i) {
        if (i == 1) {
            return "ATOMIC";
        }
        if (i == 2) {
            return "UNION";
        }
        if (i == 3) {
            return "LIST";
        }
        return "Unknown simple variety (" + i + MotionUtils.f31762d;
    }

    public static String typeflagsString(int i) {
        StringBuilder sb = new StringBuilder();
        if ((i & 1) != 0) {
            sb.append("FLAG_SIMPLE_TYPE | ");
        }
        if ((i & 2) != 0) {
            sb.append("FLAG_DOCUMENT_TYPE | ");
        }
        if ((524288 & i) != 0) {
            sb.append("FLAG_ATTRIBUTE_TYPE | ");
        }
        if ((i & 4) != 0) {
            sb.append("FLAG_ORDERED | ");
        }
        if ((i & 8) != 0) {
            sb.append("FLAG_BOUNDED | ");
        }
        if ((i & 16) != 0) {
            sb.append("FLAG_FINITE | ");
        }
        if ((i & 32) != 0) {
            sb.append("FLAG_NUMERIC | ");
        }
        if ((i & 64) != 0) {
            sb.append("FLAG_STRINGENUM | ");
        }
        if ((i & 128) != 0) {
            sb.append("FLAG_UNION_OF_LISTS | ");
        }
        if ((i & 256) != 0) {
            sb.append("FLAG_HAS_PATTERN | ");
        }
        if ((i & 1024) != 0) {
            sb.append("FLAG_TOTAL_ORDER | ");
        }
        if ((i & 2048) != 0) {
            sb.append("FLAG_COMPILED | ");
        }
        if ((i & 4096) != 0) {
            sb.append("FLAG_BLOCK_EXT | ");
        }
        if ((i & 8192) != 0) {
            sb.append("FLAG_BLOCK_REST | ");
        }
        if ((i & 16384) != 0) {
            sb.append("FLAG_FINAL_EXT | ");
        }
        if ((32768 & i) != 0) {
            sb.append("FLAG_FINAL_REST | ");
        }
        if ((65536 & i) != 0) {
            sb.append("FLAG_FINAL_UNION | ");
        }
        if ((131072 & i) != 0) {
            sb.append("FLAG_FINAL_LIST | ");
        }
        if ((i & 262144) != 0) {
            sb.append("FLAG_ABSTRACT | ");
        }
        if (sb.length() == 0) {
            sb.append("0 | ");
        }
        return sb.substring(0, sb.length() - 3);
    }

    public static String wcprocessString(int i) {
        if (i == 0) {
            return "NOT_WILDCARD";
        }
        if (i == 1) {
            return "STRICT";
        }
        if (i == 2) {
            return "LAX";
        }
        if (i == 3) {
            return "SKIP";
        }
        return "Unknown process type (" + i + MotionUtils.f31762d;
    }

    public String SOAPArrayTypeString(SOAPArrayType sOAPArrayType) {
        if (sOAPArrayType == null) {
            return "null";
        }
        return QNameHelper.pretty(sOAPArrayType.getQName()) + sOAPArrayType.soap11DimensionString();
    }

    public boolean atLeast(int i, int i2, int i3) {
        int i4 = this._majorver;
        if (i4 > i) {
            return true;
        }
        if (i4 < i) {
            return false;
        }
        int i5 = this._minorver;
        if (i5 > i2) {
            return true;
        }
        return i5 >= i2 && this._releaseno >= i3;
    }

    public boolean atMost(int i, int i2, int i3) {
        int i4 = this._majorver;
        if (i4 > i) {
            return false;
        }
        if (i4 < i) {
            return true;
        }
        int i5 = this._minorver;
        if (i5 > i2) {
            return false;
        }
        return i5 < i2 || this._releaseno <= i3;
    }

    public String derivationTypeString(int i) {
        if (i == 0) {
            return "DT_NOT_DERIVED";
        }
        if (i == 1) {
            return "DT_RESTRICTION";
        }
        if (i == 2) {
            return "DT_EXTENSION";
        }
        return "Unknown derivation code (" + i + MotionUtils.f31762d;
    }

    public void dumpAll() {
        switch (dumpHeader()) {
            case 1:
                dumpIndexData();
                return;
            case 2:
                dumpTypeFileData();
                break;
            case 3:
                dumpParticleData(true);
                break;
            case 4:
                dumpAttributeData(true);
                break;
            case 5:
                dumpPointerData();
                break;
            case 6:
                dumpModelGroupData();
                break;
            case 7:
                dumpAttributeGroupData();
                break;
        }
        readEnd();
    }

    public void dumpAnnotation() {
        int readInt;
        boolean z;
        boolean z2 = false;
        if (atLeast(2, 19, 0) && (readInt = readInt()) != -1) {
            emit("Annotation");
            indent();
            if (readInt > 0) {
                emit("Attributes (" + readInt + "):");
                indent();
                for (int i = 0; i < readInt; i++) {
                    if (atLeast(2, 24, 0)) {
                        emit("Name: " + qnameString(readQName()) + ", Value: " + readString() + ", ValueURI: " + readString());
                    } else {
                        emit("Name: " + qnameString(readQName()) + ", Value: " + readString());
                    }
                }
                outdent();
                z = false;
            } else {
                z = true;
            }
            int readInt2 = readInt();
            if (readInt2 > 0) {
                emit("Documentation elements (" + readInt2 + "):");
                indent();
                for (int i2 = 0; i2 < readInt2; i2++) {
                    emit(readString());
                }
                outdent();
                z = false;
            }
            int readInt3 = readInt();
            if (readInt3 > 0) {
                emit("Appinfo elements (" + readInt3 + "):");
                indent();
                for (int i3 = 0; i3 < readInt3; i3++) {
                    emit(readString());
                }
                outdent();
            } else {
                z2 = z;
            }
            if (z2) {
                emit("<empty>");
            }
            outdent();
        }
    }

    public void dumpAnnotations() {
        int readInt = readInt();
        if (readInt > 0) {
            emit("Top-level annotations (" + readInt + "):");
            indent();
            for (int i = 0; i < readInt; i++) {
                dumpAnnotation();
            }
            outdent();
        }
    }

    public void dumpAttributeData(boolean z) {
        emit("Name: " + qnameString(readQName()));
        emit("Type: " + readType());
        emit("Use: " + attruseCodeString(readShort()));
        emit("Default: " + readString());
        if (atLeast(2, 16, 0)) {
            emit("Default value: " + readXmlValueObject());
        }
        emit("Fixed: " + readShort());
        emit("WsdlArrayType: " + SOAPArrayTypeString(readSOAPArrayType()));
        dumpAnnotation();
        if (z) {
            emit("Filename: " + readString());
        }
    }

    public void dumpAttributeGroupData() {
        emit("Name: " + qnameString(readQName()));
        emit("Target namespace: " + readString());
        emit("Chameleon: " + readShort());
        if (atLeast(2, 22, 0)) {
            emit("Form default: " + readString());
        }
        if (atLeast(2, 15, 0)) {
            emit("Redefine: " + readShort());
        }
        emit("Attribute Group Xml: ");
        dumpXml();
        dumpAnnotation();
        if (atLeast(2, 21, 0)) {
            emit("Filename: " + readString());
        }
    }

    public void dumpClassnameIndex(String str) {
        int readShort = readShort();
        emit(str + " (" + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            emit(readString() + CloudStorageConstants.OPERATION_EQUAL + readType());
        }
        outdent();
    }

    public int dumpHeader() {
        int readInt = readInt();
        emit("Magic cookie: " + hex32String(readInt));
        if (readInt != -629491010) {
            emit("Wrong magic cookie.");
            return 0;
        }
        this._majorver = readShort();
        this._minorver = readShort();
        if (atLeast(2, 18, 0)) {
            this._releaseno = readShort();
        }
        emit("Major version: " + this._majorver);
        emit("Minor version: " + this._minorver);
        emit("Release number: " + this._releaseno);
        if (this._majorver != 2 || this._minorver > 24) {
            emit("Incompatible version.");
            return 0;
        }
        int readShort = readShort();
        emit("Filetype: " + filetypeString(readShort));
        StringPool stringPool = new StringPool();
        this._stringPool = stringPool;
        stringPool.readFrom(this._input);
        return readShort;
    }

    public void dumpIndexData() {
        int readShort = readShort();
        emit("Handle pool (" + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            emit(readString() + " (" + filetypeString(readShort()) + MotionUtils.f31762d);
        }
        outdent();
        dumpQNameMap("Global elements");
        dumpQNameMap("Global attributes");
        dumpQNameMap("Model groups");
        dumpQNameMap("Attribute groups");
        dumpQNameMap("Identity constraints");
        dumpQNameMap("Global types");
        dumpQNameMap("Document types");
        dumpQNameMap("Attribute types");
        dumpClassnameIndex("All types by classname");
        dumpStringArray("Defined namespaces");
        if (atLeast(2, 15, 0)) {
            dumpQNameMap("Redefined global types");
            dumpQNameMap("Redfined model groups");
            dumpQNameMap("Redfined attribute groups");
        }
        if (atLeast(2, 19, 0)) {
            dumpAnnotations();
        }
        readEnd();
    }

    public void dumpModelGroupData() {
        emit("Name: " + qnameString(readQName()));
        emit("Target namespace: " + readString());
        emit("Chameleon: " + readShort());
        if (atLeast(2, 22, 0)) {
            emit("Element form default: " + readString());
        }
        if (atLeast(2, 22, 0)) {
            emit("Attribute form default: " + readString());
        }
        if (atLeast(2, 15, 0)) {
            emit("Redefine: " + readShort());
        }
        emit("Model Group Xml: ");
        dumpXml();
        dumpAnnotation();
        if (atLeast(2, 21, 0)) {
            emit("Filename: " + readString());
        }
    }

    public void dumpParticleArray(String str) {
        int readShort = readShort();
        emit(str + MotionUtils.f31761c + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            dumpParticleData(false);
        }
        outdent();
    }

    public void dumpParticleData(boolean z) {
        int readShort = readShort();
        emit(particleTypeString(readShort) + ":");
        indent();
        emit("Flags: " + particleflagsString(readShort()));
        emit("MinOccurs: " + bigIntegerString(readBigInteger()));
        emit("MaxOccurs: " + bigIntegerString(readBigInteger()));
        emit("Transition: " + qnameSetString(readQNameSet()));
        if (readShort == 1 || readShort == 2 || readShort == 3) {
            dumpParticleArray("Particle children");
        } else if (readShort == 4) {
            emit("Name: " + qnameString(readQName()));
            emit("Type: " + readType());
            emit("Default: " + readString());
            if (atLeast(2, 16, 0)) {
                emit("Default value: " + readXmlValueObject());
            }
            emit("WsdlArrayType: " + SOAPArrayTypeString(readSOAPArrayType()));
            dumpAnnotation();
            if (z) {
                if (atLeast(2, 17, 0)) {
                    emit("Substitution group ref: " + readHandle());
                }
                int readShort2 = readShort();
                emit("Substitution group members (" + readShort2 + MotionUtils.f31762d);
                indent();
                for (int i = 0; i < readShort2; i++) {
                    emit(qnameString(readQName()));
                }
                outdent();
            }
            int readShort3 = readShort();
            emit("Identity constraints (" + readShort3 + "):");
            indent();
            for (int i2 = 0; i2 < readShort3; i2++) {
                emit(readHandle());
            }
            outdent();
            if (z) {
                emit("Filename: " + readString());
            }
        } else if (readShort != 5) {
            error("Unrecognized schema particle type");
        } else {
            emit("Wildcard set: " + qnameSetString(readQNameSet()));
            emit("Wildcard process: " + wcprocessString(readShort()));
        }
        outdent();
    }

    public void dumpPointerData() {
        emit("Type system: " + readString());
    }

    public void dumpPropertyData() {
        emit("Property");
        indent();
        emit("Name: " + qnameString(readQName()));
        emit("Type: " + readType());
        int readShort = readShort();
        emit("Flags: " + propertyflagsString(readShort));
        emit("Container type: " + readType());
        emit("Min occurances: " + bigIntegerString(readBigInteger()));
        emit("Max occurances: " + bigIntegerString(readBigInteger()));
        emit("Nillable: " + alwaysString(readShort()));
        emit("Default: " + alwaysString(readShort()));
        emit("Fixed: " + alwaysString(readShort()));
        emit("Default text: " + readString());
        emit("Java prop name: " + readString());
        emit("Java type code: " + jtcString(readShort()));
        emit("Type for java signature: " + readType());
        if (atMost(2, 19, 0)) {
            emit("Java setter delimiter: " + qnameSetString(readQNameSet()));
        }
        if (atLeast(2, 16, 0)) {
            emit("Default value: " + readXmlValueObject());
        }
        if ((readShort & 1) == 0 && atLeast(2, 17, 0)) {
            int readShort2 = readShort();
            emit("Accepted substitutions (" + readShort2 + "):");
            for (int i = 0; i < readShort2; i++) {
                emit("  Accepted name " + readQName());
            }
        }
        outdent();
    }

    public void dumpQNameMap(String str) {
        int readShort = readShort();
        emit(str + " (" + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            emit(qnameString(readQName()) + CloudStorageConstants.OPERATION_EQUAL + readHandle());
        }
        outdent();
    }

    public void dumpStringArray(String str) {
        int readShort = readShort();
        emit(str + " (" + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            emit(readString());
        }
        outdent();
    }

    public void dumpTypeArray(String str) {
        int readShort = readShort();
        emit(str + " (" + readShort + "):");
        indent();
        for (int i = 0; i < readShort; i++) {
            emit(i + CloudStorageConstants.OPERATION_EQUAL + readType());
        }
        outdent();
    }

    public void dumpTypeFileData() {
        int i;
        emit("Name: " + qnameString(readQName()));
        emit("Outer type: " + readType());
        emit("Depth: " + readShort());
        emit("Base type: " + readType());
        emit("Derivation type: " + derivationTypeString(readShort()));
        dumpAnnotation();
        emit("Container field:");
        indent();
        int readShort = readShort();
        emit("Reftype: " + containerfieldTypeString(readShort));
        if (readShort == 1) {
            emit("Handle: " + readHandle());
        } else if (readShort == 2) {
            emit("Index: " + readShort());
        } else if (readShort == 3) {
            emit("Index: " + readShort());
        }
        outdent();
        emit("Java class name: " + readString());
        emit("Java impl class name: " + readString());
        dumpTypeArray("Anonymous types");
        emit("Anonymous union member ordinal: " + readShort());
        int readInt = readInt();
        emit("Flags: " + typeflagsString(readInt));
        boolean z = (readInt & 1) == 0;
        if (z) {
            i = readShort();
            emit("Complex variety: " + complexVarietyString(i));
            if (atLeast(2, 23, 0)) {
                emit("Content based on type: " + readType());
            }
            int readShort2 = readShort();
            emit("Attribute model (" + readShort2 + "):");
            indent();
            for (int i2 = 0; i2 < readShort2; i2++) {
                dumpAttributeData(false);
            }
            emit("Wildcard set: " + qnameSetString(readQNameSet()));
            emit("Wildcard process: " + wcprocessString(readShort()));
            outdent();
            int readShort3 = readShort();
            emit("Attribute properties (" + readShort3 + "):");
            indent();
            for (int i3 = 0; i3 < readShort3; i3++) {
                dumpPropertyData();
            }
            outdent();
            if (i == 3 || i == 4) {
                emit("IsAll: " + readShort());
                dumpParticleArray("Content model");
                int readShort4 = readShort();
                emit("Element properties (" + readShort4 + "):");
                indent();
                for (int i4 = 0; i4 < readShort4; i4++) {
                    dumpPropertyData();
                }
                outdent();
            }
        } else {
            i = 0;
        }
        if (!z || i == 2) {
            int readShort5 = readShort();
            emit("Simple type variety: " + simpleVarietyString(readShort5));
            boolean z2 = (readInt & 64) != 0;
            int readShort6 = readShort();
            emit("Facets (" + readShort6 + "):");
            indent();
            for (int i5 = 0; i5 < readShort6; i5++) {
                emit(facetCodeString(readShort()));
                emit("Value: " + readXmlValueObject());
                emit("Fixed: " + readShort());
            }
            outdent();
            emit("Whitespace rule: " + whitespaceCodeString(readShort()));
            int readShort7 = readShort();
            emit("Patterns (" + readShort7 + "):");
            indent();
            for (int i6 = 0; i6 < readShort7; i6++) {
                emit(readString());
            }
            outdent();
            int readShort8 = readShort();
            emit("Enumeration values (" + readShort8 + "):");
            indent();
            for (int i7 = 0; i7 < readShort8; i7++) {
                emit(readXmlValueObject());
            }
            outdent();
            emit("Base enum type: " + readType());
            if (z2) {
                int readShort9 = readShort();
                emit("String enum entries (" + readShort9 + "):");
                indent();
                for (int i8 = 0; i8 < readShort9; i8++) {
                    emit("\"" + readString() + "\" -> " + readShort() + CloudStorageConstants.OPERATION_EQUAL + readString());
                }
                outdent();
            }
            if (readShort5 == 1) {
                emit("Primitive type: " + readType());
                emit("Decimal size: " + readInt());
            } else if (readShort5 == 2) {
                dumpTypeArray("Union members");
            } else if (readShort5 != 3) {
                error("Unknown simple type variety");
            } else {
                emit("List item type: " + readType());
            }
        }
        emit("Filename: " + readString());
    }

    public void dumpXml() {
        String readString = readString();
        try {
            emit(XmlObject.Factory.parse(readString).xmlText(prettyOptions));
        } catch (XmlException unused) {
            emit("!!!!!! BAD XML !!!!!");
            emit(readString);
        }
    }

    public void emit(String str) {
        this._out.println(this._indent + str);
        flush();
    }

    public void error(Exception exc) {
        this._out.println(exc.toString());
        flush();
        throw new IllegalStateException(exc.getMessage(), exc);
    }

    public String facetCodeString(int i) {
        switch (i) {
            case 0:
                return "FACET_LENGTH";
            case 1:
                return "FACET_MIN_LENGTH";
            case 2:
                return "FACET_MAX_LENGTH";
            case 3:
                return "FACET_MIN_EXCLUSIVE";
            case 4:
                return "FACET_MIN_INCLUSIVE";
            case 5:
                return "FACET_MAX_INCLUSIVE";
            case 6:
                return "FACET_MAX_EXCLUSIVE";
            case 7:
                return "FACET_TOTAL_DIGITS";
            case 8:
                return "FACET_FRACTION_DIGITS";
            default:
                return "Unknown facet code (" + i + MotionUtils.f31762d;
        }
    }

    public void flush() {
        this._out.flush();
    }

    public void indent() {
        this._indent += GlideException.C1935a.f14609h;
    }

    public void outdent() {
        this._indent = this._indent.substring(0, r0.length() - 2);
    }

    public BigInteger readBigInteger() {
        byte[] readByteArray = readByteArray();
        if (readByteArray.length == 0) {
            return null;
        }
        return (readByteArray.length == 1 && readByteArray[0] == 0) ? BigInteger.ZERO : (readByteArray.length == 1 && readByteArray[0] == 1) ? BigInteger.ONE : new BigInteger(readByteArray);
    }

    public byte[] readByteArray() {
        try {
            byte[] bArr = new byte[this._input.readShort()];
            this._input.readFully(bArr);
            return bArr;
        } catch (IOException e) {
            error(e);
            return null;
        }
    }

    public double readDouble() {
        try {
            return this._input.readDouble();
        } catch (IOException e) {
            error(e);
            return 0.0d;
        }
    }

    public void readEnd() {
        try {
            this._input.close();
        } catch (IOException unused) {
        }
        this._input = null;
        this._stringPool = null;
    }

    public String readHandle() {
        return readString();
    }

    public int readInt() {
        try {
            return this._input.readInt();
        } catch (IOException e) {
            this.error(e);
            return 0;
        }
    }

    public QName readQName() {
        String readString = readString();
        String readString2 = readString();
        if (readString2 == null) {
            return null;
        }
        return new QName(readString, readString2);
    }

    public QNameSet readQNameSet() {
        int readShort = readShort();
        HashSet hashSet = new HashSet();
        int readShort2 = readShort();
        for (int i = 0; i < readShort2; i++) {
            hashSet.add(readString());
        }
        HashSet hashSet2 = new HashSet();
        int readShort3 = readShort();
        for (int i2 = 0; i2 < readShort3; i2++) {
            hashSet2.add(readQName());
        }
        HashSet hashSet3 = new HashSet();
        int readShort4 = readShort();
        for (int i3 = 0; i3 < readShort4; i3++) {
            hashSet3.add(readQName());
        }
        return readShort == 1 ? QNameSet.forSets(hashSet, null, hashSet2, hashSet3) : QNameSet.forSets(null, hashSet, hashSet3, hashSet2);
    }

    public SOAPArrayType readSOAPArrayType() {
        QName readQName = readQName();
        String readString = readString();
        if (readQName == null) {
            return null;
        }
        return new SOAPArrayType(readQName, readString);
    }

    public int readShort() {
        try {
            return this._input.readUnsignedShort();
        } catch (IOException e) {
            this.error(e);
            return 0;
        }
    }

    public String readString() {
        return this._stringPool.stringForCode(readShort());
    }

    public String readType() {
        return readHandle();
    }

    public String readXmlValueObject() {
        String str;
        String readType = readType();
        if (readType == null) {
            return "null";
        }
        int readShort = readShort();
        if (readShort != 0) {
            switch (readShort) {
                case 2:
                case 3:
                case 6:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    str = readString();
                    break;
                case 4:
                case 5:
                    String str2 = new String(HexBin.encode(readByteArray()), StandardCharsets.ISO_8859_1);
                    if (str2.length() <= 19) {
                        str = str2;
                        break;
                    } else {
                        str = ((Object) str2.subSequence(0, 16)) + RemoveAudioAction.f58149k;
                        break;
                    }
                case 7:
                case 8:
                    str = QNameHelper.pretty(readQName());
                    break;
                case 9:
                case 10:
                    str = Double.toString(readDouble());
                    break;
            }
            return str + " (" + readType + ": " + readShort + MotionUtils.f31762d;
        }
        str = "nil";
        return str + " (" + readType + ": " + readShort + MotionUtils.f31762d;
    }

    public String whitespaceCodeString(int i) {
        if (i == 0) {
            return "WS_UNSPECIFIED";
        }
        if (i == 1) {
            return "WS_PRESERVE";
        }
        if (i == 2) {
            return "WS_REPLACE";
        }
        if (i == 3) {
            return "WS_COLLAPSE";
        }
        return "Unknown whitespace code (" + i + MotionUtils.f31762d;
    }

    public void error(String str) {
        this._out.println(str);
        flush();
        throw new IllegalStateException(str);
    }

    public static void dump(InputStream inputStream) {
        dump(inputStream, "", System.out);
    }

    public static void dump(InputStream inputStream, String str) {
        dump(inputStream, str, System.out);
    }

    public static void dump(InputStream inputStream, String str, PrintStream printStream) {
        new XsbDumper(inputStream, str, printStream).dumpAll();
    }
}
