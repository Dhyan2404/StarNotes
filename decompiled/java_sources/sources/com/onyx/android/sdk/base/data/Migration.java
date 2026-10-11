package com.onyx.android.sdk.base.data;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0006J\b\u0010\b\u001a\u00020\tH&J\u0015\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0006¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/base/data/Migration;", "T", "", "afterMigration", "", "data", "(Ljava/lang/Object;)V", "beforeMigration", "getVersion", "", "migrate", "sdk-base_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public interface Migration<T> {

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class DefaultImpls {
        public static <T> void afterMigration(@NotNull Migration<T> migration, T t) {
        }

        public static <T> void beforeMigration(@NotNull Migration<T> migration, T t) {
        }
    }

    void afterMigration(T data);

    void beforeMigration(T data);

    int getVersion();

    void migrate(T data);
}
