.class public final Lcom/sunia/HTREnginev2/rfp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/common/PackageVerificationResult;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/PackageVerificationResult;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/PackageVerificationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rfp;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/rfp;->b:Lcom/google/android/gms/common/PackageVerificationResult;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sunia/HTREnginev2/rfp;)Lcom/google/android/gms/common/PackageVerificationResult;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rfp;->b:Lcom/google/android/gms/common/PackageVerificationResult;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sunia/HTREnginev2/rfp;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rfp;->a:Ljava/lang/String;

    return-object p0
.end method
