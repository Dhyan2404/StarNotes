package androidx.room;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import androidx.lifecycle.SavedStateHandle;
import androidx.room.QueryInterceptorDatabase;
import androidx.room.RoomDatabase;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import androidx.sqlite.p004db.SupportSQLiteQuery;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import com.google.android.gms.actions.SearchIntents;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.onyx.android.sdk.hwr.data.bean.HWRGestureWithContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001c\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010<\u001a\u00020\u0001\u0012\u0006\u0010@\u001a\u00020=\u0012\u0006\u0010D\u001a\u00020A¢\u0006\u0004\b`\u0010aJ\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0001J6\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0012\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007H\u0096\u0001¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\r\u001a\u00020\u0002H\u0097\u0001J\t\u0010\u000f\u001a\u00020\u000eH\u0096\u0001J.\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00042\u0014\b\u0001\u0010\u0011\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007H\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0014\u001a\u00020\u000eH\u0096\u0001J!\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u0016H\u0096\u0001J\u0011\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\nH\u0096\u0001J\u0011\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u000eH\u0097\u0001J\u0011\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001eH\u0096\u0001J\u0011\u0010\"\u001a\u00020\u00022\u0006\u0010!\u001a\u00020\nH\u0096\u0001J\u0011\u0010$\u001a\u00020\u00182\u0006\u0010#\u001a\u00020\u0018H\u0096\u0001JF\u0010%\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0017\u001a\u00020\u00162\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0012\u0010\t\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b\u0018\u00010\u0007H\u0096\u0001¢\u0006\u0004\b%\u0010&J\t\u0010'\u001a\u00020\u000eH\u0096\u0001J\u0011\u0010'\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\u0018H\u0096\u0001J\u0010\u0010*\u001a\u00020)2\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\b\u0010+\u001a\u00020\u0002H\u0016J\b\u0010,\u001a\u00020\u0002H\u0016J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0016J\u0010\u00100\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0016J\b\u00101\u001a\u00020\u0002H\u0016J\b\u00102\u001a\u00020\u0002H\u0016J\u0010\u00103\u001a\u0002042\u0006\u00103\u001a\u00020\u0004H\u0016J)\u00103\u001a\u0002042\u0006\u00103\u001a\u00020\u00042\u0010\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0007H\u0016¢\u0006\u0004\b3\u00105J\u0010\u00103\u001a\u0002042\u0006\u00103\u001a\u000206H\u0016J\u001a\u00103\u001a\u0002042\u0006\u00103\u001a\u0002062\b\u00108\u001a\u0004\u0018\u000107H\u0016J\u0010\u00109\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J)\u00109\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00042\u0010\u0010\u0011\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\b0\u0007H\u0016¢\u0006\u0004\b9\u0010\u0013R\u0014\u0010<\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b:\u0010;R\u0014\u0010@\u001a\u00020=8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR(\u0010I\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040F\u0018\u00010E8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\bG\u0010HR\u0014\u0010J\u001a\u00020\u000e8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bJ\u0010KR\u0014\u0010L\u001a\u00020\u000e8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bL\u0010KR\u0014\u0010M\u001a\u00020\u000e8VX\u0096\u0005¢\u0006\u0006\u001a\u0004\bM\u0010KR\u0014\u0010N\u001a\u00020\u000e8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bN\u0010KR\u0014\u0010O\u001a\u00020\u000e8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bO\u0010KR\u0014\u0010P\u001a\u00020\u000e8WX\u0096\u0005¢\u0006\u0006\u001a\u0004\bP\u0010KR\u0014\u0010S\u001a\u00020\u00188\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bQ\u0010RR\u001c\u0010W\u001a\u00020\u00188\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bT\u0010R\"\u0004\bU\u0010VR\u0016\u0010Z\u001a\u0004\u0018\u00010\u00048\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bX\u0010YR\u001c\u0010_\u001a\u00020\n8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^¨\u0006b"}, m61528d2 = {"Landroidx/room/QueryInterceptorDatabase;", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "", "close", "", "table", "whereClause", "", "", "whereArgs", "", "delete", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I", "disableWriteAheadLogging", "", "enableWriteAheadLogging", "sql", "bindArgs", "execPerConnectionSQL", "(Ljava/lang/String;[Ljava/lang/Object;)V", "inTransaction", "conflictAlgorithm", "Landroid/content/ContentValues;", SavedStateHandle.f7922f, "", HWRGestureWithContext.GESTURE_INSERT, "newVersion", "needUpgrade", "enabled", "setForeignKeyConstraintsEnabled", Constants.LOCALE_SIG, "locale", "setLocale", "cacheSize", "setMaxSqlCacheSize", "numBytes", "setMaximumSize", "update", "(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)I", "yieldIfContendedSafely", "sleepAfterYieldDelayMillis", "Landroidx/sqlite/db/SupportSQLiteStatement;", "compileStatement", "beginTransaction", "beginTransactionNonExclusive", "Landroid/database/sqlite/SQLiteTransactionListener;", "transactionListener", "beginTransactionWithListener", "beginTransactionWithListenerNonExclusive", "endTransaction", "setTransactionSuccessful", SearchIntents.EXTRA_QUERY, "Landroid/database/Cursor;", "(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroid/os/CancellationSignal;", "cancellationSignal", "execSQL", "e", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "delegate", "Ljava/util/concurrent/Executor;", C6997f.f39671c, "Ljava/util/concurrent/Executor;", "queryCallbackExecutor", "Landroidx/room/RoomDatabase$QueryCallback;", C6998g.f39679a, "Landroidx/room/RoomDatabase$QueryCallback;", "queryCallback", "", "Landroid/util/Pair;", "getAttachedDbs", "()Ljava/util/List;", "attachedDbs", "isDatabaseIntegrityOk", Constants.BOOLEAN_VALUE_SIG, "isDbLockedByCurrentThread", "isExecPerConnectionSQLSupported", "isOpen", "isReadOnly", "isWriteAheadLoggingEnabled", "getMaximumSize", "()J", "maximumSize", "getPageSize", "setPageSize", "(J)V", "pageSize", "getPath", "()Ljava/lang/String;", "path", "getVersion", "()I", "setVersion", "(I)V", "version", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final SupportSQLiteDatabase delegate;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final Executor queryCallbackExecutor;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final RoomDatabase.QueryCallback queryCallback;

    public QueryInterceptorDatabase(@NotNull SupportSQLiteDatabase delegate, @NotNull Executor queryCallbackExecutor, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(queryCallbackExecutor, "queryCallbackExecutor");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.queryCallbackExecutor = queryCallbackExecutor;
        this.queryCallback = queryCallback;
    }

    /* renamed from: k0 */
    public static final void m6316k0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", emptyList);
    }

    /* renamed from: l0 */
    public static final void m6317l0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("BEGIN DEFERRED TRANSACTION", emptyList);
    }

    /* renamed from: m0 */
    public static final void m6318m0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", emptyList);
    }

    /* renamed from: n0 */
    public static final void m6319n0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("BEGIN DEFERRED TRANSACTION", emptyList);
    }

    /* renamed from: o0 */
    public static final void m6320o0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("END TRANSACTION", emptyList);
    }

    /* renamed from: p0 */
    public static final void m6321p0(QueryInterceptorDatabase this$0, String sql) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sql, "$sql");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery(sql, emptyList);
    }

    /* renamed from: q0 */
    public static final void m6322q0(QueryInterceptorDatabase this$0, String sql, List inputArguments) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(sql, "$sql");
        Intrinsics.checkNotNullParameter(inputArguments, "$inputArguments");
        this$0.queryCallback.onQuery(sql, inputArguments);
    }

    /* renamed from: r0 */
    public static final void m6323r0(QueryInterceptorDatabase this$0, String query) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery(query, emptyList);
    }

    /* renamed from: s0 */
    public static final void m6324s0(QueryInterceptorDatabase this$0, String query, Object[] bindArgs) {
        List<? extends Object> list;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(bindArgs, "$bindArgs");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        list = ArraysKt___ArraysKt.toList(bindArgs);
        queryCallback.onQuery(query, list);
    }

    /* renamed from: t0 */
    public static final void m6325t0(QueryInterceptorDatabase this$0, SupportSQLiteQuery query, QueryInterceptorProgram queryInterceptorProgram) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(queryInterceptorProgram, "$queryInterceptorProgram");
        this$0.queryCallback.onQuery(query.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    /* renamed from: u0 */
    public static final void m6326u0(QueryInterceptorDatabase this$0, SupportSQLiteQuery query, QueryInterceptorProgram queryInterceptorProgram) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(query, "$query");
        Intrinsics.checkNotNullParameter(queryInterceptorProgram, "$queryInterceptorProgram");
        this$0.queryCallback.onQuery(query.getQuery(), queryInterceptorProgram.getBindArgsCache$room_runtime_release());
    }

    /* renamed from: v0 */
    public static final void m6327v0(QueryInterceptorDatabase this$0) {
        List<? extends Object> emptyList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        RoomDatabase.QueryCallback queryCallback = this$0.queryCallback;
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        queryCallback.onQuery("TRANSACTION SUCCESSFUL", emptyList);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void beginTransaction() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.val
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6316k0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.beginTransaction();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void beginTransactionNonExclusive() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.nal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6317l0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.beginTransactionNonExclusive();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void beginTransactionWithListener(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.pal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6318m0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.beginTransactionWithListener(transactionListener);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void beginTransactionWithListenerNonExclusive(@NotNull SQLiteTransactionListener transactionListener) {
        Intrinsics.checkNotNullParameter(transactionListener, "transactionListener");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.tal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6319n0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @NotNull
    public SupportSQLiteStatement compileStatement(@NotNull String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        return new QueryInterceptorStatement(this.delegate.compileStatement(sql), sql, this.queryCallbackExecutor, this.queryCallback);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public int delete(@NotNull String table, @Nullable String whereClause, @Nullable Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, "table");
        return this.delegate.delete(table, whereClause, whereArgs);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public void disableWriteAheadLogging() {
        this.delegate.disableWriteAheadLogging();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean enableWriteAheadLogging() {
        return this.delegate.enableWriteAheadLogging();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void endTransaction() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.xal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6320o0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.endTransaction();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void execPerConnectionSQL(@NotNull String sql, @SuppressLint({"ArrayReturn"}) @Nullable Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.delegate.execPerConnectionSQL(sql, bindArgs);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void execSQL(@NotNull final String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.oal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6321p0(QueryInterceptorDatabase.this, sql);
            }
        });
        this.delegate.execSQL(sql);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @Nullable
    public List<Pair<String, String>> getAttachedDbs() {
        return this.delegate.getAttachedDbs();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public long getMaximumSize() {
        return this.delegate.getMaximumSize();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public long getPageSize() {
        return this.delegate.getPageSize();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @Nullable
    public String getPath() {
        return this.delegate.getPath();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public int getVersion() {
        return this.delegate.getVersion();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean inTransaction() {
        return this.delegate.inTransaction();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public long insert(@NotNull String table, int conflictAlgorithm, @NotNull ContentValues values) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.insert(table, conflictAlgorithm, values);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean isDatabaseIntegrityOk() {
        return this.delegate.isDatabaseIntegrityOk();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean isDbLockedByCurrentThread() {
        return this.delegate.isDbLockedByCurrentThread();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean isExecPerConnectionSQLSupported() {
        return this.delegate.isExecPerConnectionSQLSupported();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean isOpen() {
        return this.delegate.isOpen();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean isReadOnly() {
        return this.delegate.isReadOnly();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public boolean isWriteAheadLoggingEnabled() {
        return this.delegate.isWriteAheadLoggingEnabled();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean needUpgrade(int newVersion) {
        return this.delegate.needUpgrade(newVersion);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull final String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.wal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6323r0(QueryInterceptorDatabase.this, query);
            }
        });
        return this.delegate.query(query);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @RequiresApi(api = 16)
    public void setForeignKeyConstraintsEnabled(boolean enabled) {
        this.delegate.setForeignKeyConstraintsEnabled(enabled);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void setLocale(@NotNull Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        this.delegate.setLocale(locale);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void setMaxSqlCacheSize(int cacheSize) {
        this.delegate.setMaxSqlCacheSize(cacheSize);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public long setMaximumSize(long numBytes) {
        return this.delegate.setMaximumSize(numBytes);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void setPageSize(long j) {
        this.delegate.setPageSize(j);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void setTransactionSuccessful() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.sal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6327v0(QueryInterceptorDatabase.this);
            }
        });
        this.delegate.setTransactionSuccessful();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void setVersion(int i) {
        this.delegate.setVersion(i);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public int update(@NotNull String table, int conflictAlgorithm, @NotNull ContentValues values, @Nullable String whereClause, @Nullable Object[] whereArgs) {
        Intrinsics.checkNotNullParameter(table, "table");
        Intrinsics.checkNotNullParameter(values, "values");
        return this.delegate.update(table, conflictAlgorithm, values, whereClause, whereArgs);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely() {
        return this.delegate.yieldIfContendedSafely();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public boolean yieldIfContendedSafely(long sleepAfterYieldDelayMillis) {
        return this.delegate.yieldIfContendedSafely(sleepAfterYieldDelayMillis);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    public void execSQL(@NotNull final String sql, @NotNull Object[] bindArgs) {
        List listOf;
        Intrinsics.checkNotNullParameter(sql, "sql");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        final ArrayList arrayList = new ArrayList();
        listOf = CollectionsKt__CollectionsJVMKt.listOf(bindArgs);
        arrayList.addAll(listOf);
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.yal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6322q0(QueryInterceptorDatabase.this, sql, arrayList);
            }
        });
        this.delegate.execSQL(sql, new List[]{arrayList});
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull final String query, @NotNull final Object[] bindArgs) {
        Intrinsics.checkNotNullParameter(query, "query");
        Intrinsics.checkNotNullParameter(bindArgs, "bindArgs");
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.ral
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6324s0(QueryInterceptorDatabase.this, query, bindArgs);
            }
        });
        return this.delegate.query(query, bindArgs);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull final SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.ual
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6325t0(QueryInterceptorDatabase.this, query, queryInterceptorProgram);
            }
        });
        return this.delegate.query(query);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteDatabase
    @NotNull
    public Cursor query(@NotNull final SupportSQLiteQuery query, @Nullable CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, "query");
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.qal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorDatabase.m6326u0(QueryInterceptorDatabase.this, query, queryInterceptorProgram);
            }
        });
        return this.delegate.query(query);
    }
}
