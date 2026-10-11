package com.onyx.android.sdk.universal.editor.events.app;

import com.onyx.android.sdk.base.extension.CollectionKt;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000b\u001a\u00020\u0001¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0005\u001a\u00020\u00002\u0012\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002\"\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u000b\u001a\u00020\u00018\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR'\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00030\fj\b\u0012\u0004\u0012\u00020\u0003`\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;", "", "", "", "permissions", "setPermissions", "([Ljava/lang/String;)Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;", "a", Constants.OBJECT_SIG, "getNextEvent", "()Ljava/lang/Object;", "nextEvent", "Ljava/util/LinkedHashSet;", "Lkotlin/collections/LinkedHashSet;", "b", "Ljava/util/LinkedHashSet;", "getPermissionList", "()Ljava/util/LinkedHashSet;", "permissionList", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Object;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes8.dex */
public final class RequestPermissionEvent {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Object nextEvent;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final LinkedHashSet<String> permissionList;

    public RequestPermissionEvent(@NotNull Object nextEvent) {
        Intrinsics.checkNotNullParameter(nextEvent, "nextEvent");
        this.nextEvent = nextEvent;
        this.permissionList = new LinkedHashSet<>();
    }

    @NotNull
    public final Object getNextEvent() {
        return this.nextEvent;
    }

    @NotNull
    public final LinkedHashSet<String> getPermissionList() {
        return this.permissionList;
    }

    @NotNull
    public final RequestPermissionEvent setPermissions(@NotNull String... permissions) {
        List listOf;
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        LinkedHashSet<String> linkedHashSet = this.permissionList;
        listOf = CollectionsKt__CollectionsKt.listOf(Arrays.copyOf(permissions, permissions.length));
        CollectionKt.safeAddAll(linkedHashSet, listOf);
        return this;
    }
}
