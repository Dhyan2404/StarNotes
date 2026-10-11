.class public Lcom/tencent/qimei/webview/util/X5StateController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;,
        Lcom/tencent/qimei/webview/util/X5StateController$a;
    }
.end annotation


# instance fields
.field public volatile controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/qimei/ae/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tencent/qimei/webview/util/X5StateController;
    .locals 1

    sget-object v0, Lcom/tencent/qimei/webview/util/X5StateController$a;->a:Lcom/tencent/qimei/webview/util/X5StateController;

    return-object v0
.end method


# virtual methods
.method public getController()Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qimei/webview/util/X5StateController;->controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;

    return-object p0
.end method

.method public setController(Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qimei/webview/util/X5StateController;->controller:Lcom/tencent/qimei/webview/util/X5StateController$X5Controller;

    return-void
.end method
