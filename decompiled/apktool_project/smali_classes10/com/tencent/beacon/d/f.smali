.class Lcom/tencent/beacon/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/beacon/d/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/beacon/d/h;


# direct methods
.method public constructor <init>(Lcom/tencent/beacon/d/h;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/beacon/d/f;->a:Lcom/tencent/beacon/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/beacon/d/f;->a:Lcom/tencent/beacon/d/h;

    invoke-virtual {p0}, Lcom/tencent/beacon/d/h;->c()V

    return-void
.end method
