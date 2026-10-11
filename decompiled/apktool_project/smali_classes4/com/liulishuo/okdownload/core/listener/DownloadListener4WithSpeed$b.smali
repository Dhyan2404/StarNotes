.class public Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$ModelCreator<",
        "Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;
    .locals 0

    new-instance p0, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    invoke-direct {p0, p1}, Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;-><init>(I)V

    return-object p0
.end method

.method public bridge synthetic create(I)Lcom/liulishuo/okdownload/core/listener/assist/ListenerModelHandler$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/liulishuo/okdownload/core/listener/DownloadListener4WithSpeed$b;->a(I)Lcom/liulishuo/okdownload/core/listener/assist/Listener4SpeedAssistExtend$Listener4SpeedModel;

    move-result-object p0

    return-object p0
.end method
