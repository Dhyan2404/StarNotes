package com.onyx.android.sdk.neopdf;

import android.content.Context;
import android.net.Uri;
import android.util.LruCache;
import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000;\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007*\u0001\u0013\b\u0016\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000e\u001a\u00020\f\u0012\u0006\u0010\u0012\u001a\u00020\u000f¢\u0006\u0004\b\u0017\u0010\u0018J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\u001a\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0006\u0010\t\u001a\u00020\bJ\n\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002R\u0014\u0010\u000e\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\rR\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/UriPdfFileStream;", "Lcom/onyx/android/sdk/neopdf/PdfFileStream;", "", "length", "position", "", "buffer", "read", "", "close", "Ljava/io/InputStream;", "a", "Landroid/content/Context;", "Landroid/content/Context;", "context", "Landroid/net/Uri;", "b", "Landroid/net/Uri;", "uri", "com/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1", "c", "Lcom/onyx/android/sdk/neopdf/UriPdfFileStream$inputStreamLru$1;", "inputStreamLru", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Landroid/net/Uri;)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nPdfFileStream.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,78:1\n1#2:79\n526#3:80\n511#3,6:81\n2333#4,14:87\n*S KotlinDebug\n*F\n+ 1 PdfFileStream.kt\ncom/onyx/android/sdk/neopdf/UriPdfFileStream\n*L\n49#1:80\n49#1:81,6\n50#1:87,14\n*E\n"})
/* loaded from: classes7.dex */
public class UriPdfFileStream extends PdfFileStream {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Uri uri;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public UriPdfFileStream$inputStreamLru$1 inputStreamLru;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.onyx.android.sdk.neopdf.UriPdfFileStream$inputStreamLru$1] */
    public UriPdfFileStream(@NotNull Context context, @NotNull Uri uri) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(uri, "uri");
        this.context = context;
        this.uri = uri;
        this.inputStreamLru = new LruCache<InputStream, Long>() { // from class: com.onyx.android.sdk.neopdf.UriPdfFileStream$inputStreamLru$1
            @Override // android.util.LruCache
            public void entryRemoved(boolean evicted, @Nullable InputStream key, @Nullable Long oldValue, @Nullable Long newValue) {
                if (evicted) {
                    FileUtils.INSTANCE.closeQuietly(key);
                }
            }
        };
    }

    /* renamed from: a */
    public final InputStream m33556a() {
        return this.context.getContentResolver().openInputStream(this.uri);
    }

    public final void close() {
        Debug.INSTANCE.m32035d(getClass(), "close pdf streams:" + size(), new Object[0]);
        evictAll();
    }

    @Override // com.onyx.android.sdk.neopdf.PdfFileStream
    public long length() {
        Long valueOf = Long.valueOf(UriKt.getFileSize(this.uri, this.context));
        if (!(valueOf.longValue() >= 0)) {
            valueOf = null;
        }
        return ((Number) AnyKt.getOrElse(valueOf, new Function0<Long>() { // from class: com.onyx.android.sdk.neopdf.UriPdfFileStream$length$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Long invoke() {
                InputStream m33556a;
                long available;
                m33556a = UriPdfFileStream.this.m33556a();
                if (m33556a != null) {
                    try {
                        available = m33556a.available();
                        CloseableKt.closeFinally(m33556a, null);
                    } finally {
                    }
                } else {
                    available = 0;
                }
                return Long.valueOf(available);
            }
        })).longValue();
    }

    @Override // com.onyx.android.sdk.neopdf.PdfFileStream
    public long read(long position, @Nullable byte[] buffer) {
        Object next;
        if (buffer == null) {
            return 0L;
        }
        if (buffer.length == 0) {
            return 0L;
        }
        try {
            Map<InputStream, Long> snapshot = snapshot();
            Intrinsics.checkNotNull(snapshot);
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<InputStream, Long> entry : snapshot.entrySet()) {
                Long value = entry.getValue();
                Intrinsics.checkNotNullExpressionValue(value, "<get-value>(...)");
                if (value.longValue() <= position) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            Iterator it2 = linkedHashMap.entrySet().iterator();
            if (it2.hasNext()) {
                next = it2.next();
                if (it2.hasNext()) {
                    Long l = (Long) ((Map.Entry) next).getValue();
                    do {
                        Object next2 = it2.next();
                        Long l2 = (Long) ((Map.Entry) next2).getValue();
                        if (l.compareTo(l2) > 0) {
                            next = next2;
                            l = l2;
                        }
                    } while (it2.hasNext());
                }
            } else {
                next = null;
            }
            Map.Entry entry2 = (Map.Entry) next;
            InputStream inputStream = entry2 != null ? (InputStream) entry2.getKey() : null;
            if (entry2 == null) {
                inputStream = m33556a();
                if (inputStream != null) {
                    inputStream.skip(position);
                }
            } else if (inputStream != null) {
                Object value2 = entry2.getValue();
                Intrinsics.checkNotNullExpressionValue(value2, "<get-value>(...)");
                inputStream.skip(position - ((Number) value2).longValue());
            }
            long read = inputStream != null ? inputStream.read(buffer) : 0L;
            if (inputStream != null) {
                put(inputStream, Long.valueOf(position + read));
            }
            return read;
        } catch (Exception e) {
            e.printStackTrace();
            close();
            throw e;
        }
    }
}
