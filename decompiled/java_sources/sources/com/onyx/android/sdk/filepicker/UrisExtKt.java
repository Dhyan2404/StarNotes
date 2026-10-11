package com.onyx.android.sdk.filepicker;

import android.content.Context;
import android.net.Uri;
import com.onyx.android.sdk.base.extension.UriKt;
import com.onyx.android.sdk.base.utils.ResManager;
import com.onyx.android.sdk.base.utils.UriUtils;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0016\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, m61528d2 = {"toDocumentBeanList", "", "Lcom/onyx/android/sdk/filepicker/DocumentBean;", "Landroid/net/Uri;", "sdk-imagepicker_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nUrisExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UrisExt.kt\ncom/onyx/android/sdk/filepicker/UrisExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,35:1\n1855#2:36\n766#2:37\n857#2,2:38\n1856#2:40\n*S KotlinDebug\n*F\n+ 1 UrisExt.kt\ncom/onyx/android/sdk/filepicker/UrisExtKt\n*L\n14#1:36\n18#1:37\n18#1:38,2\n14#1:40\n*E\n"})
/* loaded from: classes7.dex */
public final class UrisExtKt {
    @NotNull
    public static final List<DocumentBean> toDocumentBeanList(@NotNull List<? extends Uri> list) {
        Object firstOrNull;
        boolean contains;
        boolean endsWith;
        Intrinsics.checkNotNullParameter(list, "<this>");
        Context appContext = ResManager.INSTANCE.getAppContext();
        ArrayList arrayList = new ArrayList();
        for (Uri uri : list) {
            String fileName = UriKt.getFileName(uri, appContext);
            String fileExtension = UriKt.getFileExtension(uri, appContext);
            if (fileExtension != null) {
                ArrayList<String> supportExtensions = PickerManager.INSTANCE.getSupportExtensions();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : supportExtensions) {
                    String str = (String) obj;
                    boolean z = true;
                    contains = StringsKt__StringsKt.contains((CharSequence) str, (CharSequence) fileExtension, true);
                    if (!contains) {
                        endsWith = StringsKt__StringsJVMKt.endsWith(fileName, str, true);
                        if (!endsWith) {
                            z = false;
                        }
                    }
                    if (z) {
                        arrayList2.add(obj);
                    }
                }
                firstOrNull = CollectionsKt___CollectionsKt.firstOrNull((List<? extends Object>) arrayList2);
                if (((String) firstOrNull) != null) {
                    arrayList.add(new DocumentBean(uri.hashCode(), fileName, uri, UriUtils.INSTANCE.getMimeType(uri), "", String.valueOf(UriKt.getFileSize(uri, appContext)), null, 64, null));
                }
            }
        }
        return arrayList;
    }
}
