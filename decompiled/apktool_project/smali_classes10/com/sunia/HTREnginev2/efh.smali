.class public final synthetic Lcom/sunia/HTREnginev2/efh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lcom/sunia/commonv2/bean/ConfigBean;

.field public final synthetic g:Lcom/sunia/commonv2/callback/CoreCommonCallback;

.field public final synthetic h:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/efh;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/efh;->f:Lcom/sunia/commonv2/bean/ConfigBean;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/efh;->g:Lcom/sunia/commonv2/callback/CoreCommonCallback;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/efh;->h:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/efh;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/efh;->f:Lcom/sunia/commonv2/bean/ConfigBean;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/efh;->g:Lcom/sunia/commonv2/callback/CoreCommonCallback;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/efh;->h:Ljava/util/List;

    invoke-static {v0, v1, v2, p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognize;->a(Ljava/util/List;Lcom/sunia/commonv2/bean/ConfigBean;Lcom/sunia/commonv2/callback/CoreCommonCallback;Ljava/util/List;)V

    return-void
.end method
