.class public final Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;",
        "",
        "()V",
        "createProviderContext",
        "Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;",
        "provider",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "certificates",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProviderContext(Lcom/onyx/android/sdk/data/config/cloudnote/Provider;Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;)Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "provider"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "certificates"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getClientID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setClientID(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getClientID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setClientID(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getSecret()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setSecret(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getExtraInfo()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->INSTANCE:Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/cloudstorage/common/utils/CloudStorageMMKVHelper;->saveGoogleDriveClientInfo(Ljava/lang/String;)V

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getClientID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setClientID(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getSecret()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setSecret(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;

    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->getSecret()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setSecret(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setLocale(Ljava/util/Locale;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/cloudstorage/model/ProviderContext;->setSandbox(Z)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
