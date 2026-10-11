.class public final Lcom/sunia/HTREnginev2/hfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/data/Migration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/base/data/Migration<",
        "Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/data/Migration$DefaultImpls;->afterMigration(Lcom/onyx/android/sdk/base/data/Migration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic afterMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/hfh;->a(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method

.method public b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/data/Migration$DefaultImpls;->beforeMigration(Lcom/onyx/android/sdk/base/data/Migration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic beforeMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/hfh;->b(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method

.method public c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setHWRTextShapeLayoutVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic migrate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/hfh;->c(Lcom/onyx/android/sdk/note/common/shape/object/HWRTextShape;)V

    return-void
.end method
