.class public final Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sentence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "richTextRun"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keywordIndexList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic e(Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->d(Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final d(Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "sentence"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "richTextRun"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "keywordIndexList"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;Ljava/util/List;)V

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
    instance-of v1, p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    iget-object v3, p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final g()Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RichTextRunWrapper(sentence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", richTextRun="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->b:Lcom/onyx/android/sdk/textbox/richtext/RichTextRun;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", keywordIndexList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/search/SearchTextBoxAction$a;->c:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
