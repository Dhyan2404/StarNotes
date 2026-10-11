package com.onyx.android.sdk.replicator.note.data.info;

import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.base.data.SizeF;
import com.onyx.android.sdk.base.utils.ResManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.apache.commons.lang3.StringUtils;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0007R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/info/NoteDeviceInfo;", "", "()V", "deviceName", "", "getDeviceName", "()Ljava/lang/String;", "setDeviceName", "(Ljava/lang/String;)V", "size", "Lcom/onyx/android/sdk/base/data/SizeF;", "getSize", "()Lcom/onyx/android/sdk/base/data/SizeF;", "setSize", "(Lcom/onyx/android/sdk/base/data/SizeF;)V", "getDeviceRect", "Landroid/graphics/Rect;", "getDeviceRectF", "Landroid/graphics/RectF;", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class NoteDeviceInfo {

    @Nullable
    private String deviceName;

    @NotNull
    private SizeF size;

    public NoteDeviceInfo() {
        ResManager resManager = ResManager.INSTANCE;
        this.size = new SizeF(resManager.getShorterScreenSize(), resManager.getLongerScreenSize());
        if (StringUtils.isEmpty(this.deviceName)) {
            this.deviceName = Build.MODEL;
        }
    }

    @Nullable
    public final String getDeviceName() {
        return this.deviceName;
    }

    @JSONField(serialize = false)
    @NotNull
    public final Rect getDeviceRect() {
        return new Rect(0, 0, (int) this.size.getWidth(), (int) this.size.getHeight());
    }

    @JSONField(serialize = false)
    @NotNull
    public final RectF getDeviceRectF() {
        return new RectF(0.0f, 0.0f, this.size.getWidth(), this.size.getHeight());
    }

    @NotNull
    public final SizeF getSize() {
        return this.size;
    }

    public final void setDeviceName(@Nullable String str) {
        this.deviceName = str;
    }

    public final void setSize(@NotNull SizeF sizeF) {
        Intrinsics.checkNotNullParameter(sizeF, "<set-?>");
        this.size = sizeF;
    }
}
