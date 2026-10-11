package com.onyx.android.sdk.cloudstorage.provider.common.request;

import com.onyx.android.sdk.base.p018rx.RxBaseRequest;
import com.onyx.android.sdk.base.utils.Debug;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.common.utils.ProviderAccountModelUtils;
import com.onyx.android.sdk.data.common.exception.CloudNoteException;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\b&\u0018\u0000 \u0018*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0018B\u0017\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\b\u001a\u00028\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0003H\u0014J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\b\u001a\u00028\u0000H$¢\u0006\u0004\b\t\u0010\nJ\n\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0002R\u001a\u0010\r\u001a\u00020\f8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\"\u0010\b\u001a\u00028\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/request/FetchAccountInfoRequest;", "T", "Lcom/onyx/android/sdk/base/rx/RxBaseRequest;", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "execute", "accountModel", "", "saveAuthAccountInfo", "credential", "fetch", "(Ljava/lang/Object;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "a", "", CouchFieldKey.KEY_PROVIDER_NAME, Constants.STRING_SIG, "getProviderName", "()Ljava/lang/String;", Constants.OBJECT_SIG, "getCredential", "()Ljava/lang/Object;", "setCredential", "(Ljava/lang/Object;)V", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;Ljava/lang/Object;)V", "Companion", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0})
/* loaded from: classes7.dex */
public abstract class FetchAccountInfoRequest<T> extends RxBaseRequest<ProviderAccountModel> {
    private static final int retryCount = 3;
    private T credential;

    @NotNull
    private final String providerName;

    public FetchAccountInfoRequest(@NotNull String providerName, T t) {
        Intrinsics.checkNotNullParameter(providerName, "providerName");
        this.providerName = providerName;
        this.credential = t;
    }

    /* renamed from: a */
    public final ProviderAccountModel m32618a() throws Exception {
        ProviderAccountModel fetch;
        for (int i = 0; i < 3; i++) {
            try {
                fetch = fetch(this.credential);
            } catch (Exception e) {
                if ((e instanceof CloudNoteException) && ((CloudNoteException) e).getCode() == 1005) {
                    throw e;
                }
                Debug.INSTANCE.m32048e(e);
            }
            if (fetch != null) {
                return fetch;
            }
        }
        return null;
    }

    @Nullable
    public abstract ProviderAccountModel fetch(T credential) throws Exception;

    public final T getCredential() {
        return this.credential;
    }

    @NotNull
    public final String getProviderName() {
        return this.providerName;
    }

    public void saveAuthAccountInfo(@NotNull ProviderAccountModel accountModel) throws Exception {
        List<ProviderAccountModel> listOf;
        Intrinsics.checkNotNullParameter(accountModel, "accountModel");
        ProviderAccountModelUtils providerAccountModelUtils = ProviderAccountModelUtils.INSTANCE;
        if (providerAccountModelUtils.queryAccount(this.providerName, accountModel.getAccountId()) == null) {
            listOf = CollectionsKt__CollectionsJVMKt.listOf(accountModel);
            providerAccountModelUtils.saveAccount(listOf, this.providerName);
        } else {
            throw new CloudNoteException(1005, this.providerName + " duplicate binding");
        }
    }

    public final void setCredential(T t) {
        this.credential = t;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.onyx.android.sdk.base.p018rx.RxBaseRequest
    @NotNull
    public ProviderAccountModel execute() throws Exception {
        ProviderAccountModel m32618a = m32618a();
        if (m32618a != null) {
            saveAuthAccountInfo(m32618a);
            return m32618a;
        }
        return new ProviderAccountModel(null, null, null, null, null, null, 63, null);
    }
}
