package com.onyx.android.sdk.universal.editor;

import android.util.LruCache;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J$\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\u0014\b\u0002\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\nJ.\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\b\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00032\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u0014¨\u0006\u0011"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/EditorBundleCache;", "Landroid/util/LruCache;", "", "Lcom/onyx/android/sdk/universal/editor/EditorBundleWrapper;", "maxSize", "", "(I)V", "computeIfAbsent", "key", "mappingFunction", "Lkotlin/Function1;", "entryRemoved", "", "evicted", "", "oldValue", "newValue", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nEditorBundleWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n+ 2 Debug.kt\ncom/onyx/android/sdk/base/utils/Debug\n*L\n1#1,82:1\n98#2,4:83\n98#2,4:87\n*S KotlinDebug\n*F\n+ 1 EditorBundleWrapper.kt\ncom/onyx/android/sdk/universal/editor/EditorBundleCache\n*L\n34#1:83,4\n48#1:87,4\n*E\n"})
/* loaded from: classes8.dex */
public final class EditorBundleCache extends LruCache<String, EditorBundleWrapper> {
    public EditorBundleCache(int i) {
        super(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ EditorBundleWrapper computeIfAbsent$default(EditorBundleCache editorBundleCache, String str, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            function1 = new Function1<String, EditorBundleWrapper>() { // from class: com.onyx.android.sdk.universal.editor.EditorBundleCache$computeIfAbsent$1
                @Override // kotlin.jvm.functions.Function1
                @NotNull
                public final EditorBundleWrapper invoke(@NotNull String it2) {
                    Intrinsics.checkNotNullParameter(it2, "it");
                    return new EditorBundleWrapper(EditorBundle.INSTANCE.createInstance());
                }
            };
        }
        return editorBundleCache.computeIfAbsent(str, function1);
    }

    @NotNull
    public final EditorBundleWrapper computeIfAbsent(@NotNull String key, @NotNull Function1<? super String, EditorBundleWrapper> mappingFunction) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(mappingFunction, "mappingFunction");
        EditorBundleWrapper editorBundleWrapper = get(key);
        if (editorBundleWrapper == null) {
            editorBundleWrapper = mappingFunction.invoke(key);
            Debug debug = Debug.INSTANCE;
            if (debug.getDebug()) {
                debug.m32035d(EditorBundleCache.class, "editorBundle entryCreated:" + key + ',' + AnyKt.toSimpleNameString(editorBundleWrapper), new Object[0]);
            }
            put(key, editorBundleWrapper);
        }
        return editorBundleWrapper;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean evicted, @Nullable String key, @Nullable EditorBundleWrapper oldValue, @Nullable EditorBundleWrapper newValue) {
        Debug debug = Debug.INSTANCE;
        if (debug.getDebug()) {
            debug.m32035d(EditorBundleCache.class, "editorBundle entryRemoved:" + key + ',' + AnyKt.toSimpleNameString(oldValue), new Object[0]);
        }
        if (oldValue != null) {
            oldValue.close();
        }
    }
}
