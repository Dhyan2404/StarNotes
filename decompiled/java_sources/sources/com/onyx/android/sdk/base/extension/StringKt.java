package com.onyx.android.sdk.base.extension;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Base64;
import android.util.Patterns;
import com.google.android.exoplayer2.text.ttml.TtmlDecoder;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.installations.local.IidStore;
import com.onyx.android.sdk.base.common.CommonConstant;
import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.data.common.cloud.Constant;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.onyx.galaxy.note.editor.action.audio.RemoveAudioAction;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.templates.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import java.lang.Character;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringNumberConversionsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000p\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0010\f\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\f\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b(\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a\u0016\u0010\u0003\u001a\u00020\u0002*\u0004\u0018\u00010\u00002\b\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a(\u0010\b\u001a\u00060\u0004j\u0002`\u0005*\u00060\u0004j\u0002`\u00052\u0006\u0010\u0001\u001a\u00020\u00002\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006\u001a!\u0010\f\u001a\u00020\n2\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0004\b\f\u0010\r\u001a\u001d\u0010\u000e\u001a\u00020\u0002*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0001\u001a\u0004\b\u0003\u0010\u0000\u001a\u001d\u0010\u000f\u001a\u00020\u0002*\u0004\u0018\u00010\u0000\u0082\u0002\u000e\n\f\b\u0000\u0012\u0002\u0018\u0000\u001a\u0004\b\u0003\u0010\u0000\u001a\u000e\u0010\u0010\u001a\u0004\u0018\u00010\u0000*\u0004\u0018\u00010\u0000\u001a\u000e\u0010\u0010\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n\u001a\f\u0010\u0012\u001a\u0004\u0018\u00010\u0011*\u00020\n\u001a\f\u0010\u0013\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\u001a\u0010\u0015\u001a\u00020\n*\u0004\u0018\u00010\n2\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\n0\u0006\u001a\"\u0010\u0018\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n2\u0012\u0010\u0017\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u0016\u001a\f\u0010\u0019\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\u000e\u0010\u001a\u001a\u00020\n*\u0004\u0018\u00010\nH\u0007\u001a\u0012\u0010\u001d\u001a\u00020\n*\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001b\u001a\u0016\u0010\u001f\u001a\u00020\u0002*\u0004\u0018\u00010\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\n\u001a\u0016\u0010 \u001a\u00020\u0002*\u0004\u0018\u00010\n2\b\u0010\u001e\u001a\u0004\u0018\u00010\n\u001a\u000e\u0010!\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n\u001a\u0018\u0010#\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n2\b\u0010\"\u001a\u0004\u0018\u00010\n\u001a\u0018\u0010$\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n2\b\u0010\"\u001a\u0004\u0018\u00010\n\u001a\u0012\u0010%\u001a\u00020\n*\u00020\n2\u0006\u0010\u000b\u001a\u00020\n\u001a\u0014\u0010'\u001a\u00020\n*\u00020\n2\b\b\u0002\u0010&\u001a\u00020\u001b\u001a\u001a\u0010*\u001a\u00020\n*\u00020\n2\u0006\u0010(\u001a\u00020\n2\u0006\u0010)\u001a\u00020\n\u001a\u001e\u0010-\u001a\u00020\n*\u00020\n2\u0012\u0010,\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0+\u001a\f\u0010.\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\n\u00100\u001a\u00020\u0002*\u00020/\u001a\f\u00100\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\u000e\u00102\u001a\u00020\n2\u0006\u00101\u001a\u00020\u001b\u001a\u0012\u00104\u001a\u00020\n*\u00020\n2\u0006\u00103\u001a\u00020\u001b\u001a\u000e\u00105\u001a\u0004\u0018\u00010\n*\u0004\u0018\u00010\n\u001a\f\u00106\u001a\u00020\n*\u0004\u0018\u00010\n\u001a\f\u00107\u001a\u00020\n*\u0004\u0018\u00010\n\u001a.\u0010<\u001a\u00020\n*\u0004\u0018\u00010\n2\b\b\u0002\u00108\u001a\u00020\n2\b\b\u0002\u00109\u001a\u00020\u00022\f\u0010;\u001a\b\u0012\u0004\u0012\u00020\n0:\u001a\u0016\u0010=\u001a\u00020\n*\u0004\u0018\u00010\n2\b\b\u0002\u00108\u001a\u00020\n\u001a\u0016\u0010>\u001a\u00020\n*\u0004\u0018\u00010\n2\b\b\u0002\u00108\u001a\u00020\n\u001a\f\u0010?\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010@\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\u0012\u0010B\u001a\u00020\u0002*\u00020\n2\u0006\u0010A\u001a\u00020\n\u001a\f\u0010C\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010D\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010E\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010F\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\"\u0010I\u001a\u00020\u0002*\u00020\n2\f\u0010H\u001a\b\u0012\u0004\u0012\u00020\n0G2\b\b\u0002\u00109\u001a\u00020\u0002\u001a\n\u0010J\u001a\u00020\n*\u00020\n\u001a\u0013\u0010L\u001a\u0004\u0018\u00010K*\u00020\n¢\u0006\u0004\bL\u0010M\u001a0\u0010R\u001a\u00020\u0000*\u0004\u0018\u00010\u00002\b\u0010N\u001a\u0004\u0018\u00010\n2\b\u0010O\u001a\u0004\u0018\u00010\n2\u0006\u0010P\u001a\u00020\u001b2\u0006\u0010Q\u001a\u00020\u001b\u001a\f\u0010S\u001a\u0004\u0018\u00010\n*\u00020\n\u001a\n\u0010T\u001a\u00020\n*\u00020\n\u001a'\u0010V\u001a\u0004\u0018\u00010\n*\u00020\n2\u0012\u0010U\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0004\bV\u0010W\u001a\u001d\u0010Y\u001a\u0004\u0018\u00010/*\u0004\u0018\u00010\n2\u0006\u0010X\u001a\u00020\u001b¢\u0006\u0004\bY\u0010Z\u001a\u001e\u0010\\\u001a\u00020/*\u0004\u0018\u00010\n2\u0006\u0010X\u001a\u00020\u001b2\b\b\u0002\u0010[\u001a\u00020/\u001a\f\u0010]\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\u0014\u0010_\u001a\u00020\n*\u0004\u0018\u00010\n2\u0006\u0010^\u001a\u00020\u001b\u001a \u0010`\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0004\u0012\u00020\u001b0+*\u00020\n2\u0006\u0010^\u001a\u00020\u001b\u001a\f\u0010a\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010b\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010c\u001a\u00020\u001b*\u0004\u0018\u00010\n\u001a\f\u0010d\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010e\u001a\u00020\n*\u0004\u0018\u00010\n\u001a\f\u0010f\u001a\u00020\n*\u0004\u0018\u00010\n\u001a\u0016\u0010h\u001a\u00020\u0002*\u0004\u0018\u00010\n2\b\u0010g\u001a\u0004\u0018\u00010\n\u001a\"\u0010j\u001a\b\u0012\u0004\u0012\u00020\u001b0:*\u00020\n2\u0006\u0010i\u001a\u00020\n2\b\b\u0002\u00109\u001a\u00020\u0002\u001a\f\u0010k\u001a\u00020\u0002*\u0004\u0018\u00010\n\u001a\f\u0010l\u001a\u00020\u001b*\u0004\u0018\u00010\n\u001a\u001a\u0010n\u001a\u00020\n*\b\u0012\u0004\u0012\u00020\n0:2\b\b\u0002\u0010m\u001a\u00020\n\u001a\u001a\u0010q\u001a\u00020\n*\u00020\n2\u0006\u0010o\u001a\u00020\u001b2\u0006\u0010p\u001a\u00020\u001b\"\u0014\u0010r\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\br\u0010s\"\u001c\u0010x\u001a\n u*\u0004\u0018\u00010t0t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010w\"\u0014\u0010y\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\by\u0010s\"\u0014\u0010z\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\bz\u0010s\"\u0014\u0010{\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b{\u0010s\"\u0014\u0010|\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b|\u0010s\"\u0014\u0010}\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b}\u0010s\"\u0014\u0010~\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b~\u0010s\"\u0014\u0010\u007f\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u007f\u0010s\"\u0017\u0010\u0080\u0001\u001a\u00020K8\u0006X\u0086T¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0016\u0010\u0082\u0001\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010s\"\u0016\u0010\u0083\u0001\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010s¨\u0006\u0084\u0001"}, m61528d2 = {"", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "", "equals", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "Lkotlin/Function0;", "predicate", "appendIf", "", "", "chars", Keywords.FUNC_CONCAT_STRING, "([Ljava/lang/String;)Ljava/lang/String;", "isEmpty", "isNotBlank", "trim", "Landroid/graphics/Bitmap;", "decodeBase64ToBitmap", "isBase64Image", "defaultValue", "ifEmpty", "Lkotlin/Function1;", "mapper", "ifNotEmpty", "isNotEmpty", "safelyGetStr", "", gon.f71290o0, "subStartString", "secondStr", "safelyEqualsIgnoreCase", "safelyEquals", "fullTrim", "content", "rightTrim", "leftTrim", "trimLeftChars", "keepSize", "shortenFromCenter", "suffix", "newValue", "replaceLast", "", Constant.MAP_TAG, "replaceWithMap", "isPhoneNumber", "", "isCJK", "codePoint", "codePointToString", "limitLength", "limitSubString", "trimNewlineSymbol", "replaceAllLinebreak", "replaceLinebreakFromParagraph", "replacement", "ignoreCase", "", "words", "replaceAllWords", "replaceAllBlank", "replaceBreakLine", "isUrl", "isWebUrl", "regex", "matchRegex", "checkEmailFormat", "containCharacter", "containNumber", "containCharAndNumber", "", "substrings", "containsAny", "removeSuffixNumber", "", "getSuffixNumber", "(Ljava/lang/String;)Ljava/lang/Long;", "prefixText", "suffixText", "prefixTextColor", "suffixTextColor", "buildSpanText", "getUrlScheme", "preAppendUrlScheme", "prefixes", "getMatchPrefix", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", FirebaseAnalytics.Param.INDEX, "safelyFindChar", "(Ljava/lang/String;I)Ljava/lang/Character;", Constants.ELEMNAME_FALLBACK_STRING, "charAt", "isNumberStr", "maxCount", "parseTextLanguage", "countCharacterLanguageFrequency", "isAlpha", "isAlphaSentence", "calculateSpaceNumForString", "isPunctuationString", "removeSoftHyphenSymbol", "removeNewlineSymbol", "pattern", "safelyContains", "keyword", "allIndexesOf", "isFileNameSuffix", "toHexValue", "separator", HWRGestureWithContext.GESTURE_JOIN, TtmlDecoder.f27116r, "end", "safelySubstring", "UTF16LE", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "Ljava/util/regex/Pattern;", "kotlin.jvm.PlatformType", "a", "Ljava/util/regex/Pattern;", "PHONE_NUMBER_PATTERN", "punctuation", "REGEX_IS_EMAIL", "REGEX_CONTAIN_CHAR", "REGEX_CONTAIN_NUMBER", "REGEX_CONTAIN_CHAR_OR_NUMBER", "REGEX_CONTAIN_CHAR_AND_NUMBER", "REGEX_SUFFIX_NUMBER", "INVALID_LONG_NUMBER", "J", "REGEX_SUFFIX_FILE_EXTENSION", "REGEX_URL_PROTOCOL", "sdk-base_release"}, m61529k = 2, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 String.kt\ncom/onyx/android/sdk/base/extension/StringKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,572:1\n13309#2,2:573\n1282#2,2:605\n79#3,22:575\n37#4,2:597\n37#4,2:616\n1#5:599\n1855#6,2:600\n1747#6,3:602\n731#6,9:607\n*S KotlinDebug\n*F\n+ 1 String.kt\ncom/onyx/android/sdk/base/extension/StringKt\n*L\n60#1:573,2\n407#1:605,2\n84#1:575,22\n92#1:597,2\n499#1:616,2\n318#1:600,2\n351#1:602,3\n499#1:607,9\n*E\n"})
/* loaded from: classes7.dex */
public final class StringKt {
    public static final long INVALID_LONG_NUMBER = -1;

    @NotNull
    public static final String REGEX_CONTAIN_CHAR = ".*[a-zA-z].*";

    @NotNull
    public static final String REGEX_CONTAIN_CHAR_AND_NUMBER = "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]$";

    @NotNull
    public static final String REGEX_CONTAIN_CHAR_OR_NUMBER = "[A-Za-z0-9]";

    @NotNull
    public static final String REGEX_CONTAIN_NUMBER = ".*[0-9].*";

    @NotNull
    public static final String REGEX_IS_EMAIL = "^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$";

    @NotNull
    public static final String REGEX_SUFFIX_FILE_EXTENSION = "^.*\\.[^.]+$";

    @NotNull
    public static final String REGEX_SUFFIX_NUMBER = "\\d+$";

    @NotNull
    public static final String REGEX_URL_PROTOCOL = "^((https|http|ftp|rtsp)?:\\/\\/)[^\\s]+";

    @NotNull
    public static final String UTF16LE = "UTF-16LE";

    /* renamed from: a */
    public static final Pattern f40766a = Pattern.compile("^[0-9]{7,11}$");

    @NotNull
    public static final String punctuation = "[`~!@#$%^&*()+−×÷=|¦{}'\":;,\\[\\].<>〔〕/?¿¡·_ˇ！＠＃￥……＆（）——＿｛｝【】‘’；：”“。，、？«»‹›《》〈〉＜＞『』「」［］～〝〞＂＇´﹝﹞｜︵︷︹︿︽﹁﹃︻︼﹄﹂︾﹀︺︸︶＼／]";

    @NotNull
    public static final List<Integer> allIndexesOf(@NotNull String str, @NotNull String keyword, boolean z) {
        int indexOf$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        ArrayList arrayList = new ArrayList();
        indexOf$default = StringsKt__StringsKt.indexOf$default(str, keyword, 0, z, 2, (Object) null);
        while (indexOf$default >= 0) {
            arrayList.add(Integer.valueOf(indexOf$default));
            indexOf$default = StringsKt__StringsKt.indexOf(str, keyword, indexOf$default + keyword.length(), z);
        }
        return arrayList;
    }

    public static /* synthetic */ List allIndexesOf$default(String str, String str2, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return allIndexesOf(str, str2, z);
    }

    @NotNull
    public static final StringBuilder appendIf(@NotNull StringBuilder sb, @NotNull CharSequence str, @NotNull Function0<Boolean> predicate) {
        Intrinsics.checkNotNullParameter(sb, "<this>");
        Intrinsics.checkNotNullParameter(str, "str");
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        if (predicate.invoke().booleanValue()) {
            sb.append(str);
        }
        return sb;
    }

    @NotNull
    public static final CharSequence buildSpanText(@Nullable CharSequence charSequence, @Nullable String str, @Nullable String str2, int i, int i2) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        SpannableString spannableString = new SpannableString(str + ((Object) charSequence) + str2);
        if (isNotEmpty(str)) {
            spannableString.setSpan(new ForegroundColorSpan(i), 0, str.length(), 33);
        }
        if (isNotEmpty(str2)) {
            spannableString.setSpan(new ForegroundColorSpan(i2), spannableString.length() - str2.length(), spannableString.length(), 33);
        }
        return spannableString;
    }

    public static final int calculateSpaceNumForString(@Nullable String str) {
        boolean contains$default;
        List emptyList;
        if (str == null || str.length() == 0) {
            return 0;
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) " ", false, 2, (Object) null);
        if (!contains$default) {
            return 0;
        }
        List<String> split = new Regex(" ").split(str, 0);
        if (!split.isEmpty()) {
            ListIterator<String> listIterator = split.listIterator(split.size());
            while (listIterator.hasPrevious()) {
                if (!isEmpty(listIterator.previous())) {
                    emptyList = CollectionsKt.take(split, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        emptyList = CollectionsKt.emptyList();
        if (!(((String[]) emptyList.toArray(new String[0])).length == 0)) {
            return r5.length - 1;
        }
        return 0;
    }

    public static final char charAt(@Nullable String str, int i, char c) {
        boolean z;
        boolean isBlank;
        if (str != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!isBlank) {
                z = false;
                return (!z || str.length() <= i) ? c : str.charAt(i);
            }
        }
        z = true;
        if (z) {
        }
    }

    public static /* synthetic */ char charAt$default(String str, int i, char c, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            c = 0;
        }
        return charAt(str, i, c);
    }

    public static final boolean checkEmailFormat(@Nullable String str) {
        if (str != null) {
            return matchRegex(str, REGEX_IS_EMAIL);
        }
        return false;
    }

    @NotNull
    public static final String codePointToString(int i) {
        try {
            Result.Companion companion = Result.INSTANCE;
            char[] chars = Character.toChars(i);
            Intrinsics.checkNotNullExpressionValue(chars, "toChars(...)");
            return new String(chars);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m72621constructorimpl(ResultKt.createFailure(th));
            return "";
        }
    }

    @NotNull
    public static final String concat(@NotNull String... chars) {
        Intrinsics.checkNotNullParameter(chars, "chars");
        StringBuilder sb = new StringBuilder();
        for (String str : chars) {
            sb.append(str);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    public static final boolean containCharAndNumber(@Nullable String str) {
        if (str != null) {
            return matchRegex(str, REGEX_CONTAIN_CHAR_AND_NUMBER);
        }
        return false;
    }

    public static final boolean containCharacter(@Nullable String str) {
        if (str != null) {
            return matchRegex(str, REGEX_CONTAIN_CHAR);
        }
        return false;
    }

    public static final boolean containNumber(@Nullable String str) {
        if (str != null) {
            return matchRegex(str, REGEX_CONTAIN_NUMBER);
        }
        return false;
    }

    public static final boolean containsAny(@NotNull String str, @NotNull Collection<String> substrings, boolean z) {
        boolean contains;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(substrings, "substrings");
        Collection<String> collection = substrings;
        if (collection.isEmpty()) {
            return false;
        }
        Iterator<T> it2 = collection.iterator();
        while (it2.hasNext()) {
            contains = StringsKt__StringsKt.contains(str, (String) it2.next(), z);
            if (contains) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ boolean containsAny$default(String str, Collection collection, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return containsAny(str, collection, z);
    }

    @NotNull
    public static final Map<String, Integer> countCharacterLanguageFrequency(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        HashMap hashMap = new HashMap();
        char[] charArray = str.toCharArray();
        Intrinsics.checkNotNullExpressionValue(charArray, "this as java.lang.String).toCharArray()");
        String str2 = null;
        for (char c : charArray) {
            if (i < 0) {
                break;
            }
            if (CharKt.isAlpha(c)) {
                str2 = Locale.ENGLISH.getLanguage();
            } else {
                if (CharsKt.isWhitespace(c)) {
                    LocaleUtils localeUtils = LocaleUtils.INSTANCE;
                    Locale ENGLISH = Locale.ENGLISH;
                    Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
                    if (localeUtils.isSameLanguage(str2, ENGLISH)) {
                        hashMap.put(str2, Integer.valueOf(((Number) hashMap.getOrDefault(str2, 0)).intValue() + 1));
                        str2 = null;
                    }
                }
                str2 = CharKt.isChineseCharacter(c) ? Locale.CHINA.getLanguage() : CharKt.isKoreanCharacter(c) ? Locale.KOREAN.getLanguage() : CharKt.isJapaneseCharacter(c) ? Locale.JAPAN.getLanguage() : null;
                if (str2 != null) {
                    hashMap.put(str2, Integer.valueOf(((Number) hashMap.getOrDefault(str2, 0)).intValue() + 1));
                }
            }
        }
        return hashMap;
    }

    @Nullable
    public static final Bitmap decodeBase64ToBitmap(@NotNull String str) {
        List split$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        split$default = StringsKt__StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null);
        String[] strArr = (String[]) split$default.toArray(new String[0]);
        String str2 = strArr[0];
        if (strArr.length > 1) {
            str2 = strArr[1];
        }
        byte[] decode = Base64.decode(str2, 0);
        return BitmapFactory.decodeByteArray(decode, 0, decode.length);
    }

    public static final boolean equals(@Nullable CharSequence charSequence, @Nullable CharSequence charSequence2) {
        return StringUtils.equals(charSequence, charSequence2);
    }

    @Nullable
    public static final String fullTrim(@Nullable String str) {
        return rightTrim(str, leftTrim(str, str));
    }

    @Nullable
    public static final String getMatchPrefix(@NotNull String str, @NotNull String... prefixes) {
        boolean startsWith$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(prefixes, "prefixes");
        if (prefixes.length == 0) {
            return null;
        }
        for (String str2 : prefixes) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null);
            if (startsWith$default) {
                return str2;
            }
        }
        return null;
    }

    @Nullable
    public static final Long getSuffixNumber(@NotNull String str) {
        Long longOrNull;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Matcher matcher = Pattern.compile(REGEX_SUFFIX_NUMBER).matcher(str);
        if (!matcher.find()) {
            return null;
        }
        String group = matcher.group();
        Intrinsics.checkNotNull(group);
        longOrNull = StringsKt__StringNumberConversionsKt.toLongOrNull(group);
        if (longOrNull == null) {
            return -1L;
        }
        return longOrNull;
    }

    @Nullable
    public static final String getUrlScheme(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        return getMatchPrefix(str, CommonConstant.SCHEME_HTTP, CommonConstant.SCHEME_HTTPS);
    }

    @NotNull
    public static final String ifEmpty(@Nullable String str, @NotNull Function0<String> defaultValue) {
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        return isEmpty(str) ? defaultValue.invoke() : str;
    }

    @Nullable
    public static final String ifNotEmpty(@Nullable String str, @NotNull Function1<? super String, String> mapper) {
        Intrinsics.checkNotNullParameter(mapper, "mapper");
        return !isEmpty(str) ? mapper.invoke(str) : str;
    }

    public static final boolean isAlpha(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return CharKt.isAlpha(str.charAt(0));
    }

    public static final boolean isAlphaSentence(@Nullable String str) {
        return isAlpha(str) && calculateSpaceNumForString(str) > 0;
    }

    public static final boolean isBase64Image(@Nullable String str) {
        boolean startsWith$default;
        startsWith$default = StringsKt__StringsJVMKt.startsWith$default((String) AnyKt.getOrElse(str, ""), "data:image/", false, 2, null);
        return startsWith$default;
    }

    public static final boolean isCJK(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || of == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || of == Character.UnicodeBlock.GENERAL_PUNCTUATION || of == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION || of == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS;
    }

    public static final boolean isEmpty(@Nullable CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static final boolean isFileNameSuffix(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return Pattern.matches(REGEX_SUFFIX_FILE_EXTENSION, str);
    }

    public static final boolean isNotBlank(@Nullable CharSequence charSequence) {
        boolean z;
        boolean isBlank;
        if (charSequence != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(charSequence);
            if (!isBlank) {
                z = false;
                return !z;
            }
        }
        z = true;
        return !z;
    }

    public static final boolean isNotEmpty(@Nullable String str) {
        return !(str == null || str.length() == 0);
    }

    public static final boolean isNumberStr(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return matchRegex(str, REGEX_CONTAIN_NUMBER);
    }

    public static final boolean isPhoneNumber(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return f40766a.matcher(str).matches();
    }

    public static final boolean isPunctuationString(@Nullable String str) {
        boolean contains$default;
        if (str == null || str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) punctuation, (CharSequence) String.valueOf(str.charAt(i)), false, 2, (Object) null);
            if (!contains$default) {
                return false;
            }
        }
        return true;
    }

    public static final boolean isUrl(@Nullable String str) {
        if (isWebUrl(str)) {
            return str != null && matchRegex(str, REGEX_URL_PROTOCOL);
        }
        return false;
    }

    public static final boolean isWebUrl(@Nullable String str) {
        return isNotBlank(str) && Patterns.WEB_URL.matcher(str).matches();
    }

    @NotNull
    public static final String join(@NotNull List<String> list, @NotNull String separator) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(separator, "separator");
        return CollectionsKt.joinToString$default(list, separator, null, null, 0, null, null, 62, null);
    }

    public static /* synthetic */ String join$default(List list, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return join(list, str);
    }

    @Nullable
    public static final String leftTrim(@Nullable String str, @Nullable String str2) {
        int i = 0;
        if (str2 == null || str2.length() == 0) {
            return str2;
        }
        int length = str2.length() - 1;
        while (i <= length && Intrinsics.compare((int) str2.charAt(i), 32) <= 0) {
            i++;
        }
        if (i == 0) {
            return str2;
        }
        String substring = str2.substring(i, length + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String limitSubString(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (str.length() == 0) {
            return "";
        }
        if (i >= str.length()) {
            return str;
        }
        String substring = str.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final boolean matchRegex(@NotNull String str, @NotNull String regex) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(regex, "regex");
        return Pattern.compile(regex).matcher(str).matches();
    }

    @NotNull
    public static final String parseTextLanguage(@Nullable String str, int i) {
        int i2 = 0;
        if (str == null || str.length() == 0) {
            return "";
        }
        Map<String, Integer> countCharacterLanguageFrequency = countCharacterLanguageFrequency(str, i);
        if (CollectionKt.isNullOrEmpty(countCharacterLanguageFrequency)) {
            return "";
        }
        String str2 = "";
        for (Map.Entry<String, Integer> entry : countCharacterLanguageFrequency.entrySet()) {
            String key = entry.getKey();
            int intValue = entry.getValue().intValue();
            if (intValue > i2) {
                str2 = key == null ? "" : key;
                i2 = intValue;
            }
        }
        return str2;
    }

    @NotNull
    public static final String preAppendUrlScheme(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (isNotBlank(getUrlScheme(str))) {
            return str;
        }
        return CommonConstant.SCHEME_HTTP + str;
    }

    @NotNull
    public static final String removeNewlineSymbol(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return "";
        }
        return new Regex("\n").replace(new Regex("\r\n").replace(str, ""), "");
    }

    @NotNull
    public static final String removeSoftHyphenSymbol(@Nullable String str) {
        return str == null || str.length() == 0 ? "" : new Regex("\u00ad").replace(str, "");
    }

    @NotNull
    public static final String removeSuffixNumber(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Matcher matcher = Pattern.compile(REGEX_SUFFIX_NUMBER).matcher(str);
        if (!matcher.find()) {
            return str;
        }
        String substring = str.substring(0, matcher.start());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String replaceAllBlank(@Nullable String str, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return replaceAllWords$default(str, replacement, false, CollectionsKt.listOf((Object[]) new String[]{" ", "\r", "\n", "\\ "}), 2, null);
    }

    public static /* synthetic */ String replaceAllBlank$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return replaceAllBlank(str, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:2:0x0002, code lost:
    
        r6 = kotlin.text.StringsKt__StringsJVMKt.replace$default(r12, "\r\n", "", false, 4, (java.lang.Object) null);
     */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String replaceAllLinebreak(@org.jetbrains.annotations.Nullable java.lang.String r12) {
        /*
            if (r12 == 0) goto L1c
            java.lang.String r1 = "\r\n"
            java.lang.String r2 = ""
            r3 = 0
            r4 = 4
            r5 = 0
            r0 = r12
            java.lang.String r6 = kotlin.text.StringsKt.replace$default(r0, r1, r2, r3, r4, r5)
            if (r6 == 0) goto L1c
            java.lang.String r7 = "\n"
            java.lang.String r8 = ""
            r9 = 0
            r10 = 4
            r11 = 0
            java.lang.String r12 = kotlin.text.StringsKt.replace$default(r6, r7, r8, r9, r10, r11)
            goto L1d
        L1c:
            r12 = 0
        L1d:
            if (r12 != 0) goto L21
            java.lang.String r12 = ""
        L21:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.extension.StringKt.replaceAllLinebreak(java.lang.String):java.lang.String");
    }

    @NotNull
    public static final String replaceAllWords(@Nullable String str, @NotNull String replacement, boolean z, @NotNull List<String> words) {
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        Intrinsics.checkNotNullParameter(words, "words");
        if (str == null) {
            str = "";
        }
        Iterator<T> it2 = words.iterator();
        while (it2.hasNext()) {
            str = StringsKt__StringsJVMKt.replace(str, (String) it2.next(), replacement, z);
        }
        return str;
    }

    public static /* synthetic */ String replaceAllWords$default(String str, String str2, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        if ((i & 2) != 0) {
            z = true;
        }
        return replaceAllWords(str, str2, z, list);
    }

    @NotNull
    public static final String replaceBreakLine(@Nullable String str, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        return replaceAllWords$default(str, replacement, false, CollectionsKt.listOf((Object[]) new String[]{"\r", "\n"}), 2, null);
    }

    public static /* synthetic */ String replaceBreakLine$default(String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            str2 = "";
        }
        return replaceBreakLine(str, str2);
    }

    @NotNull
    public static final String replaceLast(@NotNull String str, @NotNull String suffix, @NotNull String newValue) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(suffix, "suffix");
        Intrinsics.checkNotNullParameter(newValue, "newValue");
        if (!isNotBlank(suffix)) {
            return str;
        }
        endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, suffix, false, 2, null);
        if (!endsWith$default) {
            return str;
        }
        String substring = str.substring(0, str.length() - suffix.length());
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring + newValue;
    }

    @NotNull
    public static final String replaceLinebreakFromParagraph(@Nullable String str) {
        boolean isBlank;
        if (str != null && !isEmpty(str)) {
            isBlank = StringsKt__StringsJVMKt.isBlank(str);
            if (!isBlank) {
                StringBuilder sb = new StringBuilder();
                String replace = new Regex("(\r\n|\r|\n)+").replace(str, "\n");
                int length = replace.length();
                for (int i = 0; i < length; i++) {
                    char charAt = replace.charAt(i);
                    if (charAt != '\n') {
                        sb.append(charAt);
                    } else if (i > 0 && i < replace.length() - 1) {
                        char charAt2 = replace.charAt(i - 1);
                        char charAt3 = replace.charAt(i + 1);
                        if (CharKt.isAlpha(charAt2) && CharKt.isAlpha(charAt3)) {
                            sb.append(" ");
                        }
                    }
                }
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "toString(...)");
                return sb2;
            }
        }
        return "";
    }

    @NotNull
    public static final String replaceWithMap(@NotNull String str, @NotNull final Map<String, String> map) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(map, "map");
        return new Regex(CollectionsKt.joinToString$default(map.keySet(), IidStore.f35940g, null, null, 0, null, null, 62, null)).replace(str, new Function1<MatchResult, CharSequence>() { // from class: com.onyx.android.sdk.base.extension.StringKt$replaceWithMap$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CharSequence invoke(@NotNull MatchResult matchResult) {
                Intrinsics.checkNotNullParameter(matchResult, "matchResult");
                String str2 = map.get(matchResult.getValue());
                return str2 != null ? str2 : matchResult.getValue();
            }
        });
    }

    @Nullable
    public static final String rightTrim(@Nullable String str, @Nullable String str2) {
        if (str2 == null || str2.length() == 0) {
            return str2;
        }
        int length = str2.length() - 1;
        int i = length;
        while (i >= 0 && Intrinsics.compare((int) str2.charAt(i), 32) <= 0) {
            i--;
        }
        if (i == length) {
            return str2;
        }
        String substring = str2.substring(0, i + 1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    public static final boolean safelyContains(@Nullable String str, @Nullable String str2) {
        boolean contains$default;
        boolean z = true;
        if (str == null || str.length() == 0) {
            return false;
        }
        if (str2 != null && str2.length() != 0) {
            z = false;
        }
        if (z) {
            return false;
        }
        Intrinsics.checkNotNull(str2);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) str2, false, 2, (Object) null);
        return contains$default;
    }

    public static final boolean safelyEquals(@Nullable String str, @Nullable String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return StringUtils.equals(str, str2);
    }

    public static final boolean safelyEqualsIgnoreCase(@Nullable String str, @Nullable String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return StringUtils.equalsIgnoreCase(str, str2);
    }

    @Nullable
    public static final Character safelyFindChar(@Nullable String str, int i) {
        if (str == null || str.length() == 0) {
            return null;
        }
        if (i >= 0 && i < str.length()) {
            return Character.valueOf(str.charAt(i));
        }
        return null;
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "this.orEmpty()", imports = {}))
    @NotNull
    public static final String safelyGetStr(@Nullable String str) {
        return str == null ? "" : str;
    }

    @NotNull
    public static final String safelySubstring(@NotNull String str, int i, int i2) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        int coerceIn = RangesKt.coerceIn(i, 0, str.length());
        int coerceIn2 = RangesKt.coerceIn(i2, 0, str.length());
        String substring = str.substring(Math.min(coerceIn, coerceIn2), Math.max(coerceIn, coerceIn2));
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring;
    }

    @NotNull
    public static final String shortenFromCenter(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (isEmpty(str)) {
            return RemoveAudioAction.f58149k;
        }
        if (str.length() <= (i * 2) + 1) {
            return str;
        }
        String substring = str.substring(0, i);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        String substring2 = str.substring(str.length() - i, str.length());
        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
        return substring + RemoveAudioAction.f58149k + substring2;
    }

    public static /* synthetic */ String shortenFromCenter$default(String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return shortenFromCenter(str, i);
    }

    @NotNull
    public static final String subStartString(@NotNull String str, int i) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (i >= str.length()) {
            i = 0;
        }
        String substring = str.substring(i);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return substring;
    }

    public static final int toHexValue(@Nullable String str) {
        String removePrefix;
        if (str == null) {
            return -1;
        }
        try {
            removePrefix = StringsKt__StringsKt.removePrefix(str, (CharSequence) "0x");
            String trim = trim(removePrefix);
            Intrinsics.checkNotNull(trim);
            return Integer.parseInt(trim, CharsKt.checkRadix(16));
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    @Nullable
    public static final String trim(@Nullable String str) {
        return StringUtils.trim(str);
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0011 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.String trimLeftChars(@org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.NotNull java.lang.String r4) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            java.lang.String r0 = "chars"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
        La:
            r0 = 2
            r1 = 0
            r2 = 0
            boolean r0 = kotlin.text.StringsKt.startsWith$default(r3, r4, r2, r0, r1)
            if (r0 == 0) goto L21
            int r0 = r4.length()
            java.lang.String r3 = r3.substring(r0)
            java.lang.String r0 = "this as java.lang.String).substring(startIndex)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r0)
            goto La
        L21:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.base.extension.StringKt.trimLeftChars(java.lang.String, java.lang.String):java.lang.String");
    }

    @Nullable
    public static final String trimNewlineSymbol(@Nullable String str) {
        return isNotBlank(str) ? StringUtils.replaceAll(str, "\r\n", "\n") : str;
    }

    @Nullable
    public static final CharSequence trim(@Nullable CharSequence charSequence) {
        if (charSequence == null) {
            return null;
        }
        int length = charSequence.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean isWhitespace = CharsKt.isWhitespace(charSequence.charAt(!z ? i : length));
            if (z) {
                if (!isWhitespace) {
                    break;
                }
                length--;
            } else if (isWhitespace) {
                i++;
            } else {
                z = true;
            }
        }
        return charSequence.subSequence(i, length + 1);
    }

    public static final boolean isCJK(@Nullable String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (isCJK(str.charAt(i))) {
                return true;
            }
        }
        return false;
    }
}
