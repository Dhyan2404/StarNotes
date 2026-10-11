package androidx.credentials.exceptions.domerrors;

import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b&\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u001a\u0010\u0007\u001a\u00020\u00028\u0017X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\n"}, m61528d2 = {"Landroidx/credentials/exceptions/domerrors/DomError;", "", "", "a", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "credentials_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class DomError {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String type;

    public DomError(@NotNull String type) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @VisibleForTesting(otherwise = 3)
    @NotNull
    public String getType() {
        return this.type;
    }
}
