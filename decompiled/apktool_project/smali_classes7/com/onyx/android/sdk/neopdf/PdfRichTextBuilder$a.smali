.class public final Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/lang/StringBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->b:Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "left"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "center"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "right"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "font-family"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-size"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "color"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text-align"

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-style"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "font-weight"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->access$getFontColor$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)I

    move-result p0

    const v0, 0xffffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "#%06x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "format(format, *args)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->access$getFontName$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->access$getFontSize$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "pt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-static {v1}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->access$getTextAlign$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->c:Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;

    invoke-static {p0}, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;->access$getTextAlign$p(Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/neopdf/PdfRichTextBuilder$a;->a:Ljava/util/HashMap;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_0
    return-object p0
.end method
