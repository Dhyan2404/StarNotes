package com.onyx.android.sdk.universal.editor.bean;

import com.onyx.android.sdk.universal.editor.data.PastePagedArgs;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/PasteState;", "Lcom/onyx/android/sdk/universal/editor/bean/CopyState;", "()V", "Create", "InProgress", "Success", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState$InProgress;", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Success;", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public abstract class PasteState extends CopyState {

    @Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0002HÆ\u0001J\t\u0010\u0007\u001a\u00020\u0006HÖ\u0001J\t\u0010\t\u001a\u00020\bHÖ\u0001J\u0013\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nHÖ\u0003R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Create;", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState;", "Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;", "component1", "args", "copy", "", "toString", "", "hashCode", "", Constants.ATTRVAL_OTHER, "", "equals", "a", "Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;", "getArgs", "()Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Lcom/onyx/android/sdk/universal/editor/data/PastePagedArgs;)V", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
    /* loaded from: classes8.dex */
    public static final /* data */ class Create extends PasteState {

        /* renamed from: a, reason: from kotlin metadata and from toString */
        @NotNull
        public final PastePagedArgs args;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Create(@NotNull PastePagedArgs args) {
            super(null);
            Intrinsics.checkNotNullParameter(args, "args");
            this.args = args;
        }

        public static /* synthetic */ Create copy$default(Create create, PastePagedArgs pastePagedArgs, int i, Object obj) {
            if ((i & 1) != 0) {
                pastePagedArgs = create.args;
            }
            return create.copy(pastePagedArgs);
        }

        @NotNull
        /* renamed from: component1, reason: from getter */
        public final PastePagedArgs getArgs() {
            return this.args;
        }

        @NotNull
        public final Create copy(@NotNull PastePagedArgs args) {
            Intrinsics.checkNotNullParameter(args, "args");
            return new Create(args);
        }

        public boolean equals(@Nullable Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Create) && Intrinsics.areEqual(this.args, ((Create) other).args);
        }

        @NotNull
        public final PastePagedArgs getArgs() {
            return this.args;
        }

        public int hashCode() {
            return this.args.hashCode();
        }

        @NotNull
        public String toString() {
            return "Create(args=" + this.args + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/PasteState$InProgress;", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState;", "()V", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class InProgress extends PasteState {

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
            return -113702260;
        }

        @NotNull
        public String toString() {
            return "InProgress";
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, m61528d2 = {"Lcom/onyx/android/sdk/universal/editor/bean/PasteState$Success;", "Lcom/onyx/android/sdk/universal/editor/bean/PasteState;", "()V", "equals", "", Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "sdk-universal_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final /* data */ class Success extends PasteState {

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
            return -635340247;
        }

        @NotNull
        public String toString() {
            return "Success";
        }
    }

    public /* synthetic */ PasteState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public PasteState() {
        super(null);
    }
}
