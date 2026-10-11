.class public Lcom/sunia/HTREnginev2/xkl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/HTREnginev2/xkl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/xkl$a$a;
    }
.end annotation


# instance fields
.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/xkl$a;->e:Ljava/lang/String;

    iput p2, p0, Lcom/sunia/HTREnginev2/xkl$a;->f:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    new-instance v0, Lcom/sunia/HTREnginev2/xkl$a$a;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/xkl$a;->e:Ljava/lang/String;

    iget p0, p0, Lcom/sunia/HTREnginev2/xkl$a;->f:I

    invoke-direct {v0, p1, v1, p0}, Lcom/sunia/HTREnginev2/xkl$a$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
