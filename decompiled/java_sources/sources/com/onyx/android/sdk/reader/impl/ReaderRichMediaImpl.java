package com.onyx.android.sdk.reader.impl;

import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.onyx.android.sdk.note.common.data.shape.UniversalShapeTypeConst;
import com.onyx.android.sdk.reader.api.ReaderRichMedia;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0015\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB'\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u001a\u0010\u001bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\n\u0010\t\u001a\u0004\u0018\u00010\bH\u0016R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0017\u0010\u0012\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u0019\u0010\t\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018¨\u0006\u001d"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderRichMediaImpl;", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia$MediaType;", "mediaType", "", "name", "Landroid/graphics/RectF;", UniversalShapeTypeConst.RECTANGLE, "", "data", "a", Constants.STRING_SIG, "getName", "()Ljava/lang/String;", "b", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "rect", "c", "[B", "getData", "()[B", "d", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia$MediaType;", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Landroid/graphics/RectF;[B)V", "Companion", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class ReaderRichMediaImpl implements ReaderRichMedia {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String name;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RectF rect;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final byte[] data;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ReaderRichMedia.MediaType type;

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J,\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r¨\u0006\u000e"}, m61528d2 = {"Lcom/onyx/android/sdk/reader/impl/ReaderRichMediaImpl$Companion;", "", "()V", "addToList", "", "list", "", "Lcom/onyx/android/sdk/reader/api/ReaderRichMedia;", HuaweiYunQueryArgs.FILE_NAME, "", "rect", "Landroid/graphics/RectF;", "data", "", "sdk-readercore_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addToList(@NotNull List<ReaderRichMedia> list, @NotNull String fileName, @NotNull RectF rect, @NotNull byte[] data) {
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(data, "data");
            list.add(new ReaderRichMediaImpl(fileName, rect, data));
        }

        public Companion() {
        }
    }

    public ReaderRichMediaImpl() {
        this(null, null, null, 7, null);
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRichMedia
    @Nullable
    /* renamed from: data, reason: from getter */
    public byte[] getData() {
        return this.data;
    }

    @Nullable
    public final byte[] getData() {
        return this.data;
    }

    @NotNull
    public final String getName() {
        return this.name;
    }

    @NotNull
    public final RectF getRect() {
        return this.rect;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRichMedia
    @NotNull
    /* renamed from: mediaType, reason: from getter */
    public ReaderRichMedia.MediaType getType() {
        return this.type;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRichMedia
    @NotNull
    public String name() {
        return this.name;
    }

    @Override // com.onyx.android.sdk.reader.api.ReaderRichMedia
    @NotNull
    public RectF rectangle() {
        return this.rect;
    }

    public ReaderRichMediaImpl(@NotNull String name, @NotNull RectF rect, @Nullable byte[] bArr) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.name = name;
        this.rect = rect;
        this.data = bArr;
        this.type = ReaderRichMedia.MediaType.Audio;
    }

    public /* synthetic */ ReaderRichMediaImpl(String str, RectF rectF, byte[] bArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? new RectF() : rectF, (i & 4) != 0 ? null : bArr);
    }
}
