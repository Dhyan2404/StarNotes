.class public final Lcom/google/android/exoplayer2/util/GlUtil$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:[F

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->b:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->c:I

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    return-void
.end method

.method public static b(II)Lcom/google/android/exoplayer2/util/GlUtil$c;
    .locals 15

    move v11, p0

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x8b87

    const/4 v12, 0x0

    invoke-static {p0, v2, v1, v12}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    new-array v13, v0, [I

    aget v2, v1, v12

    new-array v14, v2, [B

    new-array v3, v0, [I

    const/4 v4, 0x0

    new-array v5, v0, [I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v0, p0

    move/from16 v1, p1

    move-object v7, v13

    move-object v9, v14

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    new-instance v0, Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/exoplayer2/util/GlUtil;->e([B)I

    move-result v1

    invoke-direct {v0, v14, v12, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/GlUtil;->d(ILjava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/google/android/exoplayer2/util/GlUtil$c;

    aget v3, v13, v12

    invoke-direct {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/util/GlUtil$c;-><init>(Ljava/lang/String;II)V

    return-object v2
.end method


# virtual methods
.method public a()V
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->c:I

    const/16 v1, 0x1406

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->b:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    invoke-static {v0, v2, p0, v3}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_0
    const v1, 0x8b5b    # 4.9991E-41f

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->b:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    invoke-static {v0, v2, v3, p0, v3}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_1
    const v1, 0x8b5c    # 4.9993E-41f

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->b:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    invoke-static {v0, v2, v3, p0, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->e:I

    if-eqz v0, :cond_6

    const v0, 0x84c0

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->f:I

    add-int/2addr v1, v0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->c:I

    const v1, 0x8d66

    const/16 v2, 0xde1

    if-eq v0, v1, :cond_5

    const v1, 0x8be7

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const v1, 0x8b5e    # 4.9996E-41f

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->e:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->c:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected uniform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    const v0, 0x8d65

    iget v1, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->e:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_1
    iget v0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->b:I

    iget p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->f:I

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/16 p0, 0x2800

    const/16 v0, 0x2601

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2801

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2802

    const v0, 0x812f

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    invoke-static {v2, p0, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No call to setSamplerTexId() before bind."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(F)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method

.method public d([F)V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->d:[F

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public e(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->e:I

    iput p2, p0, Lcom/google/android/exoplayer2/util/GlUtil$c;->f:I

    return-void
.end method
