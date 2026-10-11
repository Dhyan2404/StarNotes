.class final Lcom/onyx/android/sdk/data/config/cloudnote/Provider$GOOGLE_DRIVE;
.super Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/data/config/cloudnote/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GOOGLE_DRIVE"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider$GOOGLE_DRIVE;",
        "Lcom/onyx/android/sdk/data/config/cloudnote/Provider;",
        "createDefaultCertificate",
        "Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;",
        "sdk-data_release"
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
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v3, "googledrive"

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;-><init>(Ljava/lang/String;ILjava/lang/String;IZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public createDefaultCertificate()Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/config/cloudnote/Provider;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;-><init>(Ljava/lang/String;)V

    const-string p0, "{\n  \"web\": {\n    \"client_id\": \"771749065538-hqal3s9at4g7mtbqvf51qn1pg1qcb6bt.apps.googleusercontent.com\",\n    \"project_id\": \"starnote-1b166\",\n    \"auth_uri\": \"https://accounts.google.com/o/oauth2/auth\",\n    \"token_uri\": \"https://oauth2.googleapis.com/token\",\n    \"auth_provider_x509_cert_url\": \"https://www.googleapis.com/oauth2/v1/certs\",\n    \"client_secret\": \"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\",\n    \"redirect_uris\": [\n      \"https://starnote-1b166.firebaseapp.com/__/auth/handler\"\n    ],\n    \"javascript_origins\": [\n      \"http://localhost\",\n      \"http://localhost:5000\",\n      \"https://starnote-1b166.firebaseapp.com\"\n    ]\n  }\n}"

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/ProviderCertificate$Certificate;->setExtraInfo(Ljava/lang/String;)V

    return-object v0
.end method
