.class public final synthetic Lcom/sunia/HTREnginev2/p8l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/exoplayer2/source/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/source/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/p8l;->e:Lcom/google/android/exoplayer2/source/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/p8l;->e:Lcom/google/android/exoplayer2/source/b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/b;->c(Lcom/google/android/exoplayer2/source/b;)V

    return-void
.end method
