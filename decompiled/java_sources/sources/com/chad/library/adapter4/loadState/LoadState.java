package com.chad.library.adapter4.loadState;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0004\n\u000b\f\rB\u0011\b\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0004\u000e\u000f\u0010\u0011¨\u0006\u0012"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState;", "", "", "a", Constants.HASIDCALL_INDEX_SIG, "getEndOfPaginationReached", Constants.BOOLEAN_VALUE_SIG, "endOfPaginationReached", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Z)V", "Error", "Loading", "None", "NotLoading", "Lcom/chad/library/adapter4/loadState/LoadState$Error;", "Lcom/chad/library/adapter4/loadState/LoadState$Loading;", "Lcom/chad/library/adapter4/loadState/LoadState$None;", "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class LoadState {

    /* renamed from: a, reason: from kotlin metadata */
    public final boolean endOfPaginationReached;

    @Metadata(m61527d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\bH\u0016R\u0017\u0010\u000f\u001a\u00020\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState$Error;", "Lcom/chad/library/adapter4/loadState/LoadState;", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "equals", "", "hashCode", "", "toString", "", "b", "Ljava/lang/Throwable;", "getError", "()Ljava/lang/Throwable;", "error", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/Throwable;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static final class Error extends LoadState {

        /* renamed from: b, reason: from kotlin metadata and from toString */
        @NotNull
        public final Throwable error;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Error(@NotNull Throwable error) {
            super(false, null);
            Intrinsics.checkNotNullParameter(error, "error");
            this.error = error;
        }

        public boolean equals(@Nullable Object other) {
            if (other instanceof Error) {
                Error error = (Error) other;
                if (getEndOfPaginationReached() == error.getEndOfPaginationReached() && Intrinsics.areEqual(this.error, error.error)) {
                    return true;
                }
            }
            return false;
        }

        @NotNull
        public final Throwable getError() {
            return this.error;
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached()) + this.error.hashCode();
        }

        @NotNull
        public String toString() {
            return "Error(endOfPaginationReached=" + getEndOfPaginationReached() + ", error=" + this.error + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0096\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState$Loading;", "Lcom/chad/library/adapter4/loadState/LoadState;", "()V", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class Loading extends LoadState {

        @NotNull
        public static final Loading INSTANCE = new Loading();

        public Loading() {
            super(false, null);
        }

        public boolean equals(@Nullable Object other) {
            return (other instanceof Loading) && getEndOfPaginationReached() == ((Loading) other).getEndOfPaginationReached();
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached());
        }

        @NotNull
        public String toString() {
            return "Loading(endOfPaginationReached=" + getEndOfPaginationReached() + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0096\u0002J\b\u0010\u0007\u001a\u00020\bH\u0016J\b\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState$None;", "Lcom/chad/library/adapter4/loadState/LoadState;", "()V", "equals", "", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class None extends LoadState {

        @NotNull
        public static final None INSTANCE = new None();

        public None() {
            super(false, null);
        }

        public boolean equals(@Nullable Object other) {
            return (other instanceof None) && getEndOfPaginationReached() == ((None) other).getEndOfPaginationReached();
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached());
        }

        @NotNull
        public String toString() {
            return "None(endOfPaginationReached=" + getEndOfPaginationReached() + ')';
        }
    }

    @Metadata(m61527d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \f2\u00020\u0001:\u0001\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0096\u0002J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016¨\u0006\r"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;", "Lcom/chad/library/adapter4/loadState/LoadState;", "endOfPaginationReached", "", "(Z)V", "equals", com.sun.org.apache.xalan.internal.templates.Constants.ATTRVAL_OTHER, "", "hashCode", "", "toString", "", "Companion", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public static final class NotLoading extends LoadState {

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE = new Companion(null);

        /* renamed from: b */
        @NotNull
        public static final NotLoading f16231b = new NotLoading(true);

        /* renamed from: c */
        @NotNull
        public static final NotLoading f16232c = new NotLoading(false);

        @Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/LoadState$NotLoading$Companion;", "", "()V", "Complete", "Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;", "getComplete$annotations", "getComplete", "()Lcom/chad/library/adapter4/loadState/LoadState$NotLoading;", "Incomplete", "getIncomplete$annotations", "getIncomplete", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            public static /* synthetic */ void getComplete$annotations() {
            }

            @JvmStatic
            public static /* synthetic */ void getIncomplete$annotations() {
            }

            @NotNull
            public final NotLoading getComplete() {
                return NotLoading.f16231b;
            }

            @NotNull
            public final NotLoading getIncomplete() {
                return NotLoading.f16232c;
            }

            public Companion() {
            }
        }

        public NotLoading(boolean z) {
            super(z, null);
        }

        @NotNull
        public static final NotLoading getComplete() {
            return INSTANCE.getComplete();
        }

        @NotNull
        public static final NotLoading getIncomplete() {
            return INSTANCE.getIncomplete();
        }

        public boolean equals(@Nullable Object other) {
            return (other instanceof NotLoading) && getEndOfPaginationReached() == ((NotLoading) other).getEndOfPaginationReached();
        }

        public int hashCode() {
            return Boolean.hashCode(getEndOfPaginationReached());
        }

        @NotNull
        public String toString() {
            return "NotLoading(endOfPaginationReached=" + getEndOfPaginationReached() + ')';
        }
    }

    public /* synthetic */ LoadState(boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(z);
    }

    public final boolean getEndOfPaginationReached() {
        return this.endOfPaginationReached;
    }

    public LoadState(boolean z) {
        this.endOfPaginationReached = z;
    }
}
