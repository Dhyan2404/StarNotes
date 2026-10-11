package com.onyx.android.sdk.note.common.data.render;

import com.onyx.android.sdk.base.extension.ColorKt;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.android.sdk.pen.NeoPen;
import com.onyx.android.sdk.pen.NeoPenConfig;
import com.onyx.android.sdk.pen.NeoSquarePen;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;", "Lcom/onyx/android/sdk/note/common/data/render/NeoPenRenderWrapper;", "neoPen", "Lcom/onyx/android/sdk/pen/NeoPen;", "segment", "", "(Lcom/onyx/android/sdk/pen/NeoPen;Z)V", "Companion", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class CalligraphyPenRenderWrapper extends NeoPenRenderWrapper {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper$Companion;", "", "()V", BaiduYunConstant.CREATE, "Lcom/onyx/android/sdk/note/common/data/render/CalligraphyPenRenderWrapper;", "neoPenConfig", "Lcom/onyx/android/sdk/pen/NeoPenConfig;", "segment", "", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ CalligraphyPenRenderWrapper create$default(Companion companion, NeoPenConfig neoPenConfig, boolean z, int i, Object obj) {
            if ((i & 2) != 0) {
                z = ColorKt.isColorOpaque(neoPenConfig.getColor());
            }
            return companion.create(neoPenConfig, z);
        }

        @Nullable
        public final CalligraphyPenRenderWrapper create(@NotNull NeoPenConfig neoPenConfig, boolean segment) {
            Intrinsics.checkNotNullParameter(neoPenConfig, "neoPenConfig");
            NeoPen create = NeoSquarePen.INSTANCE.create(neoPenConfig);
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (create == null) {
                return null;
            }
            return new CalligraphyPenRenderWrapper(create, segment, defaultConstructorMarker);
        }

        public Companion() {
        }
    }

    public /* synthetic */ CalligraphyPenRenderWrapper(NeoPen neoPen, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(neoPen, z);
    }

    public CalligraphyPenRenderWrapper(NeoPen neoPen, boolean z) {
        super(neoPen, z);
    }
}
