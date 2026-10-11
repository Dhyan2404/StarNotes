package androidx.room;

import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.MultiInstanceInvalidationClient;
import androidx.room.MultiInstanceInvalidationClient$callback$1;
import com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
import java.util.Arrays;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0005H\u0016¢\u0006\u0002\u0010\u0007¨\u0006\b"}, m61528d2 = {"androidx/room/MultiInstanceInvalidationClient$callback$1", "Landroidx/room/IMultiInstanceInvalidationCallback$Stub;", "onInvalidation", "", XResourceBundle.LANG_NUM_TABLES, "", "", "([Ljava/lang/String;)V", "room-runtime_release"}, m61529k = 1, m61530mv = {1, 7, 1}, m61532xi = 48)
/* loaded from: classes3.dex */
public final class MultiInstanceInvalidationClient$callback$1 extends IMultiInstanceInvalidationCallback.Stub {

    /* renamed from: b */
    public final /* synthetic */ MultiInstanceInvalidationClient f10103b;

    public MultiInstanceInvalidationClient$callback$1(MultiInstanceInvalidationClient multiInstanceInvalidationClient) {
        this.f10103b = multiInstanceInvalidationClient;
    }

    /* renamed from: b */
    public static final void m6304b(MultiInstanceInvalidationClient this$0, String[] tables) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tables, "$tables");
        this$0.getInvalidationTracker().notifyObserversByTableNames((String[]) Arrays.copyOf(tables, tables.length));
    }

    @Override // androidx.room.IMultiInstanceInvalidationCallback
    public void onInvalidation(@NotNull final String[] tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        Executor executor = this.f10103b.getExecutor();
        final MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.f10103b;
        executor.execute(new Runnable() { // from class: com.sunia.HTREnginev2.aqj
            @Override // java.lang.Runnable
            public final void run() {
                MultiInstanceInvalidationClient$callback$1.m6304b(MultiInstanceInvalidationClient.this, tables);
            }
        });
    }
}
