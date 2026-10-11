.class public final synthetic Lcom/sunia/HTREnginev2/x4h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/sunia/graphv2/sdk/GraphEngineManager;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/sunia/graphv2/sdk/GraphCallback;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/graphv2/sdk/GraphEngineManager;Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/x4h;->e:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/x4h;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/x4h;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/x4h;->h:Lcom/sunia/graphv2/sdk/GraphCallback;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/x4h;->i:Ljava/lang/String;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/x4h;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/x4h;->e:Lcom/sunia/graphv2/sdk/GraphEngineManager;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/x4h;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/x4h;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/x4h;->h:Lcom/sunia/graphv2/sdk/GraphCallback;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/x4h;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/x4h;->j:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/sunia/graphv2/sdk/GraphEngineManager;->a(Lcom/sunia/graphv2/sdk/GraphEngineManager;Landroid/content/Context;Ljava/lang/String;Lcom/sunia/graphv2/sdk/GraphCallback;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
