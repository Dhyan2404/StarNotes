.class public final synthetic Lcom/tencent/cos/xml/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/b;->e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    iput p2, p0, Lcom/tencent/cos/xml/b;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/b;->e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    iget p0, p0, Lcom/tencent/cos/xml/b;->f:I

    invoke-static {v0, p0}, Lcom/tencent/cos/xml/CloudControl;->d(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;I)V

    return-void
.end method
