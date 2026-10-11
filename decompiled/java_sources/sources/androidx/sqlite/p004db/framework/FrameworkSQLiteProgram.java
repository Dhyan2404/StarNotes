package androidx.sqlite.p004db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.p004db.SupportSQLiteProgram;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016R\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, m61528d2 = {"Landroidx/sqlite/db/framework/FrameworkSQLiteProgram;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "", FirebaseAnalytics.Param.INDEX, "", "bindNull", "", "value", "bindLong", "", "bindDouble", "", "bindString", "", "bindBlob", "clearBindings", "close", "Landroid/database/sqlite/SQLiteProgram;", "e", "Landroid/database/sqlite/SQLiteProgram;", "delegate", Constants.CONSTRUCTOR_NAME, "(Landroid/database/sqlite/SQLiteProgram;)V", "sqlite-framework_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public class FrameworkSQLiteProgram implements SupportSQLiteProgram {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final SQLiteProgram delegate;

    public FrameworkSQLiteProgram(@NotNull SQLiteProgram delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindBlob(int index, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindBlob(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindDouble(int index, double value) {
        this.delegate.bindDouble(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindLong(int index, long value) {
        this.delegate.bindLong(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindNull(int index) {
        this.delegate.bindNull(index);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindString(int index, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        this.delegate.bindString(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void clearBindings() {
        this.delegate.clearBindings();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }
}
