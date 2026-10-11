package androidx.room;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.arch.core.internal.SafeIterableMap;
import androidx.lifecycle.LiveData;
import androidx.room.InvalidationTracker;
import androidx.sqlite.p004db.SimpleSQLiteQuery;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import com.onyx.android.sdk.data.common.sync.SyncConstant;
import com.onyx.android.sdk.universal.editor.eventhandler.EventHandlerManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.Lock;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.apache.xmlbeans.impl.common.NameUtil;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000¶\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 \u0082\u00012\u00020\u0001:\n\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001BY\b\u0007\u0012\u0006\u0010\u0015\u001a\u00020>\u0012\u0012\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0B\u0012\u001d\u0010G\u001a\u0019\u0012\u0004\u0012\u00020\n\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\n0E¢\u0006\u0002\bF0B\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0005\b\u007f\u0010\u0080\u0001B&\b\u0017\u0012\u0006\u0010\u0015\u001a\u00020>\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\n¢\u0006\u0005\b\u007f\u0010\u0081\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0018\u0010\b\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J'\u0010\f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t2\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\f\u0010\rJ'\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t2\u000e\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0002H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u001b\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ'\u0010#\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u001fH\u0000¢\u0006\u0004\b!\u0010\"J\u000f\u0010%\u001a\u00020\u0006H\u0000¢\u0006\u0004\b$\u0010\u001aJ\u0010\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&H\u0017J\u0010\u0010)\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&H\u0017J\u0010\u0010*\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&H\u0017J\u000f\u0010.\u001a\u00020+H\u0000¢\u0006\u0004\b,\u0010-J\b\u0010/\u001a\u00020\u0006H\u0016J\b\u00100\u001a\u00020\u0006H\u0017J#\u00102\u001a\u00020\u00062\u0012\u00101\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t\"\u00020\nH\u0007¢\u0006\u0004\b2\u00103J\u0017\u00105\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0002H\u0000¢\u0006\u0004\b4\u0010\u0017J\u000f\u00105\u001a\u00020\u0006H\u0000¢\u0006\u0004\b4\u0010\u001aJ9\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009\"\u0004\b\u0000\u001062\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t2\f\u00108\u001a\b\u0012\u0004\u0012\u00028\u000007H\u0017¢\u0006\u0004\b:\u0010;JA\u0010:\u001a\b\u0012\u0004\u0012\u00028\u000009\"\u0004\b\u0000\u001062\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t2\u0006\u0010<\u001a\u00020+2\f\u00108\u001a\b\u0012\u0004\u0012\u00028\u000007H\u0017¢\u0006\u0004\b:\u0010=R\u001a\u0010\u0015\u001a\u00020>8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000f\u0010?\u001a\u0004\b@\u0010AR \u0010D\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010CR+\u0010G\u001a\u0019\u0012\u0004\u0012\u00020\n\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\n0E¢\u0006\u0002\bF0B8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010CR&\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00040B8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\f\u0010C\u001a\u0004\bH\u0010IR\"\u0010O\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bK\u0010L\u001a\u0004\bM\u0010NR\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u001a\u0010W\u001a\u00020R8GX\u0087\u0004¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u0016\u0010Z\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR$\u0010b\u001a\u0004\u0018\u00010[8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\\\u0010]\u001a\u0004\b^\u0010_\"\u0004\b`\u0010aR\u0014\u0010f\u001a\u00020c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bd\u0010eR\u0014\u0010j\u001a\u00020g8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bh\u0010iR&\u0010q\u001a\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020l0k8\u0000X\u0081\u0004¢\u0006\f\n\u0004\bm\u0010n\u001a\u0004\bo\u0010pR\u0018\u0010u\u001a\u0004\u0018\u00010r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0014\u0010x\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR\u0014\u0010z\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010wR\u001a\u0010|\u001a\u00020{8\u0006X\u0087\u0004¢\u0006\f\n\u0004\b|\u0010}\u0012\u0004\b~\u0010\u001a¨\u0006\u0087\u0001"}, m61528d2 = {"Landroidx/room/InvalidationTracker;", "", "Landroidx/sqlite/db/SupportSQLiteDatabase;", SyncConstant.LOCAL_DB_DIR_NAME, "", "tableId", "", "c", "b", "", "", "tableNames", "d", "([Ljava/lang/String;)[Ljava/lang/String;", "names", "a", "Landroidx/room/AutoCloser;", "autoCloser", "setAutoCloser$room_runtime_release", "(Landroidx/room/AutoCloser;)V", "setAutoCloser", "database", "internalInit$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V", "internalInit", "onAutoCloseCallback$room_runtime_release", "()V", "onAutoCloseCallback", "Landroid/content/Context;", "context", "name", "Landroid/content/Intent;", "serviceIntent", "startMultiInstanceInvalidation$room_runtime_release", "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V", "startMultiInstanceInvalidation", "stopMultiInstanceInvalidation$room_runtime_release", "stopMultiInstanceInvalidation", "Landroidx/room/InvalidationTracker$Observer;", EventHandlerManager.OBSERVER, "addObserver", "addWeakObserver", "removeObserver", "", "ensureInitialization$room_runtime_release", Constants.BOOLEAN_VALUE_SIG, "ensureInitialization", "refreshVersionsAsync", "refreshVersionsSync", XResourceBundle.LANG_NUM_TABLES, "notifyObserversByTableNames", "([Ljava/lang/String;)V", "syncTriggers$room_runtime_release", "syncTriggers", "T", "Ljava/util/concurrent/Callable;", "computeFunction", "Landroidx/lifecycle/LiveData;", "createLiveData", "([Ljava/lang/String;Ljava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "inTransaction", "([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;", "Landroidx/room/RoomDatabase;", "Landroidx/room/RoomDatabase;", "getDatabase$room_runtime_release", "()Landroidx/room/RoomDatabase;", "", "Ljava/util/Map;", "shadowTablesMap", "", "Lkotlin/jvm/JvmSuppressWildcards;", "viewTables", "getTableIdLookup$room_runtime_release", "()Ljava/util/Map;", "tableIdLookup", "e", "[Ljava/lang/String;", "getTablesNames$room_runtime_release", "()[Ljava/lang/String;", "tablesNames", C6997f.f39671c, "Landroidx/room/AutoCloser;", "Ljava/util/concurrent/atomic/AtomicBoolean;", C6998g.f39679a, "Ljava/util/concurrent/atomic/AtomicBoolean;", "getPendingRefresh", "()Ljava/util/concurrent/atomic/AtomicBoolean;", "pendingRefresh", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "initialized", "Landroidx/sqlite/db/SupportSQLiteStatement;", "i", "Landroidx/sqlite/db/SupportSQLiteStatement;", "getCleanupStatement$room_runtime_release", "()Landroidx/sqlite/db/SupportSQLiteStatement;", "setCleanupStatement$room_runtime_release", "(Landroidx/sqlite/db/SupportSQLiteStatement;)V", "cleanupStatement", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "j", "Landroidx/room/InvalidationTracker$ObservedTableTracker;", "observedTableTracker", "Landroidx/room/InvalidationLiveDataContainer;", C4921e.f26537n, "Landroidx/room/InvalidationLiveDataContainer;", "invalidationLiveDataContainer", "Landroidx/arch/core/internal/SafeIterableMap;", "Landroidx/room/InvalidationTracker$ObserverWrapper;", "l", "Landroidx/arch/core/internal/SafeIterableMap;", "getObserverMap$room_runtime_release", "()Landroidx/arch/core/internal/SafeIterableMap;", "observerMap", "Landroidx/room/MultiInstanceInvalidationClient;", "m", "Landroidx/room/MultiInstanceInvalidationClient;", "multiInstanceInvalidationClient", GoogleApiAvailabilityLight.f29016b, Constants.OBJECT_SIG, "syncTriggersLock", C4921e.f26528e, "trackerLock", "Ljava/lang/Runnable;", "refreshRunnable", "Ljava/lang/Runnable;", "getRefreshRunnable$annotations", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V", "(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V", "Companion", "ObservedTableTracker", "Observer", "ObserverWrapper", "WeakObserver", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class InvalidationTracker {

    @NotNull
    public static final String RESET_UPDATED_TABLES_SQL = "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1";

    @NotNull
    public static final String SELECT_UPDATED_TABLES_SQL = "SELECT * FROM room_table_modification_log WHERE invalidated = 1;";

    /* renamed from: q */
    @NotNull
    public static final String f10060q = "room_table_modification_log";

    /* renamed from: r */
    @NotNull
    public static final String f10061r = "table_id";

    /* renamed from: s */
    @NotNull
    public static final String f10062s = "invalidated";

    /* renamed from: t */
    @NotNull
    public static final String f10063t = "CREATE TEMP TABLE room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)";

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RoomDatabase database;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Map<String, String> shadowTablesMap;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Set<String>> viewTables;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final Map<String, Integer> tableIdLookup;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String[] tablesNames;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public AutoCloser autoCloser;

    /* renamed from: g, reason: from kotlin metadata */
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final AtomicBoolean pendingRefresh;

    /* renamed from: h, reason: from kotlin metadata */
    public volatile boolean initialized;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public volatile SupportSQLiteStatement cleanupStatement;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final ObservedTableTracker observedTableTracker;

    /* renamed from: k, reason: from kotlin metadata */
    @NotNull
    public final InvalidationLiveDataContainer invalidationLiveDataContainer;

    /* renamed from: l, reason: from kotlin metadata */
    @GuardedBy("observerMap")
    @NotNull
    public final SafeIterableMap<Observer, ObserverWrapper> observerMap;

    /* renamed from: m, reason: from kotlin metadata */
    @Nullable
    public MultiInstanceInvalidationClient multiInstanceInvalidationClient;

    /* renamed from: n, reason: from kotlin metadata */
    @NotNull
    public final Object syncTriggersLock;

    /* renamed from: o, reason: from kotlin metadata */
    @NotNull
    public final Object trackerLock;

    @JvmField
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final Runnable refreshRunnable;

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: p */
    @NotNull
    public static final String[] f10059p = {"UPDATE", "DELETE", "INSERT"};

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0015\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0000¢\u0006\u0002\b\u0013J\u001d\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0002R\u0016\u0010\b\u001a\u00020\u00048\u0000X\u0081T¢\u0006\b\n\u0000\u0012\u0004\b\t\u0010\u0002R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\fX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, m61528d2 = {"Landroidx/room/InvalidationTracker$Companion;", "", "()V", "CREATE_TRACKING_TABLE_SQL", "", "INVALIDATED_COLUMN_NAME", "RESET_UPDATED_TABLES_SQL", "getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations", "SELECT_UPDATED_TABLES_SQL", "getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations", "TABLE_ID_COLUMN_NAME", "TRIGGERS", "", "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "beginTransactionInternal", "", "database", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "beginTransactionInternal$room_runtime_release", "getTriggerName", "tableName", "triggerType", "getTriggerName$room_runtime_release", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @VisibleForTesting
        public static /* synthetic */ void getRESET_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        @VisibleForTesting
        public static /* synthetic */ void getSELECT_UPDATED_TABLES_SQL$room_runtime_release$annotations() {
        }

        public final void beginTransactionInternal$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
            Intrinsics.checkNotNullParameter(database, "database");
            if (database.isWriteAheadLoggingEnabled()) {
                database.beginTransactionNonExclusive();
            } else {
                database.beginTransaction();
            }
        }

        @NotNull
        public final String getTriggerName$room_runtime_release(@NotNull String tableName, @NotNull String triggerType) {
            Intrinsics.checkNotNullParameter(tableName, "tableName");
            Intrinsics.checkNotNullParameter(triggerType, "triggerType");
            return "`room_table_modification_trigger_" + tableName + NameUtil.USCORE + triggerType + '`';
        }

        public Companion() {
        }
    }

    @Metadata(m61527d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0015\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0016\n\u0002\b\u0005\n\u0002\u0010\u0018\n\u0002\b\u0012\b\u0000\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u000f\u0012\u0006\u0010\u001f\u001a\u00020\u0003¢\u0006\u0004\b \u0010!J\u0012\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00020\u0002\"\u00020\u0003J\u0012\u0010\u0007\u001a\u00020\u00052\n\u0010\u0004\u001a\u00020\u0002\"\u00020\u0003J\u0006\u0010\t\u001a\u00020\bJ\n\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0007R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\"\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006#"}, m61528d2 = {"Landroidx/room/InvalidationTracker$ObservedTableTracker;", "", "", "", "tableIds", "", "onAdded", "onRemoved", "", "resetTriggerState", "getTablesToSync", "", "a", "[J", "getTableObservers", "()[J", "tableObservers", "", "b", "[Z", "triggerStates", "c", Constants.TYPES_INDEX_SIG, "triggerStateChanges", "d", Constants.HASIDCALL_INDEX_SIG, "getNeedsSync", Constants.BOOLEAN_VALUE_SIG, "setNeedsSync", "(Z)V", "needsSync", "tableCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(I)V", "Companion", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class ObservedTableTracker {
        public static final int ADD = 1;
        public static final int NO_OP = 0;
        public static final int REMOVE = 2;

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final long[] tableObservers;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final boolean[] triggerStates;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final int[] triggerStateChanges;

        /* renamed from: d, reason: from kotlin metadata */
        public boolean needsSync;

        public ObservedTableTracker(int i) {
            this.tableObservers = new long[i];
            this.triggerStates = new boolean[i];
            this.triggerStateChanges = new int[i];
        }

        public final boolean getNeedsSync() {
            return this.needsSync;
        }

        @NotNull
        public final long[] getTableObservers() {
            return this.tableObservers;
        }

        @VisibleForTesting
        @JvmName(name = "getTablesToSync")
        @Nullable
        public final int[] getTablesToSync() {
            synchronized (this) {
                if (!this.needsSync) {
                    return null;
                }
                long[] jArr = this.tableObservers;
                int length = jArr.length;
                int i = 0;
                int i2 = 0;
                while (i < length) {
                    int i3 = i2 + 1;
                    int i4 = 1;
                    boolean z = jArr[i] > 0;
                    boolean[] zArr = this.triggerStates;
                    if (z != zArr[i2]) {
                        int[] iArr = this.triggerStateChanges;
                        if (!z) {
                            i4 = 2;
                        }
                        iArr[i2] = i4;
                    } else {
                        this.triggerStateChanges[i2] = 0;
                    }
                    zArr[i2] = z;
                    i++;
                    i2 = i3;
                }
                this.needsSync = false;
                return (int[]) this.triggerStateChanges.clone();
            }
        }

        public final boolean onAdded(@NotNull int... tableIds) {
            boolean z;
            Intrinsics.checkNotNullParameter(tableIds, "tableIds");
            synchronized (this) {
                z = false;
                for (int i : tableIds) {
                    long[] jArr = this.tableObservers;
                    long j = jArr[i];
                    jArr[i] = 1 + j;
                    if (j == 0) {
                        z = true;
                        this.needsSync = true;
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            return z;
        }

        public final boolean onRemoved(@NotNull int... tableIds) {
            boolean z;
            Intrinsics.checkNotNullParameter(tableIds, "tableIds");
            synchronized (this) {
                z = false;
                for (int i : tableIds) {
                    long[] jArr = this.tableObservers;
                    long j = jArr[i];
                    jArr[i] = j - 1;
                    if (j == 1) {
                        z = true;
                        this.needsSync = true;
                    }
                }
                Unit unit = Unit.INSTANCE;
            }
            return z;
        }

        public final void resetTriggerState() {
            synchronized (this) {
                Arrays.fill(this.triggerStates, false);
                this.needsSync = true;
                Unit unit = Unit.INSTANCE;
            }
        }

        public final void setNeedsSync(boolean z) {
            this.needsSync = z;
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\t\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0007¢\u0006\u0004\b\u0010\u0010\u0011B%\b\u0014\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u0012\u0012\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0007\"\u00020\u0003¢\u0006\u0004\b\u0010\u0010\u0014J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H&R\"\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00078\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u000f\u001a\u00020\f8PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0015"}, m61528d2 = {"Landroidx/room/InvalidationTracker$Observer;", "", "", "", XResourceBundle.LANG_NUM_TABLES, "", "onInvalidated", "", "a", "[Ljava/lang/String;", "getTables$room_runtime_release", "()[Ljava/lang/String;", "", "isRemote$room_runtime_release", Constants.BOOLEAN_VALUE_SIG, "isRemote", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "([Ljava/lang/String;)V", "firstTable", "rest", "(Ljava/lang/String;[Ljava/lang/String;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static abstract class Observer {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String[] tables;

        public Observer(@NotNull String[] tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            this.tables = tables;
        }

        @NotNull
        /* renamed from: getTables$room_runtime_release, reason: from getter */
        public final String[] getTables() {
            return this.tables;
        }

        public boolean isRemote$room_runtime_release() {
            return false;
        }

        public abstract void onInvalidated(@NotNull Set<String> tables);

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public Observer(@org.jetbrains.annotations.NotNull java.lang.String r3, @org.jetbrains.annotations.NotNull java.lang.String... r4) {
            /*
                r2 = this;
                java.lang.String r0 = "firstTable"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "rest"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.util.List r0 = kotlin.collections.CollectionsKt.createListBuilder()
                r1 = r0
                java.util.Collection r1 = (java.util.Collection) r1
                kotlin.collections.CollectionsKt.addAll(r1, r4)
                r0.add(r3)
                java.util.List r3 = kotlin.collections.CollectionsKt.build(r0)
                java.util.Collection r3 = (java.util.Collection) r3
                r4 = 0
                java.lang.String[] r4 = new java.lang.String[r4]
                java.lang.Object[] r3 = r3.toArray(r4)
                java.lang.String r4 = "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"
                kotlin.jvm.internal.Intrinsics.checkNotNull(r3, r4)
                java.lang.String[] r3 = (java.lang.String[]) r3
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker.Observer.<init>(java.lang.String, java.lang.String[]):void");
        }
    }

    @Metadata(m61527d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0014\u001a\u00020\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u000e\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t¢\u0006\u0004\b!\u0010\"J\u001f\u0010\b\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000e\u001a\u00020\u00052\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\tH\u0000¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0014\u001a\u00020\u000f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001a\u0010\u001a\u001a\u00020\u00158\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001c\u0010\u001d\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u001a\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Landroidx/room/InvalidationTracker$ObserverWrapper;", "", "", "", "invalidatedTablesIds", "", "notifyByTableInvalidStatus$room_runtime_release", "(Ljava/util/Set;)V", "notifyByTableInvalidStatus", "", "", XResourceBundle.LANG_NUM_TABLES, "notifyByTableNames$room_runtime_release", "([Ljava/lang/String;)V", "notifyByTableNames", "Landroidx/room/InvalidationTracker$Observer;", "a", "Landroidx/room/InvalidationTracker$Observer;", "getObserver$room_runtime_release", "()Landroidx/room/InvalidationTracker$Observer;", EventHandlerManager.OBSERVER, "", "b", Constants.TYPES_INDEX_SIG, "getTableIds$room_runtime_release", "()[I", "tableIds", "c", "[Ljava/lang/String;", "tableNames", "d", "Ljava/util/Set;", "singleTableSet", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class ObserverWrapper {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final Observer observer;

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final int[] tableIds;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final String[] tableNames;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public final Set<String> singleTableSet;

        public ObserverWrapper(@NotNull Observer observer, @NotNull int[] tableIds, @NotNull String[] tableNames) {
            Intrinsics.checkNotNullParameter(observer, "observer");
            Intrinsics.checkNotNullParameter(tableIds, "tableIds");
            Intrinsics.checkNotNullParameter(tableNames, "tableNames");
            this.observer = observer;
            this.tableIds = tableIds;
            this.tableNames = tableNames;
            this.singleTableSet = (tableNames.length == 0) ^ true ? SetsKt__SetsJVMKt.setOf(tableNames[0]) : SetsKt__SetsKt.emptySet();
            if (!(tableIds.length == tableNames.length)) {
                throw new IllegalStateException("Check failed.".toString());
            }
        }

        @NotNull
        /* renamed from: getObserver$room_runtime_release, reason: from getter */
        public final Observer getObserver() {
            return this.observer;
        }

        @NotNull
        /* renamed from: getTableIds$room_runtime_release, reason: from getter */
        public final int[] getTableIds() {
            return this.tableIds;
        }

        public final void notifyByTableInvalidStatus$room_runtime_release(@NotNull Set<Integer> invalidatedTablesIds) {
            Set<String> emptySet;
            Set createSetBuilder;
            Intrinsics.checkNotNullParameter(invalidatedTablesIds, "invalidatedTablesIds");
            int[] iArr = this.tableIds;
            int length = iArr.length;
            if (length != 0) {
                int i = 0;
                if (length != 1) {
                    createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
                    int[] iArr2 = this.tableIds;
                    int length2 = iArr2.length;
                    int i2 = 0;
                    while (i < length2) {
                        int i3 = i2 + 1;
                        if (invalidatedTablesIds.contains(Integer.valueOf(iArr2[i]))) {
                            createSetBuilder.add(this.tableNames[i2]);
                        }
                        i++;
                        i2 = i3;
                    }
                    emptySet = SetsKt__SetsJVMKt.build(createSetBuilder);
                } else {
                    emptySet = invalidatedTablesIds.contains(Integer.valueOf(iArr[0])) ? this.singleTableSet : SetsKt__SetsKt.emptySet();
                }
            } else {
                emptySet = SetsKt__SetsKt.emptySet();
            }
            if (!emptySet.isEmpty()) {
                this.observer.onInvalidated(emptySet);
            }
        }

        public final void notifyByTableNames$room_runtime_release(@NotNull String[] tables) {
            Set<String> emptySet;
            boolean equals;
            Set createSetBuilder;
            boolean equals2;
            Intrinsics.checkNotNullParameter(tables, "tables");
            int length = this.tableNames.length;
            if (length != 0) {
                boolean z = false;
                if (length != 1) {
                    createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
                    for (String str : tables) {
                        for (String str2 : this.tableNames) {
                            equals2 = StringsKt__StringsJVMKt.equals(str2, str, true);
                            if (equals2) {
                                createSetBuilder.add(str2);
                            }
                        }
                    }
                    emptySet = SetsKt__SetsJVMKt.build(createSetBuilder);
                } else {
                    int length2 = tables.length;
                    int i = 0;
                    while (true) {
                        if (i >= length2) {
                            break;
                        }
                        equals = StringsKt__StringsJVMKt.equals(tables[i], this.tableNames[0], true);
                        if (equals) {
                            z = true;
                            break;
                        }
                        i++;
                    }
                    emptySet = z ? this.singleTableSet : SetsKt__SetsKt.emptySet();
                }
            } else {
                emptySet = SetsKt__SetsKt.emptySet();
            }
            if (!emptySet.isEmpty()) {
                this.observer.onInvalidated(emptySet);
            }
        }
    }

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0013\u001a\u00020\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0016\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0017\u0010\f\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0016"}, m61528d2 = {"Landroidx/room/InvalidationTracker$WeakObserver;", "Landroidx/room/InvalidationTracker$Observer;", "", "", XResourceBundle.LANG_NUM_TABLES, "", "onInvalidated", "Landroidx/room/InvalidationTracker;", "b", "Landroidx/room/InvalidationTracker;", "getTracker", "()Landroidx/room/InvalidationTracker;", "tracker", "Ljava/lang/ref/WeakReference;", "c", "Ljava/lang/ref/WeakReference;", "getDelegateRef", "()Ljava/lang/ref/WeakReference;", "delegateRef", "delegate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class WeakObserver extends Observer {

        /* renamed from: b, reason: from kotlin metadata */
        @NotNull
        public final InvalidationTracker tracker;

        /* renamed from: c, reason: from kotlin metadata */
        @NotNull
        public final WeakReference<Observer> delegateRef;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WeakObserver(@NotNull InvalidationTracker tracker, @NotNull Observer delegate) {
            super(delegate.getTables());
            Intrinsics.checkNotNullParameter(tracker, "tracker");
            Intrinsics.checkNotNullParameter(delegate, "delegate");
            this.tracker = tracker;
            this.delegateRef = new WeakReference<>(delegate);
        }

        @NotNull
        public final WeakReference<Observer> getDelegateRef() {
            return this.delegateRef;
        }

        @NotNull
        public final InvalidationTracker getTracker() {
            return this.tracker;
        }

        @Override // androidx.room.InvalidationTracker.Observer
        public void onInvalidated(@NotNull Set<String> tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            Observer observer = this.delegateRef.get();
            if (observer == null) {
                this.tracker.removeObserver(this);
            } else {
                observer.onInvalidated(tables);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public InvalidationTracker(@NotNull RoomDatabase database, @NotNull Map<String, String> shadowTablesMap, @NotNull Map<String, Set<String>> viewTables, @NotNull String... tableNames) {
        Object value;
        String str;
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.pendingRefresh = new AtomicBoolean(false);
        this.observedTableTracker = new ObservedTableTracker(tableNames.length);
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        this.observerMap = new SafeIterableMap<>();
        this.syncTriggersLock = new Object();
        this.trackerLock = new Object();
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            String str2 = tableNames[i];
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str2.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            this.tableIdLookup.put(lowerCase, Integer.valueOf(i));
            String str3 = this.shadowTablesMap.get(tableNames[i]);
            if (str3 != null) {
                Intrinsics.checkNotNullExpressionValue(US, "US");
                str = str3.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(str, "this as java.lang.String).toLowerCase(locale)");
            } else {
                str = null;
            }
            if (str != null) {
                lowerCase = str;
            }
            strArr[i] = lowerCase;
        }
        this.tablesNames = strArr;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value2 = entry.getValue();
            Locale US2 = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US2, "US");
            String lowerCase2 = value2.toLowerCase(US2);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
            if (this.tableIdLookup.containsKey(lowerCase2)) {
                String key = entry.getKey();
                Intrinsics.checkNotNullExpressionValue(US2, "US");
                String lowerCase3 = key.toLowerCase(US2);
                Intrinsics.checkNotNullExpressionValue(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
                Map<String, Integer> map = this.tableIdLookup;
                value = MapsKt__MapsKt.getValue(map, lowerCase2);
                map.put(lowerCase3, value);
            }
        }
        this.refreshRunnable = new Runnable() { // from class: androidx.room.InvalidationTracker$refreshRunnable$1
            /* renamed from: a */
            public final Set<Integer> m6298a() {
                Set createSetBuilder;
                Set<Integer> build;
                InvalidationTracker invalidationTracker = InvalidationTracker.this;
                createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
                Cursor query$default = RoomDatabase.query$default(invalidationTracker.getDatabase(), new SimpleSQLiteQuery(InvalidationTracker.SELECT_UPDATED_TABLES_SQL), null, 2, null);
                try {
                    Cursor cursor = query$default;
                    while (cursor.moveToNext()) {
                        createSetBuilder.add(Integer.valueOf(cursor.getInt(0)));
                    }
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(query$default, null);
                    build = SetsKt__SetsJVMKt.build(createSetBuilder);
                    if (!build.isEmpty()) {
                        if (InvalidationTracker.this.getCleanupStatement() == null) {
                            throw new IllegalStateException("Required value was null.".toString());
                        }
                        SupportSQLiteStatement cleanupStatement = InvalidationTracker.this.getCleanupStatement();
                        if (cleanupStatement == null) {
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        cleanupStatement.executeUpdateDelete();
                    }
                    return build;
                } finally {
                }
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x0080, code lost:
            
                if (r0 != null) goto L26;
             */
            /* JADX WARN: Code restructure failed: missing block: B:31:0x0082, code lost:
            
                r0.decrementCountAndScheduleClose();
             */
            /* JADX WARN: Code restructure failed: missing block: B:33:0x00c2, code lost:
            
                if ((!r3.isEmpty()) == false) goto L56;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00c4, code lost:
            
                r0 = r5.f10090e.getObserverMap$room_runtime_release();
                r5 = r5.f10090e;
             */
            /* JADX WARN: Code restructure failed: missing block: B:35:0x00cc, code lost:
            
                monitor-enter(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:37:0x00cd, code lost:
            
                r5 = r5.getObserverMap$room_runtime_release().iterator();
             */
            /* JADX WARN: Code restructure failed: missing block: B:39:0x00d9, code lost:
            
                if (r5.hasNext() == false) goto L66;
             */
            /* JADX WARN: Code restructure failed: missing block: B:40:0x00db, code lost:
            
                ((androidx.room.InvalidationTracker.ObserverWrapper) ((java.util.Map.Entry) r5.next()).getValue()).notifyByTableInvalidStatus$room_runtime_release(r3);
             */
            /* JADX WARN: Code restructure failed: missing block: B:42:0x00eb, code lost:
            
                r5 = kotlin.Unit.INSTANCE;
             */
            /* JADX WARN: Code restructure failed: missing block: B:43:0x00ed, code lost:
            
                monitor-exit(r0);
             */
            /* JADX WARN: Code restructure failed: missing block: B:44:?, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:48:0x00f2, code lost:
            
                return;
             */
            /* JADX WARN: Code restructure failed: missing block: B:61:0x00a2, code lost:
            
                if (r0 == null) goto L42;
             */
            /* JADX WARN: Code restructure failed: missing block: B:65:0x00ba, code lost:
            
                if (r0 == null) goto L42;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void run() {
                /*
                    Method dump skipped, instructions count: 258
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker$refreshRunnable$1.run():void");
            }
        };
    }

    @VisibleForTesting
    public static /* synthetic */ void getRefreshRunnable$annotations() {
    }

    /* renamed from: a */
    public final String[] m6294a(String[] names) {
        Set createSetBuilder;
        Set build;
        createSetBuilder = SetsKt__SetsJVMKt.createSetBuilder();
        for (String str : names) {
            Map<String, Set<String>> map = this.viewTables;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (map.containsKey(lowerCase)) {
                Map<String, Set<String>> map2 = this.viewTables;
                Intrinsics.checkNotNullExpressionValue(US, "US");
                String lowerCase2 = str.toLowerCase(US);
                Intrinsics.checkNotNullExpressionValue(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                Set<String> set = map2.get(lowerCase2);
                Intrinsics.checkNotNull(set);
                createSetBuilder.addAll(set);
            } else {
                createSetBuilder.add(str);
            }
        }
        build = SetsKt__SetsJVMKt.build(createSetBuilder);
        Object[] array = build.toArray(new String[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return (String[]) array;
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void addObserver(@NotNull Observer observer) {
        int[] intArray;
        ObserverWrapper putIfAbsent;
        Intrinsics.checkNotNullParameter(observer, "observer");
        String[] m6294a = m6294a(observer.getTables());
        ArrayList arrayList = new ArrayList(m6294a.length);
        for (String str : m6294a) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            Integer num = map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            arrayList.add(Integer.valueOf(num.intValue()));
        }
        intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, intArray, m6294a);
        synchronized (this.observerMap) {
            putIfAbsent = this.observerMap.putIfAbsent(observer, observerWrapper);
        }
        if (putIfAbsent == null && this.observedTableTracker.onAdded(Arrays.copyOf(intArray, intArray.length))) {
            syncTriggers$room_runtime_release();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void addWeakObserver(@NotNull Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        addObserver(new WeakObserver(this, observer));
    }

    /* renamed from: b */
    public final void m6295b(SupportSQLiteDatabase db, int tableId) {
        db.execSQL("INSERT OR IGNORE INTO room_table_modification_log VALUES(" + tableId + ", 0)");
        String str = this.tablesNames[tableId];
        for (String str2 : f10059p) {
            String str3 = "CREATE TEMP TRIGGER IF NOT EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2) + " AFTER " + str2 + " ON `" + str + "` BEGIN UPDATE " + f10060q + " SET " + f10062s + " = 1 WHERE " + f10061r + CloudStorageConstants.OPERATION_EQUAL + tableId + " AND " + f10062s + " = 0; END";
            Intrinsics.checkNotNullExpressionValue(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    /* renamed from: c */
    public final void m6296c(SupportSQLiteDatabase db, int tableId) {
        String str = this.tablesNames[tableId];
        for (String str2 : f10059p) {
            String str3 = "DROP TRIGGER IF EXISTS " + INSTANCE.getTriggerName$room_runtime_release(str, str2);
            Intrinsics.checkNotNullExpressionValue(str3, "StringBuilder().apply(builderAction).toString()");
            db.execSQL(str3);
        }
    }

    @Deprecated(message = "Use [createLiveData(String[], boolean, Callable)]")
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, @NotNull Callable<T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        return createLiveData(tableNames, false, computeFunction);
    }

    /* renamed from: d */
    public final String[] m6297d(String[] tableNames) {
        String[] m6294a = m6294a(tableNames);
        for (String str : m6294a) {
            Map<String, Integer> map = this.tableIdLookup;
            Locale US = Locale.US;
            Intrinsics.checkNotNullExpressionValue(US, "US");
            String lowerCase = str.toLowerCase(US);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            if (!map.containsKey(lowerCase)) {
                throw new IllegalArgumentException(("There is no table with name " + str).toString());
            }
        }
        return m6294a;
    }

    public final boolean ensureInitialization$room_runtime_release() {
        if (!this.database.isOpen()) {
            return false;
        }
        if (!this.initialized) {
            this.database.getOpenHelper().getWritableDatabase();
        }
        if (this.initialized) {
            return true;
        }
        Log.e(Room.LOG_TAG, "database is not initialized even though it is open");
        return false;
    }

    @Nullable
    /* renamed from: getCleanupStatement$room_runtime_release, reason: from getter */
    public final SupportSQLiteStatement getCleanupStatement() {
        return this.cleanupStatement;
    }

    @NotNull
    /* renamed from: getDatabase$room_runtime_release, reason: from getter */
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    @NotNull
    public final SafeIterableMap<Observer, ObserverWrapper> getObserverMap$room_runtime_release() {
        return this.observerMap;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final AtomicBoolean getPendingRefresh() {
        return this.pendingRefresh;
    }

    @NotNull
    public final Map<String, Integer> getTableIdLookup$room_runtime_release() {
        return this.tableIdLookup;
    }

    @NotNull
    /* renamed from: getTablesNames$room_runtime_release, reason: from getter */
    public final String[] getTablesNames() {
        return this.tablesNames;
    }

    public final void internalInit$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        synchronized (this.trackerLock) {
            if (this.initialized) {
                Log.e(Room.LOG_TAG, "Invalidation tracker is initialized twice :/.");
                return;
            }
            database.execSQL("PRAGMA temp_store = MEMORY;");
            database.execSQL("PRAGMA recursive_triggers='ON';");
            database.execSQL(f10063t);
            syncTriggers$room_runtime_release(database);
            this.cleanupStatement = database.compileStatement(RESET_UPDATED_TABLES_SQL);
            this.initialized = true;
            Unit unit = Unit.INSTANCE;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @VisibleForTesting(otherwise = 3)
    public final void notifyObserversByTableNames(@NotNull String... tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        synchronized (this.observerMap) {
            Iterator<Map.Entry<K, V>> it2 = this.observerMap.iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                Intrinsics.checkNotNullExpressionValue(entry, "(observer, wrapper)");
                Observer observer = (Observer) entry.getKey();
                ObserverWrapper observerWrapper = (ObserverWrapper) entry.getValue();
                if (!observer.isRemote$room_runtime_release()) {
                    observerWrapper.notifyByTableNames$room_runtime_release(tables);
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void onAutoCloseCallback$room_runtime_release() {
        synchronized (this.trackerLock) {
            this.initialized = false;
            this.observedTableTracker.resetTriggerState();
            Unit unit = Unit.INSTANCE;
        }
    }

    public void refreshVersionsAsync() {
        if (this.pendingRefresh.compareAndSet(false, true)) {
            AutoCloser autoCloser = this.autoCloser;
            if (autoCloser != null) {
                autoCloser.incrementCountAndEnsureDbIsOpen();
            }
            this.database.getQueryExecutor().execute(this.refreshRunnable);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @WorkerThread
    public void refreshVersionsSync() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        syncTriggers$room_runtime_release();
        this.refreshRunnable.run();
    }

    @SuppressLint({"RestrictedApi"})
    @WorkerThread
    public void removeObserver(@NotNull Observer observer) {
        ObserverWrapper remove;
        Intrinsics.checkNotNullParameter(observer, "observer");
        synchronized (this.observerMap) {
            remove = this.observerMap.remove(observer);
        }
        if (remove != null) {
            ObservedTableTracker observedTableTracker = this.observedTableTracker;
            int[] tableIds = remove.getTableIds();
            if (observedTableTracker.onRemoved(Arrays.copyOf(tableIds, tableIds.length))) {
                syncTriggers$room_runtime_release();
            }
        }
    }

    public final void setAutoCloser$room_runtime_release(@NotNull AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new Runnable() { // from class: com.sunia.HTREnginev2.opi
            @Override // java.lang.Runnable
            public final void run() {
                InvalidationTracker.this.onAutoCloseCallback$room_runtime_release();
            }
        });
    }

    public final void setCleanupStatement$room_runtime_release(@Nullable SupportSQLiteStatement supportSQLiteStatement) {
        this.cleanupStatement = supportSQLiteStatement;
    }

    public final void startMultiInstanceInvalidation$room_runtime_release(@NotNull Context context, @NotNull String name, @NotNull Intent serviceIntent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, serviceIntent, this, this.database.getQueryExecutor());
    }

    public final void stopMultiInstanceInvalidation$room_runtime_release() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
        this.multiInstanceInvalidationClient = null;
    }

    public final void syncTriggers$room_runtime_release(@NotNull SupportSQLiteDatabase database) {
        Intrinsics.checkNotNullParameter(database, "database");
        if (database.inTransaction()) {
            return;
        }
        try {
            Lock closeLock$room_runtime_release = this.database.getCloseLock$room_runtime_release();
            closeLock$room_runtime_release.lock();
            try {
                synchronized (this.syncTriggersLock) {
                    int[] tablesToSync = this.observedTableTracker.getTablesToSync();
                    if (tablesToSync == null) {
                        return;
                    }
                    INSTANCE.beginTransactionInternal$room_runtime_release(database);
                    try {
                        int length = tablesToSync.length;
                        int i = 0;
                        int i2 = 0;
                        while (i < length) {
                            int i3 = tablesToSync[i];
                            int i4 = i2 + 1;
                            if (i3 == 1) {
                                m6295b(database, i2);
                            } else if (i3 == 2) {
                                m6296c(database, i2);
                            }
                            i++;
                            i2 = i4;
                        }
                        database.setTransactionSuccessful();
                        database.endTransaction();
                        Unit unit = Unit.INSTANCE;
                    } catch (Throwable th) {
                        database.endTransaction();
                        throw th;
                    }
                }
            } finally {
                closeLock$room_runtime_release.unlock();
            }
        } catch (SQLiteException e) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e);
        } catch (IllegalStateException e2) {
            Log.e(Room.LOG_TAG, "Cannot run invalidation tracker. Is the db closed?", e2);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    @NotNull
    public <T> LiveData<T> createLiveData(@NotNull String[] tableNames, boolean inTransaction, @NotNull Callable<T> computeFunction) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(computeFunction, "computeFunction");
        return this.invalidationLiveDataContainer.create(m6297d(tableNames), inTransaction, computeFunction);
    }

    public final void syncTriggers$room_runtime_release() {
        if (this.database.isOpen()) {
            syncTriggers$room_runtime_release(this.database.getOpenHelper().getWritableDatabase());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @androidx.annotation.RestrictTo({androidx.annotation.RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public InvalidationTracker(@org.jetbrains.annotations.NotNull androidx.room.RoomDatabase r4, @org.jetbrains.annotations.NotNull java.lang.String... r5) {
        /*
            r3 = this;
            java.lang.String r0 = "database"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
            java.lang.String r0 = "tableNames"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.util.Map r0 = kotlin.collections.MapsKt.emptyMap()
            java.util.Map r1 = kotlin.collections.MapsKt.emptyMap()
            int r2 = r5.length
            java.lang.Object[] r5 = java.util.Arrays.copyOf(r5, r2)
            java.lang.String[] r5 = (java.lang.String[]) r5
            r3.<init>(r4, r0, r1, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.InvalidationTracker.<init>(androidx.room.RoomDatabase, java.lang.String[]):void");
    }
}
