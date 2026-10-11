.class public final Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextRunChar"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0019\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000c\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00087\u00108J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0006\u0010\u0005\u001a\u00020\u0004R$\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\"\u0010\u0018\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u000f\u001a\u0004\u0008\u0016\u0010\u0011\"\u0004\u0008\u0017\u0010\u0013R\"\u0010\u001c\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u000f\u001a\u0004\u0008\u001a\u0010\u0011\"\u0004\u0008\u001b\u0010\u0013R\"\u0010 \u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u000f\u001a\u0004\u0008\u001e\u0010\u0011\"\u0004\u0008\u001f\u0010\u0013R\"\u0010$\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008!\u0010\u000f\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008&\u0010\'\u001a\u0004\u0008(\u0010)\"\u0004\u0008*\u0010+R\u0011\u00100\u001a\u00020-8F\u00a2\u0006\u0006\u001a\u0004\u0008.\u0010/R\u0011\u00102\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010\u0011R\u0011\u00104\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u00083\u0010\u0011R\u0011\u00106\u001a\u00020\r8F\u00a2\u0006\u0006\u001a\u0004\u00085\u0010\u0011\u00a8\u00069"
    }
    d2 = {
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;",
        "",
        "",
        "toString",
        "",
        "getChars",
        "a",
        "Ljava/lang/String;",
        "getText",
        "()Ljava/lang/String;",
        "setText",
        "(Ljava/lang/String;)V",
        "text",
        "",
        "b",
        "F",
        "getHeight",
        "()F",
        "setHeight",
        "(F)V",
        "height",
        "c",
        "getWidth",
        "setWidth",
        "width",
        "d",
        "getX",
        "setX",
        "x",
        "e",
        "getY",
        "setY",
        "y",
        "f",
        "getBaseline",
        "setBaseline",
        "baseline",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;",
        "g",
        "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;",
        "getStyle",
        "()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;",
        "setStyle",
        "(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;)V",
        "style",
        "",
        "getChar",
        "()C",
        "char",
        "getLeft",
        "left",
        "getTop",
        "top",
        "getBaseLine",
        "baseLine",
        "<init>",
        "()V",
        "sdk-textbox_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
        name = "char"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    invoke-direct {v0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    return-void
.end method


# virtual methods
.method public final getBaseLine()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->f:F

    return p0
.end method

.method public final getBaseline()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->f:F

    return p0
.end method

.method public final getChar()C
    .locals 1

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method public final getChars()[C
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    new-array p0, v2, [C

    const/16 v0, 0x20

    aput-char v0, p0, v1

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const-string v0, "this as java.lang.String).toCharArray()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method public final getHeight()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->b:F

    return p0
.end method

.method public final getLeft()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->d:F

    return p0
.end method

.method public final getStyle()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    return-object p0
.end method

.method public final getText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getTop()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->e:F

    return p0
.end method

.method public final getWidth()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->c:F

    return p0
.end method

.method public final getX()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->d:F

    return p0
.end method

.method public final getY()F
    .locals 0

    iget p0, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->e:F

    return p0
.end method

.method public final setBaseline(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->f:F

    return-void
.end method

.method public final setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->b:F

    return-void
.end method

.method public final setStyle(Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->g:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunStyle;

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    return-void
.end method

.method public final setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->c:F

    return-void
.end method

.method public final setX(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->d:F

    return-void
.end method

.method public final setY(F)V
    .locals 0

    iput p1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->e:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/textbox/richtext/RichTextRun$TextRunChar;->getTop()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
