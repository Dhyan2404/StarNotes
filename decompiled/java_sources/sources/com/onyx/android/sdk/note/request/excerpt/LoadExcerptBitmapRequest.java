package com.onyx.android.sdk.note.request.excerpt;

import android.graphics.Bitmap;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.extension.StringKt;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.note.NoteBundle;
import com.onyx.android.sdk.note.common.document.doc.NoteExcerptProviderKt;
import com.onyx.android.sdk.note.request.BaseRxNoteRequest;
import com.onyx.android.sdk.replicator.note.data.excerpt.ExcerptInfoBean;
import com.onyx.android.sdk.replicator.note.p035db.model.ResourceModel;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR$\u0010\u0014\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\b\u001a\u0004\b\u0016\u0010\n\"\u0004\b\u0017\u0010\fR$\u0010 \u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001f¨\u0006#"}, m61528d2 = {"Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptBitmapRequest;", "Lcom/onyx/android/sdk/note/request/BaseRxNoteRequest;", "Lcom/onyx/android/sdk/note/NoteBundle;", "noteBundle", "", "execute", "", "excerptId", Constants.STRING_SIG, "getExcerptId", "()Ljava/lang/String;", "setExcerptId", "(Ljava/lang/String;)V", "Landroid/graphics/Bitmap;", C6998g.f39679a, "Landroid/graphics/Bitmap;", "getBitmap", "()Landroid/graphics/Bitmap;", "setBitmap", "(Landroid/graphics/Bitmap;)V", "bitmap", C6999h.f39688c, "getImgPath", "setImgPath", "imgPath", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "i", "Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "getExcerptInfoBean", "()Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;", "setExcerptInfoBean", "(Lcom/onyx/android/sdk/replicator/note/data/excerpt/ExcerptInfoBean;)V", "excerptInfoBean", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/note/NoteBundle;)V", "sdk-note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class LoadExcerptBitmapRequest extends BaseRxNoteRequest {
    public String excerptId;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public Bitmap bitmap;

    /* renamed from: h, reason: from kotlin metadata */
    @NotNull
    public String imgPath;

    /* renamed from: i, reason: from kotlin metadata */
    @Nullable
    public ExcerptInfoBean excerptInfoBean;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadExcerptBitmapRequest(@NotNull NoteBundle noteBundle) {
        super(noteBundle);
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        this.imgPath = "";
    }

    @Override // com.onyx.android.sdk.note.request.BaseRxNoteRequest
    public void execute(@NotNull NoteBundle noteBundle) {
        ResourceModel loadResourceModel;
        Intrinsics.checkNotNullParameter(noteBundle, "noteBundle");
        ExcerptInfoBean loadExcerpt = NoteExcerptProviderKt.loadExcerpt(noteBundle.getNoteDoc(), getExcerptId());
        if (loadExcerpt == null || (loadResourceModel = noteBundle.getNoteDoc().getProviderHolder().getNoteResourceProvider().loadResourceModel(loadExcerpt.getImgId())) == null) {
            return;
        }
        String path = loadResourceModel.getPath();
        Size size = new Size(0, 0, 3, null);
        BitmapUtils bitmapUtils = BitmapUtils.INSTANCE;
        if (bitmapUtils.decodeBitmapSizeSupportExif(path, size)) {
            this.bitmap = bitmapUtils.decodeBitmap(path, size.getWidth(), size.getHeight());
            this.imgPath = StringKt.safelyGetStr(path);
            this.excerptInfoBean = loadExcerpt;
        }
    }

    @Nullable
    public final Bitmap getBitmap() {
        return this.bitmap;
    }

    @NotNull
    public final String getExcerptId() {
        String str = this.excerptId;
        if (str != null) {
            return str;
        }
        Intrinsics.throwUninitializedPropertyAccessException("excerptId");
        return null;
    }

    @Nullable
    public final ExcerptInfoBean getExcerptInfoBean() {
        return this.excerptInfoBean;
    }

    @NotNull
    public final String getImgPath() {
        return this.imgPath;
    }

    public final void setBitmap(@Nullable Bitmap bitmap) {
        this.bitmap = bitmap;
    }

    public final void setExcerptId(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.excerptId = str;
    }

    public final void setExcerptInfoBean(@Nullable ExcerptInfoBean excerptInfoBean) {
        this.excerptInfoBean = excerptInfoBean;
    }

    public final void setImgPath(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.imgPath = str;
    }
}
