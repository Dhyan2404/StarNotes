package androidx.work.impl.model;

import android.database.Cursor;
import androidx.lifecycle.LiveData;
import androidx.room.CoroutinesRoom;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo;
import androidx.work.impl.model.WorkSpec;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import kotlinx.coroutines.flow.Flow;

/* loaded from: classes3.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {

    /* renamed from: a */
    public final RoomDatabase f11837a;

    /* renamed from: b */
    public final EntityInsertionAdapter<WorkSpec> f11838b;

    /* renamed from: c */
    public final EntityDeletionOrUpdateAdapter<WorkSpec> f11839c;

    /* renamed from: d */
    public final SharedSQLiteStatement f11840d;

    /* renamed from: e */
    public final SharedSQLiteStatement f11841e;

    /* renamed from: f */
    public final SharedSQLiteStatement f11842f;

    /* renamed from: g */
    public final SharedSQLiteStatement f11843g;

    /* renamed from: h */
    public final SharedSQLiteStatement f11844h;

    /* renamed from: i */
    public final SharedSQLiteStatement f11845i;

    /* renamed from: j */
    public final SharedSQLiteStatement f11846j;

    /* renamed from: k */
    public final SharedSQLiteStatement f11847k;

    /* renamed from: l */
    public final SharedSQLiteStatement f11848l;

    /* renamed from: m */
    public final SharedSQLiteStatement f11849m;

    /* renamed from: n */
    public final SharedSQLiteStatement f11850n;

    /* renamed from: o */
    public final SharedSQLiteStatement f11851o;

    /* renamed from: p */
    public final SharedSQLiteStatement f11852p;

    /* renamed from: q */
    public final SharedSQLiteStatement f11853q;

    /* renamed from: r */
    public final SharedSQLiteStatement f11854r;

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$a */
    /* loaded from: classes3.dex */
    public class C1633a extends SharedSQLiteStatement {
        public C1633a(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$b */
    /* loaded from: classes3.dex */
    public class C1634b extends SharedSQLiteStatement {
        public C1634b(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET next_schedule_time_override=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$c */
    /* loaded from: classes3.dex */
    public class C1635c extends SharedSQLiteStatement {
        public C1635c(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$d */
    /* loaded from: classes3.dex */
    public class C1636d extends SharedSQLiteStatement {
        public C1636d(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$e */
    /* loaded from: classes3.dex */
    public class C1637e extends SharedSQLiteStatement {
        public C1637e(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$f */
    /* loaded from: classes3.dex */
    public class C1638f extends SharedSQLiteStatement {
        public C1638f(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$g */
    /* loaded from: classes3.dex */
    public class C1639g extends SharedSQLiteStatement {
        public C1639g(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET generation=generation+1 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$h */
    /* loaded from: classes3.dex */
    public class C1640h extends SharedSQLiteStatement {
        public C1640h(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET stop_reason=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$i */
    /* loaded from: classes3.dex */
    public class CallableC1641i implements Callable<List<String>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11863e;

        public CallableC1641i(final RoomSQLiteQuery val$_statement) {
            this.f11863e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<String> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11863e, false, null);
                try {
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        arrayList.add(query.isNull(0) ? null : query.getString(0));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11863e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$j */
    /* loaded from: classes3.dex */
    public class CallableC1642j implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11865e;

        public CallableC1642j(final RoomSQLiteQuery val$_statement) {
            this.f11865e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11865e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11865e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$k */
    /* loaded from: classes3.dex */
    public class C1643k extends EntityInsertionAdapter<WorkSpec> {
        public C1643k(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertionAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
            String str = workSpec.id;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
            supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
            String str2 = workSpec.workerClassName;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str2);
            }
            String str3 = workSpec.inputMergerClassName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str3);
            }
            byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
            if (byteArrayInternal == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindBlob(5, byteArrayInternal);
            }
            byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
            if (byteArrayInternal2 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
            }
            supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
            supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
            supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
            supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
            supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
            supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
            supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
            supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
            supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
            supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
            supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
            supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
            supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
            supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
            supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
            supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
            Constraints constraints = workSpec.constraints;
            if (constraints == null) {
                supportSQLiteStatement.bindNull(23);
                supportSQLiteStatement.bindNull(24);
                supportSQLiteStatement.bindNull(25);
                supportSQLiteStatement.bindNull(26);
                supportSQLiteStatement.bindNull(27);
                supportSQLiteStatement.bindNull(28);
                supportSQLiteStatement.bindNull(29);
                supportSQLiteStatement.bindNull(30);
                return;
            }
            supportSQLiteStatement.bindLong(23, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
            supportSQLiteStatement.bindLong(24, constraints.getRequiresCharging() ? 1L : 0L);
            supportSQLiteStatement.bindLong(25, constraints.getRequiresDeviceIdle() ? 1L : 0L);
            supportSQLiteStatement.bindLong(26, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
            supportSQLiteStatement.bindLong(27, constraints.getRequiresStorageNotLow() ? 1L : 0L);
            supportSQLiteStatement.bindLong(28, constraints.getContentTriggerUpdateDelayMillis());
            supportSQLiteStatement.bindLong(29, constraints.getContentTriggerMaxDelayMillis());
            byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
            if (ofTriggersToByteArray == null) {
                supportSQLiteStatement.bindNull(30);
            } else {
                supportSQLiteStatement.bindBlob(30, ofTriggersToByteArray);
            }
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$l */
    /* loaded from: classes3.dex */
    public class CallableC1644l implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11868e;

        public CallableC1644l(final RoomSQLiteQuery val$_statement) {
            this.f11868e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11868e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11868e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$m */
    /* loaded from: classes3.dex */
    public class CallableC1645m implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11870e;

        public CallableC1645m(final RoomSQLiteQuery val$_statement) {
            this.f11870e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11870e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11870e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$n */
    /* loaded from: classes3.dex */
    public class CallableC1646n implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11872e;

        public CallableC1646n(final RoomSQLiteQuery val$_statement) {
            this.f11872e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11872e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11872e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$o */
    /* loaded from: classes3.dex */
    public class CallableC1647o implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11874e;

        public CallableC1647o(final RoomSQLiteQuery val$_statement) {
            this.f11874e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11874e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11874e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$p */
    /* loaded from: classes3.dex */
    public class CallableC1648p implements Callable<List<WorkSpec.WorkInfoPojo>> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11876e;

        public CallableC1648p(final RoomSQLiteQuery val$_statement) {
            this.f11876e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<WorkSpec.WorkInfoPojo> call() throws Exception {
            WorkSpecDao_Impl.this.f11837a.beginTransaction();
            try {
                Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11876e, true, null);
                try {
                    HashMap hashMap = new HashMap();
                    HashMap hashMap2 = new HashMap();
                    while (query.moveToNext()) {
                        String string = query.getString(0);
                        if (((ArrayList) hashMap.get(string)) == null) {
                            hashMap.put(string, new ArrayList());
                        }
                        String string2 = query.getString(0);
                        if (((ArrayList) hashMap2.get(string2)) == null) {
                            hashMap2.put(string2, new ArrayList());
                        }
                    }
                    query.moveToPosition(-1);
                    WorkSpecDao_Impl.this.m7119b(hashMap);
                    WorkSpecDao_Impl.this.m7118a(hashMap2);
                    ArrayList arrayList = new ArrayList(query.getCount());
                    while (query.moveToNext()) {
                        String string3 = query.isNull(0) ? null : query.getString(0);
                        int i = query.getInt(1);
                        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                        WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                        Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                        int i2 = query.getInt(3);
                        int i3 = query.getInt(4);
                        long j = query.getLong(13);
                        long j2 = query.getLong(14);
                        long j3 = query.getLong(15);
                        BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                        long j4 = query.getLong(17);
                        long j5 = query.getLong(18);
                        int i4 = query.getInt(19);
                        long j6 = query.getLong(20);
                        int i5 = query.getInt(21);
                        Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                        ArrayList arrayList2 = (ArrayList) hashMap.get(query.getString(0));
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        ArrayList arrayList3 = arrayList2;
                        ArrayList arrayList4 = (ArrayList) hashMap2.get(query.getString(0));
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                    }
                    WorkSpecDao_Impl.this.f11837a.setTransactionSuccessful();
                    return arrayList;
                } finally {
                    query.close();
                }
            } finally {
                WorkSpecDao_Impl.this.f11837a.endTransaction();
            }
        }

        public void finalize() {
            this.f11876e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$q */
    /* loaded from: classes3.dex */
    public class CallableC1649q implements Callable<Long> {

        /* renamed from: e */
        public final /* synthetic */ RoomSQLiteQuery f11878e;

        public CallableC1649q(final RoomSQLiteQuery val$_statement) {
            this.f11878e = val$_statement;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Long call() throws Exception {
            Cursor query = DBUtil.query(WorkSpecDao_Impl.this.f11837a, this.f11878e, false, null);
            try {
                return Long.valueOf(query.moveToFirst() ? query.getLong(0) : 0L);
            } finally {
                query.close();
            }
        }

        public void finalize() {
            this.f11878e.release();
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$r */
    /* loaded from: classes3.dex */
    public class C1650r extends EntityDeletionOrUpdateAdapter<WorkSpec> {
        public C1650r(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter, androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeletionOrUpdateAdapter
        /* renamed from: d, reason: merged with bridge method [inline-methods] */
        public void bind(SupportSQLiteStatement supportSQLiteStatement, WorkSpec workSpec) {
            String str = workSpec.id;
            if (str == null) {
                supportSQLiteStatement.bindNull(1);
            } else {
                supportSQLiteStatement.bindString(1, str);
            }
            WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
            supportSQLiteStatement.bindLong(2, WorkTypeConverters.stateToInt(workSpec.state));
            String str2 = workSpec.workerClassName;
            if (str2 == null) {
                supportSQLiteStatement.bindNull(3);
            } else {
                supportSQLiteStatement.bindString(3, str2);
            }
            String str3 = workSpec.inputMergerClassName;
            if (str3 == null) {
                supportSQLiteStatement.bindNull(4);
            } else {
                supportSQLiteStatement.bindString(4, str3);
            }
            byte[] byteArrayInternal = Data.toByteArrayInternal(workSpec.input);
            if (byteArrayInternal == null) {
                supportSQLiteStatement.bindNull(5);
            } else {
                supportSQLiteStatement.bindBlob(5, byteArrayInternal);
            }
            byte[] byteArrayInternal2 = Data.toByteArrayInternal(workSpec.output);
            if (byteArrayInternal2 == null) {
                supportSQLiteStatement.bindNull(6);
            } else {
                supportSQLiteStatement.bindBlob(6, byteArrayInternal2);
            }
            supportSQLiteStatement.bindLong(7, workSpec.initialDelay);
            supportSQLiteStatement.bindLong(8, workSpec.intervalDuration);
            supportSQLiteStatement.bindLong(9, workSpec.flexDuration);
            supportSQLiteStatement.bindLong(10, workSpec.runAttemptCount);
            supportSQLiteStatement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(workSpec.backoffPolicy));
            supportSQLiteStatement.bindLong(12, workSpec.backoffDelayDuration);
            supportSQLiteStatement.bindLong(13, workSpec.lastEnqueueTime);
            supportSQLiteStatement.bindLong(14, workSpec.minimumRetentionDuration);
            supportSQLiteStatement.bindLong(15, workSpec.scheduleRequestedAt);
            supportSQLiteStatement.bindLong(16, workSpec.expedited ? 1L : 0L);
            supportSQLiteStatement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(workSpec.outOfQuotaPolicy));
            supportSQLiteStatement.bindLong(18, workSpec.getPeriodCount());
            supportSQLiteStatement.bindLong(19, workSpec.getGeneration());
            supportSQLiteStatement.bindLong(20, workSpec.getNextScheduleTimeOverride());
            supportSQLiteStatement.bindLong(21, workSpec.getNextScheduleTimeOverrideGeneration());
            supportSQLiteStatement.bindLong(22, workSpec.getStopReason());
            Constraints constraints = workSpec.constraints;
            if (constraints != null) {
                supportSQLiteStatement.bindLong(23, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                supportSQLiteStatement.bindLong(24, constraints.getRequiresCharging() ? 1L : 0L);
                supportSQLiteStatement.bindLong(25, constraints.getRequiresDeviceIdle() ? 1L : 0L);
                supportSQLiteStatement.bindLong(26, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(27, constraints.getRequiresStorageNotLow() ? 1L : 0L);
                supportSQLiteStatement.bindLong(28, constraints.getContentTriggerUpdateDelayMillis());
                supportSQLiteStatement.bindLong(29, constraints.getContentTriggerMaxDelayMillis());
                byte[] ofTriggersToByteArray = WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers());
                if (ofTriggersToByteArray == null) {
                    supportSQLiteStatement.bindNull(30);
                } else {
                    supportSQLiteStatement.bindBlob(30, ofTriggersToByteArray);
                }
            } else {
                supportSQLiteStatement.bindNull(23);
                supportSQLiteStatement.bindNull(24);
                supportSQLiteStatement.bindNull(25);
                supportSQLiteStatement.bindNull(26);
                supportSQLiteStatement.bindNull(27);
                supportSQLiteStatement.bindNull(28);
                supportSQLiteStatement.bindNull(29);
                supportSQLiteStatement.bindNull(30);
            }
            String str4 = workSpec.id;
            if (str4 == null) {
                supportSQLiteStatement.bindNull(31);
            } else {
                supportSQLiteStatement.bindString(31, str4);
            }
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$s */
    /* loaded from: classes3.dex */
    public class C1651s extends SharedSQLiteStatement {
        public C1651s(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "DELETE FROM workspec WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$t */
    /* loaded from: classes3.dex */
    public class C1652t extends SharedSQLiteStatement {
        public C1652t(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET state=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$u */
    /* loaded from: classes3.dex */
    public class C1653u extends SharedSQLiteStatement {
        public C1653u(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$v */
    /* loaded from: classes3.dex */
    public class C1654v extends SharedSQLiteStatement {
        public C1654v(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$w */
    /* loaded from: classes3.dex */
    public class C1655w extends SharedSQLiteStatement {
        public C1655w(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET output=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$x */
    /* loaded from: classes3.dex */
    public class C1656x extends SharedSQLiteStatement {
        public C1656x(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        }
    }

    /* renamed from: androidx.work.impl.model.WorkSpecDao_Impl$y */
    /* loaded from: classes3.dex */
    public class C1657y extends SharedSQLiteStatement {
        public C1657y(RoomDatabase database) {
            super(database);
        }

        @Override // androidx.room.SharedSQLiteStatement
        public String createQuery() {
            return "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        }
    }

    public WorkSpecDao_Impl(RoomDatabase __db) {
        this.f11837a = __db;
        this.f11838b = new C1643k(__db);
        this.f11839c = new C1650r(__db);
        this.f11840d = new C1651s(__db);
        this.f11841e = new C1652t(__db);
        this.f11842f = new C1653u(__db);
        this.f11843g = new C1654v(__db);
        this.f11844h = new C1655w(__db);
        this.f11845i = new C1656x(__db);
        this.f11846j = new C1657y(__db);
        this.f11847k = new C1633a(__db);
        this.f11848l = new C1634b(__db);
        this.f11849m = new C1635c(__db);
        this.f11850n = new C1636d(__db);
        this.f11851o = new C1637e(__db);
        this.f11852p = new C1638f(__db);
        this.f11853q = new C1639g(__db);
        this.f11854r = new C1640h(__db);
    }

    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    /* renamed from: a */
    public final void m7118a(final HashMap<String, ArrayList<Data>> _map) {
        int i;
        Set<String> keySet = _map.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            HashMap<String, ArrayList<Data>> hashMap = new HashMap<>(999);
            loop0: while (true) {
                i = 0;
                for (String str : keySet) {
                    hashMap.put(str, _map.get(str));
                    i++;
                    if (i == 999) {
                        break;
                    }
                }
                m7118a(hashMap);
                hashMap = new HashMap<>(999);
            }
            if (i > 0) {
                m7118a(hashMap);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `progress`,`work_spec_id` FROM `WorkProgress` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(MotionUtils.f31762d);
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i2 = 1;
        for (String str2 : keySet) {
            if (str2 == null) {
                acquire.bindNull(i2);
            } else {
                acquire.bindString(i2, str2);
            }
            i2++;
        }
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<Data> arrayList = _map.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(Data.fromByteArray(query.isNull(0) ? null : query.getBlob(0)));
                }
            }
        } finally {
            query.close();
        }
    }

    /* renamed from: b */
    public final void m7119b(final HashMap<String, ArrayList<String>> _map) {
        int i;
        Set<String> keySet = _map.keySet();
        if (keySet.isEmpty()) {
            return;
        }
        if (_map.size() > 999) {
            HashMap<String, ArrayList<String>> hashMap = new HashMap<>(999);
            loop0: while (true) {
                i = 0;
                for (String str : keySet) {
                    hashMap.put(str, _map.get(str));
                    i++;
                    if (i == 999) {
                        break;
                    }
                }
                m7119b(hashMap);
                hashMap = new HashMap<>(999);
            }
            if (i > 0) {
                m7119b(hashMap);
                return;
            }
            return;
        }
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT `tag`,`work_spec_id` FROM `WorkTag` WHERE `work_spec_id` IN (");
        int size = keySet.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(MotionUtils.f31762d);
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i2 = 1;
        for (String str2 : keySet) {
            if (str2 == null) {
                acquire.bindNull(i2);
            } else {
                acquire.bindString(i2, str2);
            }
            i2++;
        }
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndex = CursorUtil.getColumnIndex(query, "work_spec_id");
            if (columnIndex == -1) {
                return;
            }
            while (query.moveToNext()) {
                ArrayList<String> arrayList = _map.get(query.getString(columnIndex));
                if (arrayList != null) {
                    arrayList.add(query.isNull(0) ? null : query.getString(0));
                }
            }
        } finally {
            query.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            return query.moveToFirst() ? query.getInt(0) : 0;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11840d.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11840d.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int maxLimit) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?", 1);
        acquire.bindLong(1, maxLimit);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllUnfinishedWork() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getAllWorkSpecIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<String>> getAllWorkSpecIdsLiveData() {
        return this.f11837a.getInvalidationTracker().createLiveData(new String[]{"workspec"}, true, new CallableC1641i(RoomSQLiteQuery.acquire("SELECT id FROM workspec", 0)));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(final int schedulerLimit) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))", 1);
        acquire.bindLong(1, schedulerLimit);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(Data.fromByteArray(query.isNull(0) ? null : query.getBlob(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(final long startingAt) {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC", 1);
        acquire.bindLong(1, startingAt);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=1", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<Long> getScheduleRequestedAtLiveData(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT schedule_requested_at FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        return this.f11837a.getInvalidationTracker().createLiveData(new String[]{"workspec"}, false, new CallableC1649q(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        RoomSQLiteQuery roomSQLiteQuery;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                int i6 = columnIndexOrThrow14;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i7 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i7);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i8 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    int i9 = i6;
                    long j6 = query.getLong(i9);
                    int i10 = columnIndexOrThrow;
                    int i11 = columnIndexOrThrow15;
                    long j7 = query.getLong(i11);
                    columnIndexOrThrow15 = i11;
                    int i12 = columnIndexOrThrow16;
                    if (query.getInt(i12) != 0) {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        columnIndexOrThrow16 = i12;
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    columnIndexOrThrow17 = i;
                    int i13 = columnIndexOrThrow18;
                    int i14 = query.getInt(i13);
                    columnIndexOrThrow18 = i13;
                    int i15 = columnIndexOrThrow19;
                    int i16 = query.getInt(i15);
                    columnIndexOrThrow19 = i15;
                    int i17 = columnIndexOrThrow20;
                    long j8 = query.getLong(i17);
                    columnIndexOrThrow20 = i17;
                    int i18 = columnIndexOrThrow21;
                    int i19 = query.getInt(i18);
                    columnIndexOrThrow21 = i18;
                    int i20 = columnIndexOrThrow22;
                    int i21 = query.getInt(i20);
                    columnIndexOrThrow22 = i20;
                    int i22 = columnIndexOrThrow23;
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(i22));
                    columnIndexOrThrow23 = i22;
                    int i23 = columnIndexOrThrow24;
                    if (query.getInt(i23) != 0) {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        columnIndexOrThrow24 = i23;
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        columnIndexOrThrow25 = i2;
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        columnIndexOrThrow26 = i3;
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        columnIndexOrThrow27 = i4;
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    long j9 = query.getLong(i5);
                    columnIndexOrThrow28 = i5;
                    int i24 = columnIndexOrThrow29;
                    long j10 = query.getLong(i24);
                    columnIndexOrThrow29 = i24;
                    int i25 = columnIndexOrThrow30;
                    columnIndexOrThrow30 = i25;
                    arrayList.add(new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, j9, j10, WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(i25) ? null : query.getBlob(i25))), i8, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i14, i16, j8, i19, i21));
                    columnIndexOrThrow = i10;
                    i6 = i9;
                }
                query.close();
                roomSQLiteQuery.release();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo.State getState(final String id) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT state FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.assertNotSuspendingTransaction();
        WorkInfo.State state = null;
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                Integer valueOf = query.isNull(0) ? null : Integer.valueOf(query.getInt(0));
                if (valueOf != null) {
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    state = WorkTypeConverters.intToState(valueOf.intValue());
                }
            }
            return state;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(query.isNull(0) ? null : query.getString(0));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(final String id) {
        RoomSQLiteQuery roomSQLiteQuery;
        WorkSpec workSpec;
        int i;
        boolean z;
        int i2;
        boolean z2;
        int i3;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM workspec WHERE id=?", 1);
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, "state");
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, "worker_class_name");
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, "input_merger_class_name");
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, "input");
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, Constants.ELEMNAME_OUTPUT_STRING);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, "initial_delay");
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, "interval_duration");
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, "flex_duration");
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, "run_attempt_count");
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, "backoff_policy");
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, "backoff_delay_duration");
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, "last_enqueue_time");
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, "minimum_retention_duration");
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, "schedule_requested_at");
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, "run_in_foreground");
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, "out_of_quota_policy");
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, "period_count");
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, "generation");
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override");
                int columnIndexOrThrow21 = CursorUtil.getColumnIndexOrThrow(query, "next_schedule_time_override_generation");
                int columnIndexOrThrow22 = CursorUtil.getColumnIndexOrThrow(query, "stop_reason");
                int columnIndexOrThrow23 = CursorUtil.getColumnIndexOrThrow(query, "required_network_type");
                int columnIndexOrThrow24 = CursorUtil.getColumnIndexOrThrow(query, "requires_charging");
                int columnIndexOrThrow25 = CursorUtil.getColumnIndexOrThrow(query, "requires_device_idle");
                int columnIndexOrThrow26 = CursorUtil.getColumnIndexOrThrow(query, "requires_battery_not_low");
                int columnIndexOrThrow27 = CursorUtil.getColumnIndexOrThrow(query, "requires_storage_not_low");
                int columnIndexOrThrow28 = CursorUtil.getColumnIndexOrThrow(query, "trigger_content_update_delay");
                int columnIndexOrThrow29 = CursorUtil.getColumnIndexOrThrow(query, "trigger_max_content_delay");
                int columnIndexOrThrow30 = CursorUtil.getColumnIndexOrThrow(query, "content_uri_triggers");
                if (query.moveToFirst()) {
                    String string = query.isNull(columnIndexOrThrow) ? null : query.getString(columnIndexOrThrow);
                    int i6 = query.getInt(columnIndexOrThrow2);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i6);
                    String string2 = query.isNull(columnIndexOrThrow3) ? null : query.getString(columnIndexOrThrow3);
                    String string3 = query.isNull(columnIndexOrThrow4) ? null : query.getString(columnIndexOrThrow4);
                    Data fromByteArray = Data.fromByteArray(query.isNull(columnIndexOrThrow5) ? null : query.getBlob(columnIndexOrThrow5));
                    Data fromByteArray2 = Data.fromByteArray(query.isNull(columnIndexOrThrow6) ? null : query.getBlob(columnIndexOrThrow6));
                    long j = query.getLong(columnIndexOrThrow7);
                    long j2 = query.getLong(columnIndexOrThrow8);
                    long j3 = query.getLong(columnIndexOrThrow9);
                    int i7 = query.getInt(columnIndexOrThrow10);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(columnIndexOrThrow11));
                    long j4 = query.getLong(columnIndexOrThrow12);
                    long j5 = query.getLong(columnIndexOrThrow13);
                    long j6 = query.getLong(columnIndexOrThrow14);
                    long j7 = query.getLong(columnIndexOrThrow15);
                    if (query.getInt(columnIndexOrThrow16) != 0) {
                        i = columnIndexOrThrow17;
                        z = true;
                    } else {
                        i = columnIndexOrThrow17;
                        z = false;
                    }
                    OutOfQuotaPolicy intToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy(query.getInt(i));
                    int i8 = query.getInt(columnIndexOrThrow18);
                    int i9 = query.getInt(columnIndexOrThrow19);
                    long j8 = query.getLong(columnIndexOrThrow20);
                    int i10 = query.getInt(columnIndexOrThrow21);
                    int i11 = query.getInt(columnIndexOrThrow22);
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(columnIndexOrThrow23));
                    if (query.getInt(columnIndexOrThrow24) != 0) {
                        i2 = columnIndexOrThrow25;
                        z2 = true;
                    } else {
                        i2 = columnIndexOrThrow25;
                        z2 = false;
                    }
                    if (query.getInt(i2) != 0) {
                        i3 = columnIndexOrThrow26;
                        z3 = true;
                    } else {
                        i3 = columnIndexOrThrow26;
                        z3 = false;
                    }
                    if (query.getInt(i3) != 0) {
                        i4 = columnIndexOrThrow27;
                        z4 = true;
                    } else {
                        i4 = columnIndexOrThrow27;
                        z4 = false;
                    }
                    if (query.getInt(i4) != 0) {
                        i5 = columnIndexOrThrow28;
                        z5 = true;
                    } else {
                        i5 = columnIndexOrThrow28;
                        z5 = false;
                    }
                    workSpec = new WorkSpec(string, intToState, string2, string3, fromByteArray, fromByteArray2, j, j2, j3, new Constraints(intToNetworkType, z2, z3, z4, z5, query.getLong(i5), query.getLong(columnIndexOrThrow29), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(columnIndexOrThrow30) ? null : query.getBlob(columnIndexOrThrow30))), i7, intToBackoffPolicy, j4, j5, j6, j7, z, intToOutOfQuotaPolicy, i8, i9, j8, i10, i11);
                } else {
                    workSpec = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return workSpec;
            } catch (Throwable th) {
                th = th;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                String string = query.isNull(0) ? null : query.getString(0);
                int i = query.getInt(1);
                WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                arrayList.add(new WorkSpec.IdAndState(string, WorkTypeConverters.intToState(i)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowDataForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(MotionUtils.f31762d);
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return CoroutinesRoom.createFlow(this.f11837a, true, new String[]{"WorkTag", "WorkProgress", "workspec"}, new CallableC1644l(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        return CoroutinesRoom.createFlow(this.f11837a, true, new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, new CallableC1648p(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoFlowForTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        return CoroutinesRoom.createFlow(this.f11837a, true, new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, new CallableC1645m(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec.WorkInfoPojo getWorkStatusPojoForId(String str) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id=?", 1);
        if (str == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, str);
        }
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            WorkSpec.WorkInfoPojo workInfoPojo = null;
            byte[] blob = null;
            Cursor query = DBUtil.query(this.f11837a, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                m7119b(hashMap);
                m7118a(hashMap2);
                if (query.moveToFirst()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i4 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i5 = query.getInt(21);
                    NetworkType intToNetworkType = WorkTypeConverters.intToNetworkType(query.getInt(5));
                    boolean z = query.getInt(6) != 0;
                    boolean z2 = query.getInt(7) != 0;
                    boolean z3 = query.getInt(8) != 0;
                    boolean z4 = query.getInt(9) != 0;
                    long j7 = query.getLong(10);
                    long j8 = query.getLong(11);
                    if (!query.isNull(12)) {
                        blob = query.getBlob(12);
                    }
                    Constraints constraints = new Constraints(intToNetworkType, z, z2, z3, z4, j7, j8, WorkTypeConverters.byteArrayToSetOfTriggers(blob));
                    ArrayList<String> arrayList = hashMap.get(query.getString(0));
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                    }
                    ArrayList<String> arrayList2 = arrayList;
                    ArrayList<Data> arrayList3 = hashMap2.get(query.getString(0));
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList<>();
                    }
                    workInfoPojo = new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList2, arrayList3);
                }
                this.f11837a.setTransactionSuccessful();
                return workInfoPojo;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.f11837a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(MotionUtils.f31762d);
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.f11837a, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                m7119b(hashMap);
                m7118a(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i2 = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i2);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i3 = query.getInt(3);
                    int i4 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i5 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i6 = query.getInt(21);
                    Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i3, intToBackoffPolicy, j4, j5, i5, i4, j6, i6, arrayList3, arrayList4));
                }
                this.f11837a.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.f11837a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.f11837a, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                m7119b(hashMap);
                m7118a(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i4 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i5 = query.getInt(21);
                    Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                }
                this.f11837a.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.f11837a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.WorkInfoPojo> getWorkStatusPojoForTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            Cursor query = DBUtil.query(this.f11837a, acquire, true, null);
            try {
                HashMap<String, ArrayList<String>> hashMap = new HashMap<>();
                HashMap<String, ArrayList<Data>> hashMap2 = new HashMap<>();
                while (query.moveToNext()) {
                    String string = query.getString(0);
                    if (hashMap.get(string) == null) {
                        hashMap.put(string, new ArrayList<>());
                    }
                    String string2 = query.getString(0);
                    if (hashMap2.get(string2) == null) {
                        hashMap2.put(string2, new ArrayList<>());
                    }
                }
                query.moveToPosition(-1);
                m7119b(hashMap);
                m7118a(hashMap2);
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    String string3 = query.isNull(0) ? null : query.getString(0);
                    int i = query.getInt(1);
                    WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
                    WorkInfo.State intToState = WorkTypeConverters.intToState(i);
                    Data fromByteArray = Data.fromByteArray(query.isNull(2) ? null : query.getBlob(2));
                    int i2 = query.getInt(3);
                    int i3 = query.getInt(4);
                    long j = query.getLong(13);
                    long j2 = query.getLong(14);
                    long j3 = query.getLong(15);
                    BackoffPolicy intToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy(query.getInt(16));
                    long j4 = query.getLong(17);
                    long j5 = query.getLong(18);
                    int i4 = query.getInt(19);
                    long j6 = query.getLong(20);
                    int i5 = query.getInt(21);
                    Constraints constraints = new Constraints(WorkTypeConverters.intToNetworkType(query.getInt(5)), query.getInt(6) != 0, query.getInt(7) != 0, query.getInt(8) != 0, query.getInt(9) != 0, query.getLong(10), query.getLong(11), WorkTypeConverters.byteArrayToSetOfTriggers(query.isNull(12) ? null : query.getBlob(12)));
                    ArrayList<String> arrayList2 = hashMap.get(query.getString(0));
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList<>();
                    }
                    ArrayList<String> arrayList3 = arrayList2;
                    ArrayList<Data> arrayList4 = hashMap2.get(query.getString(0));
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList<>();
                    }
                    arrayList.add(new WorkSpec.WorkInfoPojo(string3, intToState, fromByteArray, j, j2, j3, constraints, i2, intToBackoffPolicy, j4, j5, i4, i3, j6, i5, arrayList3, arrayList4));
                }
                this.f11837a.setTransactionSuccessful();
                return arrayList;
            } finally {
                query.close();
                acquire.release();
            }
        } finally {
            this.f11837a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForIds(final List<String> ids) {
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(MotionUtils.f31762d);
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 0);
        int i = 1;
        for (String str : ids) {
            if (str == null) {
                acquire.bindNull(i);
            } else {
                acquire.bindString(i, str);
            }
            i++;
        }
        return this.f11837a.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec"}, true, new CallableC1642j(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForName(final String name) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", 1);
        if (name == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, name);
        }
        return this.f11837a.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "workname"}, true, new CallableC1647o(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public LiveData<List<WorkSpec.WorkInfoPojo>> getWorkStatusPojoLiveDataForTag(final String tag) {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)", 1);
        if (tag == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, tag);
        }
        return this.f11837a.getInvalidationTracker().createLiveData(new String[]{"WorkTag", "WorkProgress", "workspec", "worktag"}, true, new CallableC1646n(acquire));
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public boolean hasUnfinishedWork() {
        boolean z = false;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1", 0);
        this.f11837a.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.f11837a, acquire, false, null);
        try {
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementGeneration(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11853q.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11853q.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11843g.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11843g.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11846j.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11846j.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(final WorkSpec workSpec) {
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            this.f11838b.insert((EntityInsertionAdapter<WorkSpec>) workSpec);
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(final String id, final long startTime) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11850n.acquire();
        acquire.bindLong(1, startTime);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11850n.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast() {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11852p.acquire();
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11852p.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11851o.acquire();
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11851o.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String id, final int overrideGeneration) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11849m.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        acquire.bindLong(2, overrideGeneration);
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11849m.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11847k.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11847k.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11842f.acquire();
        if (id == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindString(1, id);
        }
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11842f.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(final String id, final long enqueueTime) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11845i.acquire();
        acquire.bindLong(1, enqueueTime);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11845i.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setNextScheduleTimeOverride(final String id, final long nextScheduleTimeOverrideMillis) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11848l.acquire();
        acquire.bindLong(1, nextScheduleTimeOverrideMillis);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11848l.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(final String id, final Data output) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11844h.acquire();
        byte[] byteArrayInternal = Data.toByteArrayInternal(output);
        if (byteArrayInternal == null) {
            acquire.bindNull(1);
        } else {
            acquire.bindBlob(1, byteArrayInternal);
        }
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11844h.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(final WorkInfo.State state, final String id) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11841e.acquire();
        WorkTypeConverters workTypeConverters = WorkTypeConverters.INSTANCE;
        acquire.bindLong(1, WorkTypeConverters.stateToInt(state));
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            int executeUpdateDelete = acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
            return executeUpdateDelete;
        } finally {
            this.f11837a.endTransaction();
            this.f11841e.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(final String id, final int stopReason) {
        this.f11837a.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.f11854r.acquire();
        acquire.bindLong(1, stopReason);
        if (id == null) {
            acquire.bindNull(2);
        } else {
            acquire.bindString(2, id);
        }
        this.f11837a.beginTransaction();
        try {
            acquire.executeUpdateDelete();
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
            this.f11854r.release(acquire);
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(final WorkSpec workSpec) {
        this.f11837a.assertNotSuspendingTransaction();
        this.f11837a.beginTransaction();
        try {
            this.f11839c.handle(workSpec);
            this.f11837a.setTransactionSuccessful();
        } finally {
            this.f11837a.endTransaction();
        }
    }
}
