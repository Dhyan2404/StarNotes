package com.onyx.android.sdk.cloudstorage.provider.onedrive.bean;

import com.alibaba.fastjson2.annotation.JSONField;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriverConstants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0001\tB\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession;", "Ljava/io/Serializable;", "()V", "item", "Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;", "getItem", "()Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;", "setItem", "(Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;)V", "Item", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class OneDriverUploadSession implements Serializable {

    @NotNull
    private Item item = new Item();

    @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\f"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/bean/OneDriverUploadSession$Item;", "Ljava/io/Serializable;", "()V", "conflictBehavior", "", "getConflictBehavior", "()Ljava/lang/String;", "setConflictBehavior", "(Ljava/lang/String;)V", "name", "getName", "setName", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public static final class Item implements Serializable {

        @JSONField(name = OneDriverConstants.GRAPH_CONFLICT_BEHAVIOR)
        @NotNull
        private String conflictBehavior = "replace";

        @Nullable
        private String name;

        @NotNull
        public final String getConflictBehavior() {
            return this.conflictBehavior;
        }

        @Nullable
        public final String getName() {
            return this.name;
        }

        public final void setConflictBehavior(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.conflictBehavior = str;
        }

        public final void setName(@Nullable String str) {
            this.name = str;
        }
    }

    @NotNull
    public final Item getItem() {
        return this.item;
    }

    public final void setItem(@NotNull Item item) {
        Intrinsics.checkNotNullParameter(item, "<set-?>");
        this.item = item;
    }
}
