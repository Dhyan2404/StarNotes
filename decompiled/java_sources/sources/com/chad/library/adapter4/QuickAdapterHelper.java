package com.chad.library.adapter4;

import androidx.credentials.provider.utils.PrivilegedApp;
import androidx.recyclerview.widget.ConcatAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter4.BaseQuickAdapter;
import com.chad.library.adapter4.loadState.LoadState;
import com.chad.library.adapter4.loadState.leading.DefaultLeadingLoadStateAdapter;
import com.chad.library.adapter4.loadState.leading.LeadingLoadStateAdapter;
import com.chad.library.adapter4.loadState.trailing.DefaultTrailingLoadStateAdapter;
import com.chad.library.adapter4.loadState.trailing.TrailingLoadStateAdapter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.bcel.internal.Constants;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.xmlresolver.logging.AbstractLogger;

@Metadata(m61527d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001CB=\b\u0002\u0012\u000e\u0010\u000f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002\u0012\f\u0010\u0015\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0010\u0012\f\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0016\u0012\u0006\u0010@\u001a\u00020?¢\u0006\u0004\bA\u0010BJ\u0016\u0010\u0004\u001a\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002J\u001e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002J\u0006\u0010\u0007\u001a\u00020\u0000J\u0016\u0010\b\u001a\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002J\u001e\u0010\b\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002J\u0006\u0010\t\u001a\u00020\u0000J\u0016\u0010\n\u001a\u00020\u00002\u000e\u0010\u0003\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002R\u001f\u0010\u000f\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\u0015\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR4\u0010 \u001a\"\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00020\u001cj\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002`\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR4\u0010\"\u001a\"\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00020\u001cj\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002`\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u001fR\u0014\u0010&\u001a\u00020#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0011\u0010\u0003\u001a\u00020#8F¢\u0006\u0006\u001a\u0004\b-\u0010.R$\u00105\u001a\u00020/2\u0006\u00100\u001a\u00020/8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b1\u00102\"\u0004\b3\u00104R$\u00108\u001a\u00020/2\u0006\u00100\u001a\u00020/8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b6\u00102\"\u0004\b7\u00104R\u001f\u0010<\u001a\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002098F¢\u0006\u0006\u001a\u0004\b:\u0010;R\u001f\u0010>\u001a\u0010\u0012\f\u0012\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0002098F¢\u0006\u0006\u001a\u0004\b=\u0010;¨\u0006D"}, m61528d2 = {"Lcom/chad/library/adapter4/QuickAdapterHelper;", "", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "adapter", "addBeforeAdapter", "", FirebaseAnalytics.Param.INDEX, "clearBeforeAdapters", "addAfterAdapter", "clearAfterAdapters", "removeAdapter", "a", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "getContentAdapter", "()Lcom/chad/library/adapter4/BaseQuickAdapter;", "contentAdapter", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "b", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "getLeadingLoadStateAdapter", "()Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "leadingLoadStateAdapter", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "c", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "getTrailingLoadStateAdapter", "()Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "trailingLoadStateAdapter", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "d", "Ljava/util/ArrayList;", "mBeforeList", "e", "mAfterList", "Landroidx/recyclerview/widget/ConcatAdapter;", C6997f.f39671c, "Landroidx/recyclerview/widget/ConcatAdapter;", "mAdapter", "Lcom/chad/library/adapter4/BaseQuickAdapter$OnViewAttachStateChangeListener;", C6998g.f39679a, "Lcom/chad/library/adapter4/BaseQuickAdapter$OnViewAttachStateChangeListener;", "firstAdapterOnViewAttachChangeListener", C6999h.f39688c, "lastAdapterOnViewAttachChangeListener", "getAdapter", "()Landroidx/recyclerview/widget/ConcatAdapter;", "Lcom/chad/library/adapter4/loadState/LoadState;", "value", "getLeadingLoadState", "()Lcom/chad/library/adapter4/loadState/LoadState;", "setLeadingLoadState", "(Lcom/chad/library/adapter4/loadState/LoadState;)V", "leadingLoadState", "getTrailingLoadState", "setTrailingLoadState", "trailingLoadState", "", "getBeforeAdapterList", "()Ljava/util/List;", "beforeAdapterList", "getAfterAdapterList", "afterAdapterList", "Landroidx/recyclerview/widget/ConcatAdapter$Config;", AbstractLogger.CONFIG, Constants.CONSTRUCTOR_NAME, "(Lcom/chad/library/adapter4/BaseQuickAdapter;Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;Landroidx/recyclerview/widget/ConcatAdapter$Config;)V", "Builder", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
@SourceDebugExtension({"SMAP\nQuickAdapterHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QuickAdapterHelper.kt\ncom/chad/library/adapter4/QuickAdapterHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,402:1\n1#2:403\n1855#3,2:404\n1855#3,2:406\n*S KotlinDebug\n*F\n+ 1 QuickAdapterHelper.kt\ncom/chad/library/adapter4/QuickAdapterHelper\n*L\n195#1:404,2\n263#1:406,2\n*E\n"})
/* loaded from: classes4.dex */
public final class QuickAdapterHelper {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final BaseQuickAdapter<?, ?> contentAdapter;

    /* renamed from: b, reason: from kotlin metadata */
    @Nullable
    public final LeadingLoadStateAdapter<?> leadingLoadStateAdapter;

    /* renamed from: c, reason: from kotlin metadata */
    @Nullable
    public final TrailingLoadStateAdapter<?> trailingLoadStateAdapter;

    /* renamed from: d, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<BaseQuickAdapter<?, ?>> mBeforeList;

    /* renamed from: e, reason: from kotlin metadata */
    @NotNull
    public final ArrayList<BaseQuickAdapter<?, ?>> mAfterList;

    /* renamed from: f, reason: from kotlin metadata */
    @NotNull
    public final ConcatAdapter mAdapter;

    /* renamed from: g, reason: from kotlin metadata */
    @Nullable
    public BaseQuickAdapter.OnViewAttachStateChangeListener firstAdapterOnViewAttachChangeListener;

    /* renamed from: h, reason: from kotlin metadata */
    @Nullable
    public BaseQuickAdapter.OnViewAttachStateChangeListener lastAdapterOnViewAttachChangeListener;

    @Metadata(m61527d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0016\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u0013¢\u0006\u0004\b\u001f\u0010 J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0002J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\b\u001a\u00020\u00002\f\u0010\u0003\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u000bJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010R\u001c\u0010\u0016\u001a\n\u0012\u0002\b\u0003\u0012\u0002\b\u00030\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001c\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0016\u0010\f\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001e¨\u0006!"}, m61528d2 = {"Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;", "", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "loadStateAdapter", "setTrailingLoadStateAdapter", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter$OnTrailingListener;", "loadMoreListener", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "setLeadingLoadStateAdapter", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter$OnLeadingListener;", "loadListener", "Landroidx/recyclerview/widget/ConcatAdapter$Config;", AbstractLogger.CONFIG, "setConfig", "Lcom/chad/library/adapter4/QuickAdapterHelper;", PrivilegedApp.f6529f, "Landroidx/recyclerview/widget/RecyclerView;", "recyclerView", "attachTo", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "a", "Lcom/chad/library/adapter4/BaseQuickAdapter;", "contentAdapter", "b", "Lcom/chad/library/adapter4/loadState/leading/LeadingLoadStateAdapter;", "leadingLoadStateAdapter", "c", "Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;", "trailingLoadStateAdapter", "d", "Landroidx/recyclerview/widget/ConcatAdapter$Config;", Constants.CONSTRUCTOR_NAME, "(Lcom/chad/library/adapter4/BaseQuickAdapter;)V", "com.github.CymChad.brvah"}, m61529k = 1, m61530mv = {1, 8, 0})
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final BaseQuickAdapter<?, ?> contentAdapter;

        /* renamed from: b, reason: from kotlin metadata */
        @Nullable
        public LeadingLoadStateAdapter<?> leadingLoadStateAdapter;

        /* renamed from: c, reason: from kotlin metadata */
        @Nullable
        public TrailingLoadStateAdapter<?> trailingLoadStateAdapter;

        /* renamed from: d, reason: from kotlin metadata */
        @NotNull
        public ConcatAdapter.Config config;

        public Builder(@NotNull BaseQuickAdapter<?, ?> contentAdapter) {
            Intrinsics.checkNotNullParameter(contentAdapter, "contentAdapter");
            this.contentAdapter = contentAdapter;
            ConcatAdapter.Config DEFAULT = ConcatAdapter.Config.DEFAULT;
            Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
            this.config = DEFAULT;
        }

        @NotNull
        public final QuickAdapterHelper attachTo(@NotNull RecyclerView recyclerView) {
            Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
            QuickAdapterHelper quickAdapterHelper = new QuickAdapterHelper(this.contentAdapter, this.leadingLoadStateAdapter, this.trailingLoadStateAdapter, this.config, null);
            recyclerView.setAdapter(quickAdapterHelper.getMAdapter());
            return quickAdapterHelper;
        }

        @NotNull
        public final QuickAdapterHelper build() {
            return new QuickAdapterHelper(this.contentAdapter, this.leadingLoadStateAdapter, this.trailingLoadStateAdapter, this.config, null);
        }

        @NotNull
        public final Builder setConfig(@NotNull ConcatAdapter.Config config) {
            Intrinsics.checkNotNullParameter(config, "config");
            this.config = config;
            return this;
        }

        @NotNull
        public final Builder setLeadingLoadStateAdapter(@Nullable LeadingLoadStateAdapter<?> loadStateAdapter) {
            this.leadingLoadStateAdapter = loadStateAdapter;
            return this;
        }

        @NotNull
        public final Builder setTrailingLoadStateAdapter(@Nullable TrailingLoadStateAdapter<?> loadStateAdapter) {
            this.trailingLoadStateAdapter = loadStateAdapter;
            return this;
        }

        @NotNull
        public final Builder setLeadingLoadStateAdapter(@Nullable LeadingLoadStateAdapter.OnLeadingListener loadListener) {
            DefaultLeadingLoadStateAdapter defaultLeadingLoadStateAdapter = new DefaultLeadingLoadStateAdapter();
            defaultLeadingLoadStateAdapter.setOnLeadingListener(loadListener);
            return setLeadingLoadStateAdapter(defaultLeadingLoadStateAdapter);
        }

        @NotNull
        public final Builder setTrailingLoadStateAdapter(@Nullable TrailingLoadStateAdapter.OnTrailingListener loadMoreListener) {
            DefaultTrailingLoadStateAdapter defaultTrailingLoadStateAdapter = new DefaultTrailingLoadStateAdapter(false, 1, null);
            defaultTrailingLoadStateAdapter.setOnLoadMoreListener(loadMoreListener);
            return setTrailingLoadStateAdapter(defaultTrailingLoadStateAdapter);
        }
    }

    public /* synthetic */ QuickAdapterHelper(BaseQuickAdapter baseQuickAdapter, LeadingLoadStateAdapter leadingLoadStateAdapter, TrailingLoadStateAdapter trailingLoadStateAdapter, ConcatAdapter.Config config, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseQuickAdapter, leadingLoadStateAdapter, trailingLoadStateAdapter, config);
    }

    @NotNull
    public final QuickAdapterHelper addAfterAdapter(@NotNull BaseQuickAdapter<?, ?> adapter) {
        boolean addAdapter;
        Object last;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener = this.lastAdapterOnViewAttachChangeListener;
        if (onViewAttachStateChangeListener != null) {
            if (!this.mAfterList.isEmpty()) {
                last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.mAfterList);
                ((BaseQuickAdapter) last).removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            } else {
                this.contentAdapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            }
            adapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
        }
        if (this.trailingLoadStateAdapter == null) {
            addAdapter = this.mAdapter.addAdapter(adapter);
        } else {
            addAdapter = this.mAdapter.addAdapter(r0.getAdapters().size() - 1, adapter);
        }
        if (addAdapter) {
            this.mAfterList.add(adapter);
        }
        return this;
    }

    @NotNull
    public final QuickAdapterHelper addBeforeAdapter(@NotNull BaseQuickAdapter<?, ?> adapter) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        addBeforeAdapter(this.mBeforeList.size(), adapter);
        return this;
    }

    @NotNull
    public final QuickAdapterHelper clearAfterAdapters() {
        Iterator<T> it2 = this.mAfterList.iterator();
        while (it2.hasNext()) {
            BaseQuickAdapter baseQuickAdapter = (BaseQuickAdapter) it2.next();
            this.mAdapter.removeAdapter(baseQuickAdapter);
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener = this.lastAdapterOnViewAttachChangeListener;
            if (onViewAttachStateChangeListener != null) {
                baseQuickAdapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            }
        }
        this.mAfterList.clear();
        return this;
    }

    @NotNull
    public final QuickAdapterHelper clearBeforeAdapters() {
        Iterator<T> it2 = this.mBeforeList.iterator();
        while (it2.hasNext()) {
            BaseQuickAdapter baseQuickAdapter = (BaseQuickAdapter) it2.next();
            this.mAdapter.removeAdapter(baseQuickAdapter);
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener = this.firstAdapterOnViewAttachChangeListener;
            if (onViewAttachStateChangeListener != null) {
                baseQuickAdapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            }
        }
        this.mBeforeList.clear();
        return this;
    }

    @NotNull
    /* renamed from: getAdapter, reason: from getter */
    public final ConcatAdapter getMAdapter() {
        return this.mAdapter;
    }

    @NotNull
    public final List<BaseQuickAdapter<?, ?>> getAfterAdapterList() {
        List<BaseQuickAdapter<?, ?>> unmodifiableList = Collections.unmodifiableList(this.mAfterList);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(mAfterList)");
        return unmodifiableList;
    }

    @NotNull
    public final List<BaseQuickAdapter<?, ?>> getBeforeAdapterList() {
        List<BaseQuickAdapter<?, ?>> unmodifiableList = Collections.unmodifiableList(this.mBeforeList);
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(mBeforeList)");
        return unmodifiableList;
    }

    @NotNull
    public final BaseQuickAdapter<?, ?> getContentAdapter() {
        return this.contentAdapter;
    }

    @NotNull
    public final LoadState getLeadingLoadState() {
        LoadState loadState;
        LeadingLoadStateAdapter<?> leadingLoadStateAdapter = this.leadingLoadStateAdapter;
        return (leadingLoadStateAdapter == null || (loadState = leadingLoadStateAdapter.getLoadState()) == null) ? new LoadState.NotLoading(false) : loadState;
    }

    @Nullable
    public final LeadingLoadStateAdapter<?> getLeadingLoadStateAdapter() {
        return this.leadingLoadStateAdapter;
    }

    @NotNull
    public final LoadState getTrailingLoadState() {
        LoadState loadState;
        TrailingLoadStateAdapter<?> trailingLoadStateAdapter = this.trailingLoadStateAdapter;
        return (trailingLoadStateAdapter == null || (loadState = trailingLoadStateAdapter.getLoadState()) == null) ? new LoadState.NotLoading(false) : loadState;
    }

    @Nullable
    public final TrailingLoadStateAdapter<?> getTrailingLoadStateAdapter() {
        return this.trailingLoadStateAdapter;
    }

    @NotNull
    public final QuickAdapterHelper removeAdapter(@NotNull BaseQuickAdapter<?, ?> adapter) {
        Object last;
        Object first;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (!Intrinsics.areEqual(adapter, this.contentAdapter)) {
            this.mAdapter.removeAdapter(adapter);
            this.mBeforeList.remove(adapter);
            this.mAfterList.remove(adapter);
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener = this.firstAdapterOnViewAttachChangeListener;
            if (onViewAttachStateChangeListener != null) {
                adapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
                if (this.mBeforeList.isEmpty()) {
                    this.contentAdapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
                } else {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.mBeforeList);
                    ((BaseQuickAdapter) first).addOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
                }
            }
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener2 = this.lastAdapterOnViewAttachChangeListener;
            if (onViewAttachStateChangeListener2 != null) {
                adapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener2);
                if (this.mAfterList.isEmpty()) {
                    this.contentAdapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener2);
                } else {
                    last = CollectionsKt___CollectionsKt.last((List<? extends Object>) this.mAfterList);
                    ((BaseQuickAdapter) last).addOnViewAttachStateChangeListener(onViewAttachStateChangeListener2);
                }
            }
        }
        return this;
    }

    public final void setLeadingLoadState(@NotNull LoadState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        LeadingLoadStateAdapter<?> leadingLoadStateAdapter = this.leadingLoadStateAdapter;
        if (leadingLoadStateAdapter == null) {
            return;
        }
        leadingLoadStateAdapter.setLoadState(value);
    }

    public final void setTrailingLoadState(@NotNull LoadState value) {
        Intrinsics.checkNotNullParameter(value, "value");
        TrailingLoadStateAdapter<?> trailingLoadStateAdapter = this.trailingLoadStateAdapter;
        if (trailingLoadStateAdapter == null) {
            return;
        }
        trailingLoadStateAdapter.setLoadState(value);
    }

    public QuickAdapterHelper(BaseQuickAdapter<?, ?> baseQuickAdapter, LeadingLoadStateAdapter<?> leadingLoadStateAdapter, TrailingLoadStateAdapter<?> trailingLoadStateAdapter, ConcatAdapter.Config config) {
        this.contentAdapter = baseQuickAdapter;
        this.leadingLoadStateAdapter = leadingLoadStateAdapter;
        this.trailingLoadStateAdapter = trailingLoadStateAdapter;
        this.mBeforeList = new ArrayList<>(0);
        this.mAfterList = new ArrayList<>(0);
        ConcatAdapter concatAdapter = new ConcatAdapter(config, (RecyclerView.Adapter<? extends RecyclerView.ViewHolder>[]) new RecyclerView.Adapter[0]);
        this.mAdapter = concatAdapter;
        if (leadingLoadStateAdapter != null) {
            concatAdapter.addAdapter(leadingLoadStateAdapter);
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener = new BaseQuickAdapter.OnViewAttachStateChangeListener() { // from class: com.chad.library.adapter4.QuickAdapterHelper$1$1
                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnViewAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    QuickAdapterHelper.this.getLeadingLoadStateAdapter().checkPreload$com_github_CymChad_brvah(holder.getBindingAdapterPosition());
                }

                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnViewAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                }
            };
            baseQuickAdapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            this.firstAdapterOnViewAttachChangeListener = onViewAttachStateChangeListener;
        }
        concatAdapter.addAdapter(baseQuickAdapter);
        if (trailingLoadStateAdapter != null) {
            concatAdapter.addAdapter(trailingLoadStateAdapter);
            BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener2 = new BaseQuickAdapter.OnViewAttachStateChangeListener() { // from class: com.chad.library.adapter4.QuickAdapterHelper$2$1
                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnViewAttachStateChangeListener
                public void onViewAttachedToWindow(@NotNull RecyclerView.ViewHolder holder) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                    TrailingLoadStateAdapter<?> trailingLoadStateAdapter2 = QuickAdapterHelper.this.getTrailingLoadStateAdapter();
                    RecyclerView.Adapter<? extends RecyclerView.ViewHolder> bindingAdapter = holder.getBindingAdapter();
                    trailingLoadStateAdapter2.checkPreload$com_github_CymChad_brvah(bindingAdapter != null ? bindingAdapter.getItemCount() : 0, holder.getBindingAdapterPosition());
                }

                @Override // com.chad.library.adapter4.BaseQuickAdapter.OnViewAttachStateChangeListener
                public void onViewDetachedFromWindow(@NotNull RecyclerView.ViewHolder holder) {
                    Intrinsics.checkNotNullParameter(holder, "holder");
                }
            };
            baseQuickAdapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener2);
            this.lastAdapterOnViewAttachChangeListener = onViewAttachStateChangeListener2;
        }
    }

    @NotNull
    public final QuickAdapterHelper addBeforeAdapter(int index, @NotNull BaseQuickAdapter<?, ?> adapter) {
        BaseQuickAdapter.OnViewAttachStateChangeListener onViewAttachStateChangeListener;
        Object first;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (index >= 0 && index <= this.mBeforeList.size()) {
            if (index == 0 && (onViewAttachStateChangeListener = this.firstAdapterOnViewAttachChangeListener) != null) {
                if (!this.mBeforeList.isEmpty()) {
                    first = CollectionsKt___CollectionsKt.first((List<? extends Object>) this.mBeforeList);
                    ((BaseQuickAdapter) first).removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
                } else {
                    this.contentAdapter.removeOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
                }
                adapter.addOnViewAttachStateChangeListener(onViewAttachStateChangeListener);
            }
            if (this.leadingLoadStateAdapter != null) {
                index++;
            }
            if (this.mAdapter.addAdapter(index, adapter)) {
                this.mBeforeList.add(adapter);
            }
            return this;
        }
        throw new IndexOutOfBoundsException("Index must be between 0 and " + this.mBeforeList.size() + ". Given:" + index);
    }

    @NotNull
    public final QuickAdapterHelper addAfterAdapter(int index, @NotNull BaseQuickAdapter<?, ?> adapter) {
        int size;
        int size2;
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (index >= 0 && index <= this.mAfterList.size()) {
            if (index == this.mAfterList.size()) {
                addAfterAdapter(adapter);
            } else {
                if (this.trailingLoadStateAdapter == null) {
                    size = this.mAdapter.getAdapters().size();
                    size2 = this.mAfterList.size();
                } else {
                    size = this.mAdapter.getAdapters().size() - 1;
                    size2 = this.mAfterList.size();
                }
                if (this.mAdapter.addAdapter((size - size2) + index, adapter)) {
                    this.mAfterList.add(adapter);
                }
            }
            return this;
        }
        throw new IndexOutOfBoundsException("Index must be between 0 and " + this.mAfterList.size() + ". Given:" + index);
    }
}
