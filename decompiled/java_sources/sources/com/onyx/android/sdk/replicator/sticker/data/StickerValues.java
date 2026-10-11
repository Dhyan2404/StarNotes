package com.onyx.android.sdk.replicator.sticker.data;

import com.onyx.android.sdk.base.scheduler.RxScheduler;
import com.onyx.android.sdk.base.utils.ResManager;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u001d\u0010\u001eR\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0010R\u0014\u0010\u0012\u001a\u00020\u000e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0010R\u0017\u0010\u0018\u001a\u00020\u00138\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0017\u0010\u001c\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0010\u001a\u0004\b\u001a\u0010\u001b¨\u0006\u001f"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/sticker/data/StickerValues;", "", "", "CATEGORY_TYPE_ALL", "I", "CATEGORY_TYPE_RECENT", "CATEGORY_TYPE_USER", "CATEGORY_TYPE_OFFICIAL", "CATEGORY_TYPE_CUSTOM", "CATEGORY_TYPE_HOT", "CATEGORY_TYPE_MATERIALS", "CODE_RESPONSE_SUCCESS", "CODE_OBJECT_NOT_FOUND", "MAX_UPLOAD_SIZE", "", "DB_NAME", Constants.STRING_SIG, "CATEGORY_TYPE_MATERIALS_ID", "STICKER_MATERIAL_ADD_ID", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "a", "Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "getScheduler", "()Lcom/onyx/android/sdk/base/scheduler/RxScheduler;", "scheduler", "b", "getLocalCacheDir", "()Ljava/lang/String;", "localCacheDir", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class StickerValues {
    public static final int CATEGORY_TYPE_ALL = -1;
    public static final int CATEGORY_TYPE_CUSTOM = 2;
    public static final int CATEGORY_TYPE_HOT = 3;
    public static final int CATEGORY_TYPE_MATERIALS = 4;

    @NotNull
    public static final String CATEGORY_TYPE_MATERIALS_ID = "category_type_materials";
    public static final int CATEGORY_TYPE_OFFICIAL = 1;
    public static final int CATEGORY_TYPE_RECENT = -2;
    public static final int CATEGORY_TYPE_USER = 0;
    public static final int CODE_OBJECT_NOT_FOUND = 1;
    public static final int CODE_RESPONSE_SUCCESS = 0;

    @NotNull
    public static final String DB_NAME = "sticker";
    public static final int MAX_UPLOAD_SIZE = 20;

    @NotNull
    public static final String STICKER_MATERIAL_ADD_ID = "sticker_material_add_id";

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public static final String localCacheDir;

    @NotNull
    public static final StickerValues INSTANCE = new StickerValues();

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public static final RxScheduler scheduler = RxScheduler.Companion.newSingleThreadManager$default(RxScheduler.INSTANCE, "Thread-Sticker", 0, 2, null);

    static {
        String absolutePath = ResManager.INSTANCE.getAppContext().getFilesDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
        Path path = Paths.get(absolutePath, (String[]) Arrays.copyOf(new String[]{"sticker"}, 1));
        Intrinsics.checkNotNullExpressionValue(path, "get(base, *subpaths)");
        localCacheDir = path.toString();
    }

    @NotNull
    public final String getLocalCacheDir() {
        return localCacheDir;
    }

    @NotNull
    public final RxScheduler getScheduler() {
        return scheduler;
    }
}
