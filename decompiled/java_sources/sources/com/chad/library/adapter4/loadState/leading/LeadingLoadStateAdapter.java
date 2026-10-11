package com.chad.library.adapter4.loadState.leading;

import androidx.annotation.CallSuper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.chad.library.adapter4.loadState.LoadState;
import com.chad.library.adapter4.loadState.LoadStateAdapter;
import com.chad.library.adapter4.loadState.leading.LeadingLoadStateAdapter;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u001a\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003:\u0001.B\u0007¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00028\u0000H\u0017¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ\u0006\u0010\u0011\u001a\u00020\tJ\u0016\u0010\u0014\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\tH\u0002R(\u0010\u001d\u001a\u0004\u0018\u00010\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\"\u0010 \u001a\u00020\u00068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#R\"\u0010)\u001a\u00020\f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'\"\u0004\b(\u0010\u000fR\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u001f¨\u0006/"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "VH", "Lcom/chad/library/adapter4/loadState/LoadStateAdapter;", "Lcom/chad/library/adapter4/loadState/LoadState;", "loadState", "", "displayLoadStateAsItem", "holder", "", "onViewAttachedToWindow", "(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V", "", "currentPosition", "checkPreload$com_github_CymChad_brvah", "(I)V", "checkPreload", "invokeLoad", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnLeadingListener", "", "toString", "c", "<set-?>", C6998g.f39679a, "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;", "getOnLeadingListener", "()Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;", "onLeadingListener", C6999h.f39688c, Constants.HASIDCALL_INDEX_SIG, "isLoadEnable", Constants.BOOLEAN_VALUE_SIG, "setLoadEnable", "(Z)V", "i", "I", "getPreloadSize", "()I", "setPreloadSize", "preloadSize", "j", "mDelayNextLoadFlag", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "()V", "OnLeadingListener", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
/* loaded from: classes4.dex */
public abstract class LeadingLoadStateAdapter<VH extends RecyclerView.ViewHolder> extends LoadStateAdapter<VH> {

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public OnLeadingListener onLeadingListener;

    /* renamed from: h, reason: from kotlin metadata */
    public boolean isLoadEnable = true;

    /* renamed from: i, reason: from kotlin metadata */
    public int preloadSize;

    /* renamed from: j, reason: from kotlin metadata */
    public boolean mDelayNextLoadFlag;

    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016J\b\u0010\u0004\u001a\u00020\u0005H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, m61528d2 = {"Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;", "", "isAllowLoading", "", "onLoad", "", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0}, m61532xi = 48)
    /* loaded from: classes4.dex */
    public interface OnLeadingListener {
        default boolean isAllowLoading() {
            return true;
        }

        void onLoad();
    }

    /* renamed from: d */
    public static final void m9692d(LeadingLoadStateAdapter this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.mDelayNextLoadFlag = false;
        this$0.invokeLoad();
    }

    /* renamed from: c */
    public final void m9693c() {
        RecyclerView recyclerView;
        if (this.isLoadEnable) {
            OnLeadingListener onLeadingListener = this.onLeadingListener;
            boolean z = false;
            if (onLeadingListener != null && !onLeadingListener.isAllowLoading()) {
                z = true;
            }
            if (z || this.mDelayNextLoadFlag || !(getLoadState() instanceof LoadState.NotLoading) || getLoadState().getEndOfPaginationReached() || (recyclerView = getRecyclerView()) == null) {
                return;
            }
            if (!recyclerView.isComputingLayout()) {
                invokeLoad();
            } else {
                this.mDelayNextLoadFlag = true;
                recyclerView.post(new Runnable() { // from class: com.sunia.HTREnginev2.mxi
                    @Override // java.lang.Runnable
                    public final void run() {
                        LeadingLoadStateAdapter.m9692d(LeadingLoadStateAdapter.this);
                    }
                });
            }
        }
    }

    public final void checkPreload$com_github_CymChad_brvah(int currentPosition) {
        if (currentPosition >= 0 && currentPosition <= this.preloadSize) {
            m9693c();
        }
    }

    @Override // com.chad.library.adapter4.loadState.LoadStateAdapter
    public boolean displayLoadStateAsItem(@NotNull LoadState loadState) {
        Intrinsics.checkNotNullParameter(loadState, "loadState");
        return loadState instanceof LoadState.Loading;
    }

    @Nullable
    public final OnLeadingListener getOnLeadingListener() {
        return this.onLeadingListener;
    }

    public final int getPreloadSize() {
        return this.preloadSize;
    }

    public final void invokeLoad() {
        setLoadState(LoadState.Loading.INSTANCE);
        OnLeadingListener onLeadingListener = this.onLeadingListener;
        if (onLeadingListener != null) {
            onLeadingListener.onLoad();
        }
    }

    /* renamed from: isLoadEnable, reason: from getter */
    public final boolean getIsLoadEnable() {
        return this.isLoadEnable;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @CallSuper
    public void onViewAttachedToWindow(@NotNull VH holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        m9693c();
    }

    public final void setLoadEnable(boolean z) {
        this.isLoadEnable = z;
    }

    @NotNull
    public final LeadingLoadStateAdapter<VH> setOnLeadingListener(@Nullable OnLeadingListener listener) {
        this.onLeadingListener = listener;
        return this;
    }

    public final void setPreloadSize(int i) {
        this.preloadSize = i;
    }

    @NotNull
    public String toString() {
        String trimIndent;
        trimIndent = StringsKt__IndentKt.trimIndent("\n            LeadingLoadStateAdapter ->\n            [isLoadEnable: " + this.isLoadEnable + "],\n            [preloadSize: " + this.preloadSize + "],\n            [loadState: " + getLoadState() + "]\n        ");
        return trimIndent;
    }
}
