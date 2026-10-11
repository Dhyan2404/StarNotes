package com.onyx.android.sdk.note.common.shape;

import com.onyx.android.sdk.base.utils.OptionsRepo;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0012\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\tH&J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\tH&R\u0018\u0010\u0002\u001a\u00020\u0003X¦\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/ShapePersistOptions;", "", "persistOptions", "Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "getPersistOptions", "()Lcom/onyx/android/sdk/base/utils/OptionsRepo;", "setPersistOptions", "(Lcom/onyx/android/sdk/base/utils/OptionsRepo;)V", "getPersistOption", "", "key", "putPersistOption", "", "value", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public interface ShapePersistOptions {
    @Nullable
    String getPersistOption(@NotNull String key);

    @NotNull
    OptionsRepo getPersistOptions();

    void putPersistOption(@NotNull String key, @NotNull String value);

    void setPersistOptions(@NotNull OptionsRepo optionsRepo);
}
