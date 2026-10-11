package androidx.sqlite.p004db;

import android.annotation.SuppressLint;
import com.google.android.gms.actions.SearchIntents;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B#\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0012\u0010\u000e\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n¢\u0006\u0004\b\u0016\u0010\u0017B\u0011\b\u0016\u0012\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0018J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR \u0010\u000e\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u000b\u0018\u00010\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u00128VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, m61528d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteQuery;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "statement", "", "bindTo", "", "e", Constants.STRING_SIG, SearchIntents.EXTRA_QUERY, "", "", C6997f.f39671c, "[Ljava/lang/Object;", "bindArgs", "getSql", "()Ljava/lang/String;", "sql", "", "getArgCount", "()I", "argCount", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;[Ljava/lang/Object;)V", "(Ljava/lang/String;)V", "Companion", "sqlite_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SimpleSQLiteQuery implements SupportSQLiteQuery {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final String query;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final Object[] bindArgs;

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0012\u0010\u0005\u001a\u000e\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\"\u0010\f\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0002¨\u0006\u000f"}, m61528d2 = {"Landroidx/sqlite/db/SimpleSQLiteQuery$Companion;", "", "Landroidx/sqlite/db/SupportSQLiteProgram;", "statement", "", "bindArgs", "", "bind", "(Landroidx/sqlite/db/SupportSQLiteProgram;[Ljava/lang/Object;)V", "", FirebaseAnalytics.Param.INDEX, com.sun.org.apache.xalan.internal.templates.Constants.ELEMNAME_ARG_STRING, "a", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sqlite_release"}, m61529k = 1, m61530mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public final void m6407a(SupportSQLiteProgram statement, int index, Object arg) {
            if (arg == null) {
                statement.bindNull(index);
                return;
            }
            if (arg instanceof byte[]) {
                statement.bindBlob(index, (byte[]) arg);
                return;
            }
            if (arg instanceof Float) {
                statement.bindDouble(index, ((Number) arg).floatValue());
                return;
            }
            if (arg instanceof Double) {
                statement.bindDouble(index, ((Number) arg).doubleValue());
                return;
            }
            if (arg instanceof Long) {
                statement.bindLong(index, ((Number) arg).longValue());
                return;
            }
            if (arg instanceof Integer) {
                statement.bindLong(index, ((Number) arg).intValue());
                return;
            }
            if (arg instanceof Short) {
                statement.bindLong(index, ((Number) arg).shortValue());
                return;
            }
            if (arg instanceof Byte) {
                statement.bindLong(index, ((Number) arg).byteValue());
                return;
            }
            if (arg instanceof String) {
                statement.bindString(index, (String) arg);
                return;
            }
            if (arg instanceof Boolean) {
                statement.bindLong(index, ((Boolean) arg).booleanValue() ? 1L : 0L);
                return;
            }
            throw new IllegalArgumentException("Cannot bind " + arg + " at index " + index + " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String");
        }

        @JvmStatic
        @SuppressLint({"SyntheticAccessor"})
        public final void bind(@NotNull SupportSQLiteProgram statement, @Nullable Object[] bindArgs) {
            Intrinsics.checkNotNullParameter(statement, "statement");
            if (bindArgs == null) {
                return;
            }
            int length = bindArgs.length;
            int i = 0;
            while (i < length) {
                Object obj = bindArgs[i];
                i++;
                m6407a(statement, i, obj);
            }
        }

        public Companion() {
        }
    }

    public SimpleSQLiteQuery(@NotNull String query, @Nullable Object[] objArr) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.query = query;
        this.bindArgs = objArr;
    }

    @JvmStatic
    @SuppressLint({"SyntheticAccessor"})
    public static final void bind(@NotNull SupportSQLiteProgram supportSQLiteProgram, @Nullable Object[] objArr) {
        INSTANCE.bind(supportSQLiteProgram, objArr);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteQuery
    public void bindTo(@NotNull SupportSQLiteProgram statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        INSTANCE.bind(statement, this.bindArgs);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteQuery
    public int getArgCount() {
        Object[] objArr = this.bindArgs;
        if (objArr != null) {
            return objArr.length;
        }
        return 0;
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteQuery
    @NotNull
    /* renamed from: getSql, reason: from getter */
    public String getQuery() {
        return this.query;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SimpleSQLiteQuery(@NotNull String query) {
        this(query, null);
        Intrinsics.checkNotNullParameter(query, "query");
    }
}
