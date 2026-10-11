.class public final Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RequestQrCodeImage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;",
        "",
        "(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;)V",
        "getImageUrl",
        "",
        "imgUrl",
        "",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;->a:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getImageUrl(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "imgUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;->a:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-static {v0}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->access$getCount$p(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;->a:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    invoke-static {v0, p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->access$updateQrImage(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget$RequestQrCodeImage;->a:Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;->access$setCount$p(Lcom/onyx/galaxy/note/account/view/WechatLoadWebWidget;I)V

    return-void
.end method
