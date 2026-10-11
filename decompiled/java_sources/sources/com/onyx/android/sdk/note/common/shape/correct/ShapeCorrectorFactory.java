package com.onyx.android.sdk.note.common.shape.correct;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.note.common.data.shape.ShapeTransformAction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectorFactory;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrector;", "args", "Lcom/onyx/android/sdk/note/common/shape/correct/ShapeCorrectionArgs;", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class ShapeCorrectorFactory {

    @NotNull
    public static final ShapeCorrectorFactory INSTANCE = new ShapeCorrectorFactory();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ShapeTransformAction.values().length];
            try {
                iArr[ShapeTransformAction.Translate.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShapeTransformAction.Rotation.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ShapeTransformAction.Drag.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final ShapeCorrector create(@NotNull ShapeCorrectionArgs args) {
        Intrinsics.checkNotNullParameter(args, "args");
        int i = WhenMappings.$EnumSwitchMapping$0[args.getTransformAction().ordinal()];
        return (i == 1 || i == 2 || i == 3) ? new DefaultShapeCorrector() : ShapeCorrector.INSTANCE.getEmptyShapeCorrector();
    }
}
