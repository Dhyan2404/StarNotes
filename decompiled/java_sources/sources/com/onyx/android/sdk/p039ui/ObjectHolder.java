package com.onyx.android.sdk.p039ui;

import com.onyx.android.sdk.replicator.utils.SyncConstant;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\b\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u0014\u0010\u0006\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0014\u0010\u0007\u001a\u00020\u00052\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0015\u0010\u0007\u001a\u00020\u00052\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\u0007\u0010\tJ\u0006\u0010\n\u001a\u00020\u0005J\u0012\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u000bR'\u0010\u0012\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\r8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/ui/ObjectHolder;", "T", "", "Ljava/lang/ref/WeakReference;", "weakReference", "", "add", SyncConstant.SYNC_ACTION_REMOVE, "element", "(Ljava/lang/Object;)V", Constants.CLEAR_ATTRIBUTES, "", "getCopyOfObjectList", "", "a", "Lkotlin/Lazy;", "getObjectList", "()Ljava/util/List;", "objectList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-uicommon_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ObjectHolder<T> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Lazy objectList;

    public ObjectHolder() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<WeakReference<T>>>() { // from class: com.onyx.android.sdk.ui.ObjectHolder$objectList$2
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final List<WeakReference<T>> invoke() {
                return new ArrayList();
            }
        });
        this.objectList = lazy;
    }

    public final void add(@NotNull WeakReference<T> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "weakReference");
        getObjectList().add(weakReference);
    }

    public final void clear() {
        getObjectList().clear();
    }

    @NotNull
    public final List<WeakReference<T>> getCopyOfObjectList() {
        return new ArrayList(getObjectList());
    }

    @NotNull
    public final List<WeakReference<T>> getObjectList() {
        return (List) this.objectList.getValue();
    }

    public final void remove(@NotNull WeakReference<T> weakReference) {
        Intrinsics.checkNotNullParameter(weakReference, "weakReference");
        getObjectList().remove(weakReference);
    }

    public final void remove(T element) {
        for (WeakReference<T> weakReference : getObjectList()) {
            if (weakReference.get() == element) {
                remove((WeakReference) weakReference);
                return;
            }
        }
    }
}
