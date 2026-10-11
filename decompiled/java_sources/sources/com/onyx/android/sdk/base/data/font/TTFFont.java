package com.onyx.android.sdk.base.data.font;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.onyx.android.sdk.base.data.font.TTFFont;
import com.onyx.android.sdk.base.extension.CollectionKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.SystemUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 )2\u00020\u0001:\u0007)*+,-./B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000eJ \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\b\u0010\u0015\u001a\u0004\u0018\u00010\u0010J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00102\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017J\u0014\u0010\u0018\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0010\u0012\u0004\u0012\u00020\u001a0\u0019J*\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u001a0\u00192\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0010J\u0010\u0010\u001e\u001a\u00020\u000e2\b\u0010\u001f\u001a\u0004\u0018\u00010\u0010J\u000e\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"J\u0018\u0010#\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0002J\u0018\u0010&\u001a\u00020\u000e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010$\u001a\u00020%H\u0002J\u0016\u0010'\u001a\u00020\u000e2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\t0\u000bH\u0002J\b\u0010(\u001a\u00020\u000eH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00060"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont;", "", "()V", "codePageSupportChinese", "", "debug", "nameRecordArray", "Landroid/util/SparseArray;", "", "Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;", "saveNameIdList", "", "", Constants.CLEAR_ATTRIBUTES, "", "decodeString", "", "platformId", "encodingID", "bf", "", "getFontName", "locale", Constants.LOCALE_SIG, "getFontNameAndFontType", "Lkotlin/Pair;", "Lcom/onyx/android/sdk/base/data/font/FontType;", "nameRecordList", "log", NotificationCompat.CATEGORY_MESSAGE, "parse", HuaweiYunQueryArgs.FILE_NAME, "parseInner", "randomAccessFile", "Ljava/io/RandomAccessFile;", "parseNameTable", "tableDirectory", "Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;", "parseOs2Table", "sortNameRecord", "sortResult", "Companion", "NameId", "NameRecord", "NameTableHeader", "Os2", "Platform", "TableDirectory", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class TTFFont {

    @NotNull
    public static final String CHARSET_BIG5 = "Big5";

    @NotNull
    public static final String CHARSET_GB18030 = "GB18030";

    @NotNull
    public static final String CHARSET_GBK = "GBK";

    @NotNull
    public static final String CHARSET_SHIFT_JIS = "Shift-JIS";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String NAME_TABLE = "name";

    @NotNull
    public static final String OS_2_TABLE = "OS/2";

    @NotNull
    public static final String UNKNOWN_FONT_NAME = "";
    private boolean codePageSupportChinese;
    private final boolean debug;

    @NotNull
    private final SparseArray<List<NameRecord>> nameRecordArray = new SparseArray<>();

    @NotNull
    private final List<Integer> saveNameIdList;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u0004J\u0016\u0010\u000e\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Companion;", "", "()V", "CHARSET_BIG5", "", "CHARSET_GB18030", "CHARSET_GBK", "CHARSET_SHIFT_JIS", "NAME_TABLE", "OS_2_TABLE", "UNKNOWN_FONT_NAME", "getFontNameFontType", "Lcom/onyx/android/sdk/base/data/font/FontType;", "fontName", "getFontType", "plateFormId", "", "languageId", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final FontType getFontNameFontType(@Nullable String fontName) {
            return StringUtils.isAlpha(fontName) ? FontType.ENGLISH : FontType.CJK;
        }

        @NotNull
        public final FontType getFontType(int plateFormId, int languageId) {
            Platform platform = Platform.INSTANCE;
            return platform.fontTypeMap(platform.mapLocale(plateFormId, languageId));
        }

        private Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000f\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$NameId;", "", "()V", "COPYRIGHT", "", "DESCRIPTION", "DESIGNER", "FAMILY_NAME", "FONT_SUBFAMILY_NAME", "FULL_FONT_NAME", "LICENSE_DESCRIPTION", "LICENSE_INFO_URL", "MANUFACTURER", "POSTSCRIPT_NAME", "TRADEMARK", "UNIQUE_FONT_IDENTIFIER", "URL_DESIGNER", "URL_VENDOR", "VERSION", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class NameId {
        public static final int COPYRIGHT = 0;
        public static final int DESCRIPTION = 10;
        public static final int DESIGNER = 9;
        public static final int FAMILY_NAME = 1;
        public static final int FONT_SUBFAMILY_NAME = 2;
        public static final int FULL_FONT_NAME = 4;

        @NotNull
        public static final NameId INSTANCE = new NameId();
        public static final int LICENSE_DESCRIPTION = 13;
        public static final int LICENSE_INFO_URL = 14;
        public static final int MANUFACTURER = 8;
        public static final int POSTSCRIPT_NAME = 6;
        public static final int TRADEMARK = 7;
        public static final int UNIQUE_FONT_IDENTIFIER = 3;
        public static final int URL_DESIGNER = 12;
        public static final int URL_VENDOR = 11;
        public static final int VERSION = 5;

        private NameId() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u001e\u001a\u00020\rH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$NameRecord;", "", "()V", "encodingID", "", "getEncodingID", "()I", "setEncodingID", "(I)V", "languageID", "getLanguageID", "setLanguageID", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "nameID", "getNameID", "setNameID", "platformID", "getPlatformID", "setPlatformID", "stringLength", "getStringLength", "setStringLength", "stringOffset", "getStringOffset", "setStringOffset", "toString", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class NameRecord {
        private int encodingID;
        private int languageID;

        @Nullable
        private String name;
        private int nameID;
        private int platformID;
        private int stringLength;
        private int stringOffset;

        public final int getEncodingID() {
            return this.encodingID;
        }

        public final int getLanguageID() {
            return this.languageID;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        public final int getNameID() {
            return this.nameID;
        }

        public final int getPlatformID() {
            return this.platformID;
        }

        public final int getStringLength() {
            return this.stringLength;
        }

        public final int getStringOffset() {
            return this.stringOffset;
        }

        public final void setEncodingID(int i) {
            this.encodingID = i;
        }

        public final void setLanguageID(int i) {
            this.languageID = i;
        }

        public final void setName(@Nullable String str) {
            this.name = str;
        }

        public final void setNameID(int i) {
            this.nameID = i;
        }

        public final void setPlatformID(int i) {
            this.platformID = i;
        }

        public final void setStringLength(int i) {
            this.stringLength = i;
        }

        public final void setStringOffset(int i) {
            this.stringOffset = i;
        }

        @NotNull
        public String toString() {
            return "NameRecord{platformID=" + this.platformID + ", encodingID=" + this.encodingID + ", languageID=" + this.languageID + ", nameID=" + this.nameID + ", stringLength=" + this.stringLength + ", stringOffset=" + this.stringOffset + ", name='" + this.name + "'}";
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$NameTableHeader;", "", "()V", "fSelector", "", "getFSelector", "()I", "setFSelector", "(I)V", "nRCount", "getNRCount", "setNRCount", "storageOffset", "getStorageOffset", "setStorageOffset", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class NameTableHeader {
        private int fSelector;
        private int nRCount;
        private int storageOffset;

        public final int getFSelector() {
            return this.fSelector;
        }

        public final int getNRCount() {
            return this.nRCount;
        }

        public final int getStorageOffset() {
            return this.storageOffset;
        }

        public final void setFSelector(int i) {
            this.fSelector = i;
        }

        public final void setNRCount(int i) {
            this.nRCount = i;
        }

        public final void setStorageOffset(int i) {
            this.storageOffset = i;
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\tB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2;", "", "()V", "CODE_PAGE_RANGE_OFFSET", "", "supportChinese", "", "codePageRangeOne", "", "CodePageRange", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Os2 {
        public static final int CODE_PAGE_RANGE_OFFSET = 78;

        @NotNull
        public static final Os2 INSTANCE = new Os2();

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Os2$CodePageRange;", "", "()V", "JIS_JAPAN", "", "SIMPLIFIED_CHINESE", "TRADITIONAL_CHINESE", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public static final class CodePageRange {

            @NotNull
            public static final CodePageRange INSTANCE = new CodePageRange();
            public static final int JIS_JAPAN = 17;
            public static final int SIMPLIFIED_CHINESE = 18;
            public static final int TRADITIONAL_CHINESE = 20;

            private CodePageRange() {
            }
        }

        private Os2() {
        }

        public final boolean supportChinese(long codePageRangeOne) {
            return ((codePageRangeOne & 1048576) | ((131072 & codePageRangeOne) | (262144 & codePageRangeOne))) > 0;
        }
    }

    @Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u001c\u001dB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004J\u0016\u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u0004J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R:\u0010\t\u001a\"\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u00010\nj\u0010\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f\u0018\u0001`\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011¨\u0006\u001e"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform;", "", "()V", "ID_CUSTOM", "", "ID_ISO", "ID_MACINTOSH", "ID_UNICODE", "ID_WINDOWS_ID", "fontTypeMap", "Ljava/util/HashMap;", "", "Lcom/onyx/android/sdk/base/data/font/FontType;", "Lkotlin/collections/HashMap;", "getFontTypeMap", "()Ljava/util/HashMap;", "setFontTypeMap", "(Ljava/util/HashMap;)V", "locale", Constants.LOCALE_SIG, "mapCharset", "Ljava/nio/charset/Charset;", "platformId", "encodingId", "mapLocale", "languageId", "supportPlatform", "", "Macintosh", SystemUtils.f107420a, "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Platform {
        public static final int ID_CUSTOM = 4;
        public static final int ID_ISO = 2;
        public static final int ID_MACINTOSH = 1;
        public static final int ID_UNICODE = 0;
        public static final int ID_WINDOWS_ID = 3;

        @NotNull
        public static final Platform INSTANCE = new Platform();

        @Nullable
        private static HashMap<String, FontType> fontTypeMap;

        @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh;", "", "()V", "Encoding", "Language", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public static final class Macintosh {

            @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Encoding;", "", "()V", "ARMENIAN", "", "CHINESE_SIMPLIFIED", "CHINESE_TRADITIONAL", "ROMAN", "mapCharset", "Ljava/nio/charset/Charset;", "encodingId", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes7.dex */
            public static final class Encoding {
                public static final int ARMENIAN = 24;
                public static final int CHINESE_SIMPLIFIED = 25;
                public static final int CHINESE_TRADITIONAL = 2;

                @NotNull
                public static final Encoding INSTANCE = new Encoding();
                public static final int ROMAN = 0;

                private Encoding() {
                }

                @NotNull
                public final Charset mapCharset(int encodingId) {
                    if (encodingId == 0) {
                        Charset US_ASCII = StandardCharsets.US_ASCII;
                        Intrinsics.checkNotNullExpressionValue(US_ASCII, "US_ASCII");
                        return US_ASCII;
                    }
                    if (encodingId == 2) {
                        Charset forName = Charset.forName(TTFFont.CHARSET_GBK);
                        Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
                        return forName;
                    }
                    if (encodingId == 24) {
                        Charset UTF_16 = StandardCharsets.UTF_16;
                        Intrinsics.checkNotNullExpressionValue(UTF_16, "UTF_16");
                        return UTF_16;
                    }
                    if (encodingId != 25) {
                        Charset UTF_162 = StandardCharsets.UTF_16;
                        Intrinsics.checkNotNullExpressionValue(UTF_162, "UTF_16");
                        return UTF_162;
                    }
                    Charset forName2 = Charset.forName(TTFFont.CHARSET_GBK);
                    Intrinsics.checkNotNullExpressionValue(forName2, "forName(...)");
                    return forName2;
                }
            }

            @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Macintosh$Language;", "", "()V", "Armenian", "", "CHINESE_SIMPLIFIED", "CHINESE_TRADITIONAL", "English", "mapLocale", Constants.LOCALE_SIG, "languageId", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes7.dex */
            public static final class Language {
                public static final int Armenian = 51;
                public static final int CHINESE_SIMPLIFIED = 33;
                public static final int CHINESE_TRADITIONAL = 19;
                public static final int English = 0;

                @NotNull
                public static final Language INSTANCE = new Language();

                private Language() {
                }

                @NotNull
                public final Locale mapLocale(int languageId) {
                    if (languageId != 0) {
                        if (languageId == 19) {
                            Locale TRADITIONAL_CHINESE = Locale.TRADITIONAL_CHINESE;
                            Intrinsics.checkNotNullExpressionValue(TRADITIONAL_CHINESE, "TRADITIONAL_CHINESE");
                            return TRADITIONAL_CHINESE;
                        }
                        if (languageId == 33) {
                            Locale SIMPLIFIED_CHINESE = Locale.SIMPLIFIED_CHINESE;
                            Intrinsics.checkNotNullExpressionValue(SIMPLIFIED_CHINESE, "SIMPLIFIED_CHINESE");
                            return SIMPLIFIED_CHINESE;
                        }
                        if (languageId != 51) {
                            Locale locale = Locale.getDefault();
                            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                            return locale;
                        }
                    }
                    Locale ENGLISH = Locale.ENGLISH;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    return ENGLISH;
                }
            }
        }

        @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows;", "", "()V", "Encoding", "Language", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes7.dex */
        public static final class Windows {

            @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Encoding;", "", "()V", "BIG5", "", "JOHAB", "PRC", "SHIFT_JIS", "SYMBOL", "UNICODE_BMP", "WAN_SUNG", "mapCharset", "Ljava/nio/charset/Charset;", "encodingId", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes7.dex */
            public static final class Encoding {
                public static final int BIG5 = 4;

                @NotNull
                public static final Encoding INSTANCE = new Encoding();
                public static final int JOHAB = 6;
                public static final int PRC = 3;
                public static final int SHIFT_JIS = 2;
                public static final int SYMBOL = 0;
                public static final int UNICODE_BMP = 1;
                public static final int WAN_SUNG = 5;

                private Encoding() {
                }

                @NotNull
                public final Charset mapCharset(int encodingId) {
                    if (encodingId == 0) {
                        Charset US_ASCII = StandardCharsets.US_ASCII;
                        Intrinsics.checkNotNullExpressionValue(US_ASCII, "US_ASCII");
                        return US_ASCII;
                    }
                    if (encodingId == 1) {
                        Charset UTF_16 = StandardCharsets.UTF_16;
                        Intrinsics.checkNotNullExpressionValue(UTF_16, "UTF_16");
                        return UTF_16;
                    }
                    if (encodingId == 2) {
                        Charset forName = Charset.forName(TTFFont.CHARSET_SHIFT_JIS);
                        Intrinsics.checkNotNullExpressionValue(forName, "forName(...)");
                        return forName;
                    }
                    if (encodingId == 3) {
                        Charset forName2 = Charset.forName(TTFFont.CHARSET_GB18030);
                        Intrinsics.checkNotNullExpressionValue(forName2, "forName(...)");
                        return forName2;
                    }
                    if (encodingId != 4) {
                        Charset UTF_162 = StandardCharsets.UTF_16;
                        Intrinsics.checkNotNullExpressionValue(UTF_162, "UTF_16");
                        return UTF_162;
                    }
                    Charset forName3 = Charset.forName(TTFFont.CHARSET_BIG5);
                    Intrinsics.checkNotNullExpressionValue(forName3, "forName(...)");
                    return forName3;
                }
            }

            @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$Platform$Windows$Language;", "", "()V", "ARMENIAN_ARMENIA", "", "CHINESE_HONG_KONG", "CHINESE_MACAO", "CHINESE_PEOPLE_REPUBLIC_CHINA", "CHINESE_SINGAPORE", "CHINESE_TAIWAN", "ENGLISH_AUSTRALIA", "ENGLISH_BELIZE", "ENGLISH_CANADA", "ENGLISH_CARIBBEAN", "ENGLISH_INDIA", "ENGLISH_IRELAND", "ENGLISH_JAMAICA", "ENGLISH_MALAYSIA", "ENGLISH_NEW_ZEALAND", "ENGLISH_REPUBLIC_PHILIPPINES", "ENGLISH_SINGAPORE", "ENGLISH_SOUTH_AFRICA", "ENGLISH_TRINIDAD_TOBAGO", "ENGLISH_UNITED_KINGDOM", "ENGLISH_UNITED_STATES", "ENGLISH_ZIMBABWE", "mapLocale", Constants.LOCALE_SIG, "languageId", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
            /* loaded from: classes7.dex */
            public static final class Language {
                public static final int ARMENIAN_ARMENIA = 1067;
                public static final int CHINESE_HONG_KONG = 3076;
                public static final int CHINESE_MACAO = 5124;
                public static final int CHINESE_PEOPLE_REPUBLIC_CHINA = 2052;
                public static final int CHINESE_SINGAPORE = 4100;
                public static final int CHINESE_TAIWAN = 1028;
                public static final int ENGLISH_AUSTRALIA = 3081;
                public static final int ENGLISH_BELIZE = 10249;
                public static final int ENGLISH_CANADA = 4105;
                public static final int ENGLISH_CARIBBEAN = 9225;
                public static final int ENGLISH_INDIA = 16393;
                public static final int ENGLISH_IRELAND = 6153;
                public static final int ENGLISH_JAMAICA = 8201;
                public static final int ENGLISH_MALAYSIA = 17417;
                public static final int ENGLISH_NEW_ZEALAND = 5129;
                public static final int ENGLISH_REPUBLIC_PHILIPPINES = 13321;
                public static final int ENGLISH_SINGAPORE = 18441;
                public static final int ENGLISH_SOUTH_AFRICA = 7177;
                public static final int ENGLISH_TRINIDAD_TOBAGO = 11273;
                public static final int ENGLISH_UNITED_KINGDOM = 2057;
                public static final int ENGLISH_UNITED_STATES = 1033;
                public static final int ENGLISH_ZIMBABWE = 12297;

                @NotNull
                public static final Language INSTANCE = new Language();

                private Language() {
                }

                @NotNull
                public final Locale mapLocale(int languageId) {
                    switch (languageId) {
                        case 1028:
                        case CHINESE_HONG_KONG /* 3076 */:
                        case CHINESE_MACAO /* 5124 */:
                            Locale TRADITIONAL_CHINESE = Locale.TRADITIONAL_CHINESE;
                            Intrinsics.checkNotNullExpressionValue(TRADITIONAL_CHINESE, "TRADITIONAL_CHINESE");
                            return TRADITIONAL_CHINESE;
                        case 1033:
                        case ARMENIAN_ARMENIA /* 1067 */:
                        case ENGLISH_UNITED_KINGDOM /* 2057 */:
                        case ENGLISH_AUSTRALIA /* 3081 */:
                        case ENGLISH_CANADA /* 4105 */:
                        case ENGLISH_NEW_ZEALAND /* 5129 */:
                        case ENGLISH_IRELAND /* 6153 */:
                        case ENGLISH_SOUTH_AFRICA /* 7177 */:
                        case ENGLISH_JAMAICA /* 8201 */:
                        case ENGLISH_CARIBBEAN /* 9225 */:
                        case ENGLISH_BELIZE /* 10249 */:
                        case ENGLISH_TRINIDAD_TOBAGO /* 11273 */:
                        case ENGLISH_ZIMBABWE /* 12297 */:
                        case ENGLISH_REPUBLIC_PHILIPPINES /* 13321 */:
                        case ENGLISH_INDIA /* 16393 */:
                        case ENGLISH_MALAYSIA /* 17417 */:
                        case ENGLISH_SINGAPORE /* 18441 */:
                            Locale ENGLISH = Locale.ENGLISH;
                            Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                            return ENGLISH;
                        case CHINESE_PEOPLE_REPUBLIC_CHINA /* 2052 */:
                        case 4100:
                            Locale SIMPLIFIED_CHINESE = Locale.SIMPLIFIED_CHINESE;
                            Intrinsics.checkNotNullExpressionValue(SIMPLIFIED_CHINESE, "SIMPLIFIED_CHINESE");
                            return SIMPLIFIED_CHINESE;
                        default:
                            Locale locale = Locale.getDefault();
                            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                            return locale;
                    }
                }
            }
        }

        private Platform() {
        }

        @NotNull
        public final FontType fontTypeMap(@NotNull Locale locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            if (fontTypeMap == null) {
                HashMap<String, FontType> hashMap = new HashMap<>();
                fontTypeMap = hashMap;
                Intrinsics.checkNotNull(hashMap);
                String language = Locale.ENGLISH.getLanguage();
                Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
                hashMap.put(language, FontType.ENGLISH);
                HashMap<String, FontType> hashMap2 = fontTypeMap;
                Intrinsics.checkNotNull(hashMap2);
                String language2 = Locale.TRADITIONAL_CHINESE.getLanguage();
                Intrinsics.checkNotNullExpressionValue(language2, "getLanguage(...)");
                FontType fontType = FontType.CJK;
                hashMap2.put(language2, fontType);
                HashMap<String, FontType> hashMap3 = fontTypeMap;
                Intrinsics.checkNotNull(hashMap3);
                String language3 = Locale.SIMPLIFIED_CHINESE.getLanguage();
                Intrinsics.checkNotNullExpressionValue(language3, "getLanguage(...)");
                hashMap3.put(language3, fontType);
            }
            HashMap<String, FontType> hashMap4 = fontTypeMap;
            Intrinsics.checkNotNull(hashMap4);
            FontType fontType2 = hashMap4.get(locale.getLanguage());
            return fontType2 == null ? FontType.ALL : fontType2;
        }

        @Nullable
        public final HashMap<String, FontType> getFontTypeMap() {
            return fontTypeMap;
        }

        @NotNull
        public final Charset mapCharset(int platformId, int encodingId) {
            if (platformId == 1) {
                return Macintosh.Encoding.INSTANCE.mapCharset(encodingId);
            }
            if (platformId == 3) {
                return Windows.Encoding.INSTANCE.mapCharset(encodingId);
            }
            Charset UTF_16 = StandardCharsets.UTF_16;
            Intrinsics.checkNotNullExpressionValue(UTF_16, "UTF_16");
            return UTF_16;
        }

        @NotNull
        public final Locale mapLocale(int platformId, int languageId) {
            if (platformId == 1) {
                return Macintosh.Language.INSTANCE.mapLocale(languageId);
            }
            if (platformId == 3) {
                return Windows.Language.INSTANCE.mapLocale(languageId);
            }
            Locale locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
            return locale;
        }

        public final void setFontTypeMap(@Nullable HashMap<String, FontType> hashMap) {
            fontTypeMap = hashMap;
        }

        public final boolean supportPlatform(int platformId) {
            return platformId == 3 || platformId == 1;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\b¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/font/TTFFont$TableDirectory;", "", "()V", "checkSum", "", "getCheckSum", "()I", "setCheckSum", "(I)V", "length", "getLength", "setLength", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", TypedValues.CycleType.S_WAVE_OFFSET, "getOffset", "setOffset", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class TableDirectory {
        private int checkSum;
        private int length;

        @Nullable
        private String name;
        private int offset;

        public final int getCheckSum() {
            return this.checkSum;
        }

        public final int getLength() {
            return this.length;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        public final int getOffset() {
            return this.offset;
        }

        public final void setCheckSum(int i) {
            this.checkSum = i;
        }

        public final void setLength(int i) {
            this.length = i;
        }

        public final void setName(@Nullable String str) {
            this.name = str;
        }

        public final void setOffset(int i) {
            this.offset = i;
        }
    }

    public TTFFont() {
        List<Integer> listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new Integer[]{4, 1, 2});
        this.saveNameIdList = listOf;
    }

    private final String decodeString(int platformId, int encodingID, byte[] bf) {
        return new String(bf, Platform.INSTANCE.mapCharset(platformId, encodingID));
    }

    private final void parseNameTable(RandomAccessFile randomAccessFile, TableDirectory tableDirectory) throws IOException {
        randomAccessFile.seek(tableDirectory.getOffset());
        NameTableHeader nameTableHeader = new NameTableHeader();
        nameTableHeader.setFSelector(randomAccessFile.readShort());
        nameTableHeader.setNRCount(randomAccessFile.readShort());
        nameTableHeader.setStorageOffset(randomAccessFile.readShort());
        int nRCount = nameTableHeader.getNRCount();
        for (int i = 0; i < nRCount; i++) {
            NameRecord nameRecord = new NameRecord();
            nameRecord.setPlatformID(randomAccessFile.readShort());
            nameRecord.setEncodingID(randomAccessFile.readShort());
            nameRecord.setLanguageID(randomAccessFile.readShort());
            nameRecord.setNameID(randomAccessFile.readShort());
            nameRecord.setStringLength(randomAccessFile.readShort());
            nameRecord.setStringOffset(randomAccessFile.readShort());
            if (this.saveNameIdList.contains(Integer.valueOf(nameRecord.getNameID()))) {
                long filePointer = randomAccessFile.getFilePointer();
                byte[] bArr = new byte[nameRecord.getStringLength()];
                randomAccessFile.seek(tableDirectory.getOffset() + nameRecord.getStringOffset() + nameTableHeader.getStorageOffset());
                randomAccessFile.read(bArr);
                randomAccessFile.seek(filePointer);
                nameRecord.setName(decodeString(nameRecord.getPlatformID(), nameRecord.getEncodingID(), bArr));
                CollectionKt.ensureList(this.nameRecordArray, nameRecord.getNameID()).add(nameRecord);
                log(nameRecord.toString());
            }
        }
        sortResult();
    }

    private final void parseOs2Table(RandomAccessFile randomAccessFile, TableDirectory tableDirectory) throws IOException {
        randomAccessFile.seek(tableDirectory.getOffset());
        if (randomAccessFile.readUnsignedShort() > 0) {
            randomAccessFile.seek(tableDirectory.getOffset() + 78);
            long readInt = randomAccessFile.readInt();
            log("codePageRange1:" + readInt);
            this.codePageSupportChinese = Os2.INSTANCE.supportChinese(readInt);
        }
    }

    private final void sortNameRecord(List<NameRecord> nameRecordList) {
        if (CollectionKt.isNullOrEmpty(nameRecordList)) {
            return;
        }
        final TTFFont$sortNameRecord$1 tTFFont$sortNameRecord$1 = new Function2<NameRecord, NameRecord, Integer>() { // from class: com.onyx.android.sdk.base.data.font.TTFFont$sortNameRecord$1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final Integer invoke(TTFFont.NameRecord nameRecord, TTFFont.NameRecord nameRecord2) {
                int platformID = nameRecord2.getPlatformID() - nameRecord.getPlatformID();
                if (platformID == 0) {
                    platformID = nameRecord.getLanguageID() - nameRecord2.getLanguageID();
                }
                return Integer.valueOf(platformID);
            }
        };
        Collections.sort(nameRecordList, new Comparator() { // from class: com.sunia.HTREnginev2.v7n
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                int sortNameRecord$lambda$0;
                sortNameRecord$lambda$0 = TTFFont.sortNameRecord$lambda$0(Function2.this, obj, obj2);
                return sortNameRecord$lambda$0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int sortNameRecord$lambda$0(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Number) tmp0.invoke(obj, obj2)).intValue();
    }

    private final void sortResult() {
        int size = this.nameRecordArray.size();
        for (int i = 0; i < size; i++) {
            List<NameRecord> valueAt = this.nameRecordArray.valueAt(i);
            Intrinsics.checkNotNullExpressionValue(valueAt, "valueAt(...)");
            sortNameRecord(valueAt);
        }
    }

    public final void clear() {
        this.nameRecordArray.clear();
    }

    @Nullable
    public final String getFontName() {
        return getFontName(Locale.getDefault());
    }

    @NotNull
    public final Pair<String, FontType> getFontNameAndFontType() {
        List<NameRecord> ensureList = CollectionKt.ensureList(this.nameRecordArray, 1);
        List<NameRecord> ensureList2 = CollectionKt.ensureList(this.nameRecordArray, 2);
        List<NameRecord> ensureList3 = CollectionKt.ensureList(this.nameRecordArray, 4);
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        Pair<String, FontType> fontNameAndFontType = getFontNameAndFontType(locale, ensureList);
        Locale locale2 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale2, "getDefault(...)");
        String component1 = getFontNameAndFontType(locale2, ensureList2).component1();
        Locale locale3 = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale3, "getDefault(...)");
        Pair<String, FontType> fontNameAndFontType2 = getFontNameAndFontType(locale3, ensureList3);
        FontType second = fontNameAndFontType.getSecond();
        FontType fontType = FontType.CJK;
        Pair<String, FontType> pair = (second == fontType && StringUtils.isNotBlank(fontNameAndFontType.getFirst()) && StringUtils.isNotBlank(component1)) ? fontNameAndFontType : fontNameAndFontType2;
        if (fontNameAndFontType2.getSecond() != fontType || !StringUtils.isNotBlank(fontNameAndFontType2.getFirst()) || Objects.equals(fontNameAndFontType.getFirst(), fontNameAndFontType2.getFirst())) {
            fontNameAndFontType2 = pair;
        }
        return (fontNameAndFontType2.getSecond() == fontType || !this.codePageSupportChinese) ? fontNameAndFontType2 : new Pair<>(fontNameAndFontType2.getFirst(), fontType);
    }

    public final void log(@Nullable String msg) {
        if (this.debug) {
            Debug.INSTANCE.m32035d(TTFFont.class, msg, new Object[0]);
        }
    }

    public final void parse(@Nullable String fileName) {
        log(fileName);
        clear();
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(fileName, "r");
            try {
                parseInner(randomAccessFile2);
                FileUtils.INSTANCE.closeQuietly(randomAccessFile2);
            } catch (Throwable th) {
                th = th;
                randomAccessFile = randomAccessFile2;
                try {
                    Debug.INSTANCE.m32063w(th);
                } finally {
                    FileUtils.INSTANCE.closeQuietly(randomAccessFile);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void parseInner(@NotNull RandomAccessFile randomAccessFile) throws IOException {
        Intrinsics.checkNotNullParameter(randomAccessFile, "randomAccessFile");
        long filePointer = randomAccessFile.getFilePointer();
        randomAccessFile.readShort();
        randomAccessFile.readShort();
        short readShort = randomAccessFile.readShort();
        randomAccessFile.seek(filePointer + 12);
        byte[] bArr = new byte[4];
        TableDirectory tableDirectory = new TableDirectory();
        for (int i = 0; i < readShort; i++) {
            randomAccessFile.read(bArr);
            tableDirectory.setName(new String(bArr, Charsets.UTF_8));
            tableDirectory.setCheckSum(randomAccessFile.readInt());
            tableDirectory.setOffset(randomAccessFile.readInt());
            tableDirectory.setLength(randomAccessFile.readInt());
            log(tableDirectory.getName() + " - checkSum:" + tableDirectory.getCheckSum() + " - offset:" + tableDirectory.getOffset() + " - length:" + tableDirectory.getLength());
            long filePointer2 = randomAccessFile.getFilePointer();
            String name = tableDirectory.getName();
            if (Intrinsics.areEqual(name, OS_2_TABLE)) {
                parseOs2Table(randomAccessFile, tableDirectory);
            } else if (Intrinsics.areEqual(name, "name")) {
                parseNameTable(randomAccessFile, tableDirectory);
            }
            randomAccessFile.seek(filePointer2);
        }
    }

    @Nullable
    public final String getFontName(@Nullable Locale locale) {
        List<NameRecord> ensureList = CollectionKt.ensureList(this.nameRecordArray, 1);
        if (CollectionKt.isNullOrEmpty(ensureList)) {
            ensureList = CollectionKt.ensureList(this.nameRecordArray, 4);
        }
        if (CollectionKt.isNullOrEmpty(ensureList)) {
            log("getFontName fail");
            return "";
        }
        for (NameRecord nameRecord : ensureList) {
            Platform platform = Platform.INSTANCE;
            if (platform.supportPlatform(nameRecord.getPlatformID())) {
                LocaleUtils localeUtils = LocaleUtils.INSTANCE;
                Intrinsics.checkNotNull(locale);
                if (localeUtils.isSameLanguage(locale, platform.mapLocale(nameRecord.getPlatformID(), nameRecord.getLanguageID()))) {
                    return nameRecord.getName();
                }
            }
        }
        return ((NameRecord) ensureList.get(0)).getName();
    }

    private final Pair<String, FontType> getFontNameAndFontType(Locale locale, List<NameRecord> nameRecordList) {
        if (CollectionKt.isNullOrEmpty(nameRecordList)) {
            nameRecordList = CollectionKt.ensureList(this.nameRecordArray, 4);
        }
        FontType fontType = FontType.ALL;
        if (CollectionKt.isNullOrEmpty(nameRecordList)) {
            log("getFontName fail");
            return new Pair<>("", fontType);
        }
        for (NameRecord nameRecord : nameRecordList) {
            if (Platform.INSTANCE.supportPlatform(nameRecord.getPlatformID()) && (fontType = INSTANCE.getFontType(nameRecord.getPlatformID(), nameRecord.getLanguageID())) == FontType.CJK) {
                break;
            }
        }
        for (NameRecord nameRecord2 : nameRecordList) {
            Platform platform = Platform.INSTANCE;
            if (platform.supportPlatform(nameRecord2.getPlatformID()) && LocaleUtils.INSTANCE.isSameLanguage(locale, platform.mapLocale(nameRecord2.getPlatformID(), nameRecord2.getLanguageID()))) {
                return new Pair<>(String.valueOf(nameRecord2.getName()), fontType);
            }
        }
        return new Pair<>(String.valueOf(nameRecordList.get(0).getName()), fontType);
    }
}
