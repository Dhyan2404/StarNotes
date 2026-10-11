package com.jakewharton.rxbinding4.view;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;

@Metadata(m61526bv = {1, 0, 3}, m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\u0007\b¨\u0006\t"}, m61528d2 = {"Lcom/jakewharton/rxbinding4/view/ViewAttachEvent;", "", "()V", "view", "Landroid/view/View;", "getView", "()Landroid/view/View;", "Lcom/jakewharton/rxbinding4/view/ViewAttachAttachedEvent;", "Lcom/jakewharton/rxbinding4/view/ViewAttachDetachedEvent;", "rxbinding_release"}, m61529k = 1, m61530mv = {1, 1, 16})
/* loaded from: classes4.dex */
public abstract class ViewAttachEvent {
    public ViewAttachEvent() {
    }

    @NotNull
    public abstract View getView();

    public /* synthetic */ ViewAttachEvent(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
