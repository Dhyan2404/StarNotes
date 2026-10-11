.class public final synthetic Lcom/tencent/cos/xml/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/tencent/cos/xml/CloudControl;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/tencent/cos/xml/CloudControl;Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/cos/xml/a;->e:Lcom/tencent/cos/xml/CloudControl;

    iput-object p2, p0, Lcom/tencent/cos/xml/a;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/cos/xml/a;->g:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/a;->e:Lcom/tencent/cos/xml/CloudControl;

    iget-object v1, p0, Lcom/tencent/cos/xml/a;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/tencent/cos/xml/a;->g:Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;

    invoke-static {v0, v1, p0}, Lcom/tencent/cos/xml/CloudControl;->a(Lcom/tencent/cos/xml/CloudControl;Ljava/lang/String;Lcom/tencent/cos/xml/CloudControl$BeaconCloudCallback;)V

    return-void
.end method
