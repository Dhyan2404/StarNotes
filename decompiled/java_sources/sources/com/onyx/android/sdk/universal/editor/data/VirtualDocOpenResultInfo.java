package com.onyx.android.sdk.universal.editor.data;

import com.onyx.android.sdk.genericshape.GeoLayout;
import com.onyx.android.sdk.geometry.data.BoxInfo;
import com.onyx.android.sdk.replicator.note.p035db.model.VirtualDocModel;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/VirtualDocOpenResultInfo;", "", "()V", "geoLayoutBackground", "Lcom/onyx/android/sdk/genericshape/GeoLayout;", "getGeoLayoutBackground", "()Lcom/onyx/android/sdk/genericshape/GeoLayout;", "setGeoLayoutBackground", "(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V", "virtualDocModel", "Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "getVirtualDocModel", "()Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;", "setVirtualDocModel", "(Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocModel;)V", "virtualPageBoxInfo", "Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "getVirtualPageBoxInfo", "()Lcom/onyx/android/sdk/geometry/data/BoxInfo;", "setVirtualPageBoxInfo", "(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualDocOpenResultInfo {

    @Nullable
    private GeoLayout geoLayoutBackground;

    @Nullable
    private VirtualDocModel virtualDocModel;

    @Nullable
    private BoxInfo virtualPageBoxInfo;

    @Nullable
    public final GeoLayout getGeoLayoutBackground() {
        return this.geoLayoutBackground;
    }

    @Nullable
    public final VirtualDocModel getVirtualDocModel() {
        return this.virtualDocModel;
    }

    @Nullable
    public final BoxInfo getVirtualPageBoxInfo() {
        return this.virtualPageBoxInfo;
    }

    public final void setGeoLayoutBackground(@Nullable GeoLayout geoLayout) {
        this.geoLayoutBackground = geoLayout;
    }

    public final void setVirtualDocModel(@Nullable VirtualDocModel virtualDocModel) {
        this.virtualDocModel = virtualDocModel;
    }

    public final void setVirtualPageBoxInfo(@Nullable BoxInfo boxInfo) {
        this.virtualPageBoxInfo = boxInfo;
    }
}
