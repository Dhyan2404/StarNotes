package com.onyx.android.sdk.replicator.note.data.page;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0019\u001a\u00020\u0000H\u0016J\u0013\u0010\u001a\u001a\u00020\u000b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0096\u0002J\b\u0010\u001d\u001a\u00020\u0005H\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0000H\u0007R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u00020\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\r\"\u0004\b\u0018\u0010\u000f¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/data/page/LayerInfo;", "Ljava/io/Serializable;", "", "()V", "id", "", "getId", "()I", "setId", "(I)V", DevicePushAction.LOCK_DEVICE, "", "getLock", Constants.BOOLEAN_VALUE_SIG, "setLock", "(Z)V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "show", "getShow", "setShow", "clone", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "mergeLayerInfo", "", "layerInfo", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class LayerInfo implements Serializable, Cloneable {
    private int id;
    private boolean lock;

    @Nullable
    private String name;
    private boolean show = true;

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof LayerInfo)) {
            return false;
        }
        LayerInfo layerInfo = (LayerInfo) other;
        return Intrinsics.areEqual(this.name, layerInfo.name) && this.show == layerInfo.show && this.id == layerInfo.id && this.lock == layerInfo.lock;
    }

    public final int getId() {
        return this.id;
    }

    public final boolean getLock() {
        return this.lock;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public final boolean getShow() {
        return this.show;
    }

    public int hashCode() {
        String str = this.name;
        return ((((((str != null ? str.hashCode() : 0) * 31) + Boolean.hashCode(this.show)) * 31) + this.id) * 31) + Boolean.hashCode(this.lock);
    }

    @JSONField(serialize = false)
    public final void mergeLayerInfo(@NotNull LayerInfo layerInfo) {
        Intrinsics.checkNotNullParameter(layerInfo, "layerInfo");
        this.show = layerInfo.show;
        this.lock = layerInfo.lock;
    }

    public final void setId(int i) {
        this.id = i;
    }

    public final void setLock(boolean z) {
        this.lock = z;
    }

    public final void setName(@Nullable String str) {
        this.name = str;
    }

    public final void setShow(boolean z) {
        this.show = z;
    }

    @NotNull
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public LayerInfo m72356clone() throws CloneNotSupportedException {
        Object clone = super.clone();
        Intrinsics.checkNotNull(clone, "null cannot be cast to non-null type com.onyx.android.sdk.replicator.note.data.page.LayerInfo");
        return (LayerInfo) clone;
    }
}
