package com.onyx.android.sdk.neopdf;

import androidx.core.graphics.drawable.IconCompat;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0005¢\u0006\u0002\u0010\u0002J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\b¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo;", "Ljava/io/Serializable;", "()V", "currentLayerId", "", "layers", "", "Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;", "[Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;", "equals", "", IconCompat.f5434l, "", androidx.constraintlayout.helper.widget.Layer.f3474r, "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class PdfPageLayerInfo implements Serializable {

    @JvmField
    @Nullable
    public String currentLayerId;

    @JvmField
    @Nullable
    public Layer[] layers;

    @Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0019\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007R\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfPageLayerInfo$Layer;", "", "()V", "id", "", "visible", "", "(Ljava/lang/String;Z)V", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Layer {

        @JvmField
        @Nullable
        public String id;

        @JvmField
        public boolean visible;

        public Layer() {
        }

        public Layer(@Nullable String str, boolean z) {
            this.id = str;
            this.visible = z;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof PdfPageLayerInfo)) {
            return false;
        }
        PdfPageLayerInfo pdfPageLayerInfo = (PdfPageLayerInfo) obj;
        if (!Intrinsics.areEqual(this.currentLayerId, pdfPageLayerInfo.currentLayerId)) {
            return false;
        }
        Layer[] layerArr = this.layers;
        if (layerArr == null && pdfPageLayerInfo.layers == null) {
            return true;
        }
        if (layerArr == null || pdfPageLayerInfo.layers == null) {
            return false;
        }
        Intrinsics.checkNotNull(layerArr);
        int length = layerArr.length;
        Layer[] layerArr2 = pdfPageLayerInfo.layers;
        Intrinsics.checkNotNull(layerArr2);
        if (length != layerArr2.length) {
            return false;
        }
        Layer[] layerArr3 = this.layers;
        Intrinsics.checkNotNull(layerArr3);
        int length2 = layerArr3.length;
        for (int i = 0; i < length2; i++) {
            Layer[] layerArr4 = this.layers;
            Intrinsics.checkNotNull(layerArr4);
            String str = layerArr4[i].id;
            Layer[] layerArr5 = pdfPageLayerInfo.layers;
            Intrinsics.checkNotNull(layerArr5);
            if (Intrinsics.areEqual(str, layerArr5[i].id)) {
                Layer[] layerArr6 = this.layers;
                Intrinsics.checkNotNull(layerArr6);
                boolean z = layerArr6[i].visible;
                Layer[] layerArr7 = pdfPageLayerInfo.layers;
                Intrinsics.checkNotNull(layerArr7);
                if (z == layerArr7[i].visible) {
                }
            }
            return false;
        }
        return true;
    }
}
