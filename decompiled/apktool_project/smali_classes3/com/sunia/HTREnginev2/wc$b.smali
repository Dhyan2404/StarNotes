.class public Lcom/sunia/HTREnginev2/wc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/wc;->n(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/widget/TextView;

.field public final synthetic f:Landroid/graphics/Typeface;

.field public final synthetic g:I

.field public final synthetic h:Lcom/sunia/HTREnginev2/wc;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/wc;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wc$b;->h:Lcom/sunia/HTREnginev2/wc;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wc$b;->e:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wc$b;->f:Landroid/graphics/Typeface;

    iput p4, p0, Lcom/sunia/HTREnginev2/wc$b;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wc$b;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wc$b;->f:Landroid/graphics/Typeface;

    iget p0, p0, Lcom/sunia/HTREnginev2/wc$b;->g:I

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
