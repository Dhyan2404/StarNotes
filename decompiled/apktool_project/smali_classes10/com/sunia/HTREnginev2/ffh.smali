.class public final synthetic Lcom/sunia/HTREnginev2/ffh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lcom/sunia/commonv2/callback/CoreCommonCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ffh;->e:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    iput p2, p0, Lcom/sunia/HTREnginev2/ffh;->f:I

    iput-object p3, p0, Lcom/sunia/HTREnginev2/ffh;->g:Ljava/util/List;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ffh;->h:Lcom/sunia/commonv2/callback/CoreCommonCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ffh;->e:Lcom/sunia/HTREnginev2/sdk/editor/Editor;

    iget v1, p0, Lcom/sunia/HTREnginev2/ffh;->f:I

    iget-object v2, p0, Lcom/sunia/HTREnginev2/ffh;->g:Ljava/util/List;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ffh;->h:Lcom/sunia/commonv2/callback/CoreCommonCallback;

    invoke-static {v0, v1, v2, p0}, Lcom/sunia/commonv2/hwr/HWRSimpleRecognizeV2;->a(Lcom/sunia/HTREnginev2/sdk/editor/Editor;ILjava/util/List;Lcom/sunia/commonv2/callback/CoreCommonCallback;)V

    return-void
.end method
