.class public Lcom/google/android/gms/common/GmsSignatureVerifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/ShowFirstParty;
.end annotation

.annotation runtime Lcom/google/errorprone/annotations/RestrictedInheritance;
    allowedOnPath = ".*javatests/com/google/android/gmscore/integ/client/common/robolectric/.*"
    explanation = "Sub classing of GMS Core\'s APIs are restricted to testing fakes."
    link = "go/gmscore-restrictedinheritance"
.end annotation


# static fields
.field public static final a:Lcom/sunia/HTREnginev2/pfp;

.field public static final b:Lcom/sunia/HTREnginev2/pfp;

.field public static final c:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sunia/HTREnginev2/xsp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xsp;-><init>()V

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/xsp;->d(Ljava/lang/String;)Lcom/sunia/HTREnginev2/xsp;

    const-wide/32 v1, 0xc2bd840

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/xsp;->a(J)Lcom/sunia/HTREnginev2/xsp;

    sget-object v1, Lcom/sunia/HTREnginev2/ypp;->d:Lcom/sunia/HTREnginev2/fop;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v2

    sget-object v3, Lcom/sunia/HTREnginev2/ypp;->b:Lcom/sunia/HTREnginev2/fop;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sunia/HTREnginev2/xsp;->c(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;

    sget-object v2, Lcom/sunia/HTREnginev2/ypp;->c:Lcom/sunia/HTREnginev2/fop;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v3

    sget-object v4, Lcom/sunia/HTREnginev2/ypp;->a:Lcom/sunia/HTREnginev2/fop;

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/common/zzag;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/xsp;->b(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xsp;->e()Lcom/sunia/HTREnginev2/pfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->a:Lcom/sunia/HTREnginev2/pfp;

    new-instance v0, Lcom/sunia/HTREnginev2/xsp;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/xsp;-><init>()V

    const-string v3, "com.android.vending"

    invoke-virtual {v0, v3}, Lcom/sunia/HTREnginev2/xsp;->d(Ljava/lang/String;)Lcom/sunia/HTREnginev2/xsp;

    const-wide/32 v3, 0x4e6e200

    invoke-virtual {v0, v3, v4}, Lcom/sunia/HTREnginev2/xsp;->a(J)Lcom/sunia/HTREnginev2/xsp;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/xsp;->c(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/fop;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/common/zzag;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/common/zzag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/xsp;->b(Ljava/util/List;)Lcom/sunia/HTREnginev2/xsp;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/xsp;->e()Lcom/sunia/HTREnginev2/pfp;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->b:Lcom/sunia/HTREnginev2/pfp;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/GmsSignatureVerifier;->c:Ljava/util/HashMap;

    return-void
.end method
