.class Lcom/tencent/beacon/module/EventModule$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/module/EventModule;->a(Lcom/tencent/beacon/event/open/BeaconEvent;)Lcom/tencent/beacon/event/open/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/event/c/g;

.field final synthetic b:Lcom/tencent/beacon/module/EventModule;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/module/EventModule;Lcom/tencent/beacon/event/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/module/EventModule$2;->b:Lcom/tencent/beacon/module/EventModule;

    iput-object p2, p0, Lcom/tencent/beacon/module/EventModule$2;->a:Lcom/tencent/beacon/event/c/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/module/EventModule$2;->a:Lcom/tencent/beacon/event/c/g;

    invoke-virtual {p0}, Lcom/tencent/beacon/event/c/g;->a()V

    return-void
.end method
