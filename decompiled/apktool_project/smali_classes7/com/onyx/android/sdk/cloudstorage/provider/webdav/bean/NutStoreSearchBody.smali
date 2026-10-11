.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005B\u0005\u00a2\u0006\u0002\u0010\u0006R&\u0010\u0007\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0008\u0010\u0006\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR&\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u0006\u001a\u0004\u0008\u000e\u0010\n\"\u0004\u0008\u000f\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;",
        "Ljava/io/Serializable;",
        "path",
        "",
        "query",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "()V",
        "keywords",
        "getKeywords$annotations",
        "getKeywords",
        "()Ljava/lang/String;",
        "setKeywords",
        "(Ljava/lang/String;)V",
        "getPath$annotations",
        "getPath",
        "setPath",
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
    prefix = "s"
    reference = "http://ns.jianguoyun.com"
.end annotation

.annotation runtime Lorg/simpleframework/xml/Root;
    name = "search"
.end annotation


# instance fields
.field private keywords:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private path:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->path:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->keywords:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getKeywords$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "keywords"
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Namespace;
        prefix = "s"
        reference = "http://ns.jianguoyun.com"
    .end annotation

    return-void
.end method

.method public static synthetic getPath$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
        name = "path"
        required = false
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Namespace;
        prefix = "s"
        reference = "http://ns.jianguoyun.com"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getKeywords()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->keywords:Ljava/lang/String;

    return-object p0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->path:Ljava/lang/String;

    return-object p0
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->keywords:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/NutStoreSearchBody;->path:Ljava/lang/String;

    return-void
.end method
