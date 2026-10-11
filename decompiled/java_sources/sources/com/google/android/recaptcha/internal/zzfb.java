package com.google.android.recaptcha.internal;

import android.net.Uri;
import android.text.TextUtils;
import com.onyx.android.sdk.base.common.CommonConstant;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzfb {

    @NotNull
    public static final zzfb zza = new zzfb();

    @NotNull
    private static final List zzb;

    static {
        List listOf;
        listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"www.recaptcha.net", "www.gstatic.com/recaptcha", "www.gstatic.cn/recaptcha"});
        zzb = zze(listOf);
    }

    private zzfb() {
    }

    public static final boolean zza(@NotNull Uri uri) {
        return zzd(uri) && zzc(uri.toString());
    }

    public static final boolean zzb(@NotNull Uri uri) {
        return zzd(uri);
    }

    private static final boolean zzc(String str) {
        boolean startsWith$default;
        List list = zzb;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, (String) it2.next(), false, 2, null);
            if (startsWith$default) {
                return true;
            }
        }
        return false;
    }

    private static final boolean zzd(Uri uri) {
        return (TextUtils.isEmpty(uri.toString()) || !Intrinsics.areEqual("https", uri.getScheme()) || TextUtils.isEmpty(uri.getHost())) ? false : true;
    }

    private static final List zze(List list) {
        int collectionSizeOrDefault;
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(CommonConstant.SCHEME_HTTPS + ((String) it2.next()) + "/");
        }
        return arrayList;
    }
}
