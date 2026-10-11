package sun.awt;

import com.bumptech.glide.load.engine.GlideException;
import com.onyx.android.sdk.base.utils.FontUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.awt.Font;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.Vector;
import org.apache.commons.collections4.MapUtils;
import org.apache.commons.lang3.SystemUtils;
import org.apache.commons.text.AlphabetConverter;
import org.apache.xerces.dom3.as.ASDataType;
import org.apache.xmlbeans.impl.common.NameUtil;
import sun.font.CompositeFontDescriptor;
import sun.font.FontUtilities;
import sun.font.SunFontManager;
import sun.util.logging.NeoPlatformLogger;

/* loaded from: classes16.dex */
public abstract class FontConfiguration {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int HEAD_LENGTH = 20;
    private static final int INDEX_TABLEEND = 14;
    private static final int INDEX_alphabeticSuffix = 11;
    private static final int INDEX_appendedfontpath = 16;
    private static final int INDEX_awtfontpaths = 7;
    private static final int INDEX_componentFontNameIDs = 5;
    private static final int INDEX_elcIDs = 2;
    private static final int INDEX_exclusions = 8;
    private static final int INDEX_fallbackScripts = 15;
    private static final int INDEX_filenames = 6;
    private static final int INDEX_fontfileNameIDs = 4;
    private static final int INDEX_proportionals = 9;
    private static final int INDEX_scriptFonts = 1;
    private static final int INDEX_scriptFontsMotif = 10;
    private static final int INDEX_scriptIDs = 0;
    private static final int INDEX_sequences = 3;
    private static final int INDEX_stringIDs = 12;
    private static final int INDEX_stringTable = 13;
    private static final int INDEX_version = 17;
    protected static final int NUM_FONTS = 5;
    protected static final int NUM_STYLES = 4;
    private static final String UNDEFINED_COMPONENT_FONT = "unknown";
    protected static String encoding = null;
    protected static FontConfiguration fontConfig = null;
    private static short[] head = null;
    protected static boolean isProperties = true;
    protected static Hashtable<String, String> localeMap;
    protected static NeoPlatformLogger logger;
    protected static String osName;
    protected static String osVersion;
    protected static Locale startupLocale;
    private static String[] stringCache;
    private static short stringIDNum;
    private static short[] stringIDs;
    private static StringBuilder stringTable;
    private static short[] table_alphabeticSuffix;
    protected static short[] table_awtfontpaths;
    private static short[] table_componentFontNameIDs;
    private static short[] table_elcIDs;
    private static short[] table_exclusions;
    private static short[] table_filenames;
    private static short[] table_fontfileNameIDs;
    private static short[] table_proportionals;
    private static short[] table_scriptFonts;
    private static short[] table_scriptFontsMotif;
    private static short[] table_scriptIDs;
    private static short[] table_sequences;
    private static short[] table_stringIDs;
    private static char[] table_stringTable;
    public static boolean verbose;
    private String alphabeticSuffix;
    private Hashtable<String, Charset> charsetRegistry;
    private int[] compCoreNum;
    private int[][][] compExclusions;
    private short[][][] compFontNameIDs;
    private String[] componentFonts;
    HashSet<String> coreFontFileNames;
    private Set<Short> coreFontNameIDs;
    HashMap<String, Boolean> existsMap;
    private Set<Short> fallbackFontNameIDs;
    HashMap<String, String> filenamesMap;
    protected File fontConfigFile;
    private FontDescriptor[][][] fontDescriptors;
    protected SunFontManager fontManager;
    protected boolean foundOsSpecificFile;
    private short initELC;
    private String initEncoding;
    private Locale initLocale;
    protected boolean inited;
    protected String javaLib;
    private int numCoreFonts;
    protected boolean preferLocaleFonts;
    protected boolean preferPropFonts;
    protected HashMap<String, Object> reorderMap;
    private HashMap<String, Short> reorderScripts;
    protected static final String[] fontNames = {"serif", "sansserif", "monospaced", "dialog", "dialoginput"};
    protected static final String[] publicFontNames = {"Serif", Font.SANS_SERIF, Font.MONOSPACED, Font.DIALOG, Font.DIALOG_INPUT};
    protected static final String[] styleNames = {"plain", "bold", "italic", "bolditalic"};
    protected static String[] installedFallbackFontFiles = null;
    private static final int[] EMPTY_INT_ARRAY = new int[0];
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private static final short[] EMPTY_SHORT_ARRAY = new short[0];

    /* loaded from: classes16.dex */
    public static class PropertiesHandler {
        private HashMap<Short, Short> alphabeticSuffix;
        private String appendedfontpath;
        private HashMap<Short, Short> awtfontpaths;
        private HashMap<String, Short> componentFontNameIDs;
        private HashMap<String, Short> elcIDs;
        private HashMap<Short, int[]> exclusions;
        private short[] fallbackScriptIDs;
        private HashMap<Short, Short> filenames;
        private HashMap<String, Integer> fontStyleIDs;
        private HashMap<String, Short> fontfileNameIDs;
        private HashMap<String, Integer> logicalFontIDs;
        private HashMap<Short, Short> proportionals;
        private HashMap<Short, Short> scriptAllfonts;
        private HashMap<Short, Short> scriptAllfontsMotif;
        private HashMap<Short, Short[]> scriptFonts;
        private HashMap<Short, Short[]> scriptFontsMotif;
        private HashMap<String, Short> scriptIDs;
        private HashMap<Short, short[]> sequences;
        private String version;

        /* loaded from: classes16.dex */
        public class FontProperties extends Properties {
            public FontProperties() {
            }

            @Override // java.util.Hashtable, java.util.Dictionary, java.util.Map
            public synchronized Object put(Object obj, Object obj2) {
                PropertiesHandler.this.parseProperty((String) obj, (String) obj2);
                return null;
            }
        }

        private Short getID(HashMap<String, Short> hashMap, String str) {
            Short sh = hashMap.get(str);
            if (sh != null) {
                return sh;
            }
            hashMap.put(str, Short.valueOf((short) hashMap.size()));
            return hashMap.get(str);
        }

        private void initBinaryTable() {
            int i;
            int i2;
            short[] unused = FontConfiguration.head = new short[20];
            FontConfiguration.head[0] = 20;
            short[] unused2 = FontConfiguration.table_scriptIDs = FontConfiguration.toList(this.scriptIDs);
            FontConfiguration.head[1] = (short) (FontConfiguration.head[0] + FontConfiguration.table_scriptIDs.length);
            short[] unused3 = FontConfiguration.table_scriptFonts = new short[FontConfiguration.table_scriptIDs.length + (this.scriptFonts.size() * 20)];
            for (Map.Entry<Short, Short> entry : this.scriptAllfonts.entrySet()) {
                FontConfiguration.table_scriptFonts[entry.getKey().intValue()] = entry.getValue().shortValue();
            }
            int length = FontConfiguration.table_scriptIDs.length;
            for (Map.Entry<Short, Short[]> entry2 : this.scriptFonts.entrySet()) {
                FontConfiguration.table_scriptFonts[entry2.getKey().intValue()] = (short) (-length);
                Short[] value = entry2.getValue();
                for (int i3 = 0; i3 < 20; i3++) {
                    if (value[i3] != null) {
                        i2 = length + 1;
                        FontConfiguration.table_scriptFonts[length] = value[i3].shortValue();
                    } else {
                        i2 = length + 1;
                        FontConfiguration.table_scriptFonts[length] = 0;
                    }
                    length = i2;
                }
            }
            FontConfiguration.head[2] = (short) (FontConfiguration.head[1] + FontConfiguration.table_scriptFonts.length);
            short[] unused4 = FontConfiguration.table_elcIDs = FontConfiguration.toList(this.elcIDs);
            FontConfiguration.head[3] = (short) (FontConfiguration.head[2] + FontConfiguration.table_elcIDs.length);
            short[] unused5 = FontConfiguration.table_sequences = new short[this.elcIDs.size() * 5];
            for (Map.Entry<Short, short[]> entry3 : this.sequences.entrySet()) {
                int intValue = entry3.getKey().intValue();
                short[] value2 = entry3.getValue();
                if (value2.length == 1) {
                    for (int i4 = 0; i4 < 5; i4++) {
                        FontConfiguration.table_sequences[(intValue * 5) + i4] = value2[0];
                    }
                } else {
                    for (int i5 = 0; i5 < 5; i5++) {
                        FontConfiguration.table_sequences[(intValue * 5) + i5] = value2[i5];
                    }
                }
            }
            FontConfiguration.head[4] = (short) (FontConfiguration.head[3] + FontConfiguration.table_sequences.length);
            short[] unused6 = FontConfiguration.table_fontfileNameIDs = FontConfiguration.toList(this.fontfileNameIDs);
            FontConfiguration.head[5] = (short) (FontConfiguration.head[4] + FontConfiguration.table_fontfileNameIDs.length);
            short[] unused7 = FontConfiguration.table_componentFontNameIDs = FontConfiguration.toList(this.componentFontNameIDs);
            FontConfiguration.head[6] = (short) (FontConfiguration.head[5] + FontConfiguration.table_componentFontNameIDs.length);
            short[] unused8 = FontConfiguration.table_filenames = new short[FontConfiguration.table_componentFontNameIDs.length];
            Arrays.fill(FontConfiguration.table_filenames, (short) -1);
            for (Map.Entry<Short, Short> entry4 : this.filenames.entrySet()) {
                FontConfiguration.table_filenames[entry4.getKey().shortValue()] = entry4.getValue().shortValue();
            }
            FontConfiguration.head[7] = (short) (FontConfiguration.head[6] + FontConfiguration.table_filenames.length);
            FontConfiguration.table_awtfontpaths = new short[FontConfiguration.table_scriptIDs.length];
            for (Map.Entry<Short, Short> entry5 : this.awtfontpaths.entrySet()) {
                FontConfiguration.table_awtfontpaths[entry5.getKey().shortValue()] = entry5.getValue().shortValue();
            }
            FontConfiguration.head[8] = (short) (FontConfiguration.head[7] + FontConfiguration.table_awtfontpaths.length);
            short[] unused9 = FontConfiguration.table_exclusions = new short[this.scriptIDs.size()];
            for (Map.Entry<Short, int[]> entry6 : this.exclusions.entrySet()) {
                int[] value3 = entry6.getValue();
                char[] cArr = new char[value3.length * 2];
                int i6 = 0;
                for (int i7 : value3) {
                    int i8 = i6 + 1;
                    cArr[i6] = (char) (i7 >> 16);
                    i6 = i8 + 1;
                    cArr[i8] = (char) (i7 & 65535);
                }
                FontConfiguration.table_exclusions[entry6.getKey().shortValue()] = FontConfiguration.getStringID(new String(cArr));
            }
            FontConfiguration.head[9] = (short) (FontConfiguration.head[8] + FontConfiguration.table_exclusions.length);
            short[] unused10 = FontConfiguration.table_proportionals = new short[this.proportionals.size() * 2];
            int i9 = 0;
            for (Map.Entry<Short, Short> entry7 : this.proportionals.entrySet()) {
                int i10 = i9 + 1;
                FontConfiguration.table_proportionals[i9] = entry7.getKey().shortValue();
                FontConfiguration.table_proportionals[i10] = entry7.getValue().shortValue();
                i9 = i10 + 1;
            }
            FontConfiguration.head[10] = (short) (FontConfiguration.head[9] + FontConfiguration.table_proportionals.length);
            if (this.scriptAllfontsMotif.size() == 0 && this.scriptFontsMotif.size() == 0) {
                short[] unused11 = FontConfiguration.table_scriptFontsMotif = FontConfiguration.EMPTY_SHORT_ARRAY;
            } else {
                short[] unused12 = FontConfiguration.table_scriptFontsMotif = new short[FontConfiguration.table_scriptIDs.length + (this.scriptFontsMotif.size() * 20)];
                for (Map.Entry<Short, Short> entry8 : this.scriptAllfontsMotif.entrySet()) {
                    FontConfiguration.table_scriptFontsMotif[entry8.getKey().intValue()] = entry8.getValue().shortValue();
                }
                int length2 = FontConfiguration.table_scriptIDs.length;
                for (Map.Entry<Short, Short[]> entry9 : this.scriptFontsMotif.entrySet()) {
                    FontConfiguration.table_scriptFontsMotif[entry9.getKey().intValue()] = (short) (-length2);
                    Short[] value4 = entry9.getValue();
                    for (int i11 = 0; i11 < 20; i11++) {
                        if (value4[i11] != null) {
                            i = length2 + 1;
                            FontConfiguration.table_scriptFontsMotif[length2] = value4[i11].shortValue();
                        } else {
                            i = length2 + 1;
                            FontConfiguration.table_scriptFontsMotif[length2] = 0;
                        }
                        length2 = i;
                    }
                }
            }
            FontConfiguration.head[11] = (short) (FontConfiguration.head[10] + FontConfiguration.table_scriptFontsMotif.length);
            short[] unused13 = FontConfiguration.table_alphabeticSuffix = new short[this.alphabeticSuffix.size() * 2];
            int i12 = 0;
            for (Map.Entry<Short, Short> entry10 : this.alphabeticSuffix.entrySet()) {
                int i13 = i12 + 1;
                FontConfiguration.table_alphabeticSuffix[i12] = entry10.getKey().shortValue();
                FontConfiguration.table_alphabeticSuffix[i13] = entry10.getValue().shortValue();
                i12 = i13 + 1;
            }
            FontConfiguration.head[15] = FontConfiguration.getShortArrayID(this.fallbackScriptIDs);
            FontConfiguration.head[16] = FontConfiguration.getStringID(this.appendedfontpath);
            FontConfiguration.head[17] = FontConfiguration.getStringID(this.version);
            FontConfiguration.head[12] = (short) (FontConfiguration.head[11] + FontConfiguration.table_alphabeticSuffix.length);
            short[] unused14 = FontConfiguration.table_stringIDs = new short[FontConfiguration.stringIDNum + 1];
            System.arraycopy(FontConfiguration.stringIDs, 0, FontConfiguration.table_stringIDs, 0, FontConfiguration.stringIDNum + 1);
            FontConfiguration.head[13] = (short) (FontConfiguration.head[12] + FontConfiguration.stringIDNum + 1);
            char[] unused15 = FontConfiguration.table_stringTable = FontConfiguration.stringTable.toString().toCharArray();
            FontConfiguration.head[14] = (short) (FontConfiguration.head[13] + FontConfiguration.stringTable.length());
            String[] unused16 = FontConfiguration.stringCache = new String[FontConfiguration.table_stringIDs.length];
        }

        private void initHashMaps() {
            this.scriptIDs = new HashMap<>();
            this.elcIDs = new HashMap<>();
            HashMap<String, Short> hashMap = new HashMap<>();
            this.componentFontNameIDs = hashMap;
            hashMap.put("", (short) 0);
            this.fontfileNameIDs = new HashMap<>();
            this.filenames = new HashMap<>();
            this.sequences = new HashMap<>();
            this.scriptFonts = new HashMap<>();
            this.scriptAllfonts = new HashMap<>();
            this.exclusions = new HashMap<>();
            this.awtfontpaths = new HashMap<>();
            this.proportionals = new HashMap<>();
            this.scriptFontsMotif = new HashMap<>();
            this.scriptAllfontsMotif = new HashMap<>();
            this.alphabeticSuffix = new HashMap<>();
            this.fallbackScriptIDs = FontConfiguration.EMPTY_SHORT_ARRAY;
        }

        private void initLogicalNameStyle() {
            this.logicalFontIDs = new HashMap<>();
            this.fontStyleIDs = new HashMap<>();
            this.logicalFontIDs.put("serif", 0);
            this.logicalFontIDs.put("sansserif", 1);
            this.logicalFontIDs.put("monospaced", 2);
            this.logicalFontIDs.put("dialog", 3);
            this.logicalFontIDs.put("dialoginput", 4);
            this.fontStyleIDs.put("plain", 0);
            this.fontStyleIDs.put("bold", 1);
            this.fontStyleIDs.put("italic", 2);
            this.fontStyleIDs.put("bolditalic", 3);
        }

        private int[] parseExclusions(String str, String str2) {
            NeoPlatformLogger neoPlatformLogger;
            if (str2 == null) {
                return FontConfiguration.EMPTY_INT_ARRAY;
            }
            int i = 0;
            int i2 = 1;
            int i3 = 0;
            while (true) {
                int indexOf = str2.indexOf(44, i3);
                if (indexOf == -1) {
                    break;
                }
                i2++;
                i3 = indexOf + 1;
            }
            int i4 = i2 * 2;
            int[] iArr = new int[i4];
            int i5 = 0;
            while (i < i4) {
                try {
                    int indexOf2 = str2.indexOf(45, i5);
                    String substring = str2.substring(i5, indexOf2);
                    int i6 = indexOf2 + 1;
                    int indexOf3 = str2.indexOf(44, i6);
                    if (indexOf3 == -1) {
                        indexOf3 = str2.length();
                    }
                    String substring2 = str2.substring(i6, indexOf3);
                    int i7 = indexOf3 + 1;
                    int length = substring.length();
                    int length2 = substring2.length();
                    if ((length != 4 && length != 6) || (length2 != 4 && length2 != 6)) {
                        throw new Exception();
                    }
                    int parseInt = Integer.parseInt(substring, 16);
                    int parseInt2 = Integer.parseInt(substring2, 16);
                    if (parseInt > parseInt2) {
                        throw new Exception();
                    }
                    int i8 = i + 1;
                    iArr[i] = parseInt;
                    i = i8 + 1;
                    iArr[i8] = parseInt2;
                    i5 = i7;
                } catch (Exception unused) {
                    if (FontUtilities.debugFonts() && (neoPlatformLogger = FontConfiguration.logger) != null) {
                        neoPlatformLogger.config("Failed parsing " + str + " property of font configuration.");
                    }
                    return FontConfiguration.EMPTY_INT_ARRAY;
                }
            }
            return iArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void parseProperty(String str, String str2) {
            boolean z;
            Short id;
            short[] sArr;
            if (str.startsWith("filename.")) {
                String substring = str.substring(9);
                if (!"MingLiU_HKSCS".equals(substring)) {
                    substring = substring.replace(NameUtil.USCORE, ' ');
                }
                this.filenames.put(getID(this.componentFontNameIDs, substring), getID(this.fontfileNameIDs, str2));
                return;
            }
            if (str.startsWith("exclusion.")) {
                String substring2 = str.substring(10);
                this.exclusions.put(getID(this.scriptIDs, substring2), parseExclusions(substring2, str2));
                return;
            }
            if (str.startsWith("sequence.")) {
                String substring3 = str.substring(9);
                String[] strArr = (String[]) FontConfiguration.splitSequence(str2).toArray(FontConfiguration.EMPTY_STRING_ARRAY);
                short[] sArr2 = new short[strArr.length];
                boolean z2 = false;
                boolean z3 = false;
                for (int i = 0; i < strArr.length; i++) {
                    if ("alphabetic/default".equals(strArr[i])) {
                        strArr[i] = Constants.ATTRVAL_ALPHABETIC;
                        z2 = true;
                    } else if ("alphabetic/1252".equals(strArr[i])) {
                        strArr[i] = Constants.ATTRVAL_ALPHABETIC;
                        z3 = true;
                    }
                    sArr2[i] = getID(this.scriptIDs, strArr[i]).shortValue();
                }
                short shortArrayID = FontConfiguration.getShortArrayID(sArr2);
                int indexOf = substring3.indexOf(46);
                if (indexOf != -1) {
                    id = getID(this.elcIDs, substring3.substring(indexOf + 1));
                    substring3 = substring3.substring(0, indexOf);
                } else {
                    if (Constants.ELEMNAME_FALLBACK_STRING.equals(substring3)) {
                        this.fallbackScriptIDs = sArr2;
                        return;
                    }
                    if (!"allfonts".equals(substring3)) {
                        NeoPlatformLogger neoPlatformLogger = FontConfiguration.logger;
                        if (neoPlatformLogger != null) {
                            neoPlatformLogger.config("Error sequence def: <sequence." + substring3 + ">");
                            return;
                        }
                        return;
                    }
                    id = getID(this.elcIDs, "NULL.NULL.NULL");
                }
                if ("allfonts".equals(substring3)) {
                    sArr = new short[]{shortArrayID};
                } else {
                    short[] sArr3 = this.sequences.get(id);
                    if (sArr3 == null) {
                        sArr3 = new short[5];
                    }
                    Integer num = this.logicalFontIDs.get(substring3);
                    if (num == null) {
                        NeoPlatformLogger neoPlatformLogger2 = FontConfiguration.logger;
                        if (neoPlatformLogger2 != null) {
                            neoPlatformLogger2.config("Unrecognizable logicfont name " + substring3);
                            return;
                        }
                        return;
                    }
                    sArr3[num.intValue()] = shortArrayID;
                    sArr = sArr3;
                }
                this.sequences.put(id, sArr);
                if (z2) {
                    this.alphabeticSuffix.put(id, Short.valueOf(FontConfiguration.getStringID("default")));
                    return;
                } else {
                    if (z3) {
                        this.alphabeticSuffix.put(id, Short.valueOf(FontConfiguration.getStringID("1252")));
                        return;
                    }
                    return;
                }
            }
            if (str.startsWith("allfonts.")) {
                String substring4 = str.substring(9);
                if (substring4.endsWith(".motif")) {
                    this.scriptAllfontsMotif.put(getID(this.scriptIDs, substring4.substring(0, substring4.length() - 6)), getID(this.componentFontNameIDs, str2));
                    return;
                } else {
                    this.scriptAllfonts.put(getID(this.scriptIDs, substring4), getID(this.componentFontNameIDs, str2));
                    return;
                }
            }
            if (str.startsWith("awtfontpath.")) {
                this.awtfontpaths.put(getID(this.scriptIDs, str.substring(12)), Short.valueOf(FontConfiguration.getStringID(str2)));
                return;
            }
            if ("version".equals(str)) {
                this.version = str2;
                return;
            }
            if ("appendedfontpath".equals(str)) {
                this.appendedfontpath = str2;
                return;
            }
            if (str.startsWith("proportional.")) {
                this.proportionals.put(getID(this.componentFontNameIDs, str.substring(13).replace(NameUtil.USCORE, ' ')), getID(this.componentFontNameIDs, str2));
                return;
            }
            int indexOf2 = str.indexOf(46);
            if (indexOf2 == -1) {
                NeoPlatformLogger neoPlatformLogger3 = FontConfiguration.logger;
                if (neoPlatformLogger3 != null) {
                    neoPlatformLogger3.config("Failed parsing " + str + " property of font configuration.");
                    return;
                }
                return;
            }
            int i2 = indexOf2 + 1;
            int indexOf3 = str.indexOf(46, i2);
            if (indexOf3 == -1) {
                NeoPlatformLogger neoPlatformLogger4 = FontConfiguration.logger;
                if (neoPlatformLogger4 != null) {
                    neoPlatformLogger4.config("Failed parsing " + str + " property of font configuration.");
                    return;
                }
                return;
            }
            if (str.endsWith(".motif")) {
                str = str.substring(0, str.length() - 6);
                z = true;
            } else {
                z = false;
            }
            Integer num2 = this.logicalFontIDs.get(str.substring(0, indexOf2));
            Integer num3 = this.fontStyleIDs.get(str.substring(i2, indexOf3));
            Short id2 = getID(this.scriptIDs, str.substring(indexOf3 + 1));
            if (num2 == null || num3 == null) {
                NeoPlatformLogger neoPlatformLogger5 = FontConfiguration.logger;
                if (neoPlatformLogger5 != null) {
                    neoPlatformLogger5.config("unrecognizable logicfont name/style at " + str);
                    return;
                }
                return;
            }
            Short[] shArr = z ? this.scriptFontsMotif.get(id2) : this.scriptFonts.get(id2);
            if (shArr == null) {
                shArr = new Short[20];
            }
            shArr[(num2.intValue() * 4) + num3.intValue()] = getID(this.componentFontNameIDs, str2);
            if (z) {
                this.scriptFontsMotif.put(id2, shArr);
            } else {
                this.scriptFonts.put(id2, shArr);
            }
        }

        public void load(InputStream inputStream) throws IOException {
            initLogicalNameStyle();
            initHashMaps();
            new FontProperties().load(inputStream);
            initBinaryTable();
        }
    }

    public FontConfiguration(SunFontManager sunFontManager) {
        this.initELC = (short) -1;
        this.compFontNameIDs = (short[][][]) Array.newInstance((Class<?>) short[].class, 5, 4);
        this.compExclusions = new int[5][];
        this.compCoreNum = new int[5];
        this.coreFontNameIDs = new HashSet();
        this.fallbackFontNameIDs = new HashSet();
        this.reorderMap = null;
        this.charsetRegistry = new Hashtable<>(5);
        this.fontDescriptors = (FontDescriptor[][][]) Array.newInstance((Class<?>) FontDescriptor[].class, 5, 4);
        this.numCoreFonts = -1;
        this.componentFonts = null;
        this.filenamesMap = new HashMap<>();
        this.coreFontFileNames = new HashSet<>();
        if (FontUtilities.debugFonts()) {
            FontUtilities.logInfo("Creating standard Font Configuration");
        }
        if (FontUtilities.debugFonts() && logger == null) {
            logger = NeoPlatformLogger.getLogger("sun.awt.FontConfiguration");
        }
        this.fontManager = sunFontManager;
        setOsNameAndVersion();
        setEncoding();
        findFontConfigFile();
    }

    private static boolean contains(short[] sArr, short s, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (sArr[i2] == s) {
                return true;
            }
        }
        return false;
    }

    private static void dump() {
        System.out.println("\n----Head Table------------");
        for (int i = 0; i < 20; i++) {
            System.out.println(GlideException.C1935a.f14609h + i + " : " + ((int) head[i]));
        }
        System.out.println("\n----scriptIDs-------------");
        printTable(table_scriptIDs, 0);
        System.out.println("\n----scriptFonts----------------");
        for (int i2 = 0; i2 < table_scriptIDs.length; i2++) {
            short s = table_scriptFonts[i2];
            if (s >= 0) {
                System.out.println("  allfonts." + getString(table_scriptIDs[i2]) + "=" + getString(table_componentFontNameIDs[s]));
            }
        }
        for (int i3 = 0; i3 < table_scriptIDs.length; i3++) {
            short s2 = table_scriptFonts[i3];
            if (s2 < 0) {
                short s3 = (short) (-s2);
                for (int i4 = 0; i4 < 5; i4++) {
                    for (int i5 = 0; i5 < 4; i5++) {
                        System.out.println(GlideException.C1935a.f14609h + getFontName(i4) + "." + getStyleName(i5) + "." + getString(table_scriptIDs[i3]) + "=" + getString(table_componentFontNameIDs[table_scriptFonts[(i4 * 4) + i5 + s3]]));
                    }
                }
            }
        }
        System.out.println("\n----elcIDs----------------");
        printTable(table_elcIDs, 0);
        System.out.println("\n----sequences-------------");
        for (int i6 = 0; i6 < table_elcIDs.length; i6++) {
            System.out.println(GlideException.C1935a.f14609h + i6 + "/" + getString(table_elcIDs[i6]));
            short[] shortArray = getShortArray(table_sequences[(i6 * 5) + 0]);
            for (int i7 = 0; i7 < shortArray.length; i7++) {
                System.out.println("     " + getString(table_scriptIDs[shortArray[i7]]));
            }
        }
        System.out.println("\n----fontfileNameIDs-------");
        printTable(table_fontfileNameIDs, 0);
        System.out.println("\n----componentFontNameIDs--");
        printTable(table_componentFontNameIDs, 1);
        System.out.println("\n----filenames-------------");
        int i8 = 0;
        while (true) {
            short[] sArr = table_filenames;
            if (i8 >= sArr.length) {
                break;
            }
            if (sArr[i8] == -1) {
                System.out.println(GlideException.C1935a.f14609h + i8 + " : null");
            } else {
                System.out.println(GlideException.C1935a.f14609h + i8 + " : " + getString(table_fontfileNameIDs[table_filenames[i8]]));
            }
            i8++;
        }
        System.out.println("\n----awtfontpaths---------");
        for (int i9 = 0; i9 < table_awtfontpaths.length; i9++) {
            System.out.println(GlideException.C1935a.f14609h + getString(table_scriptIDs[i9]) + " : " + getString(table_awtfontpaths[i9]));
        }
        System.out.println("\n----proportionals--------");
        int i10 = 0;
        while (i10 < table_proportionals.length) {
            PrintStream printStream = System.out;
            StringBuilder sb = new StringBuilder();
            sb.append(GlideException.C1935a.f14609h);
            int i11 = i10 + 1;
            sb.append(getString(table_componentFontNameIDs[table_proportionals[i10]]));
            sb.append(AlphabetConverter.f109940d);
            sb.append(getString(table_componentFontNameIDs[table_proportionals[i11]]));
            printStream.println(sb.toString());
            i10 = i11 + 1;
        }
        System.out.println("\n----alphabeticSuffix----");
        int i12 = 0;
        while (i12 < table_alphabeticSuffix.length) {
            PrintStream printStream2 = System.out;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(MapUtils.f104930a);
            int i13 = i12 + 1;
            sb2.append(getString(table_elcIDs[table_alphabeticSuffix[i12]]));
            sb2.append(AlphabetConverter.f109940d);
            sb2.append(getString(table_alphabeticSuffix[i13]));
            printStream2.println(sb2.toString());
            i12 = i13 + 1;
        }
        System.out.println("\n----String Table---------");
        System.out.println("    stringID:    Num =" + table_stringIDs.length);
        System.out.println("    stringTable: Size=" + (table_stringTable.length * 2));
        System.out.println("\n----fallbackScriptIDs---");
        for (short s4 : getShortArray(head[15])) {
            System.out.println(GlideException.C1935a.f14609h + getString(table_scriptIDs[s4]));
        }
        System.out.println("\n----appendedfontpath-----");
        System.out.println(GlideException.C1935a.f14609h + getString(head[16]));
        System.out.println("\n----Version--------------");
        System.out.println(GlideException.C1935a.f14609h + getString(head[17]));
    }

    private File findImpl(String str) {
        File file = new File(str + ".properties");
        if (FontUtilities.debugFonts()) {
            logger.info("Looking for text fontconfig file : " + file);
        }
        if (file.canRead()) {
            if (FontUtilities.debugFonts()) {
                logger.info("Found file : " + file);
            }
            isProperties = true;
            return file;
        }
        File file2 = new File(str + ".bfc");
        if (FontUtilities.debugFonts()) {
            logger.info("Looking for binary fontconfig file : " + file2);
        }
        if (!file2.canRead()) {
            return null;
        }
        if (FontUtilities.debugFonts()) {
            logger.info("Found file : " + file2);
        }
        isProperties = false;
        return file2;
    }

    private static int getArrayIndex(String[] strArr, String str) {
        for (int i = 0; i < strArr.length; i++) {
            if (str.equals(strArr[i])) {
                return i;
            }
        }
        return 0;
    }

    private static short getComponentFileID(short s) {
        return table_filenames[s];
    }

    private static String getComponentFileName(short s) {
        if (s < 0) {
            return null;
        }
        return getString(table_fontfileNameIDs[s]);
    }

    public static short getComponentFontID(short s, int i, int i2) {
        short[] sArr = table_scriptFonts;
        short s2 = sArr[s];
        return s2 >= 0 ? s2 : sArr[(-s2) + (i * 4) + i2];
    }

    public static short getComponentFontIDMotif(short s, int i, int i2) {
        short[] sArr = table_scriptFontsMotif;
        if (sArr.length == 0) {
            return (short) 0;
        }
        short s2 = sArr[s];
        return s2 >= 0 ? s2 : sArr[(-s2) + (i * 4) + i2];
    }

    public static String getComponentFontName(short s) {
        if (s < 0) {
            return null;
        }
        return getString(table_componentFontNameIDs[s]);
    }

    private static int[] getExclusionRanges(short s) {
        short s2 = table_exclusions[s];
        if (s2 == 0) {
            return EMPTY_INT_ARRAY;
        }
        char[] charArray = getString(s2).toCharArray();
        int length = charArray.length / 2;
        int[] iArr = new int[length];
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int i3 = i2 + 1;
            iArr[i] = (charArray[i2] << 16) + (charArray[i3] & 65535);
            i++;
            i2 = i3 + 1;
        }
        return iArr;
    }

    private static short[] getFallbackScripts() {
        return getShortArray(head[15]);
    }

    private CharsetEncoder getFontCharsetEncoder(final String str, String str2) {
        Charset charset = str.equals("default") ? this.charsetRegistry.get(str2) : this.charsetRegistry.get(str);
        if (charset != null) {
            return charset.newEncoder();
        }
        if (str.startsWith("sun.awt.") || str.equals("default")) {
            Class cls = (Class) AccessController.doPrivileged(new PrivilegedAction<Class<?>>() { // from class: sun.awt.FontConfiguration.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.security.PrivilegedAction
                public Class<?> run() {
                    try {
                        return Class.forName(str, true, ClassLoader.getSystemClassLoader());
                    } catch (ClassNotFoundException unused) {
                        return null;
                    }
                }
            });
            if (cls != null) {
                try {
                    charset = (Charset) cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception unused) {
                }
            }
        } else {
            charset = Charset.forName(str);
        }
        if (charset == null) {
            charset = getDefaultFontCharset(str2);
        }
        if (str.equals("default")) {
            this.charsetRegistry.put(str2, charset);
        } else {
            this.charsetRegistry.put(str, charset);
        }
        return charset.newEncoder();
    }

    public static FontConfiguration getFontConfiguration() {
        return fontConfig;
    }

    public static int getFontIndex(String str) {
        return getArrayIndex(fontNames, str);
    }

    public static String getFontName(int i) {
        return fontNames[i];
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private short getInitELC() {
        /*
            r6 = this;
            short r0 = r6.initELC
            r1 = -1
            if (r0 == r1) goto L6
            return r0
        L6:
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            r1 = 0
            r2 = r1
        Ld:
            short[] r3 = sun.awt.FontConfiguration.table_elcIDs
            int r4 = r3.length
            if (r2 >= r4) goto L22
            short r3 = r3[r2]
            java.lang.String r3 = getString(r3)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r2)
            r0.put(r3, r4)
            int r2 = r2 + 1
            goto Ld
        L22:
            java.util.Locale r2 = r6.initLocale
            java.lang.String r2 = r2.getLanguage()
            java.util.Locale r3 = r6.initLocale
            java.lang.String r3 = r3.getCountry()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = r6.initEncoding
            r4.append(r5)
            java.lang.String r5 = "."
            r4.append(r5)
            r4.append(r2)
            r4.append(r5)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            boolean r4 = r0.containsKey(r3)
            if (r4 != 0) goto L82
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = r6.initEncoding
            r3.append(r4)
            r3.append(r5)
            r3.append(r2)
            java.lang.String r3 = r3.toString()
            boolean r2 = r0.containsKey(r3)
            if (r2 != 0) goto L82
            java.lang.String r3 = r6.initEncoding
            boolean r2 = r0.containsKey(r3)
            if (r2 == 0) goto L73
            goto L82
        L73:
            java.lang.String r2 = "NULL.NULL.NULL"
            java.lang.Object r0 = r0.get(r2)
            java.lang.Integer r0 = (java.lang.Integer) r0
            short r0 = r0.shortValue()
            r6.initELC = r0
            goto L8e
        L82:
            java.lang.Object r0 = r0.get(r3)
            java.lang.Integer r0 = (java.lang.Integer) r0
            short r0 = r0.shortValue()
            r6.initELC = r0
        L8e:
            short[] r0 = sun.awt.FontConfiguration.table_alphabeticSuffix
            int r2 = r0.length
            if (r1 >= r2) goto La9
            short r2 = r6.initELC
            short r3 = r0[r1]
            if (r2 != r3) goto La6
            int r1 = r1 + 1
            short r0 = r0[r1]
            java.lang.String r0 = getString(r0)
            r6.alphabeticSuffix = r0
            short r6 = r6.initELC
            return r6
        La6:
            int r1 = r1 + 2
            goto L8e
        La9:
            short r6 = r6.initELC
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.FontConfiguration.getInitELC():short");
    }

    public static String getLogicalFontFaceName(String str, int i) {
        return str.toLowerCase(Locale.ENGLISH) + "." + getStyleString(i);
    }

    private static Object getReorderSequence() {
        FontConfiguration fontConfiguration = fontConfig;
        if (fontConfiguration.reorderMap == null) {
            fontConfiguration.initReorderMap();
        }
        HashMap<String, Object> hashMap = fontConfig.reorderMap;
        String language = startupLocale.getLanguage();
        Object obj = hashMap.get(encoding + "." + language + "." + startupLocale.getCountry());
        if (obj == null) {
            obj = hashMap.get(encoding + "." + language);
        }
        return obj == null ? hashMap.get(encoding) : obj;
    }

    private static String getScriptName(short s) {
        return getString(table_scriptIDs[s]);
    }

    private static short[] getShortArray(short s) {
        char[] charArray = getString(s).toCharArray();
        short[] sArr = new short[charArray.length];
        for (int i = 0; i < charArray.length; i++) {
            sArr[i] = (short) (charArray[i] & 65535);
        }
        return sArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static short getShortArrayID(short[] sArr) {
        char[] cArr = new char[sArr.length];
        for (int i = 0; i < sArr.length; i++) {
            cArr[i] = (char) sArr[i];
        }
        return getStringID(new String(cArr));
    }

    public static String getString(short s) {
        if (s == 0) {
            return null;
        }
        String[] strArr = stringCache;
        if (strArr[s] == null) {
            char[] cArr = table_stringTable;
            short[] sArr = table_stringIDs;
            short s2 = sArr[s];
            strArr[s] = new String(cArr, (int) s2, sArr[s + 1] - s2);
        }
        return stringCache[s];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static short getStringID(String str) {
        if (str == null) {
            return (short) 0;
        }
        short length = (short) stringTable.length();
        stringTable.append(str);
        short length2 = (short) stringTable.length();
        short[] sArr = stringIDs;
        short s = stringIDNum;
        sArr[s] = length;
        sArr[s + 1] = length2;
        short s2 = (short) (s + 1);
        stringIDNum = s2;
        if (s2 + 1 >= sArr.length) {
            short[] sArr2 = new short[s2 + ASDataType.OTHER_SIMPLE_DATATYPE];
            System.arraycopy(sArr, 0, sArr2, 0, s2);
            stringIDs = sArr2;
        }
        return (short) (stringIDNum - 1);
    }

    public static int getStyleIndex(int i) {
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    return 0;
                }
            }
        }
        return i2;
    }

    public static String getStyleName(int i) {
        return styleNames[i];
    }

    public static String getStyleString(int i) {
        return getStyleName(getStyleIndex(i));
    }

    public static boolean hasMonoToPropMap() {
        short[] sArr = table_proportionals;
        return (sArr == null || sArr.length == 0) ? false : true;
    }

    private void initAllComponentFonts() {
        short[] fallbackScripts = getFallbackScripts();
        for (int i = 0; i < 5; i++) {
            short[] coreScripts = getCoreScripts(i);
            this.compCoreNum[i] = coreScripts.length;
            int[][] iArr = new int[coreScripts.length];
            for (int i2 = 0; i2 < coreScripts.length; i2++) {
                iArr[i2] = getExclusionRanges(coreScripts[i2]);
            }
            this.compExclusions[i] = iArr;
            for (int i3 = 0; i3 < 4; i3++) {
                int length = coreScripts.length + fallbackScripts.length;
                short[] sArr = new short[length];
                int i4 = 0;
                while (i4 < coreScripts.length) {
                    sArr[i4] = getComponentFontID(coreScripts[i4], i, i3);
                    if (this.preferLocaleFonts && localeMap != null && this.fontManager.usingAlternateFontforJALocales()) {
                        sArr[i4] = remapLocaleMap(i, i3, coreScripts[i4], sArr[i4]);
                    }
                    if (this.preferPropFonts) {
                        sArr[i4] = remapProportional(i, sArr[i4]);
                    }
                    this.coreFontNameIDs.add(Short.valueOf(sArr[i4]));
                    i4++;
                }
                for (int i5 = 0; i5 < fallbackScripts.length; i5++) {
                    short componentFontID = getComponentFontID(fallbackScripts[i5], i, i3);
                    if (this.preferLocaleFonts && localeMap != null && this.fontManager.usingAlternateFontforJALocales()) {
                        componentFontID = remapLocaleMap(i, i3, fallbackScripts[i5], componentFontID);
                    }
                    if (this.preferPropFonts) {
                        componentFontID = remapProportional(i, componentFontID);
                    }
                    if (!contains(sArr, componentFontID, i4)) {
                        this.fallbackFontNameIDs.add(Short.valueOf(componentFontID));
                        sArr[i4] = componentFontID;
                        i4++;
                    }
                }
                if (i4 < length) {
                    short[] sArr2 = new short[i4];
                    System.arraycopy(sArr, 0, sArr2, 0, i4);
                    sArr = sArr2;
                }
                this.compFontNameIDs[i][i3] = sArr;
            }
        }
    }

    private void initFontConfig() {
        this.initLocale = startupLocale;
        this.initEncoding = encoding;
        if (this.preferLocaleFonts && !willReorderForStartupLocale()) {
            this.preferLocaleFonts = false;
        }
        this.initELC = getInitELC();
        initAllComponentFonts();
    }

    private static boolean isEmpty(short[] sArr) {
        for (short s : sArr) {
            if (s != -1) {
                return false;
            }
        }
        return true;
    }

    public static boolean isLogicalFontFaceName(String str) {
        return isLogicalFontFaceNameLC(str.toLowerCase(Locale.ENGLISH));
    }

    public static boolean isLogicalFontFaceNameLC(String str) {
        int indexOf = str.indexOf(46);
        if (indexOf >= 0) {
            return isLogicalFontFamilyName(str.substring(0, indexOf)) && isLogicalFontStyleName(str.substring(indexOf + 1));
        }
        return isLogicalFontFamilyName(str);
    }

    public static boolean isLogicalFontFamilyName(String str) {
        return isLogicalFontFamilyNameLC(str.toLowerCase(Locale.ENGLISH));
    }

    public static boolean isLogicalFontFamilyNameLC(String str) {
        int i = 0;
        while (true) {
            String[] strArr = fontNames;
            if (i >= strArr.length) {
                return false;
            }
            if (str.equals(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    private static boolean isLogicalFontStyleName(String str) {
        int i = 0;
        while (true) {
            String[] strArr = styleNames;
            if (i >= strArr.length) {
                return false;
            }
            if (str.equals(strArr[i])) {
                return true;
            }
            i++;
        }
    }

    public static void loadBinary(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        head = readShortTable(dataInputStream, 20);
        int[] iArr = new int[14];
        int i = 0;
        int i2 = 0;
        while (i2 < 14) {
            short[] sArr = head;
            int i3 = i2 + 1;
            iArr[i2] = sArr[i3] - sArr[i2];
            i2 = i3;
        }
        table_scriptIDs = readShortTable(dataInputStream, iArr[0]);
        table_scriptFonts = readShortTable(dataInputStream, iArr[1]);
        table_elcIDs = readShortTable(dataInputStream, iArr[2]);
        table_sequences = readShortTable(dataInputStream, iArr[3]);
        table_fontfileNameIDs = readShortTable(dataInputStream, iArr[4]);
        table_componentFontNameIDs = readShortTable(dataInputStream, iArr[5]);
        table_filenames = readShortTable(dataInputStream, iArr[6]);
        table_awtfontpaths = readShortTable(dataInputStream, iArr[7]);
        table_exclusions = readShortTable(dataInputStream, iArr[8]);
        table_proportionals = readShortTable(dataInputStream, iArr[9]);
        table_scriptFontsMotif = readShortTable(dataInputStream, iArr[10]);
        table_alphabeticSuffix = readShortTable(dataInputStream, iArr[11]);
        short[] readShortTable = readShortTable(dataInputStream, iArr[12]);
        table_stringIDs = readShortTable;
        stringCache = new String[readShortTable.length + 1];
        int i4 = iArr[13];
        byte[] bArr = new byte[i4 * 2];
        table_stringTable = new char[i4];
        dataInputStream.read(bArr);
        int i5 = 0;
        while (i < i4) {
            int i6 = i5 + 1;
            table_stringTable[i] = (char) ((bArr[i5] << 8) | (bArr[i6] & 255));
            i++;
            i5 = i6 + 1;
        }
        if (verbose) {
            dump();
        }
    }

    public static void loadProperties(InputStream inputStream) throws IOException {
        stringIDNum = (short) 1;
        stringIDs = new short[1000];
        stringTable = new StringBuilder(4096);
        if (verbose && logger == null) {
            logger = NeoPlatformLogger.getLogger("sun.awt.FontConfiguration");
        }
        new PropertiesHandler().load(inputStream);
        stringIDs = null;
        stringTable = null;
    }

    private static void printTable(short[] sArr, int i) {
        while (i < sArr.length) {
            System.out.println(GlideException.C1935a.f14609h + i + " : " + getString(sArr[i]));
            i++;
        }
    }

    private static short[] readShortTable(DataInputStream dataInputStream, int i) throws IOException {
        if (i == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[i];
        byte[] bArr = new byte[i * 2];
        dataInputStream.read(bArr);
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            int i4 = i3 + 1;
            sArr[i2] = (short) ((bArr[i3] << 8) | (bArr[i4] & 255));
            i2++;
            i3 = i4 + 1;
        }
        return sArr;
    }

    private short remapLocaleMap(int i, int i2, short s, short s2) {
        String string = getString(table_scriptIDs[s]);
        String str = localeMap.get(string);
        if (str == null) {
            String str2 = fontNames[i];
            String str3 = styleNames[i2];
            str = localeMap.get(str2 + "." + str3 + "." + string);
        }
        if (str == null) {
            return s2;
        }
        int i3 = 0;
        while (true) {
            short[] sArr = table_componentFontNameIDs;
            if (i3 >= sArr.length) {
                return s2;
            }
            if (str.equalsIgnoreCase(getString(sArr[i3]))) {
                return (short) i3;
            }
            i3++;
        }
    }

    private short remapProportional(int i, short s) {
        if (this.preferPropFonts && table_proportionals.length != 0 && i != 2 && i != 4) {
            int i2 = 0;
            while (true) {
                short[] sArr = table_proportionals;
                if (i2 >= sArr.length) {
                    break;
                }
                if (sArr[i2] == s) {
                    return sArr[i2 + 1];
                }
                i2 += 2;
            }
        }
        return s;
    }

    private void reorderSequenceForLocale(String[] strArr) {
        Object reorderSequence = getReorderSequence();
        if (reorderSequence instanceof String) {
            for (int i = 0; i < strArr.length; i++) {
                if (strArr[i].equals(reorderSequence)) {
                    shuffle(strArr, i, 0);
                    return;
                }
            }
            return;
        }
        if (reorderSequence instanceof String[]) {
            String[] strArr2 = (String[]) reorderSequence;
            for (int i2 = 0; i2 < strArr2.length; i2++) {
                for (int i3 = 0; i3 < strArr.length; i3++) {
                    if (strArr[i3].equals(strArr2[i2])) {
                        shuffle(strArr, i3, i2);
                    }
                }
            }
        }
    }

    private static void sanityCheck() {
        String str = (String) AccessController.doPrivileged(new PrivilegedAction<String>() { // from class: sun.awt.FontConfiguration.3
            @Override // java.security.PrivilegedAction
            public String run() {
                return System.getProperty("os.name");
            }
        });
        int i = 0;
        int i2 = 1;
        while (true) {
            short[] sArr = table_filenames;
            if (i2 >= sArr.length) {
                break;
            }
            if (sArr[i2] == -1) {
                if (str.contains(SystemUtils.f107420a)) {
                    System.err.println("\n Error: <filename." + getString(table_componentFontNameIDs[i2]) + "> entry is missing!!!");
                    i++;
                } else if (verbose && !isEmpty(table_filenames)) {
                    System.err.println("\n Note: 'filename' entry is undefined for \"" + getString(table_componentFontNameIDs[i2]) + "\"");
                }
            }
            i2++;
        }
        for (int i3 = 0; i3 < table_scriptIDs.length; i3++) {
            short s = table_scriptFonts[i3];
            if (s == 0) {
                System.out.println("\n Error: <allfonts." + getString(table_scriptIDs[i3]) + "> entry is missing!!!");
                i++;
            } else if (s < 0) {
                short s2 = (short) (-s);
                for (int i4 = 0; i4 < 5; i4++) {
                    for (int i5 = 0; i5 < 4; i5++) {
                        if (table_scriptFonts[(i4 * 4) + i5 + s2] == 0) {
                            System.err.println("\n Error: <" + getFontName(i4) + "." + getStyleName(i5) + "." + getString(table_scriptIDs[i3]) + "> entry is missing!!!");
                            i++;
                        }
                    }
                }
            }
        }
        if (i != 0) {
            System.err.println("!!THERE ARE " + i + " ERROR(S) IN THE FONTCONFIG FILE, PLEASE CHECK ITS CONTENT!!\n");
            System.exit(1);
        }
    }

    public static void saveBinary(OutputStream outputStream) throws IOException {
        sanityCheck();
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        writeShortTable(dataOutputStream, head);
        writeShortTable(dataOutputStream, table_scriptIDs);
        writeShortTable(dataOutputStream, table_scriptFonts);
        writeShortTable(dataOutputStream, table_elcIDs);
        writeShortTable(dataOutputStream, table_sequences);
        writeShortTable(dataOutputStream, table_fontfileNameIDs);
        writeShortTable(dataOutputStream, table_componentFontNameIDs);
        writeShortTable(dataOutputStream, table_filenames);
        writeShortTable(dataOutputStream, table_awtfontpaths);
        writeShortTable(dataOutputStream, table_exclusions);
        writeShortTable(dataOutputStream, table_proportionals);
        writeShortTable(dataOutputStream, table_scriptFontsMotif);
        writeShortTable(dataOutputStream, table_alphabeticSuffix);
        writeShortTable(dataOutputStream, table_stringIDs);
        dataOutputStream.writeChars(new String(table_stringTable));
        outputStream.close();
        if (verbose) {
            dump();
        }
    }

    private void setEncoding() {
        encoding = Charset.defaultCharset().name();
        startupLocale = Locale.getDefault();
    }

    private void shuffle(String[] strArr, int i, int i2) {
        if (i2 >= i) {
            return;
        }
        String str = strArr[i];
        while (i > i2) {
            strArr[i] = strArr[i - 1];
            i--;
        }
        strArr[i2] = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Vector<String> splitSequence(String str) {
        Vector<String> vector = new Vector<>();
        int i = 0;
        while (true) {
            int indexOf = str.indexOf(44, i);
            if (indexOf < 0) {
                break;
            }
            vector.add(str.substring(i, indexOf));
            i = indexOf + 1;
        }
        if (str.length() > i) {
            vector.add(str.substring(i, str.length()));
        }
        return vector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static short[] toList(HashMap<String, Short> hashMap) {
        short[] sArr = new short[hashMap.size()];
        Arrays.fill(sArr, (short) -1);
        for (Map.Entry<String, Short> entry : hashMap.entrySet()) {
            sArr[entry.getValue().shortValue()] = getStringID(entry.getKey());
        }
        return sArr;
    }

    public static boolean willReorderForStartupLocale() {
        return getReorderSequence() != null;
    }

    private static void writeShortTable(DataOutputStream dataOutputStream, short[] sArr) throws IOException {
        for (short s : sArr) {
            dataOutputStream.writeShort(s);
        }
    }

    public FontDescriptor[] buildFontDescriptors(int i, int i2) {
        String str = fontNames[i];
        String str2 = styleNames[i2];
        short[] coreScripts = getCoreScripts(i);
        short[] sArr = this.compFontNameIDs[i][i2];
        int length = coreScripts.length;
        String[] strArr = new String[length];
        int length2 = coreScripts.length;
        String[] strArr2 = new String[length2];
        for (int i3 = 0; i3 < length; i3++) {
            strArr2[i3] = getComponentFontName(sArr[i3]);
            String scriptName = getScriptName(coreScripts[i3]);
            strArr[i3] = scriptName;
            if (this.alphabeticSuffix != null && Constants.ATTRVAL_ALPHABETIC.equals(scriptName)) {
                strArr[i3] = strArr[i3] + "/" + this.alphabeticSuffix;
            }
        }
        int[][] iArr = this.compExclusions[i];
        FontDescriptor[] fontDescriptorArr = new FontDescriptor[length2];
        for (int i4 = 0; i4 < length2; i4++) {
            String makeAWTFontName = makeAWTFontName(strArr2[i4], strArr[i4]);
            String encoding2 = getEncoding(strArr2[i4], strArr[i4]);
            if (encoding2 == null) {
                encoding2 = "default";
            }
            fontDescriptorArr[i4] = new FontDescriptor(makeAWTFontName, getFontCharsetEncoder(encoding2.trim(), makeAWTFontName), iArr[i4]);
        }
        return fontDescriptorArr;
    }

    public void findFontConfigFile() {
        this.foundOsSpecificFile = true;
        String property = System.getProperty(SystemUtils.f107424e);
        if (property != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(property);
            String str = File.separator;
            sb.append(str);
            sb.append("lib");
            this.javaLib = sb.toString();
            String str2 = property + str + "conf" + str + FontUtils.FONTS;
            String property2 = System.getProperty("sun.awt.fontconfig");
            if (property2 != null) {
                this.fontConfigFile = new File(property2);
                return;
            }
            File findFontConfigFile = findFontConfigFile(str2);
            this.fontConfigFile = findFontConfigFile;
            if (findFontConfigFile == null) {
                this.fontConfigFile = findFontConfigFile(this.javaLib);
                return;
            }
            return;
        }
        throw new Error("java.home property not set");
    }

    public boolean fontFilesArePresent() {
        init();
        final String mapFileName = mapFileName(getComponentFileName(getComponentFileID(this.compFontNameIDs[0][0][0])));
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction<Boolean>() { // from class: sun.awt.FontConfiguration.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public Boolean run() {
                try {
                    return Boolean.valueOf(new File(mapFileName).exists());
                } catch (Exception unused) {
                    return Boolean.FALSE;
                }
            }
        })).booleanValue();
    }

    public boolean foundOsSpecificFile() {
        return this.foundOsSpecificFile;
    }

    public CompositeFontDescriptor[] get2DCompositeFontInfo() {
        int i;
        String[] strArr;
        String[] strArr2;
        int[] iArr;
        CompositeFontDescriptor[] compositeFontDescriptorArr = new CompositeFontDescriptor[20];
        this.fontManager.getDefaultFontFile();
        this.fontManager.getDefaultFontFaceName();
        for (int i2 = 0; i2 < 5; i2++) {
            String str = publicFontNames[i2];
            int[][] iArr2 = this.compExclusions[i2];
            int i3 = 0;
            for (int[] iArr3 : iArr2) {
                i3 += iArr3.length;
            }
            int[] iArr4 = new int[i3];
            int length = iArr2.length;
            int[] iArr5 = new int[length];
            int i4 = 0;
            for (int i5 = 0; i5 < iArr2.length; i5++) {
                int[] iArr6 = iArr2[i5];
                int i6 = 0;
                while (i6 < iArr6.length) {
                    int i7 = iArr6[i6];
                    int i8 = i4 + 1;
                    int i9 = i6 + 1;
                    iArr4[i4] = i7;
                    i4 = i8 + 1;
                    iArr4[i8] = iArr6[i9];
                    i6 = i9 + 1;
                }
                iArr5[i5] = i4;
            }
            int i10 = 0;
            while (i10 < 4) {
                int length2 = this.compFontNameIDs[i2][i10].length;
                String[] strArr3 = installedFallbackFontFiles;
                if (strArr3 != null) {
                    length2 += strArr3.length;
                }
                String str2 = str + "." + styleNames[i10];
                String[] strArr4 = new String[length2];
                String[] strArr5 = new String[length2];
                int i11 = 0;
                while (true) {
                    short[] sArr = this.compFontNameIDs[i2][i10];
                    if (i11 >= sArr.length) {
                        break;
                    }
                    short s = sArr[i11];
                    short componentFileID = getComponentFileID(s);
                    String str3 = str;
                    strArr4[i11] = getFaceNameFromComponentFontName(getComponentFontName(s));
                    String mapFileName = mapFileName(getComponentFileName(componentFileID));
                    strArr5[i11] = mapFileName;
                    if (mapFileName == null || needToSearchForFile(mapFileName)) {
                        strArr5[i11] = getFileNameFromComponentFontName(getComponentFontName(s));
                    }
                    i11++;
                    str = str3;
                }
                String str4 = str;
                if (installedFallbackFontFiles != null) {
                    int i12 = 0;
                    while (true) {
                        String[] strArr6 = installedFallbackFontFiles;
                        if (i12 >= strArr6.length) {
                            break;
                        }
                        strArr4[i11] = null;
                        strArr5[i11] = strArr6[i12];
                        i11++;
                        i12++;
                    }
                }
                if (i11 < length2) {
                    String[] strArr7 = new String[i11];
                    i = 0;
                    System.arraycopy(strArr4, 0, strArr7, 0, i11);
                    String[] strArr8 = new String[i11];
                    System.arraycopy(strArr5, 0, strArr8, 0, i11);
                    strArr2 = strArr7;
                    strArr = strArr8;
                } else {
                    i = 0;
                    strArr = strArr5;
                    strArr2 = strArr4;
                }
                if (i11 != length) {
                    int[] iArr7 = new int[i11];
                    System.arraycopy(iArr5, i, iArr7, i, length);
                    for (int i13 = length; i13 < i11; i13++) {
                        iArr7[i13] = i3;
                    }
                    iArr = iArr7;
                } else {
                    iArr = iArr5;
                }
                compositeFontDescriptorArr[(i2 * 4) + i10] = new CompositeFontDescriptor(str2, this.compCoreNum[i2], strArr2, strArr, iArr4, iArr);
                i10++;
                iArr5 = iArr5;
                str = str4;
            }
        }
        return compositeFontDescriptorArr;
    }

    public HashSet<String> getAWTFontPathSet() {
        return null;
    }

    public String getCompatibilityFamilyName(String str) {
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (lowerCase.equals("timesroman")) {
            return "serif";
        }
        if (lowerCase.equals("helvetica")) {
            return "sansserif";
        }
        if (lowerCase.equals("courier")) {
            return "monospaced";
        }
        return null;
    }

    public short[] getCoreScripts(int i) {
        short[] shortArray = getShortArray(table_sequences[(getInitELC() * 5) + i]);
        if (this.preferLocaleFonts) {
            if (this.reorderScripts == null) {
                this.reorderScripts = new HashMap<>();
            }
            int length = shortArray.length;
            String[] strArr = new String[length];
            for (int i2 = 0; i2 < length; i2++) {
                String scriptName = getScriptName(shortArray[i2]);
                strArr[i2] = scriptName;
                this.reorderScripts.put(scriptName, Short.valueOf(shortArray[i2]));
            }
            reorderSequenceForLocale(strArr);
            for (int i3 = 0; i3 < length; i3++) {
                shortArray[i3] = this.reorderScripts.get(strArr[i3]).shortValue();
            }
        }
        return shortArray;
    }

    public abstract Charset getDefaultFontCharset(String str);

    public abstract String getEncoding(String str, String str2);

    public String getExtraFontPath() {
        return getString(head[16]);
    }

    public abstract String getFaceNameFromComponentFontName(String str);

    public abstract String getFallbackFamilyName(String str, String str2);

    public abstract String getFileNameFromComponentFontName(String str);

    public String getFileNameFromPlatformName(String str) {
        return this.filenamesMap.get(str);
    }

    public FontDescriptor[] getFontDescriptors(String str, int i) {
        return getFontDescriptors(getFontIndex(str.toLowerCase(Locale.ENGLISH)), getStyleIndex(i));
    }

    public void getInstalledFallbackFonts(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str2 = File.separator;
        sb.append(str2);
        sb.append(FontUtils.FONTS);
        sb.append(str2);
        sb.append(Constants.ELEMNAME_FALLBACK_STRING);
        String sb2 = sb.toString();
        File file = new File(sb2);
        if (file.exists() && file.isDirectory()) {
            String[] list = file.list(this.fontManager.getTrueTypeFilter());
            String[] list2 = file.list(this.fontManager.getType1Filter());
            int length = list == null ? 0 : list.length;
            int length2 = list2 == null ? 0 : list2.length;
            int i = length + length2;
            if (i == 0) {
                return;
            }
            installedFallbackFontFiles = new String[i];
            for (int i2 = 0; i2 < length; i2++) {
                installedFallbackFontFiles[i2] = file + File.separator + list[i2];
            }
            for (int i3 = 0; i3 < length2; i3++) {
                installedFallbackFontFiles[i3 + length] = file + File.separator + list2[i3];
            }
            this.fontManager.registerFontsInDir(sb2);
        }
    }

    public int getNumberCoreFonts() {
        if (this.numCoreFonts == -1) {
            this.numCoreFonts = this.coreFontNameIDs.size();
            Short[] shArr = new Short[0];
            Short[] shArr2 = (Short[]) this.coreFontNameIDs.toArray(shArr);
            Short[] shArr3 = (Short[]) this.fallbackFontNameIDs.toArray(shArr);
            int i = 0;
            for (int i2 = 0; i2 < shArr3.length; i2++) {
                if (this.coreFontNameIDs.contains(shArr3[i2])) {
                    shArr3[i2] = null;
                } else {
                    i++;
                }
            }
            this.componentFonts = new String[this.numCoreFonts + i];
            int i3 = 0;
            while (i3 < shArr2.length) {
                short shortValue = shArr2[i3].shortValue();
                short componentFileID = getComponentFileID(shortValue);
                this.componentFonts[i3] = getComponentFontName(shortValue);
                String componentFileName = getComponentFileName(componentFileID);
                if (componentFileName != null) {
                    this.coreFontFileNames.add(componentFileName);
                }
                this.filenamesMap.put(this.componentFonts[i3], mapFileName(componentFileName));
                i3++;
            }
            for (Short sh : shArr3) {
                if (sh != null) {
                    short shortValue2 = sh.shortValue();
                    short componentFileID2 = getComponentFileID(shortValue2);
                    this.componentFonts[i3] = getComponentFontName(shortValue2);
                    this.filenamesMap.put(this.componentFonts[i3], mapFileName(getComponentFileName(componentFileID2)));
                    i3++;
                }
            }
        }
        return this.numCoreFonts;
    }

    public String[] getPlatformFontNames() {
        if (this.numCoreFonts == -1) {
            getNumberCoreFonts();
        }
        return this.componentFonts;
    }

    public String getVersion() {
        return getString(head[17]);
    }

    public synchronized boolean init() {
        if (!this.inited) {
            this.preferLocaleFonts = false;
            this.preferPropFonts = false;
            setFontConfiguration();
            readFontConfigFile(this.fontConfigFile);
            initFontConfig();
            this.inited = true;
        }
        return true;
    }

    public abstract void initReorderMap();

    public String makeAWTFontName(String str, String str2) {
        return str;
    }

    public String mapFileName(String str) {
        return str;
    }

    public boolean needToSearchForFile(String str) {
        if (!FontUtilities.isLinux) {
            return false;
        }
        if (this.existsMap == null) {
            this.existsMap = new HashMap<>();
        }
        Boolean bool = this.existsMap.get(str);
        if (bool == null) {
            getNumberCoreFonts();
            if (this.coreFontFileNames.contains(str)) {
                bool = Boolean.valueOf(new File(str).exists());
                this.existsMap.put(str, bool);
                if (FontUtilities.debugFonts() && bool == Boolean.FALSE) {
                    logger.warning("Couldn't locate font file " + str);
                }
            } else {
                bool = Boolean.TRUE;
            }
        }
        return bool == Boolean.FALSE;
    }

    public void readFontConfigFile(File file) {
        getInstalledFallbackFonts(this.javaLib);
        if (file != null) {
            try {
                FileInputStream fileInputStream = new FileInputStream(file.getPath());
                if (isProperties) {
                    loadProperties(fileInputStream);
                } else {
                    loadBinary(fileInputStream);
                }
                fileInputStream.close();
                if (FontUtilities.debugFonts()) {
                    logger.config("Read logical font configuration from " + file);
                }
            } catch (IOException unused) {
                if (FontUtilities.debugFonts()) {
                    logger.config("Failed to read logical font configuration from " + file);
                }
            }
        }
        String version = getVersion();
        if ("1".equals(version) || !FontUtilities.debugFonts()) {
            return;
        }
        logger.config("Unsupported fontconfig version: " + version);
    }

    public void setFontConfiguration() {
        fontConfig = this;
    }

    public void setOsNameAndVersion() {
        osName = System.getProperty("os.name");
        osVersion = System.getProperty("os.version");
    }

    public String[] split(String str) {
        return (String[]) splitSequence(str).toArray(new String[0]);
    }

    public static int getStyleIndex(String str) {
        return getArrayIndex(styleNames, str);
    }

    private FontDescriptor[] getFontDescriptors(int i, int i2) {
        FontDescriptor[] fontDescriptorArr = this.fontDescriptors[i][i2];
        if (fontDescriptorArr != null) {
            return fontDescriptorArr;
        }
        FontDescriptor[] buildFontDescriptors = buildFontDescriptors(i, i2);
        this.fontDescriptors[i][i2] = buildFontDescriptors;
        return buildFontDescriptors;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.io.File findFontConfigFile(java.lang.String r7) {
        /*
            r6 = this;
            java.io.File r0 = new java.io.File
            r0.<init>(r7)
            boolean r0 = r0.exists()
            r1 = 0
            if (r0 != 0) goto Ld
            return r1
        Ld:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            java.lang.String r7 = java.io.File.separator
            r0.append(r7)
            java.lang.String r7 = "fontconfig"
            r0.append(r7)
            java.lang.String r7 = r0.toString()
            java.lang.String r0 = sun.awt.FontConfiguration.osVersion
            r2 = 0
            java.lang.String r3 = "."
            if (r0 == 0) goto L87
            java.lang.String r0 = sun.awt.FontConfiguration.osName
            if (r0 == 0) goto L87
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            r0.append(r7)
            r0.append(r3)
            java.lang.String r4 = sun.awt.FontConfiguration.osName
            r0.append(r4)
            r0.append(r3)
            java.lang.String r4 = sun.awt.FontConfiguration.osVersion
            r0.append(r4)
            java.lang.String r0 = r0.toString()
            java.io.File r0 = r6.findImpl(r0)
            if (r0 == 0) goto L51
            return r0
        L51:
            java.lang.String r0 = sun.awt.FontConfiguration.osVersion
            r4 = 46
            int r0 = r0.indexOf(r4)
            r5 = -1
            if (r0 == r5) goto L87
            java.lang.String r0 = sun.awt.FontConfiguration.osVersion
            int r4 = r0.indexOf(r4)
            java.lang.String r0 = r0.substring(r2, r4)
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r7)
            r4.append(r3)
            java.lang.String r5 = sun.awt.FontConfiguration.osName
            r4.append(r5)
            r4.append(r3)
            r4.append(r0)
            java.lang.String r4 = r4.toString()
            java.io.File r4 = r6.findImpl(r4)
            if (r4 == 0) goto L88
            return r4
        L87:
            r0 = r1
        L88:
            java.lang.String r4 = sun.awt.FontConfiguration.osName
            if (r4 == 0) goto La7
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r7)
            r4.append(r3)
            java.lang.String r5 = sun.awt.FontConfiguration.osName
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.io.File r4 = r6.findImpl(r4)
            if (r4 == 0) goto La7
            return r4
        La7:
            java.lang.String r4 = sun.awt.FontConfiguration.osVersion
            if (r4 == 0) goto Le1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r7)
            r4.append(r3)
            java.lang.String r5 = sun.awt.FontConfiguration.osVersion
            r4.append(r5)
            java.lang.String r4 = r4.toString()
            java.io.File r4 = r6.findImpl(r4)
            if (r4 == 0) goto Lc6
            return r4
        Lc6:
            if (r0 == 0) goto Le1
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r7)
            r4.append(r3)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            java.io.File r0 = r6.findImpl(r0)
            if (r0 == 0) goto Le1
            return r0
        Le1:
            r6.foundOsSpecificFile = r2
            java.io.File r6 = r6.findImpl(r7)
            if (r6 == 0) goto Lea
            return r6
        Lea:
            boolean r6 = sun.font.FontUtilities.debugFonts()
            if (r6 == 0) goto Lf7
            sun.util.logging.NeoPlatformLogger r6 = sun.awt.FontConfiguration.logger
            java.lang.String r7 = "Did not find a fontconfig file."
            r6.info(r7)
        Lf7:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: sun.awt.FontConfiguration.findFontConfigFile(java.lang.String):java.io.File");
    }

    public FontConfiguration(SunFontManager sunFontManager, boolean z, boolean z2) {
        this.initELC = (short) -1;
        this.compFontNameIDs = (short[][][]) Array.newInstance((Class<?>) short[].class, 5, 4);
        this.compExclusions = new int[5][];
        this.compCoreNum = new int[5];
        this.coreFontNameIDs = new HashSet();
        this.fallbackFontNameIDs = new HashSet();
        this.reorderMap = null;
        this.charsetRegistry = new Hashtable<>(5);
        this.fontDescriptors = (FontDescriptor[][][]) Array.newInstance((Class<?>) FontDescriptor[].class, 5, 4);
        this.numCoreFonts = -1;
        this.componentFonts = null;
        this.filenamesMap = new HashMap<>();
        this.coreFontFileNames = new HashSet<>();
        this.fontManager = sunFontManager;
        if (FontUtilities.debugFonts()) {
            FontUtilities.logInfo("Creating alternate Font Configuration");
        }
        this.preferLocaleFonts = z;
        this.preferPropFonts = z2;
        initFontConfig();
    }
}
