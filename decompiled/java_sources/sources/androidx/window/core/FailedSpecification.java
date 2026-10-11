package androidx.window.core;

import androidx.window.core.SpecificationComputer;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes3.dex */
public final class FailedSpecification<T> extends SpecificationComputer<T> {

    /* renamed from: a */
    @NotNull
    public final T f11211a;

    /* renamed from: b */
    @NotNull
    public final String f11212b;

    /* renamed from: c */
    @NotNull
    public final String f11213c;

    /* renamed from: d */
    @NotNull
    public final Logger f11214d;

    /* renamed from: e */
    @NotNull
    public final SpecificationComputer.VerificationMode f11215e;

    /* renamed from: f */
    @NotNull
    public final WindowStrictModeException f11216f;

    @Metadata(m61529k = 3, m61530mv = {1, 6, 0}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[SpecificationComputer.VerificationMode.values().length];
            iArr[SpecificationComputer.VerificationMode.STRICT.ordinal()] = 1;
            iArr[SpecificationComputer.VerificationMode.LOG.ordinal()] = 2;
            iArr[SpecificationComputer.VerificationMode.QUIET.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FailedSpecification(@NotNull T value, @NotNull String tag, @NotNull String message, @NotNull Logger logger, @NotNull SpecificationComputer.VerificationMode verificationMode) {
        List drop;
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(verificationMode, "verificationMode");
        this.f11211a = value;
        this.f11212b = tag;
        this.f11213c = message;
        this.f11214d = logger;
        this.f11215e = verificationMode;
        WindowStrictModeException windowStrictModeException = new WindowStrictModeException(createMessage(value, message));
        StackTraceElement[] stackTrace = windowStrictModeException.getStackTrace();
        Intrinsics.checkNotNullExpressionValue(stackTrace, "stackTrace");
        drop = ArraysKt___ArraysKt.drop(stackTrace, 2);
        Object[] array = drop.toArray(new StackTraceElement[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        windowStrictModeException.setStackTrace((StackTraceElement[]) array);
        this.f11216f = windowStrictModeException;
    }

    @NotNull
    /* renamed from: a */
    public final WindowStrictModeException m6888a() {
        return this.f11216f;
    }

    @NotNull
    /* renamed from: b */
    public final Logger m6889b() {
        return this.f11214d;
    }

    @NotNull
    /* renamed from: c */
    public final String m6890c() {
        return this.f11213c;
    }

    @Override // androidx.window.core.SpecificationComputer
    @Nullable
    public T compute() {
        int i = WhenMappings.$EnumSwitchMapping$0[this.f11215e.ordinal()];
        if (i == 1) {
            throw this.f11216f;
        }
        if (i == 2) {
            this.f11214d.debug(this.f11212b, createMessage(this.f11211a, this.f11213c));
            return null;
        }
        if (i == 3) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    @NotNull
    /* renamed from: d */
    public final String m6891d() {
        return this.f11212b;
    }

    @NotNull
    /* renamed from: e */
    public final T m6892e() {
        return this.f11211a;
    }

    @NotNull
    /* renamed from: f */
    public final SpecificationComputer.VerificationMode m6893f() {
        return this.f11215e;
    }

    @Override // androidx.window.core.SpecificationComputer
    @NotNull
    public SpecificationComputer<T> require(@NotNull String message, @NotNull Function1<? super T, Boolean> condition) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(condition, "condition");
        return this;
    }
}
