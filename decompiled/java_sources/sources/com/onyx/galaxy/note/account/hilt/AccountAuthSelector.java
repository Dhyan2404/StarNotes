package com.onyx.galaxy.note.account.hilt;

import com.onyx.android.sdk.cloudstorage.provider.baiduyun.bean.BaiduYunConstant;
import com.onyx.galaxy.note.account.data.EmptyAccountAuth;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import dagger.assisted.Assisted;
import dagger.assisted.AssistedFactory;
import dagger.assisted.AssistedInject;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0001\u0011B,\b\u0007\u0012\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002¢\u0006\u0002\b\u00060\u0004\u0012\b\b\u0001\u0010\u000e\u001a\u00020\u0005¢\u0006\u0004\b\u000f\u0010\u0010J\u0006\u0010\u0003\u001a\u00020\u0002R%\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0002¢\u0006\u0002\b\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0017\u0010\u000e\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\r¨\u0006\u0012"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;", "", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "getAccountAuth", "", "", "Lkotlin/jvm/JvmSuppressWildcards;", "a", "Ljava/util/Map;", "authMap", "b", Constants.STRING_SIG, "getType", "()Ljava/lang/String;", "type", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/util/Map;Ljava/lang/String;)V", "Creator", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes9.dex */
public final class AccountAuthSelector {

    /* renamed from: a, reason: from kotlin metadata */
    @NotNull
    public final Map<String, IAccountAuth> authMap;

    /* renamed from: b, reason: from kotlin metadata */
    @NotNull
    public final String type;

    @AssistedFactory
    @Metadata(m61527d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector$Creator;", "", BaiduYunConstant.CREATE, "Lcom/onyx/galaxy/note/account/hilt/AccountAuthSelector;", "type", "", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes9.dex */
    public interface Creator {
        @NotNull
        AccountAuthSelector create(@NotNull String type);
    }

    @AssistedInject
    public AccountAuthSelector(@NotNull Map<String, IAccountAuth> authMap, @Assisted @NotNull String type) {
        Intrinsics.checkNotNullParameter(authMap, "authMap");
        Intrinsics.checkNotNullParameter(type, "type");
        this.authMap = authMap;
        this.type = type;
    }

    @NotNull
    public final IAccountAuth getAccountAuth() {
        IAccountAuth iAccountAuth = this.authMap.get(this.type);
        return iAccountAuth == null ? new EmptyAccountAuth() : iAccountAuth;
    }

    @NotNull
    public final String getType() {
        return this.type;
    }
}
