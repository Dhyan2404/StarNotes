.class public final Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;
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
    name = "Like"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR&\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0002\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;",
        "Ljava/io/Serializable;",
        "()V",
        "literal",
        "",
        "getLiteral$annotations",
        "getLiteral",
        "()Ljava/lang/String;",
        "setLiteral",
        "(Ljava/lang/String;)V",
        "prop",
        "Lcom/thegrizzlylabs/sardineandroid/model/Prop;",
        "getProp$annotations",
        "getProp",
        "()Lcom/thegrizzlylabs/sardineandroid/model/Prop;",
        "setProp",
        "(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V",
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
        "prop",
        "literal"
    }
.end annotation


# instance fields
.field private literal:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private prop:Lcom/thegrizzlylabs/sardineandroid/model/Prop;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getLiteral$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Namespace;
        prefix = "d"
        reference = "DAV:"
    .end annotation

    return-void
.end method

.method public static synthetic getProp$annotations()V
    .locals 0
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/Namespace;
        prefix = "d"
        reference = "DAV:"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getLiteral()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->literal:Ljava/lang/String;

    return-object p0
.end method

.method public final getProp()Lcom/thegrizzlylabs/sardineandroid/model/Prop;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->prop:Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    return-object p0
.end method

.method public final setLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->literal:Ljava/lang/String;

    return-void
.end method

.method public final setProp(Lcom/thegrizzlylabs/sardineandroid/model/Prop;)V
    .locals 0
    .param p1    # Lcom/thegrizzlylabs/sardineandroid/model/Prop;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/cloudstorage/provider/webdav/bean/WebDavCloudSearchBody$Like;->prop:Lcom/thegrizzlylabs/sardineandroid/model/Prop;

    return-void
.end method
