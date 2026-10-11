.class public final synthetic Lcom/sunia/HTREnginev2/vsm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lcom/sunia/commonv2/callback/HWRCallback;

.field public final synthetic g:Lcom/sunia/HTREnginev2/g;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sunia/HTREnginev2/vsm;->e:I

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vsm;->f:Lcom/sunia/commonv2/callback/HWRCallback;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vsm;->g:Lcom/sunia/HTREnginev2/g;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vsm;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sunia/HTREnginev2/vsm;->e:I

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vsm;->f:Lcom/sunia/commonv2/callback/HWRCallback;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/vsm;->g:Lcom/sunia/HTREnginev2/g;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vsm;->h:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/sunia/hwrv2/demo/calculator/hwr/SimpleRecognize;->h(ILcom/sunia/commonv2/callback/HWRCallback;Lcom/sunia/HTREnginev2/g;Ljava/util/List;)V

    return-void
.end method
