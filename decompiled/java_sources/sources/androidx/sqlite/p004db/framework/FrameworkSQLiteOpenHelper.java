package androidx.sqlite.p004db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.sqlite.p004db.SupportSQLiteCompat;
import androidx.sqlite.p004db.SupportSQLiteDatabase;
import androidx.sqlite.p004db.SupportSQLiteOpenHelper;
import androidx.sqlite.p004db.framework.FrameworkSQLiteOpenHelper;
import androidx.sqlite.util.ProcessLock;
import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.File;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0000\u0018\u0000 .2\u00020\u0001:\u0003./0B7\b\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0017J\b\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0017\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0014R\u001a\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00190\u00188\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0014R\u0016\u0010!\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010'\u001a\u00020\"8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$R\u001b\u0010+\u001a\u00020\u00198BX\u0082\u0084\u0002¢\u0006\f\u001a\u0004\b\f\u0010(*\u0004\b)\u0010*¨\u00061"}, m61528d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;", "Landroidx/sqlite/db/SupportSQLiteOpenHelper;", "", "enabled", "", "setWriteAheadLoggingEnabled", "close", "Landroid/content/Context;", "e", "Landroid/content/Context;", "context", "", C6997f.f39671c, Constants.STRING_SIG, "name", "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", C6998g.f39679a, "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;", "callback", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "useNoBackupDirectory", "i", "allowDataLossOnRecovery", "Lkotlin/Lazy;", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;", "j", "Lkotlin/Lazy;", "lazyDelegate", C4921e.f26537n, "writeAheadLoggingEnabled", "getDatabaseName", "()Ljava/lang/String;", "databaseName", "Landroidx/sqlite/db/SupportSQLiteDatabase;", "getWritableDatabase", "()Landroidx/sqlite/db/SupportSQLiteDatabase;", "writableDatabase", "getReadableDatabase", "readableDatabase", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;", "getDelegate$delegate", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/Object;", "delegate", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V", "Companion", "a", "OpenHelper", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {

    /* renamed from: l */
    @NotNull
    public static final String f10318l = "SupportSQLite";

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: f, reason: from kotlin metadata */
    @Nullable
    public final String name;

    /* renamed from: g, reason: from kotlin metadata */
    @NotNull
    public final SupportSQLiteOpenHelper.Callback callback;

    /* renamed from: h, reason: from kotlin metadata */
    public final boolean useNoBackupDirectory;

    /* renamed from: i, reason: from kotlin metadata */
    public final boolean allowDataLossOnRecovery;

    /* renamed from: j, reason: from kotlin metadata */
    @NotNull
    public final Lazy<OpenHelper> lazyDelegate;

    /* renamed from: k, reason: from kotlin metadata */
    public boolean writeAheadLoggingEnabled;

    /* loaded from: classes3.dex */
    public static final class OpenHelper extends SQLiteOpenHelper {

        /* renamed from: l */
        @NotNull
        public static final Companion f10326l = new Companion(null);

        /* renamed from: e */
        @NotNull
        public final Context f10327e;

        /* renamed from: f */
        @NotNull
        public final C1444a f10328f;

        /* renamed from: g */
        @NotNull
        public final SupportSQLiteOpenHelper.Callback f10329g;

        /* renamed from: h */
        public final boolean f10330h;

        /* renamed from: i */
        public boolean f10331i;

        /* renamed from: j */
        @NotNull
        public final ProcessLock f10332j;

        /* renamed from: k */
        public boolean f10333k;

        @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0006\b\u0002\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\f"}, m61528d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackException;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "callbackName", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "cause", "", "(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;Ljava/lang/Throwable;)V", "getCallbackName", "()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "getCause", "()Ljava/lang/Throwable;", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public static final class CallbackException extends RuntimeException {

            @NotNull
            private final CallbackName callbackName;

            @NotNull
            private final Throwable cause;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public CallbackException(@NotNull CallbackName callbackName, @NotNull Throwable cause) {
                super(cause);
                Intrinsics.checkNotNullParameter(callbackName, "callbackName");
                Intrinsics.checkNotNullParameter(cause, "cause");
                this.callbackName = callbackName;
                this.cause = cause;
            }

            @NotNull
            public final CallbackName getCallbackName() {
                return this.callbackName;
            }

            @Override // java.lang.Throwable
            @NotNull
            public Throwable getCause() {
                return this.cause;
            }
        }

        @Metadata(m61527d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m61528d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$CallbackName;", "", "(Ljava/lang/String;I)V", "ON_CONFIGURE", "ON_CREATE", "ON_UPGRADE", "ON_DOWNGRADE", "ON_OPEN", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public enum CallbackName {
            ON_CONFIGURE,
            ON_CREATE,
            ON_UPGRADE,
            ON_DOWNGRADE,
            ON_OPEN
        }

        @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004¨\u0006\n"}, m61528d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper$Companion;", "", "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$a;", "refHolder", "Landroid/database/sqlite/SQLiteDatabase;", "sqLiteDatabase", "Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;", "getWrappedDb", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1})
        /* loaded from: classes3.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final FrameworkSQLiteDatabase getWrappedDb(@NotNull C1444a refHolder, @NotNull SQLiteDatabase sqLiteDatabase) {
                Intrinsics.checkNotNullParameter(refHolder, "refHolder");
                Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
                FrameworkSQLiteDatabase m6427a = refHolder.m6427a();
                if (m6427a != null && m6427a.isDelegate(sqLiteDatabase)) {
                    return m6427a;
                }
                FrameworkSQLiteDatabase frameworkSQLiteDatabase = new FrameworkSQLiteDatabase(sqLiteDatabase);
                refHolder.m6428b(frameworkSQLiteDatabase);
                return frameworkSQLiteDatabase;
            }

            public Companion() {
            }
        }

        @Metadata(m61529k = 3, m61530mv = {1, 7, 1}, m61532xi = 48)
        /* loaded from: classes3.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CallbackName.values().length];
                try {
                    iArr[CallbackName.ON_CONFIGURE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CallbackName.ON_CREATE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CallbackName.ON_UPGRADE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CallbackName.ON_DOWNGRADE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CallbackName.ON_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OpenHelper(@NotNull Context context, @Nullable String str, @NotNull final C1444a dbRef, @NotNull final SupportSQLiteOpenHelper.Callback callback, boolean z) {
            super(context, str, null, callback.version, new DatabaseErrorHandler() { // from class: com.sunia.HTREnginev2.dwg
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    FrameworkSQLiteOpenHelper.OpenHelper.m6418j(SupportSQLiteOpenHelper.Callback.this, dbRef, sQLiteDatabase);
                }
            });
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(dbRef, "dbRef");
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.f10327e = context;
            this.f10328f = dbRef;
            this.f10329g = callback;
            this.f10330h = z;
            if (str == null) {
                str = UUID.randomUUID().toString();
                Intrinsics.checkNotNullExpressionValue(str, "randomUUID().toString()");
            }
            File cacheDir = context.getCacheDir();
            Intrinsics.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
            this.f10332j = new ProcessLock(str, cacheDir, false);
        }

        /* renamed from: j */
        public static final void m6418j(SupportSQLiteOpenHelper.Callback callback, C1444a dbRef, SQLiteDatabase dbObj) {
            Intrinsics.checkNotNullParameter(callback, "$callback");
            Intrinsics.checkNotNullParameter(dbRef, "$dbRef");
            Companion companion = f10326l;
            Intrinsics.checkNotNullExpressionValue(dbObj, "dbObj");
            callback.onCorruption(companion.getWrappedDb(dbRef, dbObj));
        }

        @NotNull
        /* renamed from: H */
        public final SupportSQLiteOpenHelper.Callback m6419H() {
            return this.f10329g;
        }

        @NotNull
        /* renamed from: I */
        public final Context m6420I() {
            return this.f10327e;
        }

        @NotNull
        /* renamed from: M */
        public final C1444a m6421M() {
            return this.f10328f;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            try {
                ProcessLock.lock$default(this.f10332j, false, 1, null);
                super.close();
                this.f10328f.m6428b(null);
                this.f10333k = false;
            } finally {
                this.f10332j.unlock();
            }
        }

        @NotNull
        /* renamed from: e0 */
        public final SupportSQLiteDatabase m6422e0(boolean z) {
            try {
                this.f10332j.lock((this.f10333k || getDatabaseName() == null) ? false : true);
                this.f10331i = false;
                SQLiteDatabase m6425h0 = m6425h0(z);
                if (!this.f10331i) {
                    return m6423f0(m6425h0);
                }
                close();
                return m6422e0(z);
            } finally {
                this.f10332j.unlock();
            }
        }

        @NotNull
        /* renamed from: f0 */
        public final FrameworkSQLiteDatabase m6423f0(@NotNull SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            return f10326l.getWrappedDb(this.f10328f, sqLiteDatabase);
        }

        /* renamed from: g0 */
        public final SQLiteDatabase m6424g0(boolean z) {
            if (z) {
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                Intrinsics.checkNotNullExpressionValue(writableDatabase, "{\n                super.…eDatabase()\n            }");
                return writableDatabase;
            }
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            Intrinsics.checkNotNullExpressionValue(readableDatabase, "{\n                super.…eDatabase()\n            }");
            return readableDatabase;
        }

        /* renamed from: h0 */
        public final SQLiteDatabase m6425h0(boolean z) {
            File parentFile;
            String databaseName = getDatabaseName();
            if (databaseName != null && (parentFile = this.f10327e.getDatabasePath(databaseName).getParentFile()) != null) {
                parentFile.mkdirs();
                if (!parentFile.isDirectory()) {
                    Log.w("SupportSQLite", "Invalid database parent file, not a directory: " + parentFile);
                }
            }
            try {
                return m6424g0(z);
            } catch (Throwable unused) {
                super.close();
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException unused2) {
                }
                try {
                    return this.m6424g0(z);
                } catch (Throwable th) {
                    super.close();
                    if (th instanceof CallbackException) {
                        CallbackException callbackException = th;
                        Throwable cause = callbackException.getCause();
                        int i = WhenMappings.$EnumSwitchMapping$0[callbackException.getCallbackName().ordinal()];
                        if (i == 1) {
                            throw cause;
                        }
                        if (i == 2) {
                            throw cause;
                        }
                        if (i == 3) {
                            throw cause;
                        }
                        if (i == 4) {
                            throw cause;
                        }
                        if (!(cause instanceof SQLiteException)) {
                            throw cause;
                        }
                    } else {
                        if (!(th instanceof SQLiteException)) {
                            throw th;
                        }
                        if (databaseName == null || !this.f10330h) {
                            throw th;
                        }
                    }
                    this.f10327e.deleteDatabase(databaseName);
                    try {
                        return this.m6424g0(z);
                    } catch (CallbackException e) {
                        throw e.getCause();
                    }
                }
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(@NotNull SQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            try {
                this.f10329g.onConfigure(m6423f0(db));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CONFIGURE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(@NotNull SQLiteDatabase sqLiteDatabase) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            try {
                this.f10329g.onCreate(m6423f0(sqLiteDatabase));
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_CREATE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(@NotNull SQLiteDatabase db, int i, int i2) {
            Intrinsics.checkNotNullParameter(db, "db");
            this.f10331i = true;
            try {
                this.f10329g.onDowngrade(m6423f0(db), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_DOWNGRADE, th);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(@NotNull SQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
            if (!this.f10331i) {
                try {
                    this.f10329g.onOpen(m6423f0(db));
                } catch (Throwable th) {
                    throw new CallbackException(CallbackName.ON_OPEN, th);
                }
            }
            this.f10333k = true;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(@NotNull SQLiteDatabase sqLiteDatabase, int i, int i2) {
            Intrinsics.checkNotNullParameter(sqLiteDatabase, "sqLiteDatabase");
            this.f10331i = true;
            try {
                this.f10329g.onUpgrade(m6423f0(sqLiteDatabase), i, i2);
            } catch (Throwable th) {
                throw new CallbackException(CallbackName.ON_UPGRADE, th);
            }
        }

        /* renamed from: w */
        public final boolean m6426w() {
            return this.f10330h;
        }
    }

    /* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$a */
    /* loaded from: classes3.dex */
    public static final class C1444a {

        /* renamed from: a */
        @Nullable
        public FrameworkSQLiteDatabase f10334a;

        public C1444a(@Nullable FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.f10334a = frameworkSQLiteDatabase;
        }

        @Nullable
        /* renamed from: a */
        public final FrameworkSQLiteDatabase m6427a() {
            return this.f10334a;
        }

        /* renamed from: b */
        public final void m6428b(@Nullable FrameworkSQLiteDatabase frameworkSQLiteDatabase) {
            this.f10334a = frameworkSQLiteDatabase;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback) {
        this(context, str, callback, false, false, 24, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    /* renamed from: j */
    public static Object m6415j(FrameworkSQLiteOpenHelper frameworkSQLiteOpenHelper) {
        return frameworkSQLiteOpenHelper.lazyDelegate;
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.lazyDelegate.isInitialized()) {
            m6416f().close();
        }
    }

    /* renamed from: f */
    public final OpenHelper m6416f() {
        return this.lazyDelegate.getValue();
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteOpenHelper
    @Nullable
    /* renamed from: getDatabaseName, reason: from getter */
    public String getName() {
        return this.name;
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getReadableDatabase() {
        return m6416f().m6422e0(false);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteOpenHelper
    @NotNull
    public SupportSQLiteDatabase getWritableDatabase() {
        return m6416f().m6422e0(true);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteOpenHelper
    @RequiresApi(api = 16)
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        if (this.lazyDelegate.isInitialized()) {
            SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(m6416f(), enabled);
        }
        this.writeAheadLoggingEnabled = enabled;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback, boolean z) {
        this(context, str, callback, z, false, 16, null);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
    }

    @JvmOverloads
    public FrameworkSQLiteOpenHelper(@NotNull Context context, @Nullable String str, @NotNull SupportSQLiteOpenHelper.Callback callback, boolean z, boolean z2) {
        Lazy<OpenHelper> lazy;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.context = context;
        this.name = str;
        this.callback = callback;
        this.useNoBackupDirectory = z;
        this.allowDataLossOnRecovery = z2;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<OpenHelper>() { // from class: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelper$lazyDelegate$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final FrameworkSQLiteOpenHelper.OpenHelper invoke() {
                String str2;
                FrameworkSQLiteOpenHelper.OpenHelper openHelper;
                Context context2;
                String str3;
                SupportSQLiteOpenHelper.Callback callback2;
                boolean z3;
                boolean z4;
                boolean z5;
                Context context3;
                String str4;
                Context context4;
                SupportSQLiteOpenHelper.Callback callback3;
                boolean z6;
                str2 = FrameworkSQLiteOpenHelper.this.name;
                if (str2 != null) {
                    z5 = FrameworkSQLiteOpenHelper.this.useNoBackupDirectory;
                    if (z5) {
                        context3 = FrameworkSQLiteOpenHelper.this.context;
                        File noBackupFilesDir = SupportSQLiteCompat.Api21Impl.getNoBackupFilesDir(context3);
                        str4 = FrameworkSQLiteOpenHelper.this.name;
                        File file = new File(noBackupFilesDir, str4);
                        context4 = FrameworkSQLiteOpenHelper.this.context;
                        String absolutePath = file.getAbsolutePath();
                        FrameworkSQLiteOpenHelper.C1444a c1444a = new FrameworkSQLiteOpenHelper.C1444a(null);
                        callback3 = FrameworkSQLiteOpenHelper.this.callback;
                        z6 = FrameworkSQLiteOpenHelper.this.allowDataLossOnRecovery;
                        openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context4, absolutePath, c1444a, callback3, z6);
                        z4 = FrameworkSQLiteOpenHelper.this.writeAheadLoggingEnabled;
                        SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(openHelper, z4);
                        return openHelper;
                    }
                }
                context2 = FrameworkSQLiteOpenHelper.this.context;
                str3 = FrameworkSQLiteOpenHelper.this.name;
                FrameworkSQLiteOpenHelper.C1444a c1444a2 = new FrameworkSQLiteOpenHelper.C1444a(null);
                callback2 = FrameworkSQLiteOpenHelper.this.callback;
                z3 = FrameworkSQLiteOpenHelper.this.allowDataLossOnRecovery;
                openHelper = new FrameworkSQLiteOpenHelper.OpenHelper(context2, str3, c1444a2, callback2, z3);
                z4 = FrameworkSQLiteOpenHelper.this.writeAheadLoggingEnabled;
                SupportSQLiteCompat.Api16Impl.setWriteAheadLoggingEnabled(openHelper, z4);
                return openHelper;
            }
        });
        this.lazyDelegate = lazy;
    }

    public /* synthetic */ FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, callback, (i & 8) != 0 ? false : z, (i & 16) != 0 ? false : z2);
    }
}
