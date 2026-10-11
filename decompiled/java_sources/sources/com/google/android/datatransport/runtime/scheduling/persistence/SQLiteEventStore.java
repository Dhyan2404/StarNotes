package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SchemaManager;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.android.material.motion.MotionUtils;
import com.sunia.HTREnginev2.jxf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.mortbay.jetty.HttpHeaderValues;

@Singleton
@WorkerThread
/* loaded from: classes4.dex */
public class SQLiteEventStore implements EventStore, SynchronizationGuard, ClientHealthMetricsStore {

    /* renamed from: j */
    public static final String f22122j = "SQLiteEventStore";

    /* renamed from: k */
    public static final int f22123k = 16;

    /* renamed from: l */
    public static final int f22124l = 50;

    /* renamed from: m */
    public static final Encoding f22125m = Encoding.m17394of("proto");

    /* renamed from: e */
    public final SchemaManager f22126e;

    /* renamed from: f */
    public final Clock f22127f;

    /* renamed from: g */
    public final Clock f22128g;

    /* renamed from: h */
    public final jxf f22129h;

    /* renamed from: i */
    public final Provider<String> f22130i;

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore$b */
    /* loaded from: classes4.dex */
    public interface InterfaceC4642b<T, U> {
        U apply(T t);
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore$c */
    /* loaded from: classes4.dex */
    public static class C4643c {

        /* renamed from: a */
        public final String f22131a;

        /* renamed from: b */
        public final String f22132b;

        public C4643c(String str, String str2) {
            this.f22131a = str;
            this.f22132b = str2;
        }
    }

    /* renamed from: com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore$d */
    /* loaded from: classes4.dex */
    public interface InterfaceC4644d<T> {
        /* renamed from: a */
        T mo17587a();
    }

    @Inject
    public SQLiteEventStore(@WallTime Clock clock, @Monotonic Clock clock2, jxf jxfVar, SchemaManager schemaManager, @Named("PACKAGE_NAME") Provider<String> provider) {
        this.f22126e = schemaManager;
        this.f22127f = clock;
        this.f22128g = clock2;
        this.f22129h = jxfVar;
        this.f22130i = provider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K0 */
    public /* synthetic */ Object m17516K0(Cursor cursor) {
        while (cursor.moveToNext()) {
            recordLogEventDropped(cursor.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L0 */
    public /* synthetic */ Integer m17517L0(long j, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j)};
        m17563s1(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.nzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17516K0;
                m17516K0 = SQLiteEventStore.this.m17516K0((Cursor) obj);
                return m17516K0;
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete("events", "timestamp_ms < ?", strArr));
    }

    /* renamed from: M0 */
    public static /* synthetic */ Object m17519M0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("events", null, new String[0]);
        sQLiteDatabase.delete("transport_contexts", null, new String[0]);
        return null;
    }

    /* renamed from: N0 */
    public static /* synthetic */ Object m17520N0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    /* renamed from: O0 */
    public static /* synthetic */ Object m17521O0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: P0 */
    public static /* synthetic */ SQLiteDatabase m17522P0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* renamed from: Q0 */
    public static /* synthetic */ Long m17523Q0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: R0 */
    public static /* synthetic */ TimeWindow m17524R0(long j, Cursor cursor) {
        cursor.moveToNext();
        return TimeWindow.newBuilder().setStartMs(cursor.getLong(0)).setEndMs(j).build();
    }

    /* renamed from: S0 */
    public static /* synthetic */ TimeWindow m17525S0(final long j, SQLiteDatabase sQLiteDatabase) {
        return (TimeWindow) m17563s1(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.ozl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                TimeWindow m17524R0;
                m17524R0 = SQLiteEventStore.m17524R0(j, (Cursor) obj);
                return m17524R0;
            }
        });
    }

    /* renamed from: T0 */
    public static /* synthetic */ Long m17526T0(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U0 */
    public /* synthetic */ Boolean m17527U0(TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        Long m17576G0 = m17576G0(sQLiteDatabase, transportContext);
        return m17576G0 == null ? Boolean.FALSE : (Boolean) m17563s1(m17572C0().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m17576G0.toString()}), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.jzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    /* renamed from: V0 */
    public static /* synthetic */ List m17528V0(SQLiteDatabase sQLiteDatabase) {
        return (List) m17563s1(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.lzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                List m17529W0;
                m17529W0 = SQLiteEventStore.m17529W0((Cursor) obj);
                return m17529W0;
            }
        });
    }

    /* renamed from: W0 */
    public static /* synthetic */ List m17529W0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(TransportContext.builder().setBackendName(cursor.getString(1)).setPriority(PriorityMapping.valueOf(cursor.getInt(2))).setExtras(m17554m1(cursor.getString(3))).build());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: X0 */
    public /* synthetic */ List m17530X0(TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        List<PersistedEvent> m17580k1 = m17580k1(sQLiteDatabase, transportContext, this.f22129h.mo55060d());
        for (Priority priority : Priority.values()) {
            if (priority != transportContext.getPriority()) {
                int mo55060d = this.f22129h.mo55060d() - m17580k1.size();
                if (mo55060d <= 0) {
                    break;
                }
                m17580k1.addAll(m17580k1(sQLiteDatabase, transportContext.withPriority(priority), mo55060d));
            }
        }
        return m17579J0(m17580k1, m17581l1(sQLiteDatabase, m17580k1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y0 */
    public /* synthetic */ ClientMetrics m17531Y0(Map map, ClientMetrics.Builder builder, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason m17585y0 = m17585y0(cursor.getInt(1));
            long j = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.newBuilder().setReason(m17585y0).setEventsDroppedCount(j).build());
        }
        m17582n1(builder, map);
        builder.setWindow(m17575F0());
        builder.setGlobalMetrics(m17573D0());
        builder.setAppNamespace(this.f22130i.get());
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z0 */
    public /* synthetic */ ClientMetrics m17532Z0(String str, final Map map, final ClientMetrics.Builder builder, SQLiteDatabase sQLiteDatabase) {
        return (ClientMetrics) m17563s1(sQLiteDatabase.rawQuery(str, new String[0]), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.tzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                ClientMetrics m17531Y0;
                m17531Y0 = SQLiteEventStore.this.m17531Y0(map, builder, (Cursor) obj);
                return m17531Y0;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a1 */
    public /* synthetic */ Object m17533a1(List list, TransportContext transportContext, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            EventInternal.Builder uptimeMillis = EventInternal.builder().setTransportName(cursor.getString(1)).setEventMillis(cursor.getLong(2)).setUptimeMillis(cursor.getLong(3));
            if (z) {
                uptimeMillis.setEncodedPayload(new EncodedPayload(m17559q1(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                uptimeMillis.setEncodedPayload(new EncodedPayload(m17559q1(cursor.getString(4)), m17583o1(j)));
            }
            if (!cursor.isNull(6)) {
                uptimeMillis.setCode(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(PersistedEvent.create(j, transportContext, uptimeMillis.build()));
        }
        return null;
    }

    /* renamed from: b1 */
    public static /* synthetic */ Object m17534b1(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j), set);
            }
            set.add(new C4643c(cursor.getString(1), cursor.getString(2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c1 */
    public /* synthetic */ Long m17535c1(EventInternal eventInternal, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        if (m17578I0()) {
            recordLogEventDropped(1L, LogEventDropped.Reason.CACHE_FULL, eventInternal.getTransportName());
            return -1L;
        }
        long m17570A0 = m17570A0(sQLiteDatabase, transportContext);
        int mo55061e = this.f22129h.mo55061e();
        byte[] bytes = eventInternal.getEncodedPayload().getBytes();
        boolean z = bytes.length <= mo55061e;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(m17570A0));
        contentValues.put("transport_name", eventInternal.getTransportName());
        contentValues.put("timestamp_ms", Long.valueOf(eventInternal.getEventMillis()));
        contentValues.put("uptime_ms", Long.valueOf(eventInternal.getUptimeMillis()));
        contentValues.put("payload_encoding", eventInternal.getEncodedPayload().getEncoding().getName());
        contentValues.put("code", eventInternal.getCode());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put("payload", z ? bytes : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            int ceil = (int) Math.ceil(bytes.length / mo55061e);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(bytes, (i - 1) * mo55061e, Math.min(i * mo55061e, bytes.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put(HttpHeaderValues.BYTES, copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : eventInternal.getMetadata().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: d1 */
    public static /* synthetic */ byte[] m17536d1(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i += blob.length;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            byte[] bArr2 = (byte[]) arrayList.get(i3);
            System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
            i2 += bArr2.length;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e1 */
    public /* synthetic */ Object m17538e1(Cursor cursor) {
        while (cursor.moveToNext()) {
            recordLogEventDropped(cursor.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f1 */
    public /* synthetic */ Object m17541f1(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        m17563s1(sQLiteDatabase.rawQuery(str2, null), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.bzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17538e1;
                m17538e1 = SQLiteEventStore.this.m17538e1((Cursor) obj);
                return m17538e1;
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: g1 */
    public static /* synthetic */ Boolean m17543g1(Cursor cursor) {
        return Boolean.valueOf(cursor.getCount() > 0);
    }

    /* renamed from: h1 */
    public static /* synthetic */ Object m17545h1(String str, LogEventDropped.Reason reason, long j, SQLiteDatabase sQLiteDatabase) {
        if (((Boolean) m17563s1(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.vzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Boolean m17543g1;
                m17543g1 = SQLiteEventStore.m17543g1((Cursor) obj);
                return m17543g1;
            }
        })).booleanValue()) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    /* renamed from: i1 */
    public static /* synthetic */ Object m17547i1(long j, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))}) < 1) {
            contentValues.put("backend_name", transportContext.getBackendName());
            contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.getPriority())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j1 */
    public /* synthetic */ Object m17550j1(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f22127f.getTime()).execute();
        return null;
    }

    /* renamed from: m1 */
    public static byte[] m17554m1(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* renamed from: q1 */
    public static Encoding m17559q1(@Nullable String str) {
        return str == null ? f22125m : Encoding.m17394of(str);
    }

    /* renamed from: r1 */
    public static String m17561r1(Iterable<PersistedEvent> iterable) {
        StringBuilder sb = new StringBuilder(MotionUtils.f31761c);
        Iterator<PersistedEvent> it2 = iterable.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().getId());
            if (it2.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    @VisibleForTesting
    /* renamed from: s1 */
    public static <T> T m17563s1(Cursor cursor, InterfaceC4642b<Cursor, T> interfaceC4642b) {
        try {
            return interfaceC4642b.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: A0 */
    public final long m17570A0(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long m17576G0 = m17576G0(sQLiteDatabase, transportContext);
        if (m17576G0 != null) {
            return m17576G0.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", transportContext.getBackendName());
        contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.getPriority())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (transportContext.getExtras() != null) {
            contentValues.put("extras", Base64.encodeToString(transportContext.getExtras(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @VisibleForTesting
    /* renamed from: B0 */
    public long m17571B0() {
        return m17574E0() * getPageSize();
    }

    @VisibleForTesting
    /* renamed from: C0 */
    public SQLiteDatabase m17572C0() {
        final SchemaManager schemaManager = this.f22126e;
        Objects.requireNonNull(schemaManager);
        return (SQLiteDatabase) m17584p1(new InterfaceC4644d() { // from class: com.sunia.HTREnginev2.yyl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4644d
            /* renamed from: a */
            public final Object mo17587a() {
                return SchemaManager.this.getWritableDatabase();
            }
        }, new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.zyl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                SQLiteDatabase m17522P0;
                m17522P0 = SQLiteEventStore.m17522P0((Throwable) obj);
                return m17522P0;
            }
        });
    }

    /* renamed from: D0 */
    public final GlobalMetrics m17573D0() {
        return GlobalMetrics.newBuilder().setStorageMetrics(StorageMetrics.newBuilder().setCurrentCacheSizeBytes(m17571B0()).setMaxCacheSizeBytes(jxf.f74798f.mo55062f()).build()).build();
    }

    /* renamed from: E0 */
    public final long m17574E0() {
        return m17572C0().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    /* renamed from: F0 */
    public final TimeWindow m17575F0() {
        final long time = this.f22127f.getTime();
        return (TimeWindow) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.szl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                TimeWindow m17525S0;
                m17525S0 = SQLiteEventStore.m17525S0(time, (SQLiteDatabase) obj);
                return m17525S0;
            }
        });
    }

    @Nullable
    /* renamed from: G0 */
    public final Long m17576G0(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))));
        if (transportContext.getExtras() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.getExtras(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) m17563s1(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.pzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Long m17526T0;
                m17526T0 = SQLiteEventStore.m17526T0((Cursor) obj);
                return m17526T0;
            }
        });
    }

    @VisibleForTesting
    /* renamed from: H0 */
    public <T> T m17577H0(InterfaceC4642b<SQLiteDatabase, T> interfaceC4642b) {
        SQLiteDatabase m17572C0 = m17572C0();
        m17572C0.beginTransaction();
        try {
            T apply = interfaceC4642b.apply(m17572C0);
            m17572C0.setTransactionSuccessful();
            return apply;
        } finally {
            m17572C0.endTransaction();
        }
    }

    /* renamed from: I0 */
    public final boolean m17578I0() {
        return m17574E0() * getPageSize() >= this.f22129h.mo55062f();
    }

    /* renamed from: J0 */
    public final List<PersistedEvent> m17579J0(List<PersistedEvent> list, Map<Long, Set<C4643c>> map) {
        ListIterator<PersistedEvent> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            PersistedEvent next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.getId()))) {
                EventInternal.Builder builder = next.getEvent().toBuilder();
                for (C4643c c4643c : map.get(Long.valueOf(next.getId()))) {
                    builder.addMetadata(c4643c.f22131a, c4643c.f22132b);
                }
                listIterator.set(PersistedEvent.create(next.getId(), next.getTransportContext(), builder.build()));
            }
        }
        return list;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public int cleanUp() {
        final long time = this.f22127f.getTime() - this.f22129h.mo55059c();
        return ((Integer) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.fzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Integer m17517L0;
                m17517L0 = SQLiteEventStore.this.m17517L0(time, (SQLiteDatabase) obj);
                return m17517L0;
            }
        })).intValue();
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public void clearDb() {
        m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.wyl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17519M0;
                m17519M0 = SQLiteEventStore.m17519M0((SQLiteDatabase) obj);
                return m17519M0;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22126e.close();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public long getNextCallTime(TransportContext transportContext) {
        return ((Long) m17563s1(m17572C0().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))}), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.azl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Long m17523Q0;
                m17523Q0 = SQLiteEventStore.m17523Q0((Cursor) obj);
                return m17523Q0;
            }
        })).longValue();
    }

    public final long getPageSize() {
        return m17572C0().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public boolean hasPendingEventsFor(final TransportContext transportContext) {
        return ((Boolean) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.wzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Boolean m17527U0;
                m17527U0 = SQLiteEventStore.this.m17527U0(transportContext, (SQLiteDatabase) obj);
                return m17527U0;
            }
        })).booleanValue();
    }

    /* renamed from: k1 */
    public final List<PersistedEvent> m17580k1(SQLiteDatabase sQLiteDatabase, final TransportContext transportContext, int i) {
        final ArrayList arrayList = new ArrayList();
        Long m17576G0 = m17576G0(sQLiteDatabase, transportContext);
        if (m17576G0 == null) {
            return arrayList;
        }
        m17563s1(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m17576G0.toString()}, null, null, null, String.valueOf(i)), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.ezl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17533a1;
                m17533a1 = SQLiteEventStore.this.m17533a1(arrayList, transportContext, (Cursor) obj);
                return m17533a1;
            }
        });
        return arrayList;
    }

    /* renamed from: l1 */
    public final Map<Long, Set<C4643c>> m17581l1(SQLiteDatabase sQLiteDatabase, List<PersistedEvent> list) {
        final HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).getId());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m17563s1(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.hzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17534b1;
                m17534b1 = SQLiteEventStore.m17534b1(hashMap, (Cursor) obj);
                return m17534b1;
            }
        });
        return hashMap;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public Iterable<TransportContext> loadActiveContexts() {
        return (Iterable) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.uzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                List m17528V0;
                m17528V0 = SQLiteEventStore.m17528V0((SQLiteDatabase) obj);
                return m17528V0;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public Iterable<PersistedEvent> loadBatch(final TransportContext transportContext) {
        return (Iterable) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.kzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                List m17530X0;
                m17530X0 = SQLiteEventStore.this.m17530X0(transportContext, (SQLiteDatabase) obj);
                return m17530X0;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public ClientMetrics loadClientMetrics() {
        final ClientMetrics.Builder newBuilder = ClientMetrics.newBuilder();
        final HashMap hashMap = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (ClientMetrics) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.rzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                ClientMetrics m17532Z0;
                m17532Z0 = SQLiteEventStore.this.m17532Z0(str, hashMap, newBuilder, (SQLiteDatabase) obj);
                return m17532Z0;
            }
        });
    }

    /* renamed from: n1 */
    public final void m17582n1(ClientMetrics.Builder builder, Map<String, List<LogEventDropped>> map) {
        for (Map.Entry<String, List<LogEventDropped>> entry : map.entrySet()) {
            builder.addLogSourceMetrics(LogSourceMetrics.newBuilder().setLogSource(entry.getKey()).setLogEventDroppedList(entry.getValue()).build());
        }
    }

    /* renamed from: o1 */
    public final byte[] m17583o1(long j) {
        return (byte[]) m17563s1(m17572C0().query("event_payloads", new String[]{HttpHeaderValues.BYTES}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.qzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                byte[] m17536d1;
                m17536d1 = SQLiteEventStore.m17536d1((Cursor) obj);
                return m17536d1;
            }
        });
    }

    /* renamed from: p1 */
    public final <T> T m17584p1(InterfaceC4644d<T> interfaceC4644d, InterfaceC4642b<Throwable, T> interfaceC4642b) {
        long time = this.f22128g.getTime();
        while (true) {
            try {
                return interfaceC4644d.mo17587a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f22128g.getTime() >= this.f22129h.mo55058b() + time) {
                    return interfaceC4642b.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    @Nullable
    public PersistedEvent persist(final TransportContext transportContext, final EventInternal eventInternal) {
        Logging.m17454d(f22122j, "Storing event with priority=%s, name=%s for destination %s", transportContext.getPriority(), eventInternal.getTransportName(), transportContext.getBackendName());
        long longValue = ((Long) m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.xzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Long m17535c1;
                m17535c1 = SQLiteEventStore.this.m17535c1(eventInternal, transportContext, (SQLiteDatabase) obj);
                return m17535c1;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return PersistedEvent.create(longValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordFailure(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m17561r1(iterable);
            final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
            m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.mzl
                @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
                public final Object apply(Object obj) {
                    Object m17541f1;
                    m17541f1 = SQLiteEventStore.this.m17541f1(str, str2, (SQLiteDatabase) obj);
                    return m17541f1;
                }
            });
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public void recordLogEventDropped(final long j, final LogEventDropped.Reason reason, final String str) {
        m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.xyl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17545h1;
                m17545h1 = SQLiteEventStore.m17545h1(str, reason, j, (SQLiteDatabase) obj);
                return m17545h1;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordNextCallTime(final TransportContext transportContext, final long j) {
        m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.czl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17547i1;
                m17547i1 = SQLiteEventStore.m17547i1(j, transportContext, (SQLiteDatabase) obj);
                return m17547i1;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordSuccess(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            m17572C0().compileStatement("DELETE FROM events WHERE _id in " + m17561r1(iterable)).execute();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore
    public void resetClientMetrics() {
        m17577H0(new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.dzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17550j1;
                m17550j1 = SQLiteEventStore.this.m17550j1((SQLiteDatabase) obj);
                return m17550j1;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard
    public <T> T runCriticalSection(SynchronizationGuard.CriticalSection<T> criticalSection) {
        SQLiteDatabase m17572C0 = m17572C0();
        m17586z0(m17572C0);
        try {
            T execute = criticalSection.execute();
            m17572C0.setTransactionSuccessful();
            return execute;
        } finally {
            m17572C0.endTransaction();
        }
    }

    /* renamed from: y0 */
    public final LogEventDropped.Reason m17585y0(int i) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i == reason7.getNumber()) {
            return reason7;
        }
        Logging.m17452d(f22122j, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i));
        return reason;
    }

    /* renamed from: z0 */
    public final void m17586z0(final SQLiteDatabase sQLiteDatabase) {
        m17584p1(new InterfaceC4644d() { // from class: com.sunia.HTREnginev2.gzl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4644d
            /* renamed from: a */
            public final Object mo17587a() {
                Object m17520N0;
                m17520N0 = SQLiteEventStore.m17520N0(sQLiteDatabase);
                return m17520N0;
            }
        }, new InterfaceC4642b() { // from class: com.sunia.HTREnginev2.izl
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.InterfaceC4642b
            public final Object apply(Object obj) {
                Object m17521O0;
                m17521O0 = SQLiteEventStore.m17521O0((Throwable) obj);
                return m17521O0;
            }
        });
    }
}
