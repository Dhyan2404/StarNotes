package com.onyx.android.sdk.reader.cbox.utils;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.reader.api.ReaderChineseConvertType;
import com.onyx.android.sdk.reader.api.ReaderPageProgressionDirection;
import com.onyx.android.sdk.reader.api.ReaderPosition;
import com.onyx.android.sdk.reader.api.ReaderTextStyle;
import com.onyx.android.sdk.reader.api.ReaderWritingMode;
import com.onyx.android.sdk.reader.cbox.utils.CBoxUtils;
import com.onyx.android.sdk.reader.extension.ReaderPositionImplKt;
import com.onyx.android.sdk.reader.impl.ReaderPositionImpl;
import com.onyx.android.sdk.reader.plugins.internal.PluginPositionUtils;
import com.onyx.engine.sdk.Chapter;
import com.onyx.engine.sdk.DiskCacheManager;
import com.onyx.engine.sdk.DisplayMetrics;
import com.onyx.engine.sdk.FontEntry;
import com.onyx.engine.sdk.FontSpec;
import com.onyx.engine.sdk.GlobalConfig;
import com.onyx.engine.sdk.GlobalInitializer;
import com.onyx.engine.sdk.PageInfo;
import com.onyx.engine.sdk.PageProgressionDirection;
import com.onyx.engine.sdk.PinPosition;
import com.onyx.engine.sdk.ReaderTextStyle;
import com.onyx.engine.sdk.ResourceUtils;
import com.onyx.engine.sdk.WritingMode;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.math.MathKt__MathJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bS\u0010TJ\f\u0010\u0004\u001a\u00020\u0003*\u00020\u0002H\u0002J\u0018\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\f\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002J\u0018\u0010\r\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\u0006\u0010\u000e\u001a\u00020\tJ\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0012\u001a\u00020\u0011J\u0006\u0010\u0014\u001a\u00020\u0013J\u0010\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019J\u0010\u0010\u001c\u001a\u00020\u00172\b\b\u0002\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019J&\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u0016\u0010\u001e\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\"\u001a\u00020!2\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010\"\u001a\u00020%2\u0006\u0010$\u001a\u00020#J\u000e\u0010\"\u001a\u00020(2\u0006\u0010'\u001a\u00020&J\u0012\u0010\"\u001a\u0004\u0018\u00010+2\b\u0010*\u001a\u0004\u0018\u00010)J\u000e\u0010\"\u001a\u00020)2\u0006\u0010,\u001a\u00020+J\u000e\u0010\"\u001a\u00020/2\u0006\u0010.\u001a\u00020-J\u000e\u0010\"\u001a\u00020-2\u0006\u00100\u001a\u00020/J\u000e\u00104\u001a\u0002032\u0006\u00102\u001a\u000201J\u000e\u00106\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0007J\u0010\u0010\"\u001a\u0002092\b\u00108\u001a\u0004\u0018\u000107J\u0010\u0010\"\u001a\u0002072\b\u00108\u001a\u0004\u0018\u000109J\u0016\u0010=\u001a\u00020\u00192\u0006\u0010:\u001a\u00020\u00192\u0006\u0010<\u001a\u00020;J\u0012\u0010?\u001a\u0004\u0018\u00010\u00112\b\u0010>\u001a\u0004\u0018\u00010\u0011J\u000e\u0010B\u001a\u00020\u00112\u0006\u0010A\u001a\u00020@J\u0010\u0010E\u001a\u00020\u00112\b\u0010D\u001a\u0004\u0018\u00010CR\u0014\u0010H\u001a\u00020;8\u0002X\u0082T¢\u0006\u0006\n\u0004\bF\u0010GR\u0014\u0010J\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010IR\u0014\u0010K\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010IR\u0014\u0010M\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\bL\u0010IR\u0014\u0010N\u001a\u00020\u00118\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010IR\u0014\u0010O\u001a\u00020\u00198\u0006X\u0086T¢\u0006\u0006\n\u0004\bO\u0010PR\u0014\u0010R\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010Q¨\u0006U"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/utils/CBoxUtils;", "", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontVariantLigaturesState;", "Lcom/onyx/engine/sdk/ReaderTextStyle$LigaturesState;", C6998g.f39679a, "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle;", "style", "Lcom/onyx/engine/sdk/ReaderTextStyle;", "engineStyle", "", C6997f.f39671c, "b", "e", "c", "init", "Lcom/onyx/engine/sdk/DiskCacheManager;", "getDiskCacheManager", "", "getCBoxCacheDir", "Lcom/onyx/engine/sdk/GlobalConfig;", "getGlobalConfig", "Lcom/onyx/android/sdk/base/data/Size;", "size", "Lcom/onyx/engine/sdk/DisplayMetrics;", "getDisplayMetrics", "", "width", "height", "getMSDocDisplayMetrics", "updateReaderTextStyle", "updateImgStyle", "Lcom/onyx/engine/sdk/WritingMode;", Constants.ATTRNAME_MODE, "Lcom/onyx/android/sdk/reader/api/ReaderWritingMode;", "convert", "Lcom/onyx/engine/sdk/PageProgressionDirection;", "direction", "Lcom/onyx/android/sdk/reader/api/ReaderPageProgressionDirection;", "Lcom/onyx/android/sdk/reader/api/ReaderChineseConvertType;", "convertType", "Lcom/onyx/engine/sdk/ReaderTextStyle$ChineseConvertType;", "Lcom/onyx/engine/sdk/FontEntry;", "engineFontEntry", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontEntry;", "fontEntry", "Lcom/onyx/engine/sdk/FontSpec;", "engineFontSpec", "Lcom/onyx/android/sdk/reader/api/ReaderTextStyle$FontSpec;", "fontSpec", "", "ch", "", "isChinese", "textStyle", "enableSpanBgColor", "Lcom/onyx/engine/sdk/PinPosition;", "position", "Lcom/onyx/android/sdk/reader/api/ReaderPosition;", "length", "", "margin", "convertToMarginPercent", "filePath", "getPagePositionCacheDirName", "Lcom/onyx/engine/sdk/Chapter;", "chapter", "chapterInfo", "Lcom/onyx/engine/sdk/PageInfo;", "pageInfo", "pagePositionInfo", "a", "F", "DEFAULT_FONT_SIZE", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "TEXT_STYLE_FORMAT_MOBI", "CACHE_DIR", "d", "DUMMY_PATH", "DUMMY_CACHE_DIR", "DEFAULT_GET_TEXT_LANGUAGE_MAX_COUNT", "I", "Lcom/onyx/engine/sdk/DiskCacheManager;", "DISK_CACHE", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nCBoxUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,331:1\n125#2:332\n152#2,3:333\n125#2:336\n152#2,3:337\n*S KotlinDebug\n*F\n+ 1 CBoxUtils.kt\ncom/onyx/android/sdk/reader/cbox/utils/CBoxUtils\n*L\n202#1:332\n202#1:333,3\n207#1:336\n207#1:337,3\n*E\n"})
/* loaded from: classes8.dex */
public final class CBoxUtils {
    public static final int DEFAULT_GET_TEXT_LANGUAGE_MAX_COUNT = 1000;

    @NotNull
    public static final CBoxUtils INSTANCE;

    /* renamed from: a, reason: from kotlin metadata */
    public static final float DEFAULT_FONT_SIZE = 12.0f;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String TEXT_STYLE_FORMAT_MOBI = "mobi";

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public static final String CACHE_DIR = "cbox_cache";

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public static final String DUMMY_PATH = "dummy.html";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public static final String DUMMY_CACHE_DIR = "dummy";

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public static final DiskCacheManager DISK_CACHE;

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;
        public static final /* synthetic */ int[] $EnumSwitchMapping$3;
        public static final /* synthetic */ int[] $EnumSwitchMapping$4;
        public static final /* synthetic */ int[] $EnumSwitchMapping$5;

        static {
            int[] iArr = new int[ReaderTextStyle.FontVariantLigaturesState.values().length];
            try {
                iArr[ReaderTextStyle.FontVariantLigaturesState.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ReaderTextStyle.FontVariantLigaturesState.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ReaderTextStyle.TextSpacingTrim.values().length];
            try {
                iArr2[ReaderTextStyle.TextSpacingTrim.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ReaderTextStyle.TextSpacingTrim.SPACE_ALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[ReaderTextStyle.TextSpacingTrim.SPACE_FIRST.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[ReaderTextStyle.TextSpacingTrim.TRIM_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[ReaderTextStyle.Alignment.values().length];
            try {
                iArr3[ReaderTextStyle.Alignment.ALIGNMENT_NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr3[ReaderTextStyle.Alignment.ALIGNMENT_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr3[ReaderTextStyle.Alignment.ALIGNMENT_RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr3[ReaderTextStyle.Alignment.ALIGNMENT_JUSTIFY.ordinal()] = 4;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$2 = iArr3;
            int[] iArr4 = new int[WritingMode.values().length];
            try {
                iArr4[WritingMode.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr4[WritingMode.VERTICAL_LR.ordinal()] = 2;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr4[WritingMode.VERTICAL_RL.ordinal()] = 3;
            } catch (NoSuchFieldError unused13) {
            }
            $EnumSwitchMapping$3 = iArr4;
            int[] iArr5 = new int[PageProgressionDirection.values().length];
            try {
                iArr5[PageProgressionDirection.RTL.ordinal()] = 1;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$4 = iArr5;
            int[] iArr6 = new int[ReaderChineseConvertType.values().length];
            try {
                iArr6[ReaderChineseConvertType.SIMPLIFIED_TO_TRADITIONAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr6[ReaderChineseConvertType.TRADITIONAL_TO_SIMPLIFIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused16) {
            }
            $EnumSwitchMapping$5 = iArr6;
        }
    }

    static {
        CBoxUtils cBoxUtils = new CBoxUtils();
        INSTANCE = cBoxUtils;
        DISK_CACHE = new DiskCacheManager(cBoxUtils.getCBoxCacheDir());
        GlobalInitializer.setGlobalConfig(cBoxUtils.getGlobalConfig());
        GlobalInitializer.setAbsoluteParagraphSpacing(false);
        GlobalInitializer.setAbsoluteLineSpacing(false);
    }

    /* renamed from: d */
    public static final List m34677d(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    public static /* synthetic */ DisplayMetrics getDisplayMetrics$default(CBoxUtils cBoxUtils, Size size, int i, Object obj) {
        if ((i & 1) != 0) {
            size = new Size(0, 0, 3, null);
        }
        return cBoxUtils.getDisplayMetrics(size);
    }

    public static /* synthetic */ DisplayMetrics getMSDocDisplayMetrics$default(CBoxUtils cBoxUtils, Size size, int i, Object obj) {
        if ((i & 1) != 0) {
            size = new Size(0, 0, 3, null);
        }
        return cBoxUtils.getMSDocDisplayMetrics(size);
    }

    /* renamed from: b */
    public final void m34678b(ReaderTextStyle style, com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        ReaderTextStyle.Alignment alignment = style.getAlignment();
        int i = alignment == null ? -1 : WhenMappings.$EnumSwitchMapping$2[alignment.ordinal()];
        if (i == 1) {
            engineStyle.setAlignment(ReaderTextStyle.Alignment.ALIGNMENT_NONE);
            return;
        }
        if (i == 2) {
            engineStyle.setAlignment(ReaderTextStyle.Alignment.ALIGNMENT_LEFT);
        } else if (i == 3) {
            engineStyle.setAlignment(ReaderTextStyle.Alignment.ALIGNMENT_RIGHT);
        } else {
            if (i != 4) {
                return;
            }
            engineStyle.setAlignment(ReaderTextStyle.Alignment.ALIGNMENT_JUSTIFY);
        }
    }

    /* renamed from: c */
    public final void m34679c(com.onyx.engine.sdk.ReaderTextStyle engineStyle, com.onyx.android.sdk.reader.api.ReaderTextStyle style) {
        engineStyle.setExternalFonts(style.getExternalFonts());
        engineStyle.getStyleFontMapping().clear();
        Map<ReaderTextStyle.FontSpec, ReaderTextStyle.FontEntry> styleFontMapping = style.getStyleFontMapping();
        if (styleFontMapping != null) {
            ArrayList arrayList = new ArrayList(styleFontMapping.size());
            Iterator<Map.Entry<ReaderTextStyle.FontSpec, ReaderTextStyle.FontEntry>> it2 = styleFontMapping.entrySet().iterator();
            while (it2.hasNext()) {
                engineStyle.addStyleFontMapping(INSTANCE.convert(it2.next().getValue()));
                arrayList.add(Unit.INSTANCE);
            }
        }
        engineStyle.getTagFontMapping().clear();
        Map<String, ReaderTextStyle.FontEntry> tagFontMapping = style.getTagFontMapping();
        if (tagFontMapping != null) {
            ArrayList arrayList2 = new ArrayList(tagFontMapping.size());
            for (Map.Entry<String, ReaderTextStyle.FontEntry> entry : tagFontMapping.entrySet()) {
                FontEntry convert = INSTANCE.convert(entry.getValue());
                Map<String, List<String>> tagFontMapping2 = engineStyle.getTagFontMapping();
                String key = entry.getKey();
                final CBoxUtils$convertFontMapping$2$1 cBoxUtils$convertFontMapping$2$1 = new Function1<String, List<String>>() { // from class: com.onyx.android.sdk.reader.cbox.utils.CBoxUtils$convertFontMapping$2$1
                    @Override // kotlin.jvm.functions.Function1
                    public final List<String> invoke(String str) {
                        return new ArrayList();
                    }
                };
                arrayList2.add(Boolean.valueOf(tagFontMapping2.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.y00
                    @Override // java.util.function.Function
                    public final Object apply(Object obj) {
                        List m34677d;
                        m34677d = CBoxUtils.m34677d(Function1.this, obj);
                        return m34677d;
                    }
                }).add(convert.getFontPath())));
            }
        }
    }

    @NotNull
    public final String chapterInfo(@NotNull Chapter chapter) {
        Intrinsics.checkNotNullParameter(chapter, "chapter");
        return "Chapter:" + chapter.getChapterId() + '[' + chapter.getPlayOrder() + "][" + chapter.getStartPos() + '-' + chapter.getEndPos() + ']';
    }

    @NotNull
    public final ReaderWritingMode convert(@NotNull WritingMode mode) {
        Intrinsics.checkNotNullParameter(mode, "mode");
        int i = WhenMappings.$EnumSwitchMapping$3[mode.ordinal()];
        if (i == 1) {
            return ReaderWritingMode.HORIZONTAL;
        }
        if (i == 2) {
            return ReaderWritingMode.VERTICAL_LR;
        }
        if (i != 3) {
            return ReaderWritingMode.HORIZONTAL;
        }
        return ReaderWritingMode.VERTICAL_RL;
    }

    public final int convertToMarginPercent(int length, float margin) {
        int roundToInt;
        roundToInt = MathKt__MathJVMKt.roundToInt(((margin * 2) * 100.0f) / length);
        return roundToInt;
    }

    /* renamed from: e */
    public final void m34680e(com.onyx.android.sdk.reader.api.ReaderTextStyle style, com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        if (style.getPagingMode() == com.onyx.android.sdk.reader.api.ReaderTextStyle.INSTANCE.getPAGING_MODE_TWO_COLUMN()) {
            engineStyle.setPagingMode(ReaderTextStyle.PagingMode.PAGING_MODE_TWO_COLUMN);
        } else {
            engineStyle.setPagingMode(ReaderTextStyle.PagingMode.PAGING_MODE_SINGLE_COLUMN);
        }
    }

    public final void enableSpanBgColor(@NotNull com.onyx.engine.sdk.ReaderTextStyle textStyle) {
        Intrinsics.checkNotNullParameter(textStyle, "textStyle");
        textStyle.setFormat("mobi");
    }

    /* renamed from: f */
    public final void m34681f(com.onyx.android.sdk.reader.api.ReaderTextStyle style, com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        ReaderTextStyle.TextSpacingTrim textSpacingTrim = style.getTextSpacingTrim();
        int i = textSpacingTrim == null ? -1 : WhenMappings.$EnumSwitchMapping$1[textSpacingTrim.ordinal()];
        if (i == 1) {
            engineStyle.setTextSpacingTrim(ReaderTextStyle.TextSpacingTrim.NORMAL);
            return;
        }
        if (i == 2) {
            engineStyle.setTextSpacingTrim(ReaderTextStyle.TextSpacingTrim.SPACE_ALL);
        } else if (i == 3) {
            engineStyle.setTextSpacingTrim(ReaderTextStyle.TextSpacingTrim.SPACE_FIRST);
        } else {
            if (i != 4) {
                return;
            }
            engineStyle.setTextSpacingTrim(ReaderTextStyle.TextSpacingTrim.TRIM_START);
        }
    }

    /* renamed from: g */
    public final ReaderTextStyle.LigaturesState m34682g(ReaderTextStyle.FontVariantLigaturesState fontVariantLigaturesState) {
        int i = WhenMappings.$EnumSwitchMapping$0[fontVariantLigaturesState.ordinal()];
        if (i == 1) {
            return ReaderTextStyle.LigaturesState.NORMAL;
        }
        if (i == 2) {
            return ReaderTextStyle.LigaturesState.DISABLE;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    public final String getCBoxCacheDir() {
        File file = new File(ResManager.INSTANCE.getAppContext().getExternalCacheDir(), CACHE_DIR);
        FileUtils.INSTANCE.mkdirs(file);
        String absolutePath = file.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        return absolutePath;
    }

    @NotNull
    public final DiskCacheManager getDiskCacheManager() {
        return DISK_CACHE;
    }

    @NotNull
    public final DisplayMetrics getDisplayMetrics(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return getDisplayMetrics(size.getWidth(), size.getHeight());
    }

    @NotNull
    public final GlobalConfig getGlobalConfig() {
        GlobalConfig globalConfig = new GlobalConfig();
        globalConfig.setResourcePath(ResourceUtils.getResourcePath(ResManager.INSTANCE.getAppContext()));
        globalConfig.setLanguage(Locale.getDefault().getLanguage());
        globalConfig.setCachePath(getCBoxCacheDir());
        globalConfig.addDefaultFont(4, "/system/fonts/NotoSerif-Regular.ttf");
        globalConfig.addDefaultFont(4, "/system/fonts/NotoSansCJK-Regular.ttc");
        globalConfig.addDefaultFont(4, "/system/fonts/NotoSansSymbols-Regular-Subsetted.ttf");
        globalConfig.addDefaultFont(4, "/system/fonts/NotoSerifCJK-Regular.ttc");
        return globalConfig;
    }

    @NotNull
    public final DisplayMetrics getMSDocDisplayMetrics(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        return getMSDocDisplayMetrics(size.getWidth(), size.getHeight());
    }

    @Nullable
    public final String getPagePositionCacheDirName(@Nullable String filePath) {
        try {
            return StringKt.safelyEqualsIgnoreCase(DUMMY_PATH, filePath) ? "dummy" : FileUtils.INSTANCE.computeFullMD5Checksum(new File(filePath));
        } catch (Throwable th) {
            Debug.INSTANCE.m32063w(th);
            return "error";
        }
    }

    public final void init() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0022, code lost:
    
        if (r3 < 65072) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean isChinese(char r3) {
        /*
            r2 = this;
            r2 = 12288(0x3000, float:1.7219E-41)
            r0 = 1
            r1 = 0
            if (r2 > r3) goto Ld
            r2 = 55296(0xd800, float:7.7486E-41)
            if (r3 >= r2) goto Ld
            r2 = r0
            goto Le
        Ld:
            r2 = r1
        Le:
            if (r2 != 0) goto L24
            r2 = 63744(0xf900, float:8.9324E-41)
            if (r2 > r3) goto L1c
            r2 = 64256(0xfb00, float:9.0042E-41)
            if (r3 >= r2) goto L1c
            r2 = r0
            goto L1d
        L1c:
            r2 = r1
        L1d:
            if (r2 != 0) goto L24
            r2 = 65072(0xfe30, float:9.1185E-41)
            if (r3 < r2) goto L29
        L24:
            r2 = 65103(0xfe4f, float:9.1229E-41)
            if (r3 < r2) goto L3a
        L29:
            r2 = 65281(0xff01, float:9.1478E-41)
            if (r2 > r3) goto L35
            r2 = 65312(0xff20, float:9.1522E-41)
            if (r3 >= r2) goto L35
            r2 = r0
            goto L36
        L35:
            r2 = r1
        L36:
            if (r2 == 0) goto L39
            goto L3a
        L39:
            r0 = r1
        L3a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.cbox.utils.CBoxUtils.isChinese(char):boolean");
    }

    @NotNull
    public final String pagePositionInfo(@Nullable PageInfo pageInfo) {
        StringBuilder sb = new StringBuilder();
        sb.append("Page[");
        sb.append(pageInfo != null ? Integer.valueOf(pageInfo.getStartPositionInt()) : null);
        sb.append('-');
        sb.append(pageInfo != null ? Integer.valueOf(pageInfo.getEndPositionInt()) : null);
        sb.append(']');
        return sb.toString();
    }

    public final void updateImgStyle(@NotNull com.onyx.android.sdk.reader.api.ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        engineStyle.getImageStyle().setCloseDefScale(true);
        ReaderTextStyle.ImageStyle imageStyle = engineStyle.getImageStyle();
        ReaderTextStyle.SPUnit sPUnit = style.getCom.sunia.HTREnginev2.gon.J java.lang.String();
        imageStyle.setScaling((sPUnit != null ? sPUnit.getValue() : 12.0f) / 12.0f);
    }

    public final void updateReaderTextStyle(int width, int height, @NotNull com.onyx.android.sdk.reader.api.ReaderTextStyle style, @NotNull com.onyx.engine.sdk.ReaderTextStyle engineStyle) {
        Intrinsics.checkNotNullParameter(style, "style");
        Intrinsics.checkNotNullParameter(engineStyle, "engineStyle");
        engineStyle.setAntiAlias(style.getAntiAlias());
        engineStyle.setEnableHyphen(style.getEnableHyphen());
        engineStyle.setChangeWritingMode(style.getChangeWritingMode());
        engineStyle.setIncludeFontPadding(style.getIncludeFontPadding());
        engineStyle.setTextColor(style.getTextColor());
        engineStyle.setTextColorType(style.getTextColorType());
        engineStyle.setBackgroundColor(style.getCom.sunia.HTREnginev2.gon.H java.lang.String());
        engineStyle.setBackgroundColorType(style.getBackgroundColorType());
        engineStyle.setForegroundColor(style.getForegroundColor());
        engineStyle.setForegroundColorType(style.getForegroundColorType());
        ReaderTextStyle.SPUnit sPUnit = style.getCom.sunia.HTREnginev2.gon.J java.lang.String();
        engineStyle.setFontSize(sPUnit != null ? sPUnit.getValue() : 20.0f);
        engineStyle.setIndent(style.getIndent() != null ? r0.getIndent() : Float.MAX_VALUE);
        engineStyle.setFontEmboldenLevel(style.getFontEmboldenLevel());
        CBoxTextStyleUtils cBoxTextStyleUtils = CBoxTextStyleUtils.INSTANCE;
        cBoxTextStyleUtils.convertLetterSpacing(style, engineStyle);
        cBoxTextStyleUtils.convertWordSpacing(style, engineStyle);
        cBoxTextStyleUtils.convertLineSpacing(style, engineStyle);
        cBoxTextStyleUtils.convertParagraphSpacing(style, engineStyle);
        m34681f(style, engineStyle);
        m34678b(style, engineStyle);
        m34680e(style, engineStyle);
        cBoxTextStyleUtils.convertPageMargin(width, height, style, engineStyle);
        engineStyle.setLigaturesState(m34682g(style.getFontVariantLigaturesState()));
        m34679c(engineStyle, style);
    }

    @NotNull
    public final DisplayMetrics getDisplayMetrics(int width, int height) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setWidth(width);
        displayMetrics.setHeight(height);
        android.util.DisplayMetrics displayMetrics2 = ResManager.INSTANCE.getAppContext().getResources().getDisplayMetrics();
        displayMetrics.setDensity(displayMetrics2.density);
        displayMetrics.setScaledDensity(displayMetrics2.scaledDensity);
        displayMetrics.setxDpi(displayMetrics2.xdpi);
        displayMetrics.setyDpi(displayMetrics2.ydpi);
        displayMetrics.setDensityDpi(displayMetrics2.densityDpi);
        return displayMetrics;
    }

    @NotNull
    public final DisplayMetrics getMSDocDisplayMetrics(int width, int height) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setWidth(width);
        displayMetrics.setHeight(height);
        displayMetrics.setDensity(1.0f);
        displayMetrics.setScaledDensity(1.0f);
        displayMetrics.setxDpi(96.0f);
        displayMetrics.setyDpi(96.0f);
        displayMetrics.setDensityDpi(96);
        return displayMetrics;
    }

    @NotNull
    public final ReaderPageProgressionDirection convert(@NotNull PageProgressionDirection direction) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        if (WhenMappings.$EnumSwitchMapping$4[direction.ordinal()] == 1) {
            return ReaderPageProgressionDirection.RTL;
        }
        return ReaderPageProgressionDirection.LTR;
    }

    @NotNull
    public final ReaderTextStyle.ChineseConvertType convert(@NotNull ReaderChineseConvertType convertType) {
        Intrinsics.checkNotNullParameter(convertType, "convertType");
        int i = WhenMappings.$EnumSwitchMapping$5[convertType.ordinal()];
        if (i == 1) {
            return ReaderTextStyle.ChineseConvertType.SIMPLIFIED_TO_TRADITIONAL;
        }
        if (i != 2) {
            return ReaderTextStyle.ChineseConvertType.CCT_NONE;
        }
        return ReaderTextStyle.ChineseConvertType.TRADITIONAL_TO_SIMPLIFIED;
    }

    @Nullable
    public final ReaderTextStyle.FontEntry convert(@Nullable FontEntry engineFontEntry) {
        if (engineFontEntry == null) {
            return null;
        }
        ReaderTextStyle.FontEntry fontEntry = new ReaderTextStyle.FontEntry();
        fontEntry.m72330setFontPath(engineFontEntry.getFontPath());
        fontEntry.m72328setFontFamily(engineFontEntry.getFontFamily());
        fontEntry.m72331setFontStyle(engineFontEntry.getFontStyle());
        fontEntry.m72332setFontWeight(engineFontEntry.getFontWeight());
        fontEntry.m72329setFontIndex(engineFontEntry.getFontIndex());
        return fontEntry;
    }

    @NotNull
    public final FontEntry convert(@NotNull ReaderTextStyle.FontEntry fontEntry) {
        Intrinsics.checkNotNullParameter(fontEntry, "fontEntry");
        FontEntry fontEntry2 = new FontEntry();
        fontEntry2.setFontPath(fontEntry.getFontPath());
        fontEntry2.setFontFamily(fontEntry.getFontFamily());
        fontEntry2.setFontStyle(fontEntry.getFontStyle());
        fontEntry2.setFontWeight(fontEntry.getFontWeight());
        fontEntry2.setFontIndex(fontEntry.getFontIndex());
        fontEntry2.setOrigin(FontSpec.Origin.USER);
        return fontEntry2;
    }

    @NotNull
    public final ReaderTextStyle.FontSpec convert(@NotNull FontSpec engineFontSpec) {
        Intrinsics.checkNotNullParameter(engineFontSpec, "engineFontSpec");
        String family = engineFontSpec.getFamily();
        Intrinsics.checkNotNullExpressionValue(family, "getFamily(...)");
        return new ReaderTextStyle.FontSpec(family, engineFontSpec.getFontWeight(), engineFontSpec.getFontStyle());
    }

    @NotNull
    public final FontSpec convert(@NotNull ReaderTextStyle.FontSpec fontSpec) {
        Intrinsics.checkNotNullParameter(fontSpec, "fontSpec");
        return new FontSpec(fontSpec.getFamily(), fontSpec.getFontWeight(), fontSpec.getFontStyle());
    }

    @NotNull
    public final ReaderPosition convert(@Nullable PinPosition position) {
        if (position != null && !position.isInvalid()) {
            ReaderPosition fromInteger = new ReaderPositionImpl().fromInteger(position.getPositionInt());
            String json = position.toJson();
            Intrinsics.checkNotNullExpressionValue(json, "toJson(...)");
            return fromInteger.fromString(json);
        }
        return PluginPositionUtils.INSTANCE.getINVALID_POSITION();
    }

    @NotNull
    public final PinPosition convert(@Nullable ReaderPosition position) {
        if (ReaderPositionImplKt.isInvalid(position)) {
            return new PinPosition();
        }
        Intrinsics.checkNotNull(position);
        PinPosition fromJson = PinPosition.fromJson(position.getStrPosition());
        Intrinsics.checkNotNullExpressionValue(fromJson, "fromJson(...)");
        return fromJson;
    }
}
