package com.onyx.android.sdk.universal.editor.data;

import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0011B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u000f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;", "", "pastePageInfos", "", "Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;", "(Ljava/util/List;)V", "getPastePageInfos", "()Ljava/util/List;", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "", "toString", "", "PastePageInfo", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final /* data */ class PastePagedArgs {

    @NotNull
    private final List<PastePageInfo> pastePageInfos;

    @Metadata(m61527d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\f\u001a\u00020\u0003HÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000f"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs$PastePageInfo;", "", "destPageIndex", "", "(I)V", "getDestPageIndex", "()I", "component1", "copy", "equals", "", Constants.ATTRVAL_OTHER, "hashCode", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class PastePageInfo {
        private final int destPageIndex;

        public PastePageInfo(int i) {
            this.destPageIndex = i;
        }

        public static /* synthetic */ PastePageInfo copy$default(PastePageInfo pastePageInfo, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = pastePageInfo.destPageIndex;
            }
            return pastePageInfo.copy(i);
        }

        /* renamed from: component1, reason: from getter */
        public final int getDestPageIndex() {
            return this.destPageIndex;
        }

        @NotNull
        public final PastePageInfo copy(int destPageIndex) {
            return new PastePageInfo(destPageIndex);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof PastePageInfo) && this.destPageIndex == ((PastePageInfo) other).destPageIndex;
        }

        public final int getDestPageIndex() {
            return this.destPageIndex;
        }

        public int hashCode() {
            return Integer.hashCode(this.destPageIndex);
        }

        @NotNull
        public String toString() {
            return "PastePageInfo(destPageIndex=" + this.destPageIndex + ')';
        }
    }

    public PastePagedArgs(@NotNull List<PastePageInfo> pastePageInfos) {
        Intrinsics.checkNotNullParameter(pastePageInfos, "pastePageInfos");
        this.pastePageInfos = pastePageInfos;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PastePagedArgs copy$default(PastePagedArgs pastePagedArgs, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = pastePagedArgs.pastePageInfos;
        }
        return pastePagedArgs.copy(list);
    }

    @NotNull
    public final List<PastePageInfo> component1() {
        return this.pastePageInfos;
    }

    @NotNull
    public final PastePagedArgs copy(@NotNull List<PastePageInfo> pastePageInfos) {
        Intrinsics.checkNotNullParameter(pastePageInfos, "pastePageInfos");
        return new PastePagedArgs(pastePageInfos);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof PastePagedArgs) && Intrinsics.areEqual(this.pastePageInfos, ((PastePagedArgs) other).pastePageInfos);
    }

    @NotNull
    public final List<PastePageInfo> getPastePageInfos() {
        return this.pastePageInfos;
    }

    public int hashCode() {
        return this.pastePageInfos.hashCode();
    }

    @NotNull
    public String toString() {
        return "PastePagedArgs(pastePageInfos=" + this.pastePageInfos + ')';
    }
}
