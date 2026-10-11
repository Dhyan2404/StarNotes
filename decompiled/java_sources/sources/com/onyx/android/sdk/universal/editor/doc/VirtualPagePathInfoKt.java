package com.onyx.android.sdk.universal.editor.doc;

import com.onyx.android.sdk.base.extension.AnyKt;
import com.onyx.android.sdk.base.extension.Paths;
import com.onyx.android.sdk.base.utils.FileUtils;
import com.onyx.android.sdk.data.common.path.CommonPaths;
import com.onyx.android.sdk.data.common.path.ContentPaths;
import com.onyx.android.sdk.data.common.path.TemplatePaths;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00010\u0004*\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, m61528d2 = {"toVirtualPagePathInfo", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfo;", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageAbsolutePathInfo;", "toVirtualPagePathInfoList", "", "Lcom/onyx/android/sdk/universal/editor/doc/VirtualPageRelativePathInfo;", "documentId", "", "sdk-universal_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nVirtualPagePathInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1549#2:80\n1620#2,2:81\n1622#2:84\n1#3:83\n*S KotlinDebug\n*F\n+ 1 VirtualPagePathInfo.kt\ncom/onyx/android/sdk/universal/editor/doc/VirtualPagePathInfoKt\n*L\n52#1:80\n52#1:81,2\n52#1:84\n*E\n"})
/* loaded from: classes8.dex */
public final class VirtualPagePathInfoKt {
    @NotNull
    public static final VirtualPagePathInfo toVirtualPagePathInfo(@NotNull VirtualPageAbsolutePathInfo virtualPageAbsolutePathInfo) {
        Intrinsics.checkNotNullParameter(virtualPageAbsolutePathInfo, "<this>");
        return new VirtualPagePathInfo(virtualPageAbsolutePathInfo.getContentType(), ContentPaths.INSTANCE.contentRelativePath(virtualPageAbsolutePathInfo.getContentType(), virtualPageAbsolutePathInfo.getAbsolutePath()), virtualPageAbsolutePathInfo.getAbsolutePath());
    }

    @NotNull
    public static final List<VirtualPagePathInfo> toVirtualPagePathInfoList(@NotNull List<VirtualPageRelativePathInfo> list, @NotNull String documentId) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Intrinsics.checkNotNullParameter(documentId, "documentId");
        String obj = CommonPaths.INSTANCE.appDocDir(documentId).toAbsolutePath().toString();
        List<VirtualPageRelativePathInfo> list2 = list;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (final VirtualPageRelativePathInfo virtualPageRelativePathInfo : list2) {
            String absolutePath = Paths.INSTANCE.absolutePath(virtualPageRelativePathInfo.getRelativePath(), obj);
            FileUtils fileUtils = FileUtils.INSTANCE;
            if (!fileUtils.fileExist(absolutePath)) {
                String templateResAbsolutePath = TemplatePaths.INSTANCE.templateResAbsolutePath(virtualPageRelativePathInfo.getRelativePath());
                if (!fileUtils.isFileExist(templateResAbsolutePath)) {
                    templateResAbsolutePath = null;
                }
                absolutePath = (String) AnyKt.getOrElse(templateResAbsolutePath, new Function0<String>() { // from class: com.onyx.android.sdk.universal.editor.doc.VirtualPagePathInfoKt$toVirtualPagePathInfoList$1$absolutePath$2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    @NotNull
                    public final String invoke() {
                        return ContentPaths.INSTANCE.contentAbsolutePath(VirtualPageRelativePathInfo.this.getContentType(), VirtualPageRelativePathInfo.this.getRelativePath());
                    }
                });
            }
            arrayList.add(new VirtualPagePathInfo(virtualPageRelativePathInfo.getContentType(), virtualPageRelativePathInfo.getRelativePath(), absolutePath));
        }
        return arrayList;
    }
}
