package androidx.window.core;

import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.hwr.data.constant.HwrRecognizerConstant;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.math.BigInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u0000 #2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001#B)\b\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0015\u001a\u00020\u0005\u0012\u0006\u0010\u001a\u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u0011\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0000H\u0096\u0002J\u0013\u0010\t\u001a\u00020\b2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\n\u001a\u00020\u0005H\u0016R\u0017\u0010\u000f\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0012\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0010\u0010\f\u001a\u0004\b\u0011\u0010\u000eR\u0017\u0010\u0015\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0013\u0010\f\u001a\u0004\b\u0014\u0010\u000eR\u0017\u0010\u001a\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010 \u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006$"}, m61528d2 = {"Landroidx/window/core/Version;", "", "", "toString", Constants.ATTRVAL_OTHER, "", "compareTo", "", "", "equals", "hashCode", "e", "I", "getMajor", "()I", "major", C6997f.f39671c, "getMinor", "minor", C6998g.f39679a, "getPatch", "patch", C6999h.f39688c, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.STRING_SIG, "getDescription", "()Ljava/lang/String;", "description", "Ljava/math/BigInteger;", "i", "Lkotlin/Lazy;", "a", "()Ljava/math/BigInteger;", "bigInteger", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(IIILjava/lang/String;)V", "Companion", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class Version implements Comparable<Version> {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: j */
    @NotNull
    public static final Version f11217j = new Version(0, 0, 0, "");

    /* renamed from: k */
    @NotNull
    public static final Version f11218k = new Version(0, 1, 0, "");

    /* renamed from: l */
    @NotNull
    public static final Version f11219l;

    /* renamed from: m */
    @NotNull
    public static final Version f11220m;

    /* renamed from: n */
    @NotNull
    public static final String f11221n = "(\\d+)(?:\\.(\\d+))(?:\\.(\\d+))(?:-(.+))?";

    /* renamed from: e, reason: from kotlin metadata */
    public final int major;

    /* renamed from: f, reason: from kotlin metadata */
    public final int minor;

    /* renamed from: g, reason: from kotlin metadata */
    public final int patch;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final String description;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final Lazy bigInteger;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u000e\u0010\r\u001a\u00020\u000eX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m61528d2 = {"Landroidx/window/core/Version$Companion;", "", "()V", "CURRENT", "Landroidx/window/core/Version;", "getCURRENT", "()Landroidx/window/core/Version;", HwrRecognizerConstant.RECOGNIZER_UNKNOWN, "getUNKNOWN", "VERSION_0_1", "getVERSION_0_1", "VERSION_1_0", "getVERSION_1_0", "VERSION_PATTERN_STRING", "", "parse", "versionString", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Version getCURRENT() {
            return Version.f11220m;
        }

        @NotNull
        public final Version getUNKNOWN() {
            return Version.f11217j;
        }

        @NotNull
        public final Version getVERSION_0_1() {
            return Version.f11218k;
        }

        @NotNull
        public final Version getVERSION_1_0() {
            return Version.f11219l;
        }

        @JvmStatic
        @Nullable
        public final Version parse(@Nullable String versionString) {
            boolean isBlank;
            if (versionString == null) {
                return null;
            }
            isBlank = StringsKt__StringsJVMKt.isBlank(versionString);
            if (isBlank) {
                return null;
            }
            Matcher matcher = Pattern.compile(Version.f11221n).matcher(versionString);
            if (!matcher.matches()) {
                return null;
            }
            String group = matcher.group(1);
            Integer valueOf = group == null ? null : Integer.valueOf(Integer.parseInt(group));
            if (valueOf == null) {
                return null;
            }
            int intValue = valueOf.intValue();
            String group2 = matcher.group(2);
            Integer valueOf2 = group2 == null ? null : Integer.valueOf(Integer.parseInt(group2));
            if (valueOf2 == null) {
                return null;
            }
            int intValue2 = valueOf2.intValue();
            String group3 = matcher.group(3);
            Integer valueOf3 = group3 == null ? null : Integer.valueOf(Integer.parseInt(group3));
            if (valueOf3 == null) {
                return null;
            }
            int intValue3 = valueOf3.intValue();
            String description = matcher.group(4) != null ? matcher.group(4) : "";
            Intrinsics.checkNotNullExpressionValue(description, "description");
            return new Version(intValue, intValue2, intValue3, description, null);
        }

        public Companion() {
        }
    }

    static {
        Version version = new Version(1, 0, 0, "");
        f11219l = version;
        f11220m = version;
    }

    public /* synthetic */ Version(int i, int i2, int i3, String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, str);
    }

    @JvmStatic
    @Nullable
    public static final Version parse(@Nullable String str) {
        return INSTANCE.parse(str);
    }

    /* renamed from: a */
    public final BigInteger m6894a() {
        Object value = this.bigInteger.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-bigInteger>(...)");
        return (BigInteger) value;
    }

    public boolean equals(@Nullable Object other) {
        if (!(other instanceof Version)) {
            return false;
        }
        Version version = (Version) other;
        return this.major == version.major && this.minor == version.minor && this.patch == version.patch;
    }

    @NotNull
    public final String getDescription() {
        return this.description;
    }

    public final int getMajor() {
        return this.major;
    }

    public final int getMinor() {
        return this.minor;
    }

    public final int getPatch() {
        return this.patch;
    }

    public int hashCode() {
        return ((((527 + this.major) * 31) + this.minor) * 31) + this.patch;
    }

    @NotNull
    public String toString() {
        boolean isBlank;
        isBlank = StringsKt__StringsJVMKt.isBlank(this.description);
        return this.major + '.' + this.minor + '.' + this.patch + (isBlank ^ true ? Intrinsics.stringPlus("-", this.description) : "");
    }

    public Version(int i, int i2, int i3, String str) {
        Lazy lazy;
        this.major = i;
        this.minor = i2;
        this.patch = i3;
        this.description = str;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<BigInteger>() { // from class: androidx.window.core.Version$bigInteger$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final BigInteger invoke() {
                return BigInteger.valueOf(Version.this.getMajor()).shiftLeft(32).or(BigInteger.valueOf(Version.this.getMinor())).shiftLeft(32).or(BigInteger.valueOf(Version.this.getPatch()));
            }
        });
        this.bigInteger = lazy;
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull Version other) {
        Intrinsics.checkNotNullParameter(other, "other");
        return m6894a().compareTo(other.m6894a());
    }
}
