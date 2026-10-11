package com.onyx.galaxy.note.utils;

import com.onyx.android.sdk.filepicker.FilePickerBuilder;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0001¨\u0006\u0002"}, m61528d2 = {"setCommonConfig", "Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class FilePickerExtKt {
    @NotNull
    public static final FilePickerBuilder setCommonConfig(@NotNull FilePickerBuilder filePickerBuilder) {
        Intrinsics.checkNotNullParameter(filePickerBuilder, "<this>");
        NoteConfigManager noteConfigManager = NoteConfigManager.INSTANCE;
        return filePickerBuilder.setKeepScreenOnEnable(noteConfigManager.getScreenOnOption().get()).setHideStatusBar(noteConfigManager.getStatusBarHideOption().get());
    }
}
