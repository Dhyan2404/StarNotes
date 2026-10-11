.class public final Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0018\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;",
        "",
        "()V",
        "newType",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;",
        "accountModel",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;",
        "Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "sdk-cloudstorage_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;

    invoke-direct {v0}, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newType(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/LocaleUtils;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/utils/LocaleUtils;->isChinese()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 5
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;-><init>()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;-><init>()V

    goto :goto_0

    .line 7
    :pswitch_1
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/huaweidrive/HuaweiYunProvider;-><init>()V

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/baiduyun/BaiduYunProvider;-><init>()V

    goto :goto_0

    .line 9
    :pswitch_3
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/aliyun/AliYunProvider;-><init>()V

    goto :goto_0

    .line 10
    :pswitch_4
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onedrive/OneDriveProvider;-><init>()V

    goto :goto_0

    .line 11
    :pswitch_5
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/WebDavCloudProvider;-><init>()V

    goto :goto_0

    .line 12
    :pswitch_6
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/NutStoreWebDavProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/NutStoreWebDavProvider;-><init>()V

    goto :goto_0

    .line 13
    :pswitch_7
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/googledriver/GoogleDriverProvider;-><init>()V

    goto :goto_0

    .line 14
    :pswitch_8
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/dropbox/DropBoxProvider;-><init>()V

    goto :goto_0

    .line 15
    :pswitch_9
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/ynote/YNoteProvider;-><init>()V

    goto :goto_0

    .line 16
    :pswitch_a
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/onxy/OnyxCloudProvider;-><init>()V

    goto :goto_0

    .line 17
    :pswitch_b
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/evernote/EverNoteProvider;-><init>()V

    .line 18
    :goto_0
    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;->configureProviderAccountModel(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newType(Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/interfaces/CloudStorageProvider;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "accountModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;->getProvider()Lcom/onyx/android/sdk/data/config/cloudnote/Provider;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/cloudstorage/provider/common/CloudStorageProviderFactory;->newType(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/cloudstorage/model/ProviderAccountModel;)Lcom/onyx/android/sdk/cloudstorage/interfaces/BaseCloudStorageProvider;

    move-result-object p0

    return-object p0
.end method
