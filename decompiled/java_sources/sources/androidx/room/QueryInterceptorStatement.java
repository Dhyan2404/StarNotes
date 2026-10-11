package androidx.room;

import androidx.room.QueryInterceptorStatement;
import androidx.room.RoomDatabase;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u001b\u001a\u00020\u0001\u0012\u0006\u0010\u001e\u001a\u00020\n\u0012\u0006\u0010\"\u001a\u00020\u001f\u0012\u0006\u0010&\u001a\u00020#¢\u0006\u0004\b+\u0010,J\t\u0010\u0003\u001a\u00020\u0002H\u0096\u0001J\b\u0010\u0004\u001a\u00020\u0002H\u0016J\b\u0010\u0006\u001a\u00020\u0005H\u0016J\b\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\t\u001a\u00020\u0007H\u0016J\n\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u0005H\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0007H\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0010H\u0016J\u0018\u0010\u0012\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\nH\u0016J\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u0013H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\u001a\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u00052\b\u0010\u000e\u001a\u0004\u0018\u00010\u0017H\u0002R\u0014\u0010\u001b\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001e\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u001c\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006-"}, m61528d2 = {"Landroidx/room/QueryInterceptorStatement;", "Landroidx/sqlite/db/SupportSQLiteStatement;", "", "close", "execute", "", "executeUpdateDelete", "", "executeInsert", "simpleQueryForLong", "", "simpleQueryForString", FirebaseAnalytics.Param.INDEX, "bindNull", "value", "bindLong", "", "bindDouble", "bindString", "", "bindBlob", "clearBindings", "bindIndex", "", "g0", "e", "Landroidx/sqlite/db/SupportSQLiteStatement;", "delegate", C6997f.f39671c, Constants.STRING_SIG, "sqlStatement", "Ljava/util/concurrent/Executor;", C6998g.f39679a, "Ljava/util/concurrent/Executor;", "queryCallbackExecutor", "Landroidx/room/RoomDatabase$QueryCallback;", C6999h.f39688c, "Landroidx/room/RoomDatabase$QueryCallback;", "queryCallback", "", "i", "Ljava/util/List;", "bindArgsCache", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroidx/sqlite/db/SupportSQLiteStatement;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroidx/room/RoomDatabase$QueryCallback;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class QueryInterceptorStatement implements SupportSQLiteStatement {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final SupportSQLiteStatement delegate;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final String sqlStatement;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final Executor queryCallbackExecutor;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public final RoomDatabase.QueryCallback queryCallback;

    /* renamed from: i, reason: from kotlin metadata */
    @NotNull
    public final List<Object> bindArgsCache;

    public QueryInterceptorStatement(@NotNull SupportSQLiteStatement delegate, @NotNull String sqlStatement, @NotNull Executor queryCallbackExecutor, @NotNull RoomDatabase.QueryCallback queryCallback) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        Intrinsics.checkNotNullParameter(sqlStatement, "sqlStatement");
        Intrinsics.checkNotNullParameter(queryCallbackExecutor, "queryCallbackExecutor");
        Intrinsics.checkNotNullParameter(queryCallback, "queryCallback");
        this.delegate = delegate;
        this.sqlStatement = sqlStatement;
        this.queryCallbackExecutor = queryCallbackExecutor;
        this.queryCallback = queryCallback;
        this.bindArgsCache = new ArrayList();
    }

    /* renamed from: M */
    public static final void m6332M(QueryInterceptorStatement this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.queryCallback.onQuery(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* renamed from: e0 */
    public static final void m6333e0(QueryInterceptorStatement this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.queryCallback.onQuery(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* renamed from: f0 */
    public static final void m6335f0(QueryInterceptorStatement this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.queryCallback.onQuery(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* renamed from: h0 */
    public static final void m6336h0(QueryInterceptorStatement this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.queryCallback.onQuery(this$0.sqlStatement, this$0.bindArgsCache);
    }

    /* renamed from: i0 */
    public static final void m6337i0(QueryInterceptorStatement this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.queryCallback.onQuery(this$0.sqlStatement, this$0.bindArgsCache);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindBlob(int index, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m6340g0(index, value);
        this.delegate.bindBlob(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindDouble(int index, double value) {
        m6340g0(index, Double.valueOf(value));
        this.delegate.bindDouble(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindLong(int index, long value) {
        m6340g0(index, Long.valueOf(value));
        this.delegate.bindLong(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindNull(int index) {
        Object[] array = this.bindArgsCache.toArray(new Object[0]);
        Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        m6340g0(index, Arrays.copyOf(array, array.length));
        this.delegate.bindNull(index);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindString(int index, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m6340g0(index, value);
        this.delegate.bindString(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void clearBindings() {
        this.bindArgsCache.clear();
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteStatement
    public void execute() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.abl
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.m6332M(QueryInterceptorStatement.this);
            }
        });
        this.delegate.execute();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteStatement
    public long executeInsert() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.bbl
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.m6333e0(QueryInterceptorStatement.this);
            }
        });
        return this.delegate.executeInsert();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteStatement
    public int executeUpdateDelete() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.zal
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.m6335f0(QueryInterceptorStatement.this);
            }
        });
        return this.delegate.executeUpdateDelete();
    }

    /* renamed from: g0 */
    public final void m6340g0(int bindIndex, Object value) {
        int i = bindIndex - 1;
        if (i >= this.bindArgsCache.size()) {
            int size = (i - this.bindArgsCache.size()) + 1;
            for (int i2 = 0; i2 < size; i2++) {
                this.bindArgsCache.add(null);
            }
        }
        this.bindArgsCache.set(i, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteStatement
    public long simpleQueryForLong() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.dbl
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.m6336h0(QueryInterceptorStatement.this);
            }
        });
        return this.delegate.simpleQueryForLong();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteStatement
    @Nullable
    public String simpleQueryForString() {
        this.queryCallbackExecutor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.cbl
            @Override // java.lang.Runnable
            public final void run() {
                QueryInterceptorStatement.m6337i0(QueryInterceptorStatement.this);
            }
        });
        return this.delegate.simpleQueryForString();
    }
}
