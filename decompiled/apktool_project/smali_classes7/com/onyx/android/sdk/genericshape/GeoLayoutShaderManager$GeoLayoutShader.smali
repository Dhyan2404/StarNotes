.class public final Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeoLayoutShader"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;",
        "",
        "shader",
        "Landroid/graphics/Shader;",
        "shaderMatrix",
        "Landroid/graphics/Matrix;",
        "(Landroid/graphics/Shader;Landroid/graphics/Matrix;)V",
        "getShader",
        "()Landroid/graphics/Shader;",
        "setShader",
        "(Landroid/graphics/Shader;)V",
        "getShaderMatrix",
        "()Landroid/graphics/Matrix;",
        "setShaderMatrix",
        "(Landroid/graphics/Matrix;)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "sdk-genericshape_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private shader:Landroid/graphics/Shader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shaderMatrix:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Shader;Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "shader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shaderMatrix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    iput-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public static synthetic copy$default(Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;Landroid/graphics/Shader;Landroid/graphics/Matrix;ILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->copy(Landroid/graphics/Shader;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/graphics/Shader;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    return-object p0
.end method

.method public final component2()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final copy(Landroid/graphics/Shader;Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;
    .locals 0
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "shader"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "shaderMatrix"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    invoke-direct {p0, p1, p2}, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    iget-object v3, p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object p1, p1, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getShader()Landroid/graphics/Shader;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    return-object p0
.end method

.method public final getShaderMatrix()Landroid/graphics/Matrix;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/graphics/Matrix;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setShader(Landroid/graphics/Shader;)V
    .locals 1
    .param p1    # Landroid/graphics/Shader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    return-void
.end method

.method public final setShaderMatrix(Landroid/graphics/Matrix;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeoLayoutShader(shader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shaderMatrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/genericshape/GeoLayoutShaderManager$GeoLayoutShader;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
