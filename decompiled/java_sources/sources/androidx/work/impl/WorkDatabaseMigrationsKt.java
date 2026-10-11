package androidx.work.impl;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0002\u0010\u000e\n\u0002\b\u001c\"\u0014\u0010\u0003\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0001\u0010\u0002\"\u0014\u0010\u0005\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0004\u0010\u0002\"\u0014\u0010\u0007\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0002\"\u0014\u0010\t\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0002\"\u0014\u0010\u000b\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0002\"\u0014\u0010\r\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0002\"\u0014\u0010\u000f\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0002\"\u0014\u0010\u0011\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0002\"\u0014\u0010\u0013\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0002\"\u0014\u0010\u0015\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0002\"\u0014\u0010\u0017\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0002\"\u0014\u0010\u0019\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0002\"\u0014\u0010\u001b\u001a\u00020\u00008\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0002¨\u0006\u001c"}, m61528d2 = {"", "a", Constants.STRING_SIG, "CREATE_SYSTEM_ID_INFO", "b", "MIGRATE_ALARM_INFO_TO_SYSTEM_ID_INFO", "c", "PERIODIC_WORK_SET_SCHEDULE_REQUESTED_AT", "d", "REMOVE_ALARM_INFO", "e", "WORKSPEC_ADD_TRIGGER_UPDATE_DELAY", C6997f.f39671c, "WORKSPEC_ADD_TRIGGER_MAX_CONTENT_DELAY", C6998g.f39679a, "CREATE_WORK_PROGRESS", C6999h.f39688c, "CREATE_INDEX_PERIOD_START_TIME", "i", "CREATE_RUN_IN_FOREGROUND", "j", "CREATE_OUT_OF_QUOTA_POLICY", C4921e.f26537n, "SET_DEFAULT_NETWORK_TYPE", "l", "SET_DEFAULT_CONTENT_URI_TRIGGERS", "m", "INITIALIZE_PERIOD_COUNTER", "work-runtime_release"}, m61529k = 2, m61530mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WorkDatabaseMigrationsKt {

    /* renamed from: a */
    @NotNull
    public static final String f11486a = "\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ";

    /* renamed from: b */
    @NotNull
    public static final String f11487b = "\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    ";

    /* renamed from: c */
    @NotNull
    public static final String f11488c = "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    ";

    /* renamed from: d */
    @NotNull
    public static final String f11489d = "DROP TABLE IF EXISTS alarmInfo";

    /* renamed from: e */
    @NotNull
    public static final String f11490e = "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1";

    /* renamed from: f */
    @NotNull
    public static final String f11491f = "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1";

    /* renamed from: g */
    @NotNull
    public static final String f11492g = "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    ";

    /* renamed from: h */
    @NotNull
    public static final String f11493h = "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    ";

    /* renamed from: i */
    @NotNull
    public static final String f11494i = "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0";

    /* renamed from: j */
    @NotNull
    public static final String f11495j = "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0";

    /* renamed from: k */
    @NotNull
    public static final String f11496k = "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL ";

    /* renamed from: l */
    @NotNull
    public static final String f11497l = "UPDATE workspec SET content_uri_triggers = x'' WHERE content_uri_triggers is NULL";

    /* renamed from: m */
    @NotNull
    public static final String f11498m = "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0";
}
