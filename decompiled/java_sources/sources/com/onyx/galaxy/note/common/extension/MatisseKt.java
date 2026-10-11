package com.onyx.galaxy.note.common.extension;

import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.imagepicker.C7453R;
import com.onyx.android.sdk.matisse.GifSizeFilter;
import com.onyx.android.sdk.matisse.Matisse;
import com.onyx.android.sdk.matisse.MimeType;
import com.onyx.android.sdk.matisse.SelectionCreator;
import com.onyx.android.sdk.matisse.engine.impl.GlideEngine;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.settings.data.NoteConfigManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007¨\u0006\u0003"}, m61528d2 = {"buildSelectionCreator", "Lcom/onyx/android/sdk/matisse/SelectionCreator;", "Lcom/onyx/android/sdk/matisse/Matisse;", "note_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public final class MatisseKt {
    @Subscribe(threadMode = ThreadMode.MAIN)
    @NotNull
    public static final SelectionCreator buildSelectionCreator(@NotNull Matisse matisse) {
        Intrinsics.checkNotNullParameter(matisse, "<this>");
        SelectionCreator originalEnable = matisse.choose(MimeType.ofImage()).showSingleMediaType(true).setKeepScreenOnEnable(Boolean.valueOf(NoteConfigManager.INSTANCE.getScreenOnOption().get())).countable(true).originalEnable(false);
        ResManager resManager = ResManager.INSTANCE;
        SelectionCreator theme = originalEnable.addFilter(new GifSizeFilter(resManager.getInteger(C10651R.integer.image_picker_min_size), resManager.getInteger(C10651R.integer.image_picker_min_size), resManager.getInteger(C10651R.integer.image_quality_max) * 1024 * 1024)).gridExpectedSize(resManager.getDimensionPixelSize(C10651R.dimen.grid_expected_size)).maxSelectable(resManager.getInteger(C10651R.integer.image_picker_max_count)).maxOriginalSize(resManager.getInteger(C10651R.integer.image_quality_max)).imageEngine(new GlideEngine()).theme(C7453R.style.Matisse_Dracula);
        Intrinsics.checkNotNullExpressionValue(theme, "theme(...)");
        return theme;
    }
}
