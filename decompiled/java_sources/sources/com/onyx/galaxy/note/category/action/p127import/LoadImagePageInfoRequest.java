package com.onyx.galaxy.note.category.action.p127import;

import com.onyx.android.sdk.base.data.Size;
import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.BitmapUtils;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.reader.data.ReaderPageInfo;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0004\u001a\u00020\u0002H\u0002R\u0017\u0010\t\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\"\u0010\u0015\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, m61528d2 = {"Lcom/onyx/galaxy/note/category/action/import/LoadImagePageInfoRequest;", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "", "execute", "a", "", Constants.STRING_SIG, "getPath", "()Ljava/lang/String;", "path", "Lcom/onyx/android/sdk/base/data/Size;", "b", "Lcom/onyx/android/sdk/base/data/Size;", "maxPageSize", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "c", "Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "getReaderPageInfo", "()Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;", "setReaderPageInfo", "(Lcom/onyx/android/sdk/reader/data/ReaderPageInfo;)V", "readerPageInfo", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Lcom/onyx/android/sdk/base/data/Size;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class LoadImagePageInfoRequest extends RxBaseRequest<Unit> {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final String path;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final Size maxPageSize;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public ReaderPageInfo readerPageInfo;

    public LoadImagePageInfoRequest(@NotNull String path, @NotNull Size maxPageSize) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(maxPageSize, "maxPageSize");
        this.path = path;
        this.maxPageSize = maxPageSize;
        this.readerPageInfo = new ReaderPageInfo();
    }

    /* renamed from: a */
    public final void m42714a() {
        if (FileUtils.INSTANCE.fileExist(this.path)) {
            this.readerPageInfo.setPath(this.path);
            Size size = new Size(0, 0, 3, null);
            if (BitmapUtils.INSTANCE.decodeBitmapSizeSupportExif(this.path, size)) {
                this.readerPageInfo.getPageOriginSize().set(size.ratioPageSize(this.maxPageSize));
            }
        }
    }

    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    public /* bridge */ /* synthetic */ Unit execute() {
        execute2();
        return Unit.INSTANCE;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @NotNull
    public final ReaderPageInfo getReaderPageInfo() {
        return this.readerPageInfo;
    }

    public final void setReaderPageInfo(@NotNull ReaderPageInfo readerPageInfo) {
        Intrinsics.checkNotNullParameter(readerPageInfo, "<set-?>");
        this.readerPageInfo = readerPageInfo;
    }

    /* renamed from: execute, reason: avoid collision after fix types in other method */
    public void execute2() {
        m42714a();
    }
}
