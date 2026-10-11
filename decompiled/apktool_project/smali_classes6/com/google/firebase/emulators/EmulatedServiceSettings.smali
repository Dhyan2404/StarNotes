.class public final Lcom/google/firebase/emulators/EmulatedServiceSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->b:I

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->a:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()I
    .locals 0

    iget p0, p0, Lcom/google/firebase/emulators/EmulatedServiceSettings;->b:I

    return p0
.end method
