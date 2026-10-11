.class public final synthetic Lcom/sunia/HTREnginev2/kdn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

.field public final synthetic f:F

.field public final synthetic g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kdn;->e:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    iput p2, p0, Lcom/sunia/HTREnginev2/kdn;->f:F

    iput-object p3, p0, Lcom/sunia/HTREnginev2/kdn;->g:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/kdn;->e:Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;

    iget v1, p0, Lcom/sunia/HTREnginev2/kdn;->f:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kdn;->g:Ljava/util/ArrayList;

    invoke-static {v0, v1, p0, p1}, Lcom/onyx/android/sdk/neohwr/layout/TextLayoutEngine;->a(Lcom/onyx/android/sdk/neohwr/fontmgr/FontNative;FLjava/util/ArrayList;I)V

    return-void
.end method
