.class public final synthetic Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lkotlin/jvm/internal/FunctionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->a:Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->a:Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;->access$insertPageFromPdf(Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;Landroid/net/Uri;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Landroidx/activity/result/ActivityResultCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lkotlin/jvm/internal/FunctionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    check-cast p1, Lkotlin/jvm/internal/FunctionAdapter;

    invoke-interface {p1}, Lkotlin/jvm/internal/FunctionAdapter;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Lkotlin/Function;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Function<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lkotlin/jvm/internal/FunctionReferenceImpl;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->a:Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;

    const-class v3, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver;

    const-string v4, "insertPageFromPdf"

    const-string v5, "insertPageFromPdf(Landroid/net/Uri;)V"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->getFunctionDelegate()Lkotlin/Function;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onActivityResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/observer/InsertPageFromPdfObserver$a;->a(Landroid/net/Uri;)V

    return-void
.end method
