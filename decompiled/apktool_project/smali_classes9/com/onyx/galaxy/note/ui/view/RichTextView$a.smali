.class public final Lcom/onyx/galaxy/note/ui/view/RichTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/ui/view/RichTextView;->setRichText(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/ui/view/RichTextView;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/ui/view/RichTextView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->e:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    iput-object p2, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/Unit;)Ljava/lang/String;
    .locals 12
    .param p1    # Lkotlin/Unit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RawResourceUtil;

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$raw;->rich_text:I

    invoke-virtual {p1, v0, v1}, Lcom/onyx/android/sdk/base/utils/RawResourceUtil;->contentOfRawResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v0, p1

    iget-object p1, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->e:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/ui/view/RichTextView;->access$getPLACEHOLDER_CONTENT$p(Lcom/onyx/galaxy/note/ui/view/RichTextView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->e:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    invoke-static {p1}, Lcom/onyx/galaxy/note/ui/view/RichTextView;->access$getPLACEHOLDER_SCRIPT$p(Lcom/onyx/galaxy/note/ui/view/RichTextView;)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->e:Lcom/onyx/galaxy/note/ui/view/RichTextView;

    invoke-static {p0}, Lcom/onyx/galaxy/note/ui/view/RichTextView;->access$getScriptBuilder$p(Lcom/onyx/galaxy/note/ui/view/RichTextView;)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/ui/view/RichTextView$a;->a(Lkotlin/Unit;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
