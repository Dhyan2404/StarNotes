package androidx.work;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u000e\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u0000\"\u0014\u0010\u0006\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, m61528d2 = {"", "className", "Landroidx/work/InputMerger;", "fromClassName", "a", Constants.STRING_SIG, "TAG", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InputMergerKt {

    /* renamed from: a */
    @NotNull
    public static final String f11391a;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("InputMerger");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"InputMerger\")");
        f11391a = tagWithPrefix;
    }

    @Nullable
    public static final InputMerger fromClassName(@NotNull String className) {
        Intrinsics.checkNotNullParameter(className, "className");
        try {
            Object newInstance = Class.forName(className).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            Intrinsics.checkNotNull(newInstance, "null cannot be cast to non-null type androidx.work.InputMerger");
            return (InputMerger) newInstance;
        } catch (Exception e) {
            Logger.get().error(f11391a, "Trouble instantiating " + className, e);
            return null;
        }
    }
}
