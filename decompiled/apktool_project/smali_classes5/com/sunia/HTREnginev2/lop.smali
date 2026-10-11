.class public final Lcom/sunia/HTREnginev2/lop;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Z

.field public final synthetic f:Landroid/net/Uri;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Lcom/sunia/HTREnginev2/eop;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/eop;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p2, p0, Lcom/sunia/HTREnginev2/lop;->e:Z

    iput-object p3, p0, Lcom/sunia/HTREnginev2/lop;->f:Landroid/net/Uri;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/lop;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/lop;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/lop;->i:Lcom/sunia/HTREnginev2/eop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/lop;->i:Lcom/sunia/HTREnginev2/eop;

    iget-boolean v1, p0, Lcom/sunia/HTREnginev2/lop;->e:Z

    iget-object v2, p0, Lcom/sunia/HTREnginev2/lop;->f:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/lop;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/lop;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sunia/HTREnginev2/eop;->a(Lcom/sunia/HTREnginev2/eop;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
