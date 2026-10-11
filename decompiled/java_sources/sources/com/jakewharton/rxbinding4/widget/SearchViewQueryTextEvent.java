package com.jakewharton.rxbinding4.widget;

import android.widget.SearchView;
import com.google.android.material.motion.MotionUtils;
import com.sun.org.apache.xalan.internal.templates.Constants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001d\u0010\u001eJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0004HÆ\u0003J\t\u0010\u0007\u001a\u00020\u0006HÆ\u0003J'\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001J\t\u0010\r\u001a\u00020\fHÖ\u0001J\t\u0010\u000f\u001a\u00020\u000eHÖ\u0001J\u0013\u0010\u0011\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0017\u0010\b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u0017\u0010\t\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\n\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\n\u0010\u001c¨\u0006\u001f"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/widget/SearchViewQueryTextEvent;", "", "Landroid/widget/SearchView;", "component1", "", "component2", "", "component3", "view", "queryText", "isSubmitted", "copy", "", "toString", "", "hashCode", Constants.ATTRVAL_OTHER, "equals", "a", "Landroid/widget/SearchView;", "getView", "()Landroid/widget/SearchView;", "b", "Ljava/lang/CharSequence;", "getQueryText", "()Ljava/lang/CharSequence;", "c", com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.HASIDCALL_INDEX_SIG, com.sun.org.apache.xalan.internal.xsltc.compiler.Constants.BOOLEAN_VALUE_SIG, com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 4, 0})
/* loaded from: classes4.dex */
public final /* data */ class SearchViewQueryTextEvent {

    /* renamed from: a, reason: from kotlin metadata and from toString */
    @NotNull
    public final SearchView view;

    /* renamed from: b, reason: from kotlin metadata and from toString */
    @NotNull
    public final CharSequence queryText;

    /* renamed from: c, reason: from kotlin metadata and from toString */
    public final boolean isSubmitted;

    public SearchViewQueryTextEvent(@NotNull SearchView view, @NotNull CharSequence queryText, boolean z) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(queryText, "queryText");
        this.view = view;
        this.queryText = queryText;
        this.isSubmitted = z;
    }

    public static /* synthetic */ SearchViewQueryTextEvent copy$default(SearchViewQueryTextEvent searchViewQueryTextEvent, SearchView searchView, CharSequence charSequence, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            searchView = searchViewQueryTextEvent.view;
        }
        if ((i & 2) != 0) {
            charSequence = searchViewQueryTextEvent.queryText;
        }
        if ((i & 4) != 0) {
            z = searchViewQueryTextEvent.isSubmitted;
        }
        return searchViewQueryTextEvent.copy(searchView, charSequence, z);
    }

    @NotNull
    /* renamed from: component1, reason: from getter */
    public final SearchView getView() {
        return this.view;
    }

    @NotNull
    /* renamed from: component2, reason: from getter */
    public final CharSequence getQueryText() {
        return this.queryText;
    }

    /* renamed from: component3, reason: from getter */
    public final boolean getIsSubmitted() {
        return this.isSubmitted;
    }

    @NotNull
    public final SearchViewQueryTextEvent copy(@NotNull SearchView view, @NotNull CharSequence queryText, boolean isSubmitted) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(queryText, "queryText");
        return new SearchViewQueryTextEvent(view, queryText, isSubmitted);
    }

    public boolean equals(@Nullable Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SearchViewQueryTextEvent)) {
            return false;
        }
        SearchViewQueryTextEvent searchViewQueryTextEvent = (SearchViewQueryTextEvent) other;
        return Intrinsics.areEqual(this.view, searchViewQueryTextEvent.view) && Intrinsics.areEqual(this.queryText, searchViewQueryTextEvent.queryText) && this.isSubmitted == searchViewQueryTextEvent.isSubmitted;
    }

    @NotNull
    public final CharSequence getQueryText() {
        return this.queryText;
    }

    @NotNull
    public final SearchView getView() {
        return this.view;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        SearchView searchView = this.view;
        int hashCode = (searchView != null ? searchView.hashCode() : 0) * 31;
        CharSequence charSequence = this.queryText;
        int hashCode2 = (hashCode + (charSequence != null ? charSequence.hashCode() : 0)) * 31;
        boolean z = this.isSubmitted;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode2 + i;
    }

    public final boolean isSubmitted() {
        return this.isSubmitted;
    }

    @NotNull
    public String toString() {
        return "SearchViewQueryTextEvent(view=" + this.view + ", queryText=" + this.queryText + ", isSubmitted=" + this.isSubmitted + MotionUtils.f31762d;
    }
}
