package com.onyx.android.sdk.reader;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.reader.data.OpenDocumentArgs;
import com.onyx.android.sdk.reader.data.ReaderLruCache;
import com.onyx.android.sdk.reader.extension.ReaderKt;
import com.onyx.android.sdk.universal.editor.config.EditorConstants;
import com.sun.org.apache.xalan.internal.extensions.ExtensionNamespaceContext;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b0\u00101J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0006\u0010\u0005\u001a\u00020\u0002J\u0014\u0010\t\u001a\u00020\u00022\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\u0007J\u0010\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\u0007J\u0006\u0010\u000e\u001a\u00020\u0002J=\u0010\u0013\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u000f2\u0006\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00028\u00000\u0011¢\u0006\u0004\b\u0013\u0010\u0014J\u001c\u0010\u0015\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\u00072\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0017\u001a\u00020\u00162\u0006\u0010\n\u001a\u00020\u0007J\u0018\u0010\u0019\u001a\u0004\u0018\u00010\f2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\fJ\u000e\u0010\u001c\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aJ\u000e\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010(\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u0010/\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00062"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/ReaderBundle;", "", "", "init", "destroy", "destroyReader", "", "", ExtensionNamespaceContext.EXSLT_SET_PREFIX, "destroyReaderByPathSet", "path", "destroyReaderByPath", "Lcom/onyx/android/sdk/reader/Reader;", "getReaderByPath", "reopenReader", "T", "password", "Lkotlin/Function1;", "action", "withReaderOnce", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "ensureReaderByPath", "", "hasReader", "reader", "putReaderByPath", "Lcom/onyx/android/sdk/base/data/Size;", "size", "updateViewSize", "initViewSize", "Lcom/onyx/android/sdk/reader/data/ReaderLruCache;", "a", "Lcom/onyx/android/sdk/reader/data/ReaderLruCache;", "readerCache", "b", "Lcom/onyx/android/sdk/base/data/Size;", "getViewSize", "()Lcom/onyx/android/sdk/base/data/Size;", "setViewSize", "(Lcom/onyx/android/sdk/base/data/Size;)V", "viewSize", "c", Constants.STRING_SIG, "getDocId", "()Ljava/lang/String;", "setDocId", "(Ljava/lang/String;)V", EditorConstants.ARGS_DOC_ID, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nReaderBundle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReaderBundle.kt\ncom/onyx/android/sdk/reader/ReaderBundle\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,108:1\n1855#2,2:109\n215#3,2:111\n215#3,2:113\n*S KotlinDebug\n*F\n+ 1 ReaderBundle.kt\ncom/onyx/android/sdk/reader/ReaderBundle\n*L\n38#1:109,2\n50#1:111,2\n100#1:113,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ReaderBundle {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final ReaderLruCache readerCache = new ReaderLruCache(6);

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public Size viewSize = new Size(300, 400);

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public String docId = "";

    public static /* synthetic */ Reader ensureReaderByPath$default(ReaderBundle readerBundle, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return readerBundle.ensureReaderByPath(str, str2);
    }

    public static /* synthetic */ Object withReaderOnce$default(ReaderBundle readerBundle, String str, String str2, Function1 function1, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = null;
        }
        return readerBundle.withReaderOnce(str, str2, function1);
    }

    public final void destroy() {
    }

    public final void destroyReader() {
        this.readerCache.evictAll();
    }

    public final void destroyReaderByPath(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.readerCache.remove(path);
    }

    public final void destroyReaderByPathSet(@NotNull Set<String> set) {
        Intrinsics.checkNotNullParameter(set, "set");
        Iterator<T> it2 = set.iterator();
        while (it2.hasNext()) {
            destroyReaderByPath((String) it2.next());
        }
    }

    @Nullable
    public final Reader ensureReaderByPath(@NotNull final String path, @Nullable final String password) {
        Intrinsics.checkNotNullParameter(path, "path");
        if (path.length() == 0) {
            Debug.INSTANCE.m32059w(ReaderBundle.class, "path empty, cannot create reader", new Object[0]);
            return null;
        }
        if (!FileUtils.INSTANCE.isDirectory(path)) {
            try {
                return this.readerCache.computeIfAbsent(path, new Function1<String, Reader>() { // from class: com.onyx.android.sdk.reader.ReaderBundle$ensureReaderByPath$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    @NotNull
                    public final Reader invoke(@NotNull String it2) {
                        Intrinsics.checkNotNullParameter(it2, "it");
                        Reader reader = new Reader();
                        String docId = ReaderBundle.this.getDocId();
                        String str = path;
                        String str2 = password;
                        if (str2 == null) {
                            str2 = "";
                        }
                        ReaderKt.open(reader, new OpenDocumentArgs(docId, str, str2, Size.copy$default(ReaderBundle.this.getViewSize(), 0, 0, 3, null), null, 16, null));
                        return reader;
                    }
                });
            } catch (Throwable th) {
                th.printStackTrace();
                destroyReaderByPath(path);
                return null;
            }
        }
        Debug.INSTANCE.m32062w(AnyKt.toSimpleNameString(this), "is directory, cannot create reader, path = " + path, new Object[0]);
        return null;
    }

    @NotNull
    public final String getDocId() {
        return this.docId;
    }

    @Nullable
    public final Reader getReaderByPath(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.readerCache.get(path);
    }

    @NotNull
    public final Size getViewSize() {
        return this.viewSize;
    }

    public final boolean hasReader(@NotNull String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        return this.readerCache.contains(path);
    }

    public final void init() {
    }

    public final void initViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
    }

    @Nullable
    public final Reader putReaderByPath(@NotNull String path, @NotNull Reader reader) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(reader, "reader");
        return this.readerCache.put(path, reader);
    }

    public final void reopenReader() {
        Map<String, Reader> snapshot = this.readerCache.snapshot();
        Intrinsics.checkNotNullExpressionValue(snapshot, "snapshot(...)");
        Iterator<Map.Entry<String, Reader>> it2 = snapshot.entrySet().iterator();
        while (it2.hasNext()) {
            Reader value = it2.next().getValue();
            Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
            ReaderKt.reopen(value);
        }
    }

    public final void setDocId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.docId = str;
    }

    public final void setViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "<set-?>");
        this.viewSize = size;
    }

    public final void updateViewSize(@NotNull Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        this.viewSize = Size.copy$default(size, 0, 0, 3, null);
        Map<String, Reader> snapshot = this.readerCache.snapshot();
        Intrinsics.checkNotNullExpressionValue(snapshot, "snapshot(...)");
        Iterator<Map.Entry<String, Reader>> it2 = snapshot.entrySet().iterator();
        while (it2.hasNext()) {
            it2.next().getValue().updateViewSize(size);
        }
    }

    @Nullable
    public final <T> T withReaderOnce(@NotNull String path, @Nullable String password, @NotNull Function1<? super Reader, ? extends T> action) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(action, "action");
        try {
            Reader ensureReaderByPath = ensureReaderByPath(path, password);
            if (ensureReaderByPath != null) {
                return action.invoke(ensureReaderByPath);
            }
            destroyReaderByPath(path);
            return null;
        } finally {
            destroyReaderByPath(path);
        }
    }
}
