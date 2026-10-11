package androidx.room;

import androidx.annotation.RestrictTo;
import androidx.sqlite.p004db.SupportSQLiteStatement;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u000e¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0003\u001a\u00020\u0002H$J\b\u0010\u0005\u001a\u00020\u0004H\u0014J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\n\u001a\u00020\u0006H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u0014\u0010\u0010\u001a\u00020\u000e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0017\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u0015\u001a\u0004\b\u0012\u0010\u0016¨\u0006\u001a"}, m61528d2 = {"Landroidx/room/SharedSQLiteStatement;", "", "", "createQuery", "", "assertNotMainThread", "Landroidx/sqlite/db/SupportSQLiteStatement;", "acquire", "statement", "release", "a", "", "canUseCached", "c", "Landroidx/room/RoomDatabase;", "Landroidx/room/RoomDatabase;", "database", "Ljava/util/concurrent/atomic/AtomicBoolean;", "b", "Ljava/util/concurrent/atomic/AtomicBoolean;", DevicePushAction.LOCK_DEVICE, "Lkotlin/Lazy;", "()Landroidx/sqlite/db/SupportSQLiteStatement;", "stmt", Constants.CONSTRUCTOR_NAME, "(Landroidx/room/RoomDatabase;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes3.dex */
public abstract class SharedSQLiteStatement {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final RoomDatabase database;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final AtomicBoolean lock;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final Lazy stmt;

    public SharedSQLiteStatement(@NotNull RoomDatabase database) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(database, "database");
        this.database = database;
        this.lock = new AtomicBoolean(false);
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<SupportSQLiteStatement>() { // from class: androidx.room.SharedSQLiteStatement$stmt$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SupportSQLiteStatement invoke() {
                SupportSQLiteStatement m6360a;
                m6360a = SharedSQLiteStatement.this.m6360a();
                return m6360a;
            }
        });
        this.stmt = lazy;
    }

    /* renamed from: a */
    public final SupportSQLiteStatement m6360a() {
        return this.database.compileStatement(createQuery());
    }

    @NotNull
    public SupportSQLiteStatement acquire() {
        assertNotMainThread();
        return m6362c(this.lock.compareAndSet(false, true));
    }

    public void assertNotMainThread() {
        this.database.assertNotMainThread();
    }

    /* renamed from: b */
    public final SupportSQLiteStatement m6361b() {
        return (SupportSQLiteStatement) this.stmt.getValue();
    }

    /* renamed from: c */
    public final SupportSQLiteStatement m6362c(boolean canUseCached) {
        return canUseCached ? m6361b() : m6360a();
    }

    @NotNull
    public abstract String createQuery();

    public void release(@NotNull SupportSQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        if (statement == m6361b()) {
            this.lock.set(false);
        }
    }
}
