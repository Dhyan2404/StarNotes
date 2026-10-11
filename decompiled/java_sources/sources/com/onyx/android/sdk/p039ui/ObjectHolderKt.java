package com.onyx.android.sdk.p039ui;

import android.app.Dialog;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0018\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u00022\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0010\u0010\u0005\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002¨\u0006\u0006"}, m61528d2 = {"add", "", "Lcom/onyx/android/sdk/ui/ObjectHolder;", "Landroid/app/Dialog;", "dialog", "dismissAllDialog", "sdk-uicommon_overseasRelease"}, m61529k = 2, m61530mv = {1, 9, 0}, m61532xi = 48)
@SourceDebugExtension({"SMAP\nObjectHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectHolder.kt\ncom/onyx/android/sdk/ui/ObjectHolderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1855#2,2:55\n*S KotlinDebug\n*F\n+ 1 ObjectHolder.kt\ncom/onyx/android/sdk/ui/ObjectHolderKt\n*L\n46#1:55,2\n*E\n"})
/* loaded from: classes8.dex */
public final class ObjectHolderKt {
    public static final void add(@NotNull ObjectHolder<Dialog> objectHolder, @NotNull Dialog dialog) {
        Intrinsics.checkNotNullParameter(objectHolder, "<this>");
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        objectHolder.add(new WeakReference<>(dialog));
    }

    public static final void dismissAllDialog(@NotNull ObjectHolder<Dialog> objectHolder) {
        Intrinsics.checkNotNullParameter(objectHolder, "<this>");
        Iterator<T> it2 = objectHolder.getCopyOfObjectList().iterator();
        while (it2.hasNext()) {
            Dialog dialog = (Dialog) ((WeakReference) it2.next()).get();
            if (dialog != null) {
                dialog.dismiss();
            }
        }
        objectHolder.clear();
    }
}
