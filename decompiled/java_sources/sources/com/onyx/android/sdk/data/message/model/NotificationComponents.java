package com.onyx.android.sdk.data.message.model;

import com.onyx.android.sdk.data.common.data.MessageTemplateKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b#\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001a\u0010\f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\bR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\u0006\"\u0004\b\u0011\u0010\bR\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0006\"\u0004\b\u0014\u0010\bR\u001a\u0010\u0015\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0006\"\u0004\b\u0017\u0010\bR\u001a\u0010\u0018\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u0006\"\u0004\b\u001a\u0010\bR\u001a\u0010\u001b\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u0006\"\u0004\b\u001d\u0010\bR\u001a\u0010\u001e\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\u0006\"\u0004\b \u0010\bR\u001a\u0010!\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010\u0006\"\u0004\b#\u0010\bR\u001a\u0010$\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b%\u0010\u0006\"\u0004\b&\u0010\b¨\u0006'"}, m61528d2 = {"Lcom/onyx/android/sdk/data/message/model/NotificationComponents;", "", "()V", "button", "Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;", "getButton", "()Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;", "setButton", "(Lcom/onyx/android/sdk/data/message/model/ComponentAttributes;)V", "button1", "getButton1", "setButton1", "button2", "getButton2", "setButton2", "content", "getContent", "setContent", MessageTemplateKt.KEY_CONTENT1, "getContent1", "setContent1", MessageTemplateKt.KEY_CONTENT2, "getContent2", "setContent2", "image", "getImage", "setImage", "swiper", "getSwiper", "setSwiper", "title", "getTitle", "setTitle", "version", "getVersion", "setVersion", "webview", "getWebview", "setWebview", "sdk-data_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class NotificationComponents {

    @NotNull
    private ComponentAttributes title = new ComponentAttributes();

    @NotNull
    private ComponentAttributes content = new ComponentAttributes();

    @NotNull
    private ComponentAttributes content1 = new ComponentAttributes();

    @NotNull
    private ComponentAttributes content2 = new ComponentAttributes();

    @NotNull
    private ComponentAttributes image = new ComponentAttributes();

    @NotNull
    private ComponentAttributes button = new ComponentAttributes();

    @NotNull
    private ComponentAttributes button1 = new ComponentAttributes();

    @NotNull
    private ComponentAttributes button2 = new ComponentAttributes();

    @NotNull
    private ComponentAttributes swiper = new ComponentAttributes();

    @NotNull
    private ComponentAttributes webview = new ComponentAttributes();

    @NotNull
    private ComponentAttributes version = new ComponentAttributes();

    @NotNull
    public final ComponentAttributes getButton() {
        return this.button;
    }

    @NotNull
    public final ComponentAttributes getButton1() {
        return this.button1;
    }

    @NotNull
    public final ComponentAttributes getButton2() {
        return this.button2;
    }

    @NotNull
    public final ComponentAttributes getContent() {
        return this.content;
    }

    @NotNull
    public final ComponentAttributes getContent1() {
        return this.content1;
    }

    @NotNull
    public final ComponentAttributes getContent2() {
        return this.content2;
    }

    @NotNull
    public final ComponentAttributes getImage() {
        return this.image;
    }

    @NotNull
    public final ComponentAttributes getSwiper() {
        return this.swiper;
    }

    @NotNull
    public final ComponentAttributes getTitle() {
        return this.title;
    }

    @NotNull
    public final ComponentAttributes getVersion() {
        return this.version;
    }

    @NotNull
    public final ComponentAttributes getWebview() {
        return this.webview;
    }

    public final void setButton(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.button = componentAttributes;
    }

    public final void setButton1(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.button1 = componentAttributes;
    }

    public final void setButton2(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.button2 = componentAttributes;
    }

    public final void setContent(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.content = componentAttributes;
    }

    public final void setContent1(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.content1 = componentAttributes;
    }

    public final void setContent2(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.content2 = componentAttributes;
    }

    public final void setImage(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.image = componentAttributes;
    }

    public final void setSwiper(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.swiper = componentAttributes;
    }

    public final void setTitle(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.title = componentAttributes;
    }

    public final void setVersion(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.version = componentAttributes;
    }

    public final void setWebview(@NotNull ComponentAttributes componentAttributes) {
        Intrinsics.checkNotNullParameter(componentAttributes, "<set-?>");
        this.webview = componentAttributes;
    }
}
