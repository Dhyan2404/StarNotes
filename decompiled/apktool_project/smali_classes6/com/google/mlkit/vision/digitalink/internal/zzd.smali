.class public final synthetic Lcom/google/mlkit/vision/digitalink/internal/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/ComponentFactory;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/digitalink/internal/zzd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/digitalink/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/vision/digitalink/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/digitalink/internal/zzd;->zza:Lcom/google/mlkit/vision/digitalink/internal/zzd;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/firebase/components/ComponentContainer;)Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/google/mlkit/vision/digitalink/downloading/zzb;

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/google/firebase/components/ComponentContainer;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/mlkit/vision/digitalink/downloading/zzb;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
