package com.onyx.galaxy.note.account.p043ui;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes9.dex */
public /* synthetic */ class RecentLoginFragment$showWeChatDialog$2 extends FunctionReferenceImpl implements Function1<String, Unit> {
    public RecentLoginFragment$showWeChatDialog$2(Object obj) {
        super(1, obj, RecentLoginFragment.class, "wechatQrCodeLogin", "wechatQrCodeLogin(Ljava/lang/String;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull String p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((RecentLoginFragment) this.receiver).m41971k1(p0);
    }
}
