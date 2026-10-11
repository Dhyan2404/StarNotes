package com.onyx.android.sdk.reader.data;

import android.net.Uri;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\u0005\u001a\u0004\u0018\u00010\u0004HÆ\u0003J\u001f\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0006\u001a\u00020\u00022\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004HÆ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\t\u0010\u000b\u001a\u00020\u0002HÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\"\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R$\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/data/RenderBackgroundArgs;", "", "", "component1", "Landroid/net/Uri;", "component2", "color", "imageUri", "copy", "", "toString", "hashCode", Constants.ATTRVAL_OTHER, "", "equals", "a", "I", "getColor", "()I", "setColor", "(I)V", "b", "Landroid/net/Uri;", "getImageUri", "()Landroid/net/Uri;", "setImageUri", "(Landroid/net/Uri;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(ILandroid/net/Uri;)V", "sdk-reader_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final /* data */ class RenderBackgroundArgs {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    public int color;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @Nullable
    public Uri imageUri;

    /* JADX WARN: Multi-variable type inference failed */
    public RenderBackgroundArgs() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ RenderBackgroundArgs copy$default(RenderBackgroundArgs renderBackgroundArgs, int i, Uri uri, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = renderBackgroundArgs.color;
        }
        if ((i2 & 2) != 0) {
            uri = renderBackgroundArgs.imageUri;
        }
        return renderBackgroundArgs.copy(i, uri);
    }

    /* renamed from: component1, reason: from getter */
    public final int getColor() {
        return this.color;
    }

    @Nullable
    /* renamed from: component2, reason: from getter */
    public final Uri getImageUri() {
        return this.imageUri;
    }

    @NotNull
    public final RenderBackgroundArgs copy(int color, @Nullable Uri imageUri) {
        return new RenderBackgroundArgs(color, imageUri);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RenderBackgroundArgs)) {
            return false;
        }
        RenderBackgroundArgs renderBackgroundArgs = (RenderBackgroundArgs) other;
        return this.color == renderBackgroundArgs.color && Intrinsics.areEqual(this.imageUri, renderBackgroundArgs.imageUri);
    }

    public final int getColor() {
        return this.color;
    }

    @Nullable
    public final Uri getImageUri() {
        return this.imageUri;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.color) * 31;
        Uri uri = this.imageUri;
        return hashCode + (uri == null ? 0 : uri.hashCode());
    }

    public final void setColor(int i) {
        this.color = i;
    }

    public final void setImageUri(@Nullable Uri uri) {
        this.imageUri = uri;
    }

    @NotNull
    public String toString() {
        return "RenderBackgroundArgs(color=" + this.color + ", imageUri=" + this.imageUri + ')';
    }

    public RenderBackgroundArgs(int i, @Nullable Uri uri) {
        this.color = i;
        this.imageUri = uri;
    }

    public /* synthetic */ RenderBackgroundArgs(int i, Uri uri, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? null : uri);
    }
}
