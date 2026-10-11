.class public final synthetic Lcom/sunia/HTREnginev2/qsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/commonv2/callback/HWRCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/commonv2/callback/HWRCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/qsm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/qsm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    invoke-static {p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->b(Lcom/sunia/commonv2/callback/HWRCallback;)V

    return-void
.end method
