package com.onyx.android.sdk.data.couchbase;

import androidx.credentials.provider.utils.PrivilegedApp;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.LooperKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.data.couchbase.CouchHolder;
import com.onyx.android.sdk.data.couchbase.CouchHolderManager;
import com.onyx.android.sdk.data.couchbase.utils.ProviderInfo;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0002J\u0006\u0010\u000b\u001a\u00020\fJ\u000e\u0010\r\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/data/couchbase/CouchHolderManager;", "", "()V", "couchHolderMap", "Ljava/util/concurrent/ConcurrentHashMap;", "", "Lcom/onyx/android/sdk/data/couchbase/CouchHolder;", "closeCouchHolder", PrivilegedApp.f6532i, "Lcom/onyx/android/sdk/data/couchbase/utils/ProviderInfo;", "createCouchHolder", "dumpCouchDB", "", "getCouchHolder", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nCouchHolderManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouchHolderManager.kt\ncom/onyx/android/sdk/data/couchbase/CouchHolderManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,44:1\n1855#2,2:45\n*S KotlinDebug\n*F\n+ 1 CouchHolderManager.kt\ncom/onyx/android/sdk/data/couchbase/CouchHolderManager\n*L\n38#1:45,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CouchHolderManager {

    @NotNull
    private ConcurrentHashMap<String, CouchHolder> couchHolderMap = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final CouchHolder createCouchHolder(ProviderInfo info) {
        if (LooperKt.isMainThread()) {
            Debug.INSTANCE.m32060w(CouchHolderManager.class, new Exception("createCouchHolder in main thread:" + info));
        }
        CouchHolder couchHolder = new CouchHolder(info.getBaseDir(), info.getUserId(), info.getDbName());
        couchHolder.setRecreateIfWrongFormat(info.getRecreateIfWrongFormat());
        couchHolder.ensureDB();
        return couchHolder;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CouchHolder getCouchHolder$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (CouchHolder) tmp0.invoke(obj);
    }

    @Nullable
    public final CouchHolder closeCouchHolder(@NotNull ProviderInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        CouchHolder remove = this.couchHolderMap.remove(info.getKey());
        if (remove != null) {
            remove.close();
        }
        return remove;
    }

    public final void dumpCouchDB() {
        Debug debug = Debug.INSTANCE;
        debug.m32038d(AnyKt.toSimpleNameString(this), "--- dumpCouchDB start ---", new Object[0]);
        debug.m32038d(AnyKt.toSimpleNameString(this), "entries.size = " + this.couchHolderMap.size(), new Object[0]);
        Set<Map.Entry<String, CouchHolder>> entrySet = this.couchHolderMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(entrySet, "<get-entries>(...)");
        Iterator<T> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            Map.Entry entry = (Map.Entry) it2.next();
            Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "key = " + ((String) entry.getKey()) + ", " + AnyKt.toSimpleNameString(entry.getValue()) + ", isClosed = " + ((CouchHolder) entry.getValue()).isClosed(), new Object[0]);
        }
        Debug.INSTANCE.m32038d(AnyKt.toSimpleNameString(this), "--- dumpCouchDB finish ---", new Object[0]);
    }

    @NotNull
    public final CouchHolder getCouchHolder(@NotNull final ProviderInfo info) {
        Intrinsics.checkNotNullParameter(info, "info");
        ConcurrentHashMap<String, CouchHolder> concurrentHashMap = this.couchHolderMap;
        String key = info.getKey();
        final Function1<String, CouchHolder> function1 = new Function1<String, CouchHolder>() { // from class: com.onyx.android.sdk.data.couchbase.CouchHolderManager$getCouchHolder$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final CouchHolder invoke(@NotNull String it2) {
                CouchHolder createCouchHolder;
                Intrinsics.checkNotNullParameter(it2, "it");
                createCouchHolder = CouchHolderManager.this.createCouchHolder(info);
                return createCouchHolder;
            }
        };
        CouchHolder computeIfAbsent = concurrentHashMap.computeIfAbsent(key, new Function() { // from class: com.sunia.HTREnginev2.cde
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                CouchHolder couchHolder$lambda$0;
                couchHolder$lambda$0 = CouchHolderManager.getCouchHolder$lambda$0(Function1.this, obj);
                return couchHolder$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(computeIfAbsent, "computeIfAbsent(...)");
        return computeIfAbsent;
    }
}
