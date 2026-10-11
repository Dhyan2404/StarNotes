package androidx.work.impl;

import androidx.work.Logger;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0004\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0004\u001a\u00020\u00008\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0002\"\u001a\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00000\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\t"}, m61528d2 = {"", "a", Constants.STRING_SIG, "TAG", "WORK_DATABASE_NAME", "", "b", "[Ljava/lang/String;", "DATABASE_EXTRA_FILES", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WorkDatabasePathHelperKt {

    @NotNull
    public static final String WORK_DATABASE_NAME = "androidx.work.workdb";

    /* renamed from: a */
    @NotNull
    public static final String f11499a;

    /* renamed from: b */
    @NotNull
    public static final String[] f11500b;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WrkDbPathHelper");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WrkDbPathHelper\")");
        f11499a = tagWithPrefix;
        f11500b = new String[]{"-journal", "-shm", "-wal"};
    }
}
