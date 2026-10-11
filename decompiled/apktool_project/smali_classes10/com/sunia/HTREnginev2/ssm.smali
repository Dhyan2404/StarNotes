.class public final synthetic Lcom/sunia/HTREnginev2/ssm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/commonv2/callback/HWRCallback;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ssm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ssm;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ssm;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ssm;->e:Lcom/sunia/commonv2/callback/HWRCallback;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ssm;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ssm;->g:Ljava/util/List;

    invoke-static {v0, v1, p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->e(Lcom/sunia/commonv2/callback/HWRCallback;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
