package androidx.room;

import androidx.sqlite.p004db.SupportSQLiteProgram;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\tH\u0016J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u000bH\u0016J\u0018\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0016J\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0012H\u0002R\"\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00120\u00148\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, m61528d2 = {"Landroidx/room/QueryInterceptorProgram;", "Landroidx/sqlite/db/SupportSQLiteProgram;", "", FirebaseAnalytics.Param.INDEX, "", "bindNull", "", "value", "bindLong", "", "bindDouble", "", "bindString", "", "bindBlob", "clearBindings", "close", "bindIndex", "", C6997f.f39671c, "", "e", "Ljava/util/List;", "getBindArgsCache$room_runtime_release", "()Ljava/util/List;", "bindArgsCache", Constants.CONSTRUCTOR_NAME, "()V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class QueryInterceptorProgram implements SupportSQLiteProgram {

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final List<Object> bindArgsCache = new ArrayList();

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindBlob(int index, @NotNull byte[] value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m6329f(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindDouble(int index, double value) {
        m6329f(index, Double.valueOf(value));
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindLong(int index, long value) {
        m6329f(index, Long.valueOf(value));
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindNull(int index) {
        m6329f(index, null);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void bindString(int index, @NotNull String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        m6329f(index, value);
    }

    @Override // androidx.sqlite.p004db.SupportSQLiteProgram
    public void clearBindings() {
        this.bindArgsCache.clear();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    /* renamed from: f */
    public final void m6329f(int bindIndex, Object value) {
        int size;
        int i = bindIndex - 1;
        if (i >= this.bindArgsCache.size() && (size = this.bindArgsCache.size()) <= i) {
            while (true) {
                this.bindArgsCache.add(null);
                if (size == i) {
                    break;
                } else {
                    size++;
                }
            }
        }
        this.bindArgsCache.set(i, value);
    }

    @NotNull
    public final List<Object> getBindArgsCache$room_runtime_release() {
        return this.bindArgsCache;
    }
}
