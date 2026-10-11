.class Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/authlib/managers/AuthorizeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultCountDownLatch"
.end annotation


# instance fields
.field public authResultInfo:Lcom/sunia/authlib/bean/AuthResultInfo;

.field public requestCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/authlib/managers/AuthorizeManager$ResultCountDownLatch;->authResultInfo:Lcom/sunia/authlib/bean/AuthResultInfo;

    return-void
.end method
