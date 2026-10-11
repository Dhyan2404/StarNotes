package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
import com.google.android.material.motion.MotionUtils;
import java.util.Arrays;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;

/* loaded from: classes4.dex */
public final class SchemaManager extends SQLiteOpenHelper {

    /* renamed from: J */
    public static final Migration f22138J;

    /* renamed from: O */
    public static final Migration f22139O;

    /* renamed from: Q */
    public static final List<Migration> f22140Q;

    /* renamed from: g */
    public static final String f22141g = "com.google.android.datatransport.events";

    /* renamed from: h */
    public static final String f22142h = "CREATE TABLE events (_id INTEGER PRIMARY KEY, context_id INTEGER NOT NULL, transport_name TEXT NOT NULL, timestamp_ms INTEGER NOT NULL, uptime_ms INTEGER NOT NULL, payload BLOB NOT NULL, code INTEGER, num_attempts INTEGER NOT NULL,FOREIGN KEY (context_id) REFERENCES transport_contexts(_id) ON DELETE CASCADE)";

    /* renamed from: i */
    public static final String f22143i = "CREATE TABLE event_metadata (_id INTEGER PRIMARY KEY, event_id INTEGER NOT NULL, name TEXT NOT NULL, value TEXT NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE)";

    /* renamed from: j */
    public static final String f22144j = "CREATE TABLE transport_contexts (_id INTEGER PRIMARY KEY, backend_name TEXT NOT NULL, priority INTEGER NOT NULL, next_request_ms INTEGER NOT NULL)";

    /* renamed from: k */
    public static final String f22145k = "CREATE INDEX events_backend_id on events(context_id)";

    /* renamed from: l */
    public static final String f22146l = "CREATE UNIQUE INDEX contexts_backend_priority on transport_contexts(backend_name, priority)";

    /* renamed from: m */
    public static final String f22147m = "DROP TABLE events";

    /* renamed from: n */
    public static final String f22148n = "DROP TABLE event_metadata";

    /* renamed from: o */
    public static final String f22149o = "DROP TABLE transport_contexts";

    /* renamed from: p */
    public static final String f22150p = "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))";

    /* renamed from: q */
    public static final String f22151q = "DROP TABLE IF EXISTS event_payloads";

    /* renamed from: r */
    public static final String f22152r = "CREATE TABLE log_event_dropped (log_source VARCHAR(45) NOT NULL,reason INTEGER NOT NULL,events_dropped_count BIGINT NOT NULL,PRIMARY KEY(log_source, reason))";

    /* renamed from: s */
    public static final String f22153s = "CREATE TABLE global_log_event_state (last_metrics_upload_ms BIGINT PRIMARY KEY)";

    /* renamed from: u */
    public static final String f22155u = "DROP TABLE IF EXISTS log_event_dropped";

    /* renamed from: v */
    public static final String f22156v = "DROP TABLE IF EXISTS global_log_event_state";

    /* renamed from: x */
    public static final Migration f22158x;

    /* renamed from: y */
    public static final Migration f22159y;

    /* renamed from: z */
    public static final Migration f22160z;

    /* renamed from: e */
    public final int f22161e;

    /* renamed from: f */
    public boolean f22162f;

    /* renamed from: t */
    public static final String f22154t = "INSERT INTO global_log_event_state VALUES (" + System.currentTimeMillis() + MotionUtils.f31762d;

    /* renamed from: w */
    public static int f22157w = 5;

    /* loaded from: classes4.dex */
    public interface Migration {
        void upgrade(SQLiteDatabase sQLiteDatabase);
    }

    static {
        Migration migration = new Migration() { // from class: com.sunia.HTREnginev2.r4m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
            public final void upgrade(SQLiteDatabase sQLiteDatabase) {
                SchemaManager.m17590e0(sQLiteDatabase);
            }
        };
        f22158x = migration;
        Migration migration2 = new Migration() { // from class: com.sunia.HTREnginev2.s4m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
            public final void upgrade(SQLiteDatabase sQLiteDatabase) {
                SchemaManager.m17592f0(sQLiteDatabase);
            }
        };
        f22159y = migration2;
        Migration migration3 = new Migration() { // from class: com.sunia.HTREnginev2.t4m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
            public final void upgrade(SQLiteDatabase sQLiteDatabase) {
                sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN payload_encoding TEXT");
            }
        };
        f22160z = migration3;
        Migration migration4 = new Migration() { // from class: com.sunia.HTREnginev2.u4m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
            public final void upgrade(SQLiteDatabase sQLiteDatabase) {
                SchemaManager.m17594h0(sQLiteDatabase);
            }
        };
        f22138J = migration4;
        Migration migration5 = new Migration() { // from class: com.sunia.HTREnginev2.v4m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager.Migration
            public final void upgrade(SQLiteDatabase sQLiteDatabase) {
                SchemaManager.m17595i0(sQLiteDatabase);
            }
        };
        f22139O = migration5;
        f22140Q = Arrays.asList(migration, migration2, migration3, migration4, migration5);
    }

    @Inject
    public SchemaManager(Context context, @Named("SQLITE_DB_NAME") String str, @Named("SCHEMA_VERSION") int i) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, i);
        this.f22162f = false;
        this.f22161e = i;
    }

    /* renamed from: e0 */
    public static /* synthetic */ void m17590e0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f22142h);
        sQLiteDatabase.execSQL(f22143i);
        sQLiteDatabase.execSQL(f22144j);
        sQLiteDatabase.execSQL(f22145k);
        sQLiteDatabase.execSQL(f22146l);
    }

    /* renamed from: f0 */
    public static /* synthetic */ void m17592f0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE transport_contexts ADD COLUMN extras BLOB");
        sQLiteDatabase.execSQL("CREATE UNIQUE INDEX contexts_backend_priority_extras on transport_contexts(backend_name, priority, extras)");
        sQLiteDatabase.execSQL("DROP INDEX contexts_backend_priority");
    }

    /* renamed from: h0 */
    public static /* synthetic */ void m17594h0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1");
        sQLiteDatabase.execSQL(f22151q);
        sQLiteDatabase.execSQL(f22150p);
    }

    /* renamed from: i0 */
    public static /* synthetic */ void m17595i0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(f22155u);
        sQLiteDatabase.execSQL(f22156v);
        sQLiteDatabase.execSQL(f22152r);
        sQLiteDatabase.execSQL(f22153s);
        sQLiteDatabase.execSQL(f22154t);
    }

    /* renamed from: M */
    public final void m17598M(SQLiteDatabase sQLiteDatabase) {
        if (this.f22162f) {
            return;
        }
        onConfigure(sQLiteDatabase);
    }

    /* renamed from: j0 */
    public final void m17599j0(SQLiteDatabase sQLiteDatabase, int i) {
        m17598M(sQLiteDatabase);
        m17600k0(sQLiteDatabase, 0, i);
    }

    /* renamed from: k0 */
    public final void m17600k0(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        List<Migration> list = f22140Q;
        if (i2 <= list.size()) {
            while (i < i2) {
                f22140Q.get(i).upgrade(sQLiteDatabase);
                i++;
            }
            return;
        }
        throw new IllegalArgumentException("Migration from " + i + " to " + i2 + " was requested, but cannot be performed. Only " + list.size() + " migrations are provided");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        this.f22162f = true;
        sQLiteDatabase.rawQuery("PRAGMA busy_timeout=0;", new String[0]).close();
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        m17599j0(sQLiteDatabase, this.f22161e);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL(f22147m);
        sQLiteDatabase.execSQL(f22148n);
        sQLiteDatabase.execSQL(f22149o);
        sQLiteDatabase.execSQL(f22151q);
        sQLiteDatabase.execSQL(f22155u);
        sQLiteDatabase.execSQL(f22156v);
        m17599j0(sQLiteDatabase, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onOpen(SQLiteDatabase sQLiteDatabase) {
        m17598M(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        m17598M(sQLiteDatabase);
        m17600k0(sQLiteDatabase, i, i2);
    }
}
