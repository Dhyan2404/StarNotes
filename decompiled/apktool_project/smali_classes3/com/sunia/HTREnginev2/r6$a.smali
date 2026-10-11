.class public Lcom/sunia/HTREnginev2/r6$a;
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
.field public final synthetic e:Lcom/sunia/HTREnginev2/r6$d;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/r6$d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/r6$a;->e:Lcom/sunia/HTREnginev2/r6$d;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/r6$a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/r6$a;->e:Lcom/sunia/HTREnginev2/r6$d;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/r6$a;->f:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sunia/HTREnginev2/r6$d;->e:Ljava/lang/Object;

    return-void
.end method
