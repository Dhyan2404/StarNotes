.class public final Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0007\n\u0002\u00083\u0018\u0000 I2\u00020\u0001:\u0001IB\u0007\u00a2\u0006\u0004\u0008G\u0010HJ\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0000J\u0008\u0010\u000f\u001a\u00020\u0000H\u0016R\"\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R*\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010)\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\u0011\u001a\u0004\u0008\'\u0010\u0013\"\u0004\u0008(\u0010\u0015R\"\u0010+\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008*\u0010!\u001a\u0004\u0008+\u0010#\"\u0004\u0008,\u0010%R\"\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008-\u0010\u0011\u001a\u0004\u0008.\u0010\u0013\"\u0004\u0008\u0007\u0010\u0015R\"\u00100\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u0010!\u001a\u0004\u00080\u0010#\"\u0004\u00081\u0010%R\"\u00104\u001a\u00020\u00058\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00082\u0010\u0011\u001a\u0004\u00083\u0010\u0013\"\u0004\u0008\u0008\u0010\u0015R\"\u00106\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u0010!\u001a\u0004\u00086\u0010#\"\u0004\u00087\u0010%R\"\u00109\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00088\u0010!\u001a\u0004\u00089\u0010#\"\u0004\u0008\u000b\u0010%R\"\u0010;\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010!\u001a\u0004\u0008;\u0010#\"\u0004\u0008<\u0010%R$\u0010B\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008\u0004\u0010AR\"\u0010D\u001a\u00020\t8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010!\u001a\u0004\u0008D\u0010#\"\u0004\u0008E\u0010%R\u0011\u0010F\u001a\u00020\t8F\u00a2\u0006\u0006\u001a\u0004\u0008F\u0010#\u00a8\u0006J"
    }
    d2 = {
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "",
        "",
        "text",
        "setRichText",
        "",
        "color",
        "setColor",
        "setFillColor",
        "",
        "enabled",
        "setFillColorEnabled",
        "style",
        "setStrokeStyle",
        "resetChanged",
        "clone",
        "e",
        "I",
        "getShapeType",
        "()I",
        "setShapeType",
        "(I)V",
        "shapeType",
        "",
        "value",
        "f",
        "F",
        "getShapeWidth",
        "()F",
        "setShapeWidth",
        "(F)V",
        "shapeWidth",
        "g",
        "Z",
        "isWidthChanged",
        "()Z",
        "setWidthChanged",
        "(Z)V",
        "h",
        "getLineStyleType",
        "setLineStyleType",
        "lineStyleType",
        "i",
        "isLineStyleTypeChanged",
        "setLineStyleTypeChanged",
        "j",
        "getColor",
        "k",
        "isColorChanged",
        "setColorChanged",
        "l",
        "getFillColor",
        "fillColor",
        "m",
        "isFillColorChanged",
        "setFillColorChanged",
        "n",
        "isFillColorEnabled",
        "o",
        "isFillColorEnabledChanged",
        "setFillColorEnabledChanged",
        "p",
        "Ljava/lang/String;",
        "getRichText",
        "()Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "richText",
        "q",
        "isRichTextChanged",
        "setRichTextChanged",
        "isChanged",
        "<init>",
        "()V",
        "Companion",
        "sdk-note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public e:I

.field public f:F

.field public g:Z

.field public h:I

.field public i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->Companion:Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->f:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->j:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.onyx.android.sdk.note.common.data.shape.ShapeAttributesBean"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->clone()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    move-result-object p0

    return-object p0
.end method

.method public final getColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->j:I

    return p0
.end method

.method public final getFillColor()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->l:I

    return p0
.end method

.method public final getLineStyleType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->h:I

    return p0
.end method

.method public final getRichText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final getShapeType()I
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->e:I

    return p0
.end method

.method public final getShapeWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->f:F

    return p0
.end method

.method public final isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->k:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->g:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->m:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->o:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->q:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final isColorChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->k:Z

    return p0
.end method

.method public final isFillColorChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->m:Z

    return p0
.end method

.method public final isFillColorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->n:Z

    return p0
.end method

.method public final isFillColorEnabledChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->o:Z

    return p0
.end method

.method public final isLineStyleTypeChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->i:Z

    return p0
.end method

.method public final isRichTextChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->q:Z

    return p0
.end method

.method public final isWidthChanged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->g:Z

    return p0
.end method

.method public final resetChanged()Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->k:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->g:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->q:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->o:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->m:Z

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->i:Z

    return-object p0
.end method

.method public final setColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->j:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->k:Z

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->j:I

    return-object p0
.end method

.method public final setColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->j:I

    return-void
.end method

.method public final setColorChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->k:Z

    return-void
.end method

.method public final setFillColor(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->l:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->m:Z

    .line 3
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->l:I

    return-object p0
.end method

.method public final setFillColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->l:I

    return-void
.end method

.method public final setFillColorChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->m:Z

    return-void
.end method

.method public final setFillColorEnabled(Z)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->n:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->o:Z

    .line 3
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->n:Z

    return-object p0
.end method

.method public final setFillColorEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->n:Z

    return-void
.end method

.method public final setFillColorEnabledChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->o:Z

    return-void
.end method

.method public final setLineStyleType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->h:I

    return-void
.end method

.method public final setLineStyleTypeChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->i:Z

    return-void
.end method

.method public final setRichText(Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->p:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->q:Z

    .line 3
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final setRichText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->p:Ljava/lang/String;

    return-void
.end method

.method public final setRichTextChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->q:Z

    return-void
.end method

.method public final setShapeType(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->e:I

    return-void
.end method

.method public final setShapeWidth(F)V
    .locals 1

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->f:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->g:Z

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->f:F

    return-void
.end method

.method public final setStrokeStyle(I)Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->h:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->i:Z

    iput p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->h:I

    return-object p0
.end method

.method public final setWidthChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->g:Z

    return-void
.end method
