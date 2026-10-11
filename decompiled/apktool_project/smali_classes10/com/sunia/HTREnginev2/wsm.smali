.class public final synthetic Lcom/sunia/HTREnginev2/wsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/commonv2/callback/HWRCallback;

.field public final synthetic f:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wsm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wsm;->f:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wsm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wsm;->f:Ljava/lang/Exception;

    invoke-static {v0, p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->a(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/Exception;)V

    return-void
.end method
