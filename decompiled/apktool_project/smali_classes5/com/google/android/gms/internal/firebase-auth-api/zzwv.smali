.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_WRAPPER::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzxd<",
        "TJcePrimitiveT;>;JcePrimitiveT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxc;",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxg;",
            "Ljavax/crypto/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxf;",
            "Ljavax/crypto/KeyAgreement;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxh;",
            "Ljava/security/KeyPairGenerator;",
            ">;"
        }
    .end annotation
.end field

.field public static final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxe;",
            "Ljava/security/KeyFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxi;",
            "Ljava/security/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzwv<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxj;",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzxa<",
            "TJcePrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxg;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxi;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzf:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxj;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxf;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxf;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxh;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxe;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzwv;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_WRAPPER;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzig;->zzb()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzxr;->zza()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzwu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;Lcom/google/android/gms/internal/firebase-auth-api/zzwx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzww;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzww;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzxd;Lcom/google/android/gms/internal/firebase-auth-api/zzwz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    return-void
.end method

.method public static varargs zza([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzwv;->zzh:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
