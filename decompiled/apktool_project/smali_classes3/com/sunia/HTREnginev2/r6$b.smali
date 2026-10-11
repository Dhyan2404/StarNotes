.class public Lcom/sunia/HTREnginev2/r6$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/r6;->i(Landroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Application;

.field public final synthetic f:Lcom/sunia/HTREnginev2/r6$d;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/sunia/HTREnginev2/r6$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r6$b;->e:Landroid/app/Application;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r6$b;->f:Lcom/sunia/HTREnginev2/r6$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r6$b;->e:Landroid/app/Application;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r6$b;->f:Lcom/sunia/HTREnginev2/r6$d;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
