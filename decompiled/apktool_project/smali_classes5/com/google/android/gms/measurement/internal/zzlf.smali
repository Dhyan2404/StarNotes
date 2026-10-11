.class public final synthetic Lcom/google/android/gms/measurement/internal/zzlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public synthetic e:Lcom/sunia/HTREnginev2/nop;

.field public synthetic f:I

.field public synthetic g:Ljava/lang/Exception;

.field public synthetic h:[B

.field public synthetic i:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/nop;ILjava/lang/Exception;[BLjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->e:Lcom/sunia/HTREnginev2/nop;

    iput p2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->f:I

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->g:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzlf;->h:[B

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzlf;->i:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->e:Lcom/sunia/HTREnginev2/nop;

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzlf;->f:I

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzlf;->g:Ljava/lang/Exception;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzlf;->h:[B

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzlf;->i:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sunia/HTREnginev2/nop;->a(ILjava/lang/Exception;[BLjava/util/Map;)V

    return-void
.end method
