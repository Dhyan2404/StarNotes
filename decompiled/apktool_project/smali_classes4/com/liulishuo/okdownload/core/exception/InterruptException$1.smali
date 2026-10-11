.class final Lcom/liulishuo/okdownload/core/exception/InterruptException$1;
.super Lcom/liulishuo/okdownload/core/exception/InterruptException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/exception/InterruptException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/liulishuo/okdownload/core/exception/InterruptException;-><init>(Lcom/liulishuo/okdownload/core/exception/InterruptException$1;)V

    return-void
.end method


# virtual methods
.method public printStackTrace()V
    .locals 1

    new-instance p0, Ljava/lang/IllegalAccessError;

    const-string v0, "Stack is ignored for signal"

    invoke-direct {p0, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
