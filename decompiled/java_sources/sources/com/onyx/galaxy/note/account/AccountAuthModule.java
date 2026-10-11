package com.onyx.galaxy.note.account;

import com.onyx.android.sdk.data.account.bean.LoginAuthConst;
import com.onyx.galaxy.note.account.interfaces.IAccountAuth;
import dagger.Module;
import dagger.Provides;
import dagger.hilt.InstallIn;
import dagger.hilt.components.SingletonComponent;
import dagger.multibindings.IntoMap;
import dagger.multibindings.StringKey;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007J\b\u0010\u0005\u001a\u00020\u0004H\u0007¨\u0006\u0006"}, m61528d2 = {"Lcom/onyx/galaxy/note/account/AccountAuthModule;", "", "()V", "getGoogleAccountAuth", "Lcom/onyx/galaxy/note/account/interfaces/IAccountAuth;", "getMicroSoftAccountAuth", "note_overseasRelease"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
@Module
@InstallIn({SingletonComponent.class})
/* loaded from: classes9.dex */
public final class AccountAuthModule {

    @NotNull
    public static final AccountAuthModule INSTANCE = new AccountAuthModule();

    @Provides
    @StringKey(LoginAuthConst.GOOGLE_AUTH)
    @NotNull
    @IntoMap
    public final IAccountAuth getGoogleAccountAuth() {
        return new GoogleAccountAuth();
    }

    @Provides
    @StringKey(LoginAuthConst.MICROSOFT_AUTH)
    @NotNull
    @IntoMap
    public final IAccountAuth getMicroSoftAccountAuth() {
        return new MicroSoftAccountAuth();
    }
}
