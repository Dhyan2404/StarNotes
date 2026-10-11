package com.onyx.android.sdk.reader.data;

import android.util.LruCache;
import com.onyx.android.sdk.reader.Reader;
import com.sun.org.apache.xpath.internal.compiler.Keywords;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\"\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00022\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\nJ\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\u0002J.\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010\u0011\u001a\u0004\u0018\u00010\u00032\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0014J\u0006\u0010\u0013\u001a\u00020\f¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/ReaderLruCache;", "Landroid/util/LruCache;", "", "Lcom/onyx/android/sdk/reader/Reader;", "maxSize", "", "(I)V", "computeIfAbsent", "path", "mappingFunction", "Lkotlin/Function1;", Keywords.FUNC_CONTAINS_STRING, "", "entryRemoved", "", "evicted", "key", "oldValue", "newValue", "isEmpty", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ReaderLruCache extends LruCache<String, Reader> {
    public ReaderLruCache(int i) {
        super(i);
    }

    @NotNull
    public final Reader computeIfAbsent(@NotNull String path, @NotNull Function1<? super String, Reader> mappingFunction) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(mappingFunction, "mappingFunction");
        Reader reader = get(path);
        if (reader != null) {
            return reader;
        }
        Reader invoke = mappingFunction.invoke(path);
        put(path, invoke);
        return invoke;
    }

    public final boolean contains(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return get(path) != null;
    }

    public final boolean isEmpty() {
        return size() <= 0;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean evicted, @Nullable String key, @Nullable Reader oldValue, @Nullable Reader newValue) {
        if (oldValue != null) {
            oldValue.destroy();
        }
    }
}
