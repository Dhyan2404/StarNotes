package com.onyx.android.sdk.base.utils;

import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Arrays;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.reflect.KClass;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u00017B\t\b\u0002¢\u0006\u0004\b5\u00106J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0002J\u0010\u0010\t\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\nJ\u0010\u0010\t\u001a\u00020\u00052\b\u0010\f\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J\u0018\u0010\r\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002J;\u0010\u0012\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0012\u0010\u0013J;\u0010\u0012\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0012\u0010\u0015J7\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0012\u0010\u0016J;\u0010\t\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\t\u0010\u0013J;\u0010\t\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\t\u0010\u0015J9\u0010\t\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\t\u0010\u0016J\u001a\u0010\t\u001a\u00020\u00052\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086\bø\u0001\u0000J\"\u0010\t\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086\bø\u0001\u0000J&\u0010\t\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0086\bø\u0001\u0000J\u000e\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002J9\u0010\u0018\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0018\u0010\u0016J;\u0010\u0018\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0018\u0010\u0013J;\u0010\u0018\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0018\u0010\u0015J\u000e\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002J\u0010\u0010\u001a\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J;\u0010\u001a\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001a\u0010\u0013J;\u0010\u001a\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001a\u0010\u0015J\u0010\u0010\u001a\u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u000bJ1\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0010\"\u00020\u0001¢\u0006\u0004\b\u001a\u0010\u0016J\u001c\u0010\u001a\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u001b\u001a\u0004\u0018\u00010\u000bJ\u001c\u0010\u001a\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u001b\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001c\u001a\u00020\u00052\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002J9\u0010\u001c\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001c\u0010\u0016J;\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001c\u0010\u0013J;\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001c\u0010\u0015J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u000bJ\u001a\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\u0006\u0010\u001b\u001a\u00020\u000bJ\u001a\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\u0006\u0010\u001b\u001a\u00020\u000bJ&\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u000bJ&\u0010\u001c\u001a\u00020\u00052\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u00142\b\u0010\u001d\u001a\u0004\u0018\u00010\u00022\b\u0010\u001b\u001a\u0004\u0018\u00010\u000bJ/\u0010\u001f\u001a\u00020\u00022\b\u0010\u001e\u001a\u0004\u0018\u00010\u00022\u0016\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0010\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001f\u0010 J\u0012\u0010!\u001a\u00020\u00022\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\u000eR\u001f\u0010&\u001a\n \"*\u0004\u0018\u00010\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010#\u001a\u0004\b$\u0010%R\"\u0010-\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010(\u001a\u0004\b.\u0010*\"\u0004\b/\u0010,R\"\u00100\u001a\u00020'8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u0010(\u001a\u0004\b0\u0010*\"\u0004\b1\u0010,R\u001c\u00104\u001a\n \"*\u0004\u0018\u000102028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u00103\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00068"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/Debug;", "", "", NotificationCompat.CATEGORY_MESSAGE, "b", "", "a", "tag", "c", "d", "Lcom/onyx/android/sdk/base/utils/Debug$IMessage;", "", "tr", "printStackTraceDebug", "Ljava/lang/Class;", "cls", "", "args", "v", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V", "Lkotlin/reflect/KClass;", "(Lkotlin/reflect/KClass;Ljava/lang/String;[Ljava/lang/Object;)V", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "Lkotlin/Function0;", "i", "obfuscateLog", "w", "throwable", "e", "message", ExtensionNamespaceContext.EXSLT_STRING_PREFIX, "formatString", "(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;", "getVerifiedTag", "kotlin.jvm.PlatformType", Constants.STRING_SIG, "getTAG", "()Ljava/lang/String;", "TAG", "", Constants.HASIDCALL_INDEX_SIG, "getDebug", Constants.BOOLEAN_VALUE_SIG, "setDebug", "(Z)V", "debug", "isObfuscateLogEnabled", "setObfuscateLogEnabled", "isCompareObfuscateLogEnabled", "setCompareObfuscateLogEnabled", "Ljava/util/regex/Pattern;", "Ljava/util/regex/Pattern;", "obfuscatePattern", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "IMessage", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nDebug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,238:1\n107#2:239\n79#2,22:240\n*S KotlinDebug\n*F\n+ 1 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n230#1:239\n230#1:240,22\n*E\n"})
/* loaded from: classes7.dex */
public final class Debug {

    /* renamed from: b, reason: from kotlin metadata */
    public static boolean debug;

    /* renamed from: c, reason: from kotlin metadata */
    public static boolean isObfuscateLogEnabled;

    /* renamed from: d, reason: from kotlin metadata */
    public static boolean isCompareObfuscateLogEnabled;

    @NotNull
    public static final Debug INSTANCE = new Debug();

    /* renamed from: a, reason: from kotlin metadata */
    public static final String TAG = Debug.class.getSimpleName();

    /* renamed from: e, reason: from kotlin metadata */
    public static final Pattern obfuscatePattern = Pattern.compile("[a-z]+");

    @Metadata(m61527d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/Debug$IMessage;", "", "message", "", "getMessage", "()Ljava/lang/String;", "sdk-baselite_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public interface IMessage {
        @Nullable
        String getMessage();
    }

    /* renamed from: a */
    public final void m32031a(String msg) {
        if (isCompareObfuscateLogEnabled) {
            String str = TAG;
            Log.i(str, "raw : = " + msg);
            Log.i(str, "obfuscate : = " + m32032b(msg));
        }
    }

    /* renamed from: b */
    public final String m32032b(String msg) {
        String replaceAll = obfuscatePattern.matcher(msg).replaceAll("");
        Intrinsics.checkNotNullExpressionValue(replaceAll, "replaceAll(...)");
        return replaceAll;
    }

    /* renamed from: c */
    public final String m32033c(String tag) {
        if (tag != null) {
            int length = tag.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) tag.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    }
                    length--;
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            if (!TextUtils.isEmpty(tag.subSequence(i, length + 1).toString())) {
                return tag;
            }
        }
        String str = TAG;
        Intrinsics.checkNotNull(str);
        return str;
    }

    /* renamed from: d */
    public final void m32037d(@Nullable String msg) {
        if (debug) {
            String str = TAG;
            Intrinsics.checkNotNull(msg);
            Log.d(str, msg);
        }
    }

    /* renamed from: e */
    public final void m32046e(@Nullable String msg) {
        if (msg != null) {
            Log.e(TAG, msg);
        }
    }

    @NotNull
    public final String formatString(@Nullable String str, @NotNull Object... args) {
        String format;
        Intrinsics.checkNotNullParameter(args, "args");
        if (str == null) {
            return "";
        }
        if (!(args.length == 0)) {
            try {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Object[] copyOf = Arrays.copyOf(args, args.length);
                format = String.format(null, str, Arrays.copyOf(copyOf, copyOf.length));
                Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
            } catch (Throwable unused) {
                return str;
            }
        }
        return format;
    }

    public final boolean getDebug() {
        return debug;
    }

    public final String getTAG() {
        return TAG;
    }

    @NotNull
    public final String getVerifiedTag(@NotNull Class<?> cls) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        return m32033c(cls.getSimpleName());
    }

    /* renamed from: i */
    public final void m32053i(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        Log.i(TAG, obfuscateLog(msg));
    }

    public final boolean isCompareObfuscateLogEnabled() {
        return isCompareObfuscateLogEnabled;
    }

    public final boolean isObfuscateLogEnabled() {
        return isObfuscateLogEnabled;
    }

    @NotNull
    public final String obfuscateLog(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (TextUtils.isEmpty(msg)) {
            return "";
        }
        m32031a(msg);
        return isObfuscateLogEnabled ? m32032b(msg) : msg;
    }

    public final void printStackTraceDebug(@NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        printStackTraceDebug(TAG, msg);
    }

    public final void setCompareObfuscateLogEnabled(boolean z) {
        isCompareObfuscateLogEnabled = z;
    }

    public final void setDebug(boolean z) {
        debug = z;
    }

    public final void setObfuscateLogEnabled(boolean z) {
        isObfuscateLogEnabled = z;
    }

    /* renamed from: v */
    public final void m32056v(@NotNull Class<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        if (debug) {
            Log.v(getVerifiedTag(cls), formatString(msg, Arrays.copyOf(args, args.length)));
        }
    }

    /* renamed from: w */
    public final void m32061w(@Nullable String msg) {
        String str = TAG;
        Intrinsics.checkNotNull(msg);
        Log.w(str, msg);
    }

    /* renamed from: e */
    public final void m32047e(@Nullable String tag, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Log.e(tag, formatString(msg, Arrays.copyOf(args, args.length)));
    }

    /* renamed from: i */
    public final void m32054i(@Nullable String tag, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        Log.i(tag, obfuscateLog(formatString(msg, Arrays.copyOf(args, args.length))));
    }

    public final void printStackTraceDebug(@Nullable String tag, @NotNull String msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (debug) {
            Log.v(tag, "", new Exception("Printing detailed debug information.\n Message :" + msg));
        }
    }

    /* renamed from: w */
    public final void m32059w(@NotNull Class<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        Log.w(getVerifiedTag(cls), formatString(msg, Arrays.copyOf(args, args.length)));
    }

    /* renamed from: d */
    public final void m32034d(@NotNull IMessage msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (debug) {
            String str = TAG;
            String message = msg.getMessage();
            Intrinsics.checkNotNull(message);
            Log.d(str, message);
        }
    }

    /* renamed from: e */
    public final void m32044e(@NotNull Class<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        Log.e(getVerifiedTag(cls), formatString(msg, Arrays.copyOf(args, args.length)));
    }

    /* renamed from: v */
    public final void m32058v(@NotNull KClass<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32056v(JvmClassMappingKt.getJavaClass((KClass) cls), msg, args);
    }

    /* renamed from: w */
    public final void m32064w(@NotNull KClass<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32059w(JvmClassMappingKt.getJavaClass((KClass) cls), msg, args);
    }

    /* renamed from: e */
    public final void m32050e(@NotNull KClass<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32044e(JvmClassMappingKt.getJavaClass((KClass) cls), msg, args);
    }

    /* renamed from: i */
    public final void m32052i(@NotNull Class<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32054i(obfuscateLog(getVerifiedTag(cls)), msg, Arrays.copyOf(args, args.length));
    }

    /* renamed from: v */
    public final void m32057v(@NotNull String tag, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(args, "args");
        if (debug) {
            Log.v(tag, formatString(msg, Arrays.copyOf(args, args.length)));
        }
    }

    /* renamed from: w */
    public final void m32063w(@Nullable Throwable throwable) {
        Log.w(TAG, throwable);
    }

    /* renamed from: d */
    public final void m32040d(@Nullable Throwable tr) {
        if (debug) {
            Log.d(TAG, "", tr);
        }
    }

    /* renamed from: e */
    public final void m32048e(@NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        Log.e(TAG, stringWriter.toString());
    }

    /* renamed from: w */
    public final void m32062w(@NotNull String tag, @NotNull String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        Intrinsics.checkNotNullParameter(args, "args");
        Log.w(tag, formatString(msg, Arrays.copyOf(args, args.length)));
    }

    /* renamed from: i */
    public final void m32055i(@NotNull KClass<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32052i(JvmClassMappingKt.getJavaClass((KClass) cls), msg, Arrays.copyOf(args, args.length));
    }

    /* renamed from: w */
    public final void m32060w(@NotNull Class<?> cls, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Log.w(getVerifiedTag(cls), throwable);
    }

    /* renamed from: d */
    public final void m32035d(@NotNull Class<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        if (debug) {
            Log.d(getVerifiedTag(cls), formatString(msg, Arrays.copyOf(args, args.length)));
        }
    }

    /* renamed from: w */
    public final void m32065w(@NotNull KClass<?> cls, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        m32060w(JvmClassMappingKt.getJavaClass((KClass) cls), throwable);
    }

    /* renamed from: e */
    public final void m32045e(@NotNull Class<?> cls, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        StringWriter stringWriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringWriter));
        Log.e(getVerifiedTag(cls), stringWriter.toString());
    }

    /* renamed from: d */
    public final void m32042d(@NotNull KClass<?> cls, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(args, "args");
        m32035d(JvmClassMappingKt.getJavaClass((KClass) cls), msg, args);
    }

    /* renamed from: d */
    public final void m32038d(@Nullable String tag, @Nullable String msg, @NotNull Object... args) {
        Intrinsics.checkNotNullParameter(args, "args");
        if (debug) {
            Log.d(tag, formatString(msg, Arrays.copyOf(args, args.length)));
        }
    }

    /* renamed from: e */
    public final void m32051e(@NotNull KClass<?> cls, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        m32045e(JvmClassMappingKt.getJavaClass((KClass) cls), throwable);
    }

    /* renamed from: d */
    public final void m32041d(@NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (getDebug()) {
            Log.d(getTAG(), msg.invoke());
        }
    }

    /* renamed from: e */
    public final void m32043e(@NotNull Class<?> cls, @Nullable String message, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Log.e(getVerifiedTag(cls), message, throwable);
    }

    /* renamed from: e */
    public final void m32049e(@NotNull KClass<?> cls, @Nullable String message, @Nullable Throwable throwable) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        m32043e(JvmClassMappingKt.getJavaClass((KClass) cls), message, throwable);
    }

    /* renamed from: d */
    public final void m32039d(@NotNull String tag, @NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (getDebug()) {
            Log.d(tag, msg.invoke());
        }
    }

    /* renamed from: d */
    public final void m32036d(@NotNull Class<?> cls, @NotNull Function0<String> msg) {
        Intrinsics.checkNotNullParameter(cls, "cls");
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (getDebug()) {
            m32035d(cls, msg.invoke(), new Object[0]);
        }
    }
}
