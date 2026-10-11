package com.onyx.android.sdk.cloudstorage.provider.common;

import com.onyx.android.sdk.base.utils.LocaleUtils;
import com.onyx.android.sdk.cloudstorage.interfaces.BaseCloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.interfaces.CloudStorageProvider;
import com.onyx.android.sdk.cloudstorage.model.ProviderAccountModel;
import com.onyx.android.sdk.cloudstorage.provider.aliyun.AliYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.baiduyun.BaiduYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.dropbox.DropBoxProvider;
import com.onyx.android.sdk.cloudstorage.provider.evernote.EverNoteProvider;
import com.onyx.android.sdk.cloudstorage.provider.googledriver.GoogleDriverProvider;
import com.onyx.android.sdk.cloudstorage.provider.huaweidrive.HuaweiYunProvider;
import com.onyx.android.sdk.cloudstorage.provider.onedrive.OneDriveProvider;
import com.onyx.android.sdk.cloudstorage.provider.onxy.OnyxCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.NutStoreWebDavProvider;
import com.onyx.android.sdk.cloudstorage.provider.webdav.WebDavCloudProvider;
import com.onyx.android.sdk.cloudstorage.provider.ynote.YNoteProvider;
import com.onyx.android.sdk.data.config.cloudnote.Provider;
import com.onyx.android.sdk.data.couchbase.bean.CouchFieldKey;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(m61527d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0003\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006¨\u0006\n"}, m61528d2 = {"Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;", "", "()V", "newType", "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;", "accountModel", "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;", "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;", CouchFieldKey.KEY_PROVIDER, "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;", "sdk-cloudstorage_release"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes7.dex */
public final class CloudStorageProviderFactory {

    @NotNull
    public static final CloudStorageProviderFactory INSTANCE = new CloudStorageProviderFactory();

    @Metadata(m61529k = 3, m61530mv = {1, 9, 0}, m61532xi = 48)
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Provider.values().length];
            try {
                iArr[Provider.EVER_NOTE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Provider.ONYX_NOTE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Provider.YNOTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Provider.DROP_BOX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Provider.GOOGLE_DRIVE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Provider.NUT_STORE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Provider.WEBDAV.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Provider.ONE_DRIVE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Provider.ALI_YUN.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Provider.BAIDU_YUN.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[Provider.HUAWEI_YUN.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[Provider.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @NotNull
    public final CloudStorageProvider newType(@NotNull ProviderAccountModel accountModel) {
        Intrinsics.checkNotNullParameter(accountModel, "accountModel");
        return newType(accountModel.getProvider(), accountModel);
    }

    @NotNull
    public final BaseCloudStorageProvider newType(@NotNull Provider provider, @Nullable ProviderAccountModel accountModel) {
        BaseCloudStorageProvider everNoteProvider;
        Intrinsics.checkNotNullParameter(provider, "provider");
        switch (WhenMappings.$EnumSwitchMapping$0[provider.ordinal()]) {
            case 1:
                everNoteProvider = new EverNoteProvider();
                break;
            case 2:
                everNoteProvider = new OnyxCloudProvider();
                break;
            case 3:
                everNoteProvider = new YNoteProvider();
                break;
            case 4:
                everNoteProvider = new DropBoxProvider();
                break;
            case 5:
                everNoteProvider = new GoogleDriverProvider();
                break;
            case 6:
                everNoteProvider = new NutStoreWebDavProvider();
                break;
            case 7:
                everNoteProvider = new WebDavCloudProvider();
                break;
            case 8:
                everNoteProvider = new OneDriveProvider();
                break;
            case 9:
                everNoteProvider = new AliYunProvider();
                break;
            case 10:
                everNoteProvider = new BaiduYunProvider();
                break;
            case 11:
                everNoteProvider = new HuaweiYunProvider();
                break;
            case 12:
                if (LocaleUtils.INSTANCE.isChinese()) {
                    everNoteProvider = new BaiduYunProvider();
                    break;
                } else {
                    everNoteProvider = new DropBoxProvider();
                    break;
                }
            default:
                throw new NoWhenBranchMatchedException();
        }
        everNoteProvider.configureProviderAccountModel(accountModel);
        return everNoteProvider;
    }
}
