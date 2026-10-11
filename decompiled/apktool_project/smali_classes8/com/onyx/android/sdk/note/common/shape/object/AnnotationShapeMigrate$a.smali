.class public final Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onyx/android/sdk/base/data/Migration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/onyx/android/sdk/base/data/Migration<",
        "Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;",
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
.method public a(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setShapeVersion(Lcom/onyx/android/sdk/note/common/shape/Shape;I)V

    return-void
.end method

.method public bridge synthetic afterMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->a(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V

    return-void
.end method

.method public b(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/data/Migration$DefaultImpls;->beforeMigration(Lcom/onyx/android/sdk/base/data/Migration;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic beforeMigration(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->b(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V

    return-void
.end method

.method public c(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "shape"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->getAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;)Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getStyle()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/note/R$color;->highlight_alpha_mask:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getColor()I

    move-result v1

    and-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->setColor(I)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v0, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "annotationInfoBean.color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;->getColor()I

    move-result p0

    invoke-static {p0}, Lokhttp3/internal/Util;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getVersion()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic migrate(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShapeMigrate$a;->c(Lcom/onyx/android/sdk/note/common/shape/object/AnnotationShape;)V

    return-void
.end method
