package com.onyx.android.sdk.replicator.note.p035db.model;

import com.alibaba.fastjson2.annotation.JSONField;
import com.miui.penengine.p015e.C6997f;
import com.miui.penengine.p015e.C6998g;
import com.miui.penengine.p015e.C6999h;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u0000 ;2\u00020\u0001:\u0001;B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u00109\u001a\u00020:R\u001e\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001e\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001e\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001e\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001e\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001dR\u001e\u0010\u001e\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\"\u0010!\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010'\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e¢\u0006\u0010\n\u0002\u0010&\u001a\u0004\b(\u0010#\"\u0004\b)\u0010%R\u001e\u0010*\u001a\u00020+8\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\u001a\u00100\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u0010\u001b\"\u0004\b2\u0010\u001dR\u001a\u00103\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b4\u0010\u001b\"\u0004\b5\u0010\u001dR\u001a\u00106\u001a\u00020\u0019X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b7\u0010\u001b\"\u0004\b8\u0010\u001d¨\u0006<"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions;", "Ljava/io/Serializable;", "()V", "alignCenterAfterOpen", "", "getAlignCenterAfterOpen", Constants.BOOLEAN_VALUE_SIG, "setAlignCenterAfterOpen", "(Z)V", "applyMarginToAll", "getApplyMarginToAll", "setApplyMarginToAll", "applyMarginToCover", "getApplyMarginToCover", "setApplyMarginToCover", "autoApplyPageMargin", "getAutoApplyPageMargin", "setAutoApplyPageMargin", "enabledAdaptiveStrokeWidth", "getEnabledAdaptiveStrokeWidth", "setEnabledAdaptiveStrokeWidth", "enabledContinuousPage", "getEnabledContinuousPage", "setEnabledContinuousPage", "fetchPolicy", "", "getFetchPolicy", "()I", "setFetchPolicy", "(I)V", "firstApplyMargin", "getFirstApplyMargin", "setFirstApplyMargin", "layoutType", "getLayoutType", "()Ljava/lang/Integer;", "setLayoutType", "(Ljava/lang/Integer;)V", Constants.INTEGER_SIG, "pageColumnCount", "getPageColumnCount", "setPageColumnCount", "pageMarginConfig", "Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", "getPageMarginConfig", "()Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;", "setPageMarginConfig", "(Lcom/onyx/android/sdk/replicator/note/db/model/PageMarginConfig;)V", "scrollerHorizontalGravity", "getScrollerHorizontalGravity", "setScrollerHorizontalGravity", "scrollerVerticalGravity", "getScrollerVerticalGravity", "setScrollerVerticalGravity", "version", "getVersion", "setVersion", "resetNotExportValues", "", "Companion", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes8.dex */
public final class VirtualDocOptions implements Serializable {

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);
    public static final int FETCH_POLICY_DOC = 1;
    public static final int FETCH_POLICY_GLOBAL = 0;

    @JSONField(alternateNames = {"b"})
    private boolean alignCenterAfterOpen;

    @JSONField(alternateNames = {C6998g.f39679a})
    private boolean applyMarginToCover;
    private int fetchPolicy;

    @JSONField(alternateNames = {"c"})
    @Nullable
    private Integer layoutType;

    @JSONField(alternateNames = {"d"})
    @Nullable
    private Integer pageColumnCount;
    private int version;

    @JSONField(alternateNames = {"a"})
    private boolean firstApplyMargin = true;

    @JSONField(alternateNames = {"e"}, name = "isEnabledContinuousPage")
    private boolean enabledContinuousPage = true;

    @JSONField(alternateNames = {C6997f.f39671c})
    private boolean autoApplyPageMargin = true;

    @JSONField(alternateNames = {C6999h.f39688c})
    @NotNull
    private PageMarginConfig pageMarginConfig = new PageMarginConfig();
    private boolean applyMarginToAll = true;

    @JSONField(name = "isEnabledAdaptiveStrokeWidth")
    private boolean enabledAdaptiveStrokeWidth = true;
    private int scrollerVerticalGravity = 48;
    private int scrollerHorizontalGravity = 8388613;

    @Metadata(m61527d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/replicator/note/db/model/VirtualDocOptions$Companion;", "", "()V", "FETCH_POLICY_DOC", "", "FETCH_POLICY_GLOBAL", "isFetchFromDoc", "", "policy", "isFetchFromGlobal", "sdk-replicator_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes8.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean isFetchFromDoc(int policy) {
            return policy == 1;
        }

        public final boolean isFetchFromGlobal(int policy) {
            return policy == 0;
        }

        public Companion() {
        }
    }

    public final boolean getAlignCenterAfterOpen() {
        return this.alignCenterAfterOpen;
    }

    public final boolean getApplyMarginToAll() {
        return this.applyMarginToAll;
    }

    public final boolean getApplyMarginToCover() {
        return this.applyMarginToCover;
    }

    public final boolean getAutoApplyPageMargin() {
        return this.autoApplyPageMargin;
    }

    public final boolean getEnabledAdaptiveStrokeWidth() {
        return this.enabledAdaptiveStrokeWidth;
    }

    public final boolean getEnabledContinuousPage() {
        return this.enabledContinuousPage;
    }

    public final int getFetchPolicy() {
        return this.fetchPolicy;
    }

    public final boolean getFirstApplyMargin() {
        return this.firstApplyMargin;
    }

    @Nullable
    public final Integer getLayoutType() {
        return this.layoutType;
    }

    @Nullable
    public final Integer getPageColumnCount() {
        return this.pageColumnCount;
    }

    @NotNull
    public final PageMarginConfig getPageMarginConfig() {
        return this.pageMarginConfig;
    }

    public final int getScrollerHorizontalGravity() {
        return this.scrollerHorizontalGravity;
    }

    public final int getScrollerVerticalGravity() {
        return this.scrollerVerticalGravity;
    }

    public final int getVersion() {
        return this.version;
    }

    public final void resetNotExportValues() {
        this.applyMarginToCover = false;
        this.autoApplyPageMargin = true;
        this.applyMarginToAll = true;
    }

    public final void setAlignCenterAfterOpen(boolean z) {
        this.alignCenterAfterOpen = z;
    }

    public final void setApplyMarginToAll(boolean z) {
        this.applyMarginToAll = z;
    }

    public final void setApplyMarginToCover(boolean z) {
        this.applyMarginToCover = z;
    }

    public final void setAutoApplyPageMargin(boolean z) {
        this.autoApplyPageMargin = z;
    }

    public final void setEnabledAdaptiveStrokeWidth(boolean z) {
        this.enabledAdaptiveStrokeWidth = z;
    }

    public final void setEnabledContinuousPage(boolean z) {
        this.enabledContinuousPage = z;
    }

    public final void setFetchPolicy(int i) {
        this.fetchPolicy = i;
    }

    public final void setFirstApplyMargin(boolean z) {
        this.firstApplyMargin = z;
    }

    public final void setLayoutType(@Nullable Integer num) {
        this.layoutType = num;
    }

    public final void setPageColumnCount(@Nullable Integer num) {
        this.pageColumnCount = num;
    }

    public final void setPageMarginConfig(@NotNull PageMarginConfig pageMarginConfig) {
        Intrinsics.checkNotNullParameter(pageMarginConfig, "<set-?>");
        this.pageMarginConfig = pageMarginConfig;
    }

    public final void setScrollerHorizontalGravity(int i) {
        this.scrollerHorizontalGravity = i;
    }

    public final void setScrollerVerticalGravity(int i) {
        this.scrollerVerticalGravity = i;
    }

    public final void setVersion(int i) {
        this.version = i;
    }
}
