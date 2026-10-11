.class public final Lcom/sunia/HTREnginev2/w8p;
.super Lcom/google/android/play/integrity/internal/r;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lcom/sunia/HTREnginev2/zxo;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/zxo;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/w8p;->g:Lcom/sunia/HTREnginev2/zxo;

    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w8p;->g:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    invoke-static {v0}, Lcom/google/android/play/integrity/internal/ac;->s(Lcom/google/android/play/integrity/internal/ac;)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/w8p;->g:Lcom/sunia/HTREnginev2/zxo;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/ac;->n(Lcom/google/android/play/integrity/internal/ac;Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/w8p;->g:Lcom/sunia/HTREnginev2/zxo;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/zxo;->e:Lcom/google/android/play/integrity/internal/ac;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/play/integrity/internal/ac;->m(Lcom/google/android/play/integrity/internal/ac;Z)V

    return-void
.end method
