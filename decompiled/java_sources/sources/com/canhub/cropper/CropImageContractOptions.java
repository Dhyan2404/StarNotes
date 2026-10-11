package com.canhub.cropper;

import android.net.Uri;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0018\u0010\u0019J\u000b\u0010\u0003\u001a\u0004\u0018\u00010\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\f\u001a\u00020\u000bHÖ\u0001J\u0013\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0007\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, m61528d2 = {"Lcom/canhub/cropper/CropImageContractOptions;", "", "Landroid/net/Uri;", "component1", "Lcom/canhub/cropper/CropImageOptions;", "component2", "uri", "cropImageOptions", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "Landroid/net/Uri;", "getUri", "()Landroid/net/Uri;", "b", "Lcom/canhub/cropper/CropImageOptions;", "getCropImageOptions", "()Lcom/canhub/cropper/CropImageOptions;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/net/Uri;Lcom/canhub/cropper/CropImageOptions;)V", "cropper_release"}, m61529k = 1, m61530mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final /* data */ class CropImageContractOptions {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @Nullable
    public final Uri uri;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final CropImageOptions cropImageOptions;

    public CropImageContractOptions(@Nullable Uri uri, @NotNull CropImageOptions cropImageOptions) {
        Intrinsics.checkNotNullParameter(cropImageOptions, "cropImageOptions");
        this.uri = uri;
        this.cropImageOptions = cropImageOptions;
    }

    public static /* synthetic */ CropImageContractOptions copy$default(CropImageContractOptions cropImageContractOptions, Uri uri, CropImageOptions cropImageOptions, int i, Object obj) {
        if ((i & 1) != 0) {
            uri = cropImageContractOptions.uri;
        }
        if ((i & 2) != 0) {
            cropImageOptions = cropImageContractOptions.cropImageOptions;
        }
        return cropImageContractOptions.copy(uri, cropImageOptions);
    }

    @Nullable
    /* renamed from: component1, reason: from getter */
    public final Uri getUri() {
        return this.uri;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final CropImageOptions getCropImageOptions() {
        return this.cropImageOptions;
    }

    @NotNull
    public final CropImageContractOptions copy(@Nullable Uri uri, @NotNull CropImageOptions cropImageOptions) {
        Intrinsics.checkNotNullParameter(cropImageOptions, "cropImageOptions");
        return new CropImageContractOptions(uri, cropImageOptions);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CropImageContractOptions)) {
            return false;
        }
        CropImageContractOptions cropImageContractOptions = (CropImageContractOptions) other;
        return Intrinsics.areEqual(this.uri, cropImageContractOptions.uri) && Intrinsics.areEqual(this.cropImageOptions, cropImageContractOptions.cropImageOptions);
    }

    @NotNull
    public final CropImageOptions getCropImageOptions() {
        return this.cropImageOptions;
    }

    @Nullable
    public final Uri getUri() {
        return this.uri;
    }

    public int hashCode() {
        Uri uri = this.uri;
        return ((uri == null ? 0 : uri.hashCode()) * 31) + this.cropImageOptions.hashCode();
    }

    @NotNull
    public String toString() {
        return "CropImageContractOptions(uri=" + this.uri + ", cropImageOptions=" + this.cropImageOptions + ')';
    }
}
