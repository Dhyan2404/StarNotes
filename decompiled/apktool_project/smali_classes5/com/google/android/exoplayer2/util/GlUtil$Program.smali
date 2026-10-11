.class public final Lcom/google/android/exoplayer2/util/GlUtil$Program;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Program"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/google/android/exoplayer2/util/GlUtil$b;

.field public final c:[Lcom/google/android/exoplayer2/util/GlUtil$c;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlUtil$b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/util/GlUtil$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/util/GlUtil;->loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/GlUtil;->loadAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplayer2/util/GlUtil$Program;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    const v1, 0x8b31

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/GlUtil;->a(IILjava/lang/String;)V

    const p1, 0x8b30

    .line 6
    invoke-static {v0, p1, p2}, Lcom/google/android/exoplayer2/util/GlUtil;->a(IILjava/lang/String;)V

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x0

    .line 8
    filled-new-array {p1}, [I

    move-result-object p2

    const v1, 0x8b82

    .line 9
    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 10
    aget p2, p2, p1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 11
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Unable to link shader program: \n"

    if-eqz v2, :cond_0

    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/GlUtil;->b(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 14
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->d:Ljava/util/Map;

    new-array p2, v1, [I

    const v2, 0x8b89

    .line 15
    invoke-static {v0, v2, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    .line 16
    new-array v0, v0, [Lcom/google/android/exoplayer2/util/GlUtil$b;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->b:[Lcom/google/android/exoplayer2/util/GlUtil$b;

    move v0, p1

    :goto_1
    aget v2, p2, p1

    if-ge v0, v2, :cond_2

    .line 17
    iget v2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/GlUtil$b;->b(II)Lcom/google/android/exoplayer2/util/GlUtil$b;

    move-result-object v2

    .line 18
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->b:[Lcom/google/android/exoplayer2/util/GlUtil$b;

    aput-object v2, v3, v0

    .line 19
    iget-object v3, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->d:Ljava/util/Map;

    iget-object v4, v2, Lcom/google/android/exoplayer2/util/GlUtil$b;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 20
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->e:Ljava/util/Map;

    new-array p2, v1, [I

    .line 21
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    const v1, 0x8b86

    invoke-static {v0, v1, p2, p1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget v0, p2, p1

    .line 22
    new-array v0, v0, [Lcom/google/android/exoplayer2/util/GlUtil$c;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->c:[Lcom/google/android/exoplayer2/util/GlUtil$c;

    move v0, p1

    :goto_2
    aget v1, p2, p1

    if-ge v0, v1, :cond_3

    .line 23
    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/util/GlUtil$c;->b(II)Lcom/google/android/exoplayer2/util/GlUtil$c;

    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->c:[Lcom/google/android/exoplayer2/util/GlUtil$c;

    aput-object v1, v2, v0

    .line 25
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->e:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplayer2/util/GlUtil$c;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 26
    :cond_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil;->c(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bindAttributesAndUniforms()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->b:[Lcom/google/android/exoplayer2/util/GlUtil$b;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/GlUtil$b;->a()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->c:[Lcom/google/android/exoplayer2/util/GlUtil$c;

    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/GlUtil$c;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public delete()V
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public getAttributeArrayLocationAndEnable(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return p0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/GlUtil;->d(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setBufferAttribute(Ljava/lang/String;[FI)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$b;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$b;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/util/GlUtil$b;->c([FI)V

    return-void
.end method

.method public setFloatUniform(Ljava/lang/String;F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/GlUtil$c;->c(F)V

    return-void
.end method

.method public setFloatsUniform(Ljava/lang/String;[F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/util/GlUtil$c;->d([F)V

    return-void
.end method

.method public setSamplerTexIdUniform(Ljava/lang/String;II)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/GlUtil$c;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/util/GlUtil$c;->e(II)V

    return-void
.end method

.method public use()V
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$Program;->a:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void
.end method
