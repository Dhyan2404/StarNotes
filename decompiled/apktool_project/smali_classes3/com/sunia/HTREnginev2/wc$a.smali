.class public Lcom/sunia/HTREnginev2/wc$a;
.super Landroidx/core/content/res/ResourcesCompat$FontCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/wc;->C(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/ref/WeakReference;

.field public final synthetic d:Lcom/sunia/HTREnginev2/wc;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/wc;IILjava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wc$a;->d:Lcom/sunia/HTREnginev2/wc;

    iput p2, p0, Lcom/sunia/HTREnginev2/wc$a;->a:I

    iput p3, p0, Lcom/sunia/HTREnginev2/wc$a;->b:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/wc$a;->c:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Landroidx/core/content/res/ResourcesCompat$FontCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontRetrievalFailed(I)V
    .locals 0

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;)V
    .locals 2
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/sunia/HTREnginev2/wc$a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/sunia/HTREnginev2/wc$a;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/sunia/HTREnginev2/wc$f;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/wc$a;->d:Lcom/sunia/HTREnginev2/wc;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wc$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, p0, p1}, Lcom/sunia/HTREnginev2/wc;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V

    return-void
.end method
