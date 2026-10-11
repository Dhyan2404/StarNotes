package androidx.work.impl.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.work.Configuration;
import androidx.work.Logger;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sunia.HTREnginev2.C14496ub;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0016\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002\u001a\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0001\u001a\u00020\u0000H\u0003\"\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Landroid/content/Context;", "context", "Landroidx/work/Configuration;", "configuration", "", "isDefaultProcess", "", "a", Constants.STRING_SIG, "TAG", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
@JvmName(name = "ProcessUtils")
@SourceDebugExtension({"SMAP\nProcessUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessUtils.kt\nandroidx/work/impl/utils/ProcessUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,88:1\n1#2:89\n*E\n"})
/* loaded from: classes3.dex */
public final class ProcessUtils {

    /* renamed from: a */
    @NotNull
    public static final String f11943a;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("ProcessUtils");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"ProcessUtils\")");
        f11943a = tagWithPrefix;
    }

    @SuppressLint({"PrivateApi", "DiscouragedPrivateApi"})
    /* renamed from: a */
    public static final String m7152a(Context context) {
        return C14496ub.f86304a.m57602a();
    }

    public static final boolean isDefaultProcess(@NotNull Context context, @NotNull Configuration configuration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        String m7152a = m7152a(context);
        String defaultProcessName = configuration.getDefaultProcessName();
        return !(defaultProcessName == null || defaultProcessName.length() == 0) ? Intrinsics.areEqual(m7152a, configuration.getDefaultProcessName()) : Intrinsics.areEqual(m7152a, context.getApplicationInfo().processName);
    }
}
