package com.onyx.galaxy.note.common.request;

import android.content.Context;
import com.onyx.android.sdk.data.common.cloud.BaseCloudRequest;
import com.onyx.android.sdk.data.common.oss.RxOSSManager;
import com.sun.org.apache.bcel.internal.Constants;
import java.io.File;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\t\u0012\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0016R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\f\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u001a\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\r0\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, m61528d2 = {"Lcom/onyx/galaxy/note/common/request/UploadToOssRequest;", "Lcom/onyx/android/sdk/data/common/cloud/BaseCloudRequest;", "", "", "execute", "Landroid/content/Context;", "a", "Landroid/content/Context;", "context", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "b", "Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;", "rxOSSManager", "Ljava/io/File;", "c", "Ljava/util/List;", "files", Constants.CONSTRUCTOR_NAME, "(Landroid/content/Context;Lcom/onyx/android/sdk/data/common/oss/RxOSSManager;Ljava/util/List;)V", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nUploadToOssRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UploadToOssRequest.kt\ncom/onyx/galaxy/note/common/request/UploadToOssRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,37:1\n1855#2,2:38\n*S KotlinDebug\n*F\n+ 1 UploadToOssRequest.kt\ncom/onyx/galaxy/note/common/request/UploadToOssRequest\n*L\n25#1:38,2\n*E\n"})
/* loaded from: classes9.dex */
public final class UploadToOssRequest extends BaseCloudRequest {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Context context;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final RxOSSManager rxOSSManager;

    /* renamed from: c, reason: from kotlin metadata */
    @NotNull
    public final List<File> files;

    public UploadToOssRequest(@NotNull Context context, @NotNull RxOSSManager rxOSSManager, @NotNull List<File> files) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(rxOSSManager, "rxOSSManager");
        Intrinsics.checkNotNullParameter(files, "files");
        this.context = context;
        this.rxOSSManager = rxOSSManager;
        this.files = files;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0038 A[LOOP:0: B:2:0x000d->B:10:0x0038, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0042 A[SYNTHETIC] */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execute() throws java.lang.Exception {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.List<java.io.File> r1 = r6.files
            java.lang.Iterable r1 = (java.lang.Iterable) r1
            java.util.Iterator r1 = r1.iterator()
        Ld:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L4a
            java.lang.Object r2 = r1.next()
            java.io.File r2 = (java.io.File) r2
            com.onyx.android.sdk.data.common.oss.RxOSSManager r3 = r6.rxOSSManager
            android.content.Context r4 = r6.context
            java.lang.String r2 = r2.getAbsolutePath()
            java.lang.String r5 = "getAbsolutePath(...)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r5)
            java.lang.String r2 = r3.syncUploadFile(r4, r2)
            if (r2 == 0) goto L35
            boolean r3 = kotlin.text.StringsKt.isBlank(r2)
            if (r3 == 0) goto L33
            goto L35
        L33:
            r3 = 0
            goto L36
        L35:
            r3 = 1
        L36:
            if (r3 != 0) goto L42
            com.onyx.android.sdk.data.common.oss.RxOSSManager r3 = r6.rxOSSManager
            java.lang.String r2 = r3.getOssUrl(r2)
            r0.add(r2)
            goto Ld
        L42:
            java.lang.Exception r6 = new java.lang.Exception
            java.lang.String r0 = "Oss fail, objectKey is null."
            r6.<init>(r0)
            throw r6
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onyx.galaxy.note.common.request.UploadToOssRequest.execute():java.util.List");
    }
}
