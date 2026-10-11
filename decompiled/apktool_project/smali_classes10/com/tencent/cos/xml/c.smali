.class public final synthetic Lcom/tencent/cos/xml/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

.field public final synthetic f:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/c;->e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    iput-object p2, p0, Lcom/tencent/cos/xml/c;->f:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/c;->e:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    iget-object p0, p0, Lcom/tencent/cos/xml/c;->f:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/tencent/cos/xml/CloudControl;->c(Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;Ljava/lang/Exception;)V

    return-void
.end method
