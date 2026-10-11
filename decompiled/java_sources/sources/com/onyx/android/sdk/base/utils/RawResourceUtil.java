package com.onyx.android.sdk.base.utils;

import android.content.Context;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006J\u0018\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f¨\u0006\r"}, m61528d2 = {"Lcom/onyx/android/sdk/base/utils/RawResourceUtil;", "", "()V", "closeQuietly", "", "closeable", "Ljava/io/Closeable;", "contentOfRawResource", "", "context", "Landroid/content/Context;", "rawResourceId", "", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nRawResourceUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RawResourceUtil.kt\ncom/onyx/android/sdk/base/utils/RawResourceUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,46:1\n1#2:47\n*E\n"})
/* loaded from: classes7.dex */
public final class RawResourceUtil {

    @NotNull
    public static final RawResourceUtil INSTANCE = new RawResourceUtil();

    public final void closeQuietly(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [T, java.lang.String] */
    @Nullable
    public final String contentOfRawResource(@NotNull Context context, int rawResourceId) {
        InputStream inputStream;
        BufferedReader bufferedReader;
        Intrinsics.checkNotNullParameter(context, "context");
        Closeable closeable = null;
        try {
            inputStream = context.getResources().openRawResource(rawResourceId);
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                try {
                    try {
                        StringBuilder sb = new StringBuilder();
                        Ref.ObjectRef objectRef = new Ref.ObjectRef();
                        while (true) {
                            ?? readLine = bufferedReader.readLine();
                            objectRef.element = readLine;
                            if (readLine == 0) {
                                String sb2 = sb.toString();
                                closeQuietly(bufferedReader);
                                closeQuietly(inputStream);
                                return sb2;
                            }
                            sb.append((String) readLine);
                            Intrinsics.checkNotNullExpressionValue(sb, "append(value)");
                            sb.append('\n');
                            Intrinsics.checkNotNullExpressionValue(sb, "append('\\n')");
                        }
                    } catch (Exception e) {
                        e = e;
                        if (rawResourceId > 0) {
                            e.printStackTrace();
                        }
                        closeQuietly(bufferedReader);
                        closeQuietly(inputStream);
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    closeable = bufferedReader;
                    closeQuietly(closeable);
                    closeQuietly(inputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                bufferedReader = null;
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(closeable);
                closeQuietly(inputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            inputStream = null;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }
}
