package androidx.window.core;

import androidx.window.core.SpecificationComputer;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Landroidx/window/core/BuildConfig;", "", "Landroidx/window/core/SpecificationComputer$VerificationMode;", "a", "Landroidx/window/core/SpecificationComputer$VerificationMode;", "getVerificationMode", "()Landroidx/window/core/SpecificationComputer$VerificationMode;", "verificationMode", Constants.CONSTRUCTOR_NAME, "()V", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
/* loaded from: classes3.dex */
public final class BuildConfig {

    @NotNull
    public static final BuildConfig INSTANCE = new BuildConfig();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final SpecificationComputer.VerificationMode verificationMode = SpecificationComputer.VerificationMode.QUIET;

    @NotNull
    public final SpecificationComputer.VerificationMode getVerificationMode() {
        return verificationMode;
    }
}
