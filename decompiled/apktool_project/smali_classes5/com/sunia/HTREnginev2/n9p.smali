.class public final Lcom/sunia/HTREnginev2/n9p;
.super Lcom/sunia/HTREnginev2/aap;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/google/android/gms/common/api/internal/zaaw;

.field public final synthetic c:Lcom/google/android/gms/signin/internal/zak;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/o9p;Lcom/google/android/gms/common/api/internal/zabf;Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 0

    iput-object p3, p0, Lcom/sunia/HTREnginev2/n9p;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/n9p;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/aap;-><init>(Lcom/google/android/gms/common/api/internal/zabf;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/n9p;->b:Lcom/google/android/gms/common/api/internal/zaaw;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/n9p;->c:Lcom/google/android/gms/signin/internal/zak;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/internal/zaaw;->t(Lcom/google/android/gms/common/api/internal/zaaw;Lcom/google/android/gms/signin/internal/zak;)V

    return-void
.end method
