.class public final synthetic Lcom/sunia/HTREnginev2/oze;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/oze;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/oze;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/oze;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/oze;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/firebase/heartbeatinfo/DefaultHeartBeatController;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/sunia/HTREnginev2/wfh;

    move-result-object p0

    return-object p0
.end method
