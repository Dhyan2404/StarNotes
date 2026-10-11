package androidx.work.impl;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, m61528d2 = {"", "a", Constants.STRING_SIG, "PRUNE_SQL_FORMAT_PREFIX", "b", "PRUNE_SQL_FORMAT_SUFFIX", "", "PRUNE_THRESHOLD_MILLIS", "J", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WorkDatabaseKt {

    @JvmField
    public static final long PRUNE_THRESHOLD_MILLIS = TimeUnit.DAYS.toMillis(1);

    /* renamed from: a */
    @NotNull
    public static final String f11484a = "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (last_enqueue_time + minimum_retention_duration) < ";

    /* renamed from: b */
    @NotNull
    public static final String f11485b = " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
}
