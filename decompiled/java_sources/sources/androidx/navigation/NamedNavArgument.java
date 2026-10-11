package androidx.navigation;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u0086\u0002J\t\u0010\u0005\u001a\u00020\u0004H\u0086\u0002R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0017\u0010\u000f\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Landroidx/navigation/NamedNavArgument;", "", "", "component1", "Landroidx/navigation/NavArgument;", "component2", "a", Constants.STRING_SIG, "getName", "()Ljava/lang/String;", "name", "b", "Landroidx/navigation/NavArgument;", "getArgument", "()Landroidx/navigation/NavArgument;", NavInflater.f8491c, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroidx/navigation/NavArgument;)V", "navigation-common_release"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NamedNavArgument {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final NavArgument argument;

    public NamedNavArgument(@NotNull String name, @NotNull NavArgument argument) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(argument, "argument");
        this.name = name;
        this.argument = argument;
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final NavArgument getArgument() {
        return this.argument;
    }

    @NotNull
    public final NavArgument getArgument() {
        return this.argument;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }
}
