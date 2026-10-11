.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "From"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;",
        "Ljava/io/Serializable;",
        "()V",
        "scope",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;",
        "getScope$annotations",
        "getScope",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;",
        "setScope",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;)V",
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

.annotation runtime Lorg/simpleframework/xml/Namespace;
    prefix = "d"
    reference = "DAV:"
.end annotation


# instance fields
.field private scope:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getScope$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getScope()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;->scope:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;

    return-object p0
.end method

.method public final setScope(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;->scope:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Scope;

    return-void
.end method
