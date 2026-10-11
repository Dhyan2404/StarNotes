package com.onyx.android.sdk.neopdf;

import android.graphics.RectF;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.bean.HuaweiYunQueryArgs;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\t\u0018\u0000  2\u00020\u0001:\u0001 B\u0007¢\u0006\u0004\b\u001e\u0010\u001fR$\u0010\b\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R(\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR(\u0010\u0011\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\t8\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u000f\u0010\u000b\u001a\u0004\b\u0010\u0010\rR(\u0010\u0017\u001a\u0004\u0018\u00010\u00122\b\u0010\u0003\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R(\u0010\u001d\u001a\u0004\u0018\u00010\u00182\b\u0010\u0003\u001a\u0004\u0018\u00010\u00188\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006!"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;", "", "", "<set-?>", "a", "I", "getMediaType", "()I", "mediaType", "", "b", Constants.STRING_SIG, "getObjId", "()Ljava/lang/String;", "objId", "c", "getName", "name", "Landroid/graphics/RectF;", "d", "Landroid/graphics/RectF;", "getRect", "()Landroid/graphics/RectF;", "rect", "", "e", "[B", "getData", "()[B", "data", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "Companion", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public final class PdfRichMediaObject {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int MEDIA_TYPE_AUDIO = 1;
    public static final int MEDIA_TYPE_NONE = 0;

    /* renamed from: a, reason: from kotlin metadata */
    public int mediaType;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public String objId;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public String name;

    /* renamed from: d, reason: from kotlin metadata */
    @Nullable
    public RectF rect;

    /* renamed from: e, reason: from kotlin metadata */
    @Nullable
    public byte[] data;

    @Metadata(m61527d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0012\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JB\u0010\u0006\u001a\u00020\u00072\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t2\u0006\u0010\u000b\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject$Companion;", "", "()V", "MEDIA_TYPE_AUDIO", "", "MEDIA_TYPE_NONE", "addToList", "", "list", "", "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;", "mediaType", "objId", "", HuaweiYunQueryArgs.FILE_NAME, "rect", "", "data", "", "sdk-neopdf_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void addToList(@NotNull List<PdfRichMediaObject> list, int mediaType, @Nullable String objId, @Nullable String fileName, @NotNull float[] rect, @NotNull byte[] data) {
            Intrinsics.checkNotNullParameter(list, "list");
            Intrinsics.checkNotNullParameter(rect, "rect");
            Intrinsics.checkNotNullParameter(data, "data");
            PdfRichMediaObject pdfRichMediaObject = new PdfRichMediaObject();
            pdfRichMediaObject.mediaType = mediaType;
            pdfRichMediaObject.objId = objId;
            pdfRichMediaObject.name = fileName;
            pdfRichMediaObject.rect = new RectF(rect[0], rect[1], rect[2], rect[3]);
            pdfRichMediaObject.data = data;
            list.add(pdfRichMediaObject);
        }

        public Companion() {
        }
    }

    @Nullable
    public final byte[] getData() {
        return this.data;
    }

    public final int getMediaType() {
        return this.mediaType;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    @Nullable
    public final String getObjId() {
        return this.objId;
    }

    @Nullable
    public final RectF getRect() {
        return this.rect;
    }
}
