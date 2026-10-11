package org.apache.poi.hsmf.datatypes;

import androidx.fragment.app.FragmentTransaction;
import com.google.android.exoplayer2.source.dash.manifest.UrlTemplate;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.poi.util.StringUtil;
import org.mortbay.jetty.HttpStatus;

/* loaded from: classes12.dex */
public final class Types {
    public static final MAPIType APP_TIME;
    public static final MAPIType ASCII_STRING;
    public static final MAPIType BINARY;
    public static final MAPIType BOOLEAN;
    public static final MAPIType CLS_ID;
    public static final MAPIType CURRENCY;
    public static final MAPIType DIRECTORY;
    public static final MAPIType DOUBLE;
    public static final MAPIType ERROR;
    public static final MAPIType FLOAT;
    public static final MAPIType LONG;
    public static final MAPIType LONG_LONG;
    public static final int MULTIVALUED_FLAG = 4096;
    public static final MAPIType MV_APP_TIME;
    public static final MAPIType MV_ASCII_STRING;
    public static final MAPIType MV_BINARY;
    public static final MAPIType MV_CLS_ID;
    public static final MAPIType MV_CURRENCY;
    public static final MAPIType MV_DOUBLE;
    public static final MAPIType MV_FLOAT;
    public static final MAPIType MV_LONG;
    public static final MAPIType MV_LONG_LONG;
    public static final MAPIType MV_SHORT;
    public static final MAPIType MV_TIME;
    public static final MAPIType MV_UNICODE_STRING;
    public static final MAPIType NULL;
    public static final MAPIType SHORT;
    public static final MAPIType TIME;
    public static final MAPIType UNICODE_STRING;
    public static final MAPIType UNKNOWN;
    public static final MAPIType UNSPECIFIED;
    private static final Map<Integer, MAPIType> builtInTypes = new HashMap();
    private static final Map<Integer, MAPIType> customTypes = new HashMap();

    static {
        int i = 0;
        int i2 = -1;
        UNSPECIFIED = new MAPIType(i, "Unspecified", i2);
        UNKNOWN = new MAPIType(i2, HttpStatus.Unknown, i2);
        NULL = new MAPIType(1, "Null", i);
        int i3 = 2;
        SHORT = new MAPIType(i3, "Short", i3);
        int i4 = 4;
        LONG = new MAPIType(3, "Long", i4);
        FLOAT = new MAPIType(i4, "Float", i4);
        int i5 = 8;
        DOUBLE = new MAPIType(5, "Double", i5);
        CURRENCY = new MAPIType(6, "Currency", i5);
        APP_TIME = new MAPIType(7, "Application Time", i5);
        ERROR = new MAPIType(10, "Error", i4);
        BOOLEAN = new MAPIType(11, "Boolean", i3);
        DIRECTORY = new MAPIType(13, "Directory", i2);
        LONG_LONG = new MAPIType(20, "Long Long", i5);
        TIME = new MAPIType(64, UrlTemplate.f25863h, i5);
        CLS_ID = new MAPIType(72, "CLS ID GUID", 16);
        BINARY = new MAPIType(258, "Binary", i2);
        ASCII_STRING = new MAPIType(30, "ASCII String", i2);
        UNICODE_STRING = new MAPIType(31, "Unicode String", i2);
        MV_SHORT = new MAPIType(4098, "MV Short", i2);
        MV_LONG = new MAPIType(FragmentTransaction.TRANSIT_FRAGMENT_FADE, "MV Long", i2);
        MV_FLOAT = new MAPIType(4100, "MV Float", i2);
        MV_DOUBLE = new MAPIType(4101, "MV Double", i2);
        MV_CURRENCY = new MAPIType(4102, "MV Currency", i2);
        MV_APP_TIME = new MAPIType(4103, "MV Application Time", i2);
        MV_LONG_LONG = new MAPIType(4116, "MV Long Long", i2);
        MV_TIME = new MAPIType(4160, "MV Time", i2);
        MV_CLS_ID = new MAPIType(4168, "MV CLS ID GUID", i2);
        MV_BINARY = new MAPIType(4354, "MV Binary", i2);
        MV_ASCII_STRING = new MAPIType(4126, "MV ASCII String", i2);
        MV_UNICODE_STRING = new MAPIType(4127, "MV Unicode String", i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String asCustomName(int i) {
        return "0x" + Integer.toHexString(i);
    }

    public static String asFileEnding(int i) {
        StringBuilder sb = new StringBuilder(Integer.toHexString(i).toUpperCase(Locale.ROOT));
        int length = 4 - sb.length();
        if (length > 0) {
            sb.insert(0, StringUtil.repeat('0', length));
        }
        return sb.toString();
    }

    public static String asName(int i) {
        MAPIType mAPIType = builtInTypes.get(Integer.valueOf(i));
        return mAPIType != null ? mAPIType.name : asCustomName(i);
    }

    public static MAPIType createCustom(int i) {
        if (getById(i) != null) {
            return getById(i);
        }
        Map<Integer, MAPIType> map = customTypes;
        MAPIType mAPIType = map.get(Integer.valueOf(i));
        if (mAPIType == null) {
            synchronized (map) {
                mAPIType = map.get(Integer.valueOf(i));
                if (mAPIType == null) {
                    mAPIType = new MAPIType(i, -1);
                }
            }
        }
        return mAPIType;
    }

    public static MAPIType getById(int i) {
        return builtInTypes.get(Integer.valueOf(i));
    }

    /* loaded from: classes12.dex */
    public static final class MAPIType {

        /* renamed from: id */
        private final int f111390id;
        private final int length;
        private final String name;

        public String asFileEnding() {
            return Types.asFileEnding(this.f111390id);
        }

        public int getId() {
            return this.f111390id;
        }

        public int getLength() {
            return this.length;
        }

        public String getName() {
            return this.name;
        }

        public boolean isFixedLength() {
            int i = this.length;
            return (i != -1 && i <= 8) || this.f111390id == Types.CLS_ID.f111390id;
        }

        public boolean isPointer() {
            int i = this.length;
            return i == -1 || i > 8;
        }

        public String toString() {
            return this.f111390id + " / 0x" + asFileEnding() + " - " + this.name + " @ " + this.length;
        }

        private MAPIType(int i, String str, int i2) {
            this.f111390id = i;
            this.name = str;
            this.length = i2;
            Types.builtInTypes.put(Integer.valueOf(i), this);
        }

        private MAPIType(int i, int i2) {
            this.f111390id = i;
            this.name = Types.asCustomName(i);
            this.length = i2;
            Types.customTypes.put(Integer.valueOf(i), this);
        }
    }
}
