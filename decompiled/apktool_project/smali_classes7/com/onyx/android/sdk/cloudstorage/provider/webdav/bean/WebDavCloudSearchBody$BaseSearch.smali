.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;
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
    name = "BaseSearch"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R&\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u0002\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R&\u0010\u0018\u001a\u0004\u0018\u00010\u00198\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001a\u0010\u0002\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;",
        "Ljava/io/Serializable;",
        "()V",
        "from",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;",
        "getFrom$annotations",
        "getFrom",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;",
        "setFrom",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;)V",
        "orderby",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;",
        "getOrderby$annotations",
        "getOrderby",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;",
        "setOrderby",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;)V",
        "select",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;",
        "getSelect$annotations",
        "getSelect",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;",
        "setSelect",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;)V",
        "where",
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;",
        "getWhere$annotations",
        "getWhere",
        "()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;",
        "setWhere",
        "(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;)V",
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

.annotation runtime Lorg/simpleframework/xml/Order;
    elements = {
        "select",
        "from",
        "where",
        "orderby"
    }
.end annotation


# instance fields
.field private from:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private orderby:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private select:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private where:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getFrom$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method

.method public static synthetic getOrderby$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method

.method public static synthetic getSelect$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method

.method public static synthetic getWhere$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getFrom()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->from:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    return-object p0
.end method

.method public final getOrderby()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->orderby:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;

    return-object p0
.end method

.method public final getSelect()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->select:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;

    return-object p0
.end method

.method public final getWhere()Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->where:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    return-object p0
.end method

.method public final setFrom(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->from:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$From;

    return-void
.end method

.method public final setOrderby(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->orderby:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$OrderBy;

    return-void
.end method

.method public final setSelect(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->select:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Select;

    return-void
.end method

.method public final setWhere(Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$BaseSearch;->where:Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Where;

    return-void
.end method
