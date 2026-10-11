package com.onyx.android.sdk.reader.impl;

import androidx.transition.Transition;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.gson.internal.bind.TypeAdapters;
import com.onyx.android.sdk.base.extension.CharKt;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.reader.api.ReaderTextSplitter;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import com.sunia.HTREnginev2.gon;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\f\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 12\u00020\u0001:\u0003123B\u0007¢\u0006\u0004\b/\u00100J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\b\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0006J&\u0010\u0010\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J&\u0010\u0011\u001a\u00020\u000f2\b\u0010\f\u001a\u0004\u0018\u00010\u00022\b\u0010\r\u001a\u0004\u0018\u00010\u00022\b\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0013\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0014\u001a\u00020\u000f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0015\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u000e\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0006R\"\u0010\u001c\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u0019\u0010\u001eR2\u0010!\u001a\u0012\u0012\u0004\u0012\u00020\u00160\u001fj\b\u0012\u0004\u0012\u00020\u0016` 8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R$\u0010.\u001a\u0004\u0018\u00010'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-¨\u00064"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderTextSplitter;", "", "text", "", "a", "", "useTtsCommaSplitters", "useTtsPeriodSplitters", "useTtsParagraphSplitters", "isUseTtsParagraphSplitters", "resetSplitters", "word", "left", gon.f71288n0, "", "getTextLeftBoundary", "getTextRightBoundary", "ch", "isAlphaOrDigit", "getTextSentenceBreakPoint", "isWord", "", "isSentenceBreakSplitter", "selectingWord", "setSelectingWord", "resetSelectingWord", Constants.HASIDCALL_INDEX_SIG, "isSelectingWord", Constants.BOOLEAN_VALUE_SIG, "(Z)V", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "splitters", "Ljava/util/HashSet;", "getSplitters", "()Ljava/util/HashSet;", "setSplitters", "(Ljava/util/HashSet;)V", "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;", "b", "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;", "getAnalyzeResult", "()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;", "setAnalyzeResult", "(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;)V", "analyzeResult", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "SentenceAlphaAndDigitMatcher", "SentenceAnalyzeResult", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl\n*L\n336#1:382,5\n*E\n"})
/* loaded from: classes8.dex */
public final class ReaderTextSplitterImpl implements ReaderTextSplitter {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: c */
    @NotNull
    public static final String f44896c = " ";

    /* renamed from: d */
    @NotNull
    public static final String f44897d = "\u3000";

    /* renamed from: e */
    @NotNull
    public static HashSet<Character> f44898e = new HashSet<>();

    /* renamed from: f */
    @NotNull
    public static HashSet<Character> f44899f = new HashSet<>();

    /* renamed from: g */
    @NotNull
    public static HashSet<Character> f44900g = new HashSet<>();

    /* renamed from: h */
    @NotNull
    public static HashSet<Character> f44901h = new HashSet<>();

    /* renamed from: i */
    @NotNull
    public static final HashSet<Character> f44902i = new HashSet<>();

    /* renamed from: j */
    @NotNull
    public static ReaderTextSplitterImpl f44903j = new ReaderTextSplitterImpl();

    /* renamed from: k */
    public static final int f44904k = 3;

    /* renamed from: a, reason: from kotlin metadata */
    public boolean isSelectingWord = true;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public SentenceAnalyzeResult analyzeResult;
    public HashSet<Character> splitters;

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\f\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u001e\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b=\u0010>J\u0010\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0006\u0010\u0007\u001a\u00020\u0006J\u001e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\b2\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\tJ\u0018\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u0019\u0010\u0010\u001a\u00020\u00042\b\u0010\u000f\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J-\u0010\u0015\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\b2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0014\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\bH\u0002J\u0012\u0010\u0019\u001a\u00020\u00022\b\u0010\u0018\u001a\u0004\u0018\u00010\u0002H\u0002R\u001a\u0010\u001a\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u001e\u001a\u00020\u00028\u0006X\u0086D¢\u0006\f\n\u0004\b\u001e\u0010\u001b\u001a\u0004\b\u001f\u0010\u001dR2\u0010\"\u001a\u0012\u0012\u0004\u0012\u00020\b0 j\b\u0012\u0004\u0012\u00020\b`!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R2\u0010(\u001a\u0012\u0012\u0004\u0012\u00020\b0 j\b\u0012\u0004\u0012\u00020\b`!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010#\u001a\u0004\b)\u0010%\"\u0004\b*\u0010'R2\u0010+\u001a\u0012\u0012\u0004\u0012\u00020\b0 j\b\u0012\u0004\u0012\u00020\b`!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b+\u0010#\u001a\u0004\b,\u0010%\"\u0004\b-\u0010'R2\u0010.\u001a\u0012\u0012\u0004\u0012\u00020\b0 j\b\u0012\u0004\u0012\u00020\b`!8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010#\u001a\u0004\b/\u0010%\"\u0004\b0\u0010'R'\u00101\u001a\u0012\u0012\u0004\u0012\u00020\b0 j\b\u0012\u0004\u0012\u00020\b`!8\u0006¢\u0006\f\n\u0004\b1\u0010#\u001a\u0004\b2\u0010%R\"\u00103\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\u001a\u00109\u001a\u00020\r8\u0006X\u0086D¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<¨\u0006?"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion;", "", "", "ch", "", "isAlphaOrDigitImpl", "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;", "sharedInstance", "", "", "charBuff", "isSentenceBreakSplitter", "text", "", FirebaseAnalytics.Param.INDEX, "c", "a", "(Ljava/lang/Character;)Z", "first", TypeAdapters.C6590r.f36278f, "third", "b", "(Ljava/lang/Character;Ljava/lang/Character;Ljava/lang/Character;)Z", "d", "string", "e", "EMPTY_STR", Constants.STRING_SIG, "getEMPTY_STR", "()Ljava/lang/String;", "EMPTY_CN_STR", "getEMPTY_CN_STR", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "DEFAULT_SPLITTERS", "Ljava/util/HashSet;", "getDEFAULT_SPLITTERS", "()Ljava/util/HashSet;", "setDEFAULT_SPLITTERS", "(Ljava/util/HashSet;)V", "NUMBER_SPLITTERS", "getNUMBER_SPLITTERS", "setNUMBER_SPLITTERS", "TTS_COMMA_SPLITTERS", "getTTS_COMMA_SPLITTERS", "setTTS_COMMA_SPLITTERS", "TTS_PERIOD_SPLITTERS", "getTTS_PERIOD_SPLITTERS", "setTTS_PERIOD_SPLITTERS", "TTS_PARAGRAPH_SPLITTERS", "getTTS_PARAGRAPH_SPLITTERS", Transition.f10626J0, "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;", "getInstance", "()Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;", "setInstance", "(Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl;)V", "CHAR_BUFF_LIMIT", "I", "getCHAR_BUFF_LIMIT", "()I", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nReaderTextSplitterImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n+ 2 Any.kt\ncom/onyx/android/sdk/base/extension/AnyKt\n*L\n1#1,381:1\n32#2,5:382\n32#2,5:387\n*S KotlinDebug\n*F\n+ 1 ReaderTextSplitterImpl.kt\ncom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$Companion\n*L\n264#1:382,5\n265#1:387,5\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final boolean m34703a(Character c) {
            boolean contains;
            contains = CollectionsKt___CollectionsKt.contains(getNUMBER_SPLITTERS(), c);
            return contains;
        }

        /* renamed from: b */
        public final boolean m34704b(Character first, Character second, Character third) {
            if (!m34703a(second)) {
                return false;
            }
            if (first == null) {
                return false;
            }
            Intrinsics.checkNotNull(first);
            if (!Character.isDigit(first.charValue())) {
                return false;
            }
            if (third == null) {
                return false;
            }
            Intrinsics.checkNotNull(third);
            return Character.isDigit(third.charValue());
        }

        /* renamed from: c */
        public final boolean m34705c(String text, int index) {
            return m34704b(StringKt.safelyFindChar(text, index - 1), StringKt.safelyFindChar(text, index), StringKt.safelyFindChar(text, index + 1));
        }

        /* renamed from: d */
        public final boolean m34706d(char c) {
            boolean contains$default;
            contains$default = StringsKt__StringsKt.contains$default((CharSequence) StringKt.punctuation, (CharSequence) String.valueOf(c), false, 2, (Object) null);
            return contains$default && !sharedInstance().getIsSelectingWord();
        }

        /* renamed from: e */
        public final String m34707e(String string) {
            char last;
            if (string == null || string.length() == 0) {
                return "";
            }
            last = StringsKt___StringsKt.last(string);
            if (last == 0) {
                return string;
            }
            String substring = string.substring(0, string.length() - 1);
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            return substring;
        }

        public final int getCHAR_BUFF_LIMIT() {
            return ReaderTextSplitterImpl.f44904k;
        }

        @NotNull
        public final HashSet<Character> getDEFAULT_SPLITTERS() {
            return ReaderTextSplitterImpl.f44898e;
        }

        @NotNull
        public final String getEMPTY_CN_STR() {
            return ReaderTextSplitterImpl.f44897d;
        }

        @NotNull
        public final String getEMPTY_STR() {
            return ReaderTextSplitterImpl.f44896c;
        }

        @NotNull
        public final ReaderTextSplitterImpl getInstance() {
            return ReaderTextSplitterImpl.f44903j;
        }

        @NotNull
        public final HashSet<Character> getNUMBER_SPLITTERS() {
            return ReaderTextSplitterImpl.f44899f;
        }

        @NotNull
        public final HashSet<Character> getTTS_COMMA_SPLITTERS() {
            return ReaderTextSplitterImpl.f44900g;
        }

        @NotNull
        public final HashSet<Character> getTTS_PARAGRAPH_SPLITTERS() {
            return ReaderTextSplitterImpl.f44902i;
        }

        @NotNull
        public final HashSet<Character> getTTS_PERIOD_SPLITTERS() {
            return ReaderTextSplitterImpl.f44901h;
        }

        public final boolean isAlphaOrDigitImpl(@Nullable String ch) {
            if (ch == null || ch.length() != 1) {
                return false;
            }
            return CharKt.isAlpha(ch.charAt(0)) || Character.isDigit(ch.charAt(0));
        }

        public final boolean isSentenceBreakSplitter(char ch, @Nullable List<Character> charBuff) {
            if (charBuff == null) {
                return sharedInstance().isSentenceBreakSplitter(ch);
            }
            if (charBuff.size() >= getCHAR_BUFF_LIMIT()) {
                charBuff.remove(0);
            }
            charBuff.add(Character.valueOf(ch));
            if (charBuff.size() < getCHAR_BUFF_LIMIT()) {
                return !Character.isDigit(charBuff.get(0).charValue()) && sharedInstance().isSentenceBreakSplitter(ch);
            }
            char charValue = charBuff.get(0).charValue();
            char charValue2 = charBuff.get(1).charValue();
            char charValue3 = charBuff.get(2).charValue();
            return !Character.isDigit(charValue2) ? sharedInstance().isSentenceBreakSplitter(charValue3) : sharedInstance().isSentenceBreakSplitter(charValue2) && !m34704b(Character.valueOf(charValue), Character.valueOf(charValue2), Character.valueOf(charValue3));
        }

        public final void setDEFAULT_SPLITTERS(@NotNull HashSet<Character> hashSet) {
            Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
            ReaderTextSplitterImpl.f44898e = hashSet;
        }

        public final void setInstance(@NotNull ReaderTextSplitterImpl readerTextSplitterImpl) {
            Intrinsics.checkNotNullParameter(readerTextSplitterImpl, "<set-?>");
            ReaderTextSplitterImpl.f44903j = readerTextSplitterImpl;
        }

        public final void setNUMBER_SPLITTERS(@NotNull HashSet<Character> hashSet) {
            Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
            ReaderTextSplitterImpl.f44899f = hashSet;
        }

        public final void setTTS_COMMA_SPLITTERS(@NotNull HashSet<Character> hashSet) {
            Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
            ReaderTextSplitterImpl.f44900g = hashSet;
        }

        public final void setTTS_PERIOD_SPLITTERS(@NotNull HashSet<Character> hashSet) {
            Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
            ReaderTextSplitterImpl.f44901h = hashSet;
        }

        @NotNull
        public final ReaderTextSplitterImpl sharedInstance() {
            return getInstance();
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0010B#\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0003\u001a\u00020\u0002R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher;", "", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRNAME_MATCH, "", "a", Constants.STRING_SIG, "word", "b", Keywords.FUNC_CONCAT_STRING, "", "c", Constants.HASIDCALL_INDEX_SIG, "forward", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Z)V", "State", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class SentenceAlphaAndDigitMatcher {

        /* renamed from: a, reason: from kotlin metadata */
        @Nullable
        public final String word;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public final String concat;

        /* renamed from: c, reason: from kotlin metadata */
        public final boolean forward;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0082\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher$State;", "", "(Ljava/lang/String;I)V", "ALPHA", "DIGIT", "DIGIT_SPLITTER", "PUNCTUATION_SPLITTER", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public static final class State {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ State[] $VALUES;
            public static final State ALPHA = new State("ALPHA", 0);
            public static final State DIGIT = new State("DIGIT", 1);
            public static final State DIGIT_SPLITTER = new State("DIGIT_SPLITTER", 2);
            public static final State PUNCTUATION_SPLITTER = new State("PUNCTUATION_SPLITTER", 3);

            private static final /* synthetic */ State[] $values() {
                return new State[]{ALPHA, DIGIT, DIGIT_SPLITTER, PUNCTUATION_SPLITTER};
            }

            static {
                State[] $values = $values();
                $VALUES = $values;
                $ENTRIES = EnumEntriesKt.enumEntries($values);
            }

            private State(String str, int i) {
            }

            @NotNull
            public static EnumEntries<State> getEntries() {
                return $ENTRIES;
            }

            public static State valueOf(String str) {
                return (State) Enum.valueOf(State.class, str);
            }

            public static State[] values() {
                return (State[]) $VALUES.clone();
            }
        }

        @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
        /* loaded from: classes8.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[State.values().length];
                try {
                    iArr[State.ALPHA.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[State.DIGIT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[State.DIGIT_SPLITTER.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[State.PUNCTUATION_SPLITTER.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public SentenceAlphaAndDigitMatcher(@Nullable String str, @Nullable String str2, boolean z) {
            this.word = str;
            this.concat = str2;
            this.forward = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x001d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int match() {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.SentenceAlphaAndDigitMatcher.match():int");
        }
    }

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\f\u0018\u0000 \u00172\u00020\u0001:\u0003\u0017\b\nB1\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\f\u0012\u0006\u0010\u0014\u001a\u00020\f¢\u0006\u0004\b\u0015\u0010\u0016J$\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0004\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0017\u0010\u0011\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0017\u0010\u0014\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u000e\u001a\u0004\b\u0013\u0010\u0010¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;", "", "", "word", "left", gon.f71288n0, "", "isSameSentence", "a", Constants.STRING_SIG, "b", "c", "", "d", "I", "getLeftBoundaryOfWord", "()I", "leftBoundaryOfWord", "e", "getRightBoundaryOfWord", "rightBoundaryOfWord", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final class SentenceAnalyzeResult {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String word;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final String left;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final String right;

        /* renamed from: d, reason: from kotlin metadata */
        public final int leftBoundaryOfWord;

        /* renamed from: e, reason: from kotlin metadata */
        public final int rightBoundaryOfWord;

        @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002J0\u0010\f\u001a\u0004\u0018\u00010\u000b2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0002J \u0010\u0011\u001a\u0004\u0018\u00010\u00102\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion;", "", "", "word", "left", gon.f71288n0, "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult;", "analyze", "", "Lcom/onyx/android/sdk/reader/impl/SegmentOutputData;", "analyzeResult", "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$b;", "b", com.sun.org.apache.xalan.internal.templates.Constants.EXSLT_ELEMNAME_FUNCRESULT_STRING, "", FirebaseAnalytics.Param.INDEX, "Lcom/onyx/android/sdk/reader/impl/ReaderTextSplitterImpl$SentenceAnalyzeResult$a;", "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
        /* loaded from: classes8.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* renamed from: a */
            public final C7590a m34708a(List<SegmentOutputData> result, int index) {
                int size = result.size();
                int i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    String word = result.get(i2).getWord();
                    if (word == null) {
                        word = "";
                    }
                    i += word.length();
                    if (i > index) {
                        return new C7590a(i2, index - (i - word.length()));
                    }
                }
                return null;
            }

            @NotNull
            public final SentenceAnalyzeResult analyze(@NotNull String word, @NotNull String left, @NotNull String right) {
                Intrinsics.checkNotNullParameter(word, "word");
                Intrinsics.checkNotNullParameter(left, "left");
                Intrinsics.checkNotNullParameter(right, "right");
                Locale locale = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
                Intrinsics.checkNotNullExpressionValue(word.toLowerCase(locale), "this as java.lang.String).toLowerCase(locale)");
                Locale locale2 = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale2, "getDefault(...)");
                Intrinsics.checkNotNullExpressionValue(left.toLowerCase(locale2), "this as java.lang.String).toLowerCase(locale)");
                Locale locale3 = Locale.getDefault();
                Intrinsics.checkNotNullExpressionValue(locale3, "getDefault(...)");
                Intrinsics.checkNotNullExpressionValue(right.toLowerCase(locale3), "this as java.lang.String).toLowerCase(locale)");
                return new SentenceAnalyzeResult("", "", "", 0, 0, null);
            }

            /* renamed from: b */
            public final C7591b m34709b(List<SegmentOutputData> analyzeResult, String word, String left, String right) {
                C7590a m34708a;
                C7590a m34708a2 = m34708a(analyzeResult, left.length());
                if (m34708a2 == null || (m34708a = m34708a(analyzeResult, (left.length() + word.length()) - 1)) == null) {
                    return null;
                }
                return new C7591b(m34708a2, m34708a);
            }

            public Companion() {
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult$a */
        /* loaded from: classes8.dex */
        public static final class C7590a {

            /* renamed from: a */
            public int f44915a;

            /* renamed from: b */
            public int f44916b;

            public C7590a(int i, int i2) {
                this.f44915a = i;
                this.f44916b = i2;
            }

            /* renamed from: a */
            public final int m34710a() {
                return this.f44915a;
            }

            /* renamed from: b */
            public final int m34711b() {
                return this.f44916b;
            }

            /* renamed from: c */
            public final void m34712c(int i) {
                this.f44915a = i;
            }

            /* renamed from: d */
            public final void m34713d(int i) {
                this.f44916b = i;
            }
        }

        /* renamed from: com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult$b */
        /* loaded from: classes8.dex */
        public static final class C7591b {

            /* renamed from: a */
            @NotNull
            public C7590a f44917a;

            /* renamed from: b */
            @NotNull
            public C7590a f44918b;

            public C7591b(@NotNull C7590a leftLocation, @NotNull C7590a rightLocation) {
                Intrinsics.checkNotNullParameter(leftLocation, "leftLocation");
                Intrinsics.checkNotNullParameter(rightLocation, "rightLocation");
                this.f44917a = leftLocation;
                this.f44918b = rightLocation;
            }

            @NotNull
            /* renamed from: a */
            public final C7590a m34714a() {
                return this.f44917a;
            }

            @NotNull
            /* renamed from: b */
            public final C7590a m34715b() {
                return this.f44918b;
            }

            /* renamed from: c */
            public final void m34716c(@NotNull C7590a c7590a) {
                Intrinsics.checkNotNullParameter(c7590a, "<set-?>");
                this.f44917a = c7590a;
            }

            /* renamed from: d */
            public final void m34717d(@NotNull C7590a c7590a) {
                Intrinsics.checkNotNullParameter(c7590a, "<set-?>");
                this.f44918b = c7590a;
            }
        }

        public /* synthetic */ SentenceAnalyzeResult(String str, String str2, String str3, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, str2, str3, i, i2);
        }

        public final int getLeftBoundaryOfWord() {
            return this.leftBoundaryOfWord;
        }

        public final int getRightBoundaryOfWord() {
            return this.rightBoundaryOfWord;
        }

        public final boolean isSameSentence(@Nullable String word, @Nullable String left, @Nullable String right) {
            String str = this.word;
            Intrinsics.checkNotNull(word);
            if (str.compareTo(word) == 0) {
                String str2 = this.left;
                Intrinsics.checkNotNull(left);
                if (str2.compareTo(left) == 0) {
                    String str3 = this.right;
                    Intrinsics.checkNotNull(right);
                    if (str3.compareTo(right) == 0) {
                        return true;
                    }
                }
            }
            return false;
        }

        public SentenceAnalyzeResult(String str, String str2, String str3, int i, int i2) {
            this.word = str;
            this.left = str2;
            this.right = str3;
            this.leftBoundaryOfWord = i;
            this.rightBoundaryOfWord = i2;
        }
    }

    static {
        f44898e.add((char) 65292);
        f44898e.add((char) 12290);
        f44898e.add((char) 65311);
        f44898e.add((char) 65281);
        f44898e.add(',');
        f44898e.add('.');
        f44898e.add('?');
        HashSet<Character> hashSet = f44898e;
        Character valueOf = Character.valueOf(PublicSuffixDatabase.f103895g);
        hashSet.add(valueOf);
        f44900g.addAll(f44898e);
        f44901h.add((char) 12290);
        f44901h.add((char) 65311);
        f44901h.add((char) 65281);
        f44901h.add('.');
        f44901h.add('?');
        f44901h.add(valueOf);
        f44899f.add(',');
        f44899f.add('.');
        f44903j.setSplitters(f44898e);
    }

    /* renamed from: a */
    public final boolean m34702a(String text) {
        boolean contains$default;
        boolean contains$default2;
        int length = text.length();
        for (int i = 0; i < length; i++) {
            contains$default2 = StringsKt__StringsKt.contains$default((CharSequence) StringKt.punctuation, (CharSequence) String.valueOf(text.charAt(i)), false, 2, (Object) null);
            if (contains$default2) {
                return true;
            }
        }
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) text, (CharSequence) f44896c, false, 2, (Object) null);
        return contains$default || StringKt.safelyEqualsIgnoreCase(text, f44897d);
    }

    @Nullable
    public final SentenceAnalyzeResult getAnalyzeResult() {
        return this.analyzeResult;
    }

    @NotNull
    public final HashSet<Character> getSplitters() {
        HashSet<Character> hashSet = this.splitters;
        if (hashSet != null) {
            return hashSet;
        }
        Intrinsics.throwUninitializedPropertyAccessException("splitters");
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        if (r3.isSameSentence(r1, r4, r5) == false) goto L18;
     */
    @Override // com.onyx.android.sdk.reader.api.ReaderTextSplitter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTextLeftBoundary(@org.jetbrains.annotations.Nullable java.lang.String r3, @org.jetbrains.annotations.Nullable java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r2 = this;
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$Companion r0 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.INSTANCE
            java.lang.String r1 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r3)
            java.lang.String r4 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r4)
            java.lang.String r5 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r5)
            r0 = 0
            if (r3 == 0) goto L1a
            int r3 = r3.length()
            if (r3 != 0) goto L18
            goto L1a
        L18:
            r3 = r0
            goto L1b
        L1a:
            r3 = 1
        L1b:
            if (r3 != 0) goto L2d
            boolean r3 = r2.isAlphaOrDigit(r1)
            if (r3 == 0) goto L2d
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher r2 = new com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher
            r2.<init>(r1, r4, r0)
            int r2 = r2.match()
            return r2
        L2d:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r3 = r2.analyzeResult
            if (r3 == 0) goto L3a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            boolean r3 = r3.isSameSentence(r1, r4, r5)
            if (r3 != 0) goto L42
        L3a:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion r3 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.SentenceAnalyzeResult.INSTANCE
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r3 = r3.analyze(r1, r4, r5)
            r2.analyzeResult = r3
        L42:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r2 = r2.analyzeResult
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r2 = r2.getLeftBoundaryOfWord()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.getTextLeftBoundary(java.lang.String, java.lang.String, java.lang.String):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        if (r3.isSameSentence(r1, r4, r5) == false) goto L18;
     */
    @Override // com.onyx.android.sdk.reader.api.ReaderTextSplitter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getTextRightBoundary(@org.jetbrains.annotations.Nullable java.lang.String r3, @org.jetbrains.annotations.Nullable java.lang.String r4, @org.jetbrains.annotations.Nullable java.lang.String r5) {
        /*
            r2 = this;
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$Companion r0 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.INSTANCE
            java.lang.String r1 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r3)
            java.lang.String r4 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r4)
            java.lang.String r5 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.Companion.access$normalizeString(r0, r5)
            r0 = 1
            if (r3 == 0) goto L1a
            int r3 = r3.length()
            if (r3 != 0) goto L18
            goto L1a
        L18:
            r3 = 0
            goto L1b
        L1a:
            r3 = r0
        L1b:
            if (r3 != 0) goto L2d
            boolean r3 = r2.isAlphaOrDigit(r1)
            if (r3 == 0) goto L2d
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher r2 = new com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAlphaAndDigitMatcher
            r2.<init>(r1, r5, r0)
            int r2 = r2.match()
            return r2
        L2d:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r3 = r2.analyzeResult
            if (r3 == 0) goto L3a
            kotlin.jvm.internal.Intrinsics.checkNotNull(r3)
            boolean r3 = r3.isSameSentence(r1, r4, r5)
            if (r3 != 0) goto L42
        L3a:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult$Companion r3 = com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.SentenceAnalyzeResult.INSTANCE
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r3 = r3.analyze(r1, r4, r5)
            r2.analyzeResult = r3
        L42:
            com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl$SentenceAnalyzeResult r2 = r2.analyzeResult
            kotlin.jvm.internal.Intrinsics.checkNotNull(r2)
            int r2 = r2.getRightBoundaryOfWord()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.android.sdk.reader.impl.ReaderTextSplitterImpl.getTextRightBoundary(java.lang.String, java.lang.String, java.lang.String):int");
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextSplitter
    public int getTextSentenceBreakPoint(@Nullable String text) {
        if (text == null) {
            return -1;
        }
        Intrinsics.checkNotNull(text);
        int length = text.length();
        for (int i = 0; i < length; i++) {
            if (!INSTANCE.m34705c(text, i) && getSplitters().contains(Character.valueOf(text.charAt(i))) && i > 0) {
                return i;
            }
        }
        return text.length();
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextSplitter
    public boolean isAlphaOrDigit(@Nullable String ch) {
        return INSTANCE.isAlphaOrDigitImpl(ch);
    }

    /* renamed from: isSelectingWord, reason: from getter */
    public final boolean getIsSelectingWord() {
        return this.isSelectingWord;
    }

    public final boolean isSentenceBreakSplitter(char ch) {
        return getSplitters().contains(Character.valueOf(ch));
    }

    public final boolean isUseTtsParagraphSplitters() {
        return getSplitters() == f44902i;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderTextSplitter
    public boolean isWord(@Nullable String text) {
        boolean z;
        boolean isBlank;
        if (text != null) {
            isBlank = StringsKt__StringsJVMKt.isBlank(text);
            if (!isBlank) {
                z = false;
                return z && !m34702a(text);
            }
        }
        z = true;
        if (z) {
        }
    }

    public final void resetSelectingWord() {
        this.isSelectingWord = true;
    }

    public final void resetSplitters() {
        setSplitters(f44898e);
    }

    public final void setAnalyzeResult(@Nullable SentenceAnalyzeResult sentenceAnalyzeResult) {
        this.analyzeResult = sentenceAnalyzeResult;
    }

    /* renamed from: setSelectingWord, reason: collision with other method in class */
    public final void m72337setSelectingWord(boolean z) {
        this.isSelectingWord = z;
    }

    public final void setSplitters(@NotNull HashSet<Character> hashSet) {
        Intrinsics.checkNotNullParameter(hashSet, "<set-?>");
        this.splitters = hashSet;
    }

    public final void useTtsCommaSplitters() {
        setSplitters(f44900g);
    }

    public final void useTtsParagraphSplitters() {
        setSplitters(f44902i);
    }

    public final void useTtsPeriodSplitters() {
        setSplitters(f44901h);
    }

    @NotNull
    public final ReaderTextSplitterImpl setSelectingWord(boolean selectingWord) {
        this.isSelectingWord = selectingWord;
        return this;
    }
}
