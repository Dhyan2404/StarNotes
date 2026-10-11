.class final Lcom/google/android/gms/internal/firebase-auth-api/zzakd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzalg;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzake;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    const/4 v2, 0x0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzajc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzake;-><init>([Lcom/google/android/gms/internal/firebase-auth-api/zzakm;)V

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakm;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzakm;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzajh;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    return-void
.end method

.method private static zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakm;
    .locals 4

    :try_start_0
    const-string v0, "com.google.protobuf.h"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)Z
    .locals 1

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzakf;->zza:[I

    invoke-interface {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzala;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzalh;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzalh<",
            "TT;>;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zza(Ljava/lang/Class;)V

    .line 5
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzakm;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakm;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzakn;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zzc()Z

    move-result p0

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaje;

    if-eqz p0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p0

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzais;

    move-result-object p1

    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    .line 11
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzakp;)Lcom/google/android/gms/internal/firebase-auth-api/zzakv;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object p0

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzais;

    move-result-object p1

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakn;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakp;

    move-result-object v0

    .line 15
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzakv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzakp;)Lcom/google/android/gms/internal/firebase-auth-api/zzakv;

    move-result-object p0

    return-object p0

    .line 16
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakx;

    move-result-object v2

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    move-result-object v3

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object v4

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzais;

    move-result-object v5

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    move-result-object v6

    move-object v0, p1

    .line 23
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzakn;Lcom/google/android/gms/internal/firebase-auth-api/zzakx;Lcom/google/android/gms/internal/firebase-auth-api/zzaju;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzaki;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzakx;

    move-result-object v2

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    move-result-object v3

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object v4

    const/4 v5, 0x0

    .line 27
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    move-result-object v6

    move-object v0, p1

    .line 28
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzakn;Lcom/google/android/gms/internal/firebase-auth-api/zzakx;Lcom/google/android/gms/internal/firebase-auth-api/zzaju;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzaki;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p0

    return-object p0

    .line 29
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzakd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakn;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 30
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakx;

    move-result-object v2

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    move-result-object v3

    .line 32
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object v4

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaiu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzais;

    move-result-object v5

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    move-result-object v6

    move-object v0, p1

    .line 35
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzakn;Lcom/google/android/gms/internal/firebase-auth-api/zzakx;Lcom/google/android/gms/internal/firebase-auth-api/zzaju;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzaki;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p0

    return-object p0

    .line 36
    :cond_4
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakz;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzakx;

    move-result-object v2

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaju;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaju;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzalj;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzamg;

    move-result-object v4

    const/4 v5, 0x0

    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzakk;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaki;

    move-result-object v6

    move-object v0, p1

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzakt;->zza(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase-auth-api/zzakn;Lcom/google/android/gms/internal/firebase-auth-api/zzakx;Lcom/google/android/gms/internal/firebase-auth-api/zzaju;Lcom/google/android/gms/internal/firebase-auth-api/zzamg;Lcom/google/android/gms/internal/firebase-auth-api/zzais;Lcom/google/android/gms/internal/firebase-auth-api/zzaki;)Lcom/google/android/gms/internal/firebase-auth-api/zzakt;

    move-result-object p0

    return-object p0
.end method
