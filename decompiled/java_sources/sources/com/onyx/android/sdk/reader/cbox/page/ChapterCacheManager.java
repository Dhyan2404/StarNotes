package com.onyx.android.sdk.reader.cbox.page;

import android.util.LruCache;
import com.onyx.engine.sdk.NeoBaseNative;
import com.sun.org.apache.bcel.internal.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u0017B\u0019\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0011¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003J.\u0010\f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u00022\b\u0010\n\u001a\u0004\u0018\u00010\u00032\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0014R\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0014\u001a\u00020\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/cbox/page/ChapterCacheManager;", "Landroid/util/LruCache;", "", "Lcom/onyx/android/sdk/reader/cbox/page/LayoutChapter;", "chapter", "", "cacheChapter", "", "evicted", "key", "oldValue", "newValue", "entryRemoved", "Lcom/onyx/engine/sdk/NeoBaseNative;", "a", "Lcom/onyx/engine/sdk/NeoBaseNative;", "neoNative", "", "b", "I", "maxSize", Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/engine/sdk/NeoBaseNative;I)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ChapterCacheManager extends LruCache<String, LayoutChapter> {

    /* renamed from: c */
    public static final int f44691c = 3;

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final NeoBaseNative neoNative;

    /* renamed from: b, reason: from kotlin metadata */
    public final int maxSize;

    public /* synthetic */ ChapterCacheManager(NeoBaseNative neoBaseNative, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(neoBaseNative, (i2 & 2) != 0 ? 3 : i);
    }

    public final void cacheChapter(@Nullable LayoutChapter chapter) {
        if (chapter == null) {
            evictAll();
        } else if (get(chapter.getChapter().getChapterId()) == null) {
            put(chapter.getChapter().getChapterId(), chapter);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChapterCacheManager(@NotNull NeoBaseNative neoNative, int i) {
        super(i);
        Intrinsics.checkNotNullParameter(neoNative, "neoNative");
        this.neoNative = neoNative;
        this.maxSize = i;
    }

    @Override // android.util.LruCache
    public void entryRemoved(boolean evicted, @Nullable String key, @Nullable LayoutChapter oldValue, @Nullable LayoutChapter newValue) {
        if (oldValue != null) {
            this.neoNative.recycleChapter(key);
        }
    }
}
