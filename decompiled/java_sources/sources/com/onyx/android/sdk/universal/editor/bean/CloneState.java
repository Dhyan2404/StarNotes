package com.onyx.android.sdk.universal.editor.bean;

import com.onyx.android.sdk.universal.editor.data.CopyPageArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/CloneState;", "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "()V", "Create", "InProgress", "Success", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState$InProgress;", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Success;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class CloneState extends CopyState {

    @Metadata(m61527d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0003J\u0019\u0010\u0006\u001a\u00020\u00002\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002HÆ\u0001J\t\u0010\b\u001a\u00020\u0007HÖ\u0001J\t\u0010\n\u001a\u00020\tHÖ\u0001J\u0013\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u000bHÖ\u0003R\u001d\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Create;", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState;", "", "Lcom/onyx/android/sdk/universal/editor/data/CopyPageArgs;", "component1", "cloneArgsList", "copy", "", "toString", "", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Ljava/util/List;", "getCloneArgsList", "()Ljava/util/List;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/List;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class Create extends CloneState {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final List<CopyPageArgs> cloneArgsList;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Create(@NotNull List<CopyPageArgs> cloneArgsList) {
            super(null);
            Intrinsics.checkNotNullParameter(cloneArgsList, "cloneArgsList");
            this.cloneArgsList = cloneArgsList;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Create copy$default(Create create, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = create.cloneArgsList;
            }
            return create.copy(list);
        }

        @NotNull
        public final List<CopyPageArgs> component1() {
            return this.cloneArgsList;
        }

        @NotNull
        public final Create copy(@NotNull List<CopyPageArgs> cloneArgsList) {
            Intrinsics.checkNotNullParameter(cloneArgsList, "cloneArgsList");
            return new Create(cloneArgsList);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Create) && Intrinsics.areEqual(this.cloneArgsList, ((Create) other).cloneArgsList);
        }

        @NotNull
        public final List<CopyPageArgs> getCloneArgsList() {
            return this.cloneArgsList;
        }

        public int hashCode() {
            return this.cloneArgsList.hashCode();
        }

        @NotNull
        public String toString() {
            return "Create(cloneArgsList=" + this.cloneArgsList + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/CloneState$InProgress;", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState;", "()V", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class InProgress extends CloneState {

        @NotNull
        public static final InProgress INSTANCE = new InProgress();

        public InProgress() {
            super(null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof InProgress)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return 2001990998;
        }

        @NotNull
        public String toString() {
            return "InProgress";
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/CloneState$Success;", "Lcom/onyx/android/sdk/universal/editor/bean/CloneState;", "()V", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class Success extends CloneState {

        @NotNull
        public static final Success INSTANCE = new Success();

        public Success() {
            super(null);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Success)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return -1265003617;
        }

        @NotNull
        public String toString() {
            return "Success";
        }
    }

    public /* synthetic */ CloneState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public CloneState() {
        super(null);
    }
}
